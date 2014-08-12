class Advert < ActiveRecord::Base
  scope :active, -> {where active: true }
  scope :inactive, -> {where active: false }
  scope :job_hunt, -> {where job_hunt: true }
  scope :buy, -> {where buy: true }
  scope :sell, -> {where sell: true }
  scope :hire, -> {where hire: true }
  scope :exchange, -> {where exchange: true }
  validates :email, presence: true
  validates :title, :name, :surname, :address, :mobile, presence: true
  validates :description , length: { minimum: 10 }
  validates :email, :email => true
  geocoded_by :address   # can also be an IP address
  after_validation :geocode          # auto-fetch coordinates
  has_attached_file :image, :styles => { :medium => "700x700>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  has_attached_file :image1, :styles => { :medium => "700x700>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image1, :content_type => /\Aimage\/.*\Z/
  has_attached_file :image2, :styles => { :medium => "700x700>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image2, :content_type => /\Aimage\/.*\Z/
  has_attached_file :image3, :styles => { :medium => "700x700>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image3, :content_type => /\Aimage\/.*\Z/
  belongs_to :admin
  has_many :comments, dependent: :destroy
  accepts_nested_attributes_for :comments


end
