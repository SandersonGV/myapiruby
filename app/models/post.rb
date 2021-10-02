class Post < ApplicationRecord
    has_many :comments, dependent: :destroy

    def as_json(options={})
        super(
        include: { comments: {only: :text}},
        except: [:updated_at, :created_at]
    )
    end
end
