using Core.Abstract;

namespace Entites
{
    public class Category:IEntity
    {
        public int Id { get; set; }
        public DateTime? PublishDate { get; set; }
        public DateTime? ModifadeOn { get; set; }
        public bool IsFeatured { get; set; }
        public bool IsDeleted { get; set; }
        public int? ParentCategoryId { get; set; }
        public virtual Category? ParentCategory  { get; set; }
        public virtual List<CategoryLanguage> CategoryLanguages { get; set; }
    }
    public class CategoryLanguage:IEntity
    {
        public int Id { get; set; }
        public string Name { get; set; } = null!;
        public string LanguageKey { get; set; } = null!;
        public int CategoryId { get; set; }
    }
}
