module SnslinkHelper

  # Twitter投稿リンク
  def link_to_twitter(url, msg, hashtags)
    link_to Settings.system[:twitter][:tweet_url] + "?url=#{url}&text=#{msg}&hashtags=#{hashtags}", class: "", style: "font-size: 2rem;color:#1DA1F2;", target: "_blank", rel: "noopener" do
      "<i class='fa-brands fa-square-twitter'></i>".html_safe
    end
  end

  # LINE投稿リンク
  def link_to_line(url, msg, hashtags)
    msg = add_hashtag_to_msg(msg, hashtags)
    link_to Settings.system[:line][:share_url] + "?url=#{url}&text=#{msg}", class: "", style: "font-size: 2rem;color:#00B900;", target: "_blank", rel: "noopener" do
      "<i class='fa-brands fa-line'></i>".html_safe
    end
  end

  # Faceobok投稿リンク
  def link_to_facebook(url, msg, hashtags)
    msg = add_hashtag_to_msg(msg, hashtags)
    link_to Settings.system[:facebook][:share_url] + "?u=#{url}", class: "", style: "font-size: 2rem;color:#3C5A99;", target: "_blank", rel: "noopener" do
      "<i class='fa-brands fa-facebook'></i>".html_safe
    end
  end

  # Mail送信リンク
  def link_to_mail(url, title, msg, hashtags)
    msg = add_hashtag_to_msg(msg, hashtags)
    msg = "#{msg}%0a#{url}"
    link_to Settings.system[:mail][:share_url] + "?subject=#{title}&body=#{msg}", class: "", style: "font-size: 2rem;color:red;", target: "_blank", rel: "noopener" do
      "<i class='fa-solid fa-envelope'></i>".html_safe
    end
  end

  private

    def add_hashtag_to_msg(msg, hashtags)
      hashtagArray = hashtags.split(',')
      hashtagArray.each do |hashtag|
        msg = msg + "%23#{hashtag} "
      end

      msg
    end

end