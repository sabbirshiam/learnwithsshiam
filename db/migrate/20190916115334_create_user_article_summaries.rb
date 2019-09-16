class CreateUserArticleSummaries < ActiveRecord::Migration[5.2]
  def change
    reversible do |dir|
      dir.up do
        execute <<-SQL
      CREATE VIEW user_article_summaries AS
      SELECT
      u.id AS user_id,
              u.username as user_name,
                            u.updated_at as user_updated,
                                            u.created_at as user_created,
                                                            a.title as article_title,
                                                                       a.id as article_id,
                                                                               a.updated_at,
                                                                               a.created_at
      FROM
      public.users as u
      LEFT OUTER JOIN  public.articles as a on
      u.id = a.user_id;
        SQL
      end

      dir.down do
        execute <<-SQL
          DROP VIEW IF EXISTS public.user_article_summaries;
        SQL
      end
    end
  end
end
