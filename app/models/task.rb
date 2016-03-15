class Task < ActiveRecord::Base
  belongs_to :user
  belongs_to :list

  has_many :tag_tasks
  has_many :tags, through: :tag_tasks

  validates :title, presence: true
  validates :status, presence: true

  def write_priority
    case self.priority
    when 1,0
      'low'
    when 2
      'medium'
    when 3
      'high'
    end
  end

  def tags_as_string
    self.tags.map { |tag_object|  tag_object.title}.join(", ")
  end



end
