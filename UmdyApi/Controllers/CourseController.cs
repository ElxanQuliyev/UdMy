using Abp.Domain.Uow;
using AutoMapper;
using Business.Abstract;
using Entites;
using Entites.DTOs;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System.Text.Json;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace UdmyApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CourseController : ControllerBase
    {
        private readonly ICourseManager _courseManager;
        private readonly IMapper _mapper;
        public CourseController(ICourseManager courseManager, IMapper mapper)
        {
            _courseManager = courseManager;
            _mapper = mapper;
        }

        // GET api/<CourseController>/5
        [HttpGet("{lang}/{id}")]
        public  async Task<CourseListDto?> Get(int? id,string? lang)
        {
            if(id==null) return null;
            var course = await _courseManager.GetById(id.Value);
            course.CourseLanguages = course.CourseLanguages.Where(c => c.LanguageKey == lang).ToList();
            //course.CourseLanguages=course.CourseLanguages.Where(c=>c.LanguageKey==lang).ToList();
            var courseMapper = _mapper.Map<CourseListDto>(course);
            //courseMapper.CourseName=course.CourseLanguages.FirstOrDefault(c=>c.LanguageKey==lang).Name;
            //courseMapper.Description = course.CourseLanguages.FirstOrDefault(c => c.LanguageKey == lang).Description;
            //courseMapper.Summary = course.CourseLanguages.FirstOrDefault(c => c.LanguageKey == lang).Summary;
            //test2.CourseName = course.CourseLanguages.FirstOrDefault(c => c.LanguageKey == lang).Name;
            return courseMapper;
        }
        //[Authorize(AuthenticationSchemes = "Bearer")]
        [HttpGet("{lang}")]
        public List<CourseListDto> GetAll(string? lang)
        {
            var courseList = _courseManager.GetAll(lang);
            var courseMapper= _mapper.Map<List<CourseListDto>>(courseList);
            return courseMapper;
        }


        //[HttpGet("filter/{q?}/{rating?}/{minPrice?}/{maxPrice?}/{instructorIds?}/{sortBy?}")]
        [HttpPost("filter")]
        public async Task<CourseListFilter>? GetFilterCourse([FromBody] FilterCourseItem item)
        {
            var courseList = await _courseManager.GetCourseWithFilter(item);
            var courseAll =  _courseManager.GetAll(item.Lang);

            var courseMapper = _mapper.Map<List<CourseListDto>>(courseList);
            var cs = new CourseListFilter
            {
                Courses = courseMapper,
                MaxPrice = courseAll.Max(c=>c.Price)
            };
            return cs;
        }


        [HttpGet("category/{categoryId}")]
        public List<CourseListDto>? GetCourseByCategory(int? categoryId)
        {
            if (!categoryId.HasValue) return null;
            var courseInfo = _courseManager.GetCoursesByCategory(categoryId.Value);
            var courseMapper = _mapper.Map<List<CourseListDto>>(courseInfo);
            return courseMapper;
        }
        // POST api/<CourseController>
        [HttpPost]
        public async Task<JsonResult> Add(CourseDTOs course)
        {
            JsonResult res = new(new { });
            try
            {
                var _mapperCourse=_mapper.Map<Course>(course);
                _courseManager.Add(_mapperCourse);
                res.Value = new { status = 200, message = "course added successfully" };
            }
            catch (Exception e)
            {
                res.Value = new { status = 400, errors = e.Message};
            }
            return res;
            
        }

        // PUT api/<CourseController>/5
        [HttpPut("{id}")]
        public JsonResult Put(int? id, [FromBody] CourseDTOs courseDT)
        {
            
            JsonResult res = new(new { });
            if (id == null) {
                res.Value = new {status=403,message="Id is required" };
                return res;
            };
            var _mapperCourse = _mapper.Map<CourseDTOs,Course>(courseDT);

            _courseManager.Update(id.Value, _mapperCourse);
            res.Value = new { status = 200, course = courseDT };
            return res;
        }
        
        // DELETE api/<CourseController>/5
        [HttpDelete("{id}")]
        public JsonResult Delete(int? id)
        {
            JsonResult res = new(new { });

            if (!id.HasValue)
            {
                res.Value = new{ status=404};
                return res;
            }

            try
            {
                _courseManager.Remove(id.Value);
                res.Value = new { status = 200 };

            }
            catch (Exception e)
            {
                res.Value = new { status = 403,message=e.Message };

            }


            return res;
          
        }
    }
}
