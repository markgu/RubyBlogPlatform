class Tweet < ActiveRecord::Base

  has_many :comments

  belongs_to :user
  validates_presence_of :subject, :contents

  scope :recent, order('created_at desc').limit(3)

  def initialzie(&block)
    self.instance_eval(&block) if block_given?
  end


end
