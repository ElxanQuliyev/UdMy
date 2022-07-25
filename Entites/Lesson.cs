using Core.Abstract;

namespace Entites
{
    public class Lesson:IEntity
    {
        public int Id { get; set; }
        public virtual List<LessonVideo>? LessonVideos { get; set; }
        public bool IsDeleted { get; set; }
    }

    public class LessonLanguage : IEntity
    {
        public int Id { get; set; }
        public string Name { get; set; } = null!;
        public string LanguageKey { get; set; } = null!;
        public int LessonId { get; set; }

    }
}
