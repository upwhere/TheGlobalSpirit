class Init < ActiveRecord::Migration
  def change
    create_table :regions do |t|
      t.string :shortcode, null:false
      t.string :name, null: false
      t.timestamps
    end

    create_table :voters do |t|
      t.belongs_to :user
      t.timestamps
    end

    create_join_table :regions, :voters
    
    create_table :ipaddresses do |t|
      t.integer :ipaddress, null: false
      t.belongs_to :behaviour, null: false
      t.timestamps
    end

    create_table :behaviours do |t|
      t.belongs_to :user, null: false
      t.timestamps
    end

    create_table :users do |t|
      t.string :username, null:false
      t.string :contact, null:false
      t.boolean :banned, null:false
      t.float :credibility, null:false
      t.timestamps
    end
    
    create_table :personas do |t|
      t.string :nick, null:false
      t.text :about, null:false
      t.belongs_to :user #, null:false # orphan personas may have uses!?
      t.timestamps
    end
    
    create_table :stances do |t|
      t.integer :opinion, null:false
      t.belongs_to :persona, null:false
      t.belongs_to :bill, null:false
      t.timestamps
    end

    create_table :covers do |t|
      t.string :reference, null:false
      t.integer :preference, null:false
      t.timestamps
    end

    create_join_table :covers, :personas

    create_table :body do |t|
      t.belongs_to :region, null:false
      t.datetime :formed,null:false
      t.datetime :disbanded, null: true
    end

    create_table :bills do |t|
      t.string :identifier, null:false
      t.text :abstract, null:false
      t.string :reference, null:false
      t.belongs_to :body, null:false
      t.timestamps
    end

    create_join_table :bills, :covers
    
    create_table :progress do |t|
      t.belongs_to :bill, null:false
      t.integer :status, null:false
    end

    create_table :result do |t|
      t.belongs_to :progress,null:false
      t.integer :yea,null:false
      t.integer :neutral,null:false
      t.integer :nay,null:false
      t.belongs_to :body,null:false
    end

    create_table :foreignspirit do |t|
      t.integer :yea,null:false
      t.integer :nay,null:false
      t.belongs_to :bill,null:false
    end

    create_table :citizenspirit do |t|
      t.integer :yea,null:false
      t.integer :nay,null:false
      t.belongs_to :bill,null:false
    end

  end
end

