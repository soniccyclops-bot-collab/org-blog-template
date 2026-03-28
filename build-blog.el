(require 'ox-publish)

(setq org-publish-project-alist
      '(("blog-content"
         :base-directory "./org"
         :base-extension "org"
         :publishing-directory "./www"
         :recursive t
         :publishing-function org-html-publish-to-html
         :headline-levels 4
         :auto-preamble t
         :auto-sitemap t
         :sitemap-title "Blog Posts"
         :sitemap-filename "sitemap.html"
         :html-head "<style>
  body {
    font-family: Georgia, serif;
    max-width: 900px;
    margin: 40px auto;
    padding: 20px;
    line-height: 1.6;
    background-color: #f0f0f0;
    color: #333;
  }
  #content {
    background: #fff;
    padding: 2em 2.5em;
    border-radius: 10px;
    box-shadow: 0 2px 12px rgba(0,0,0,0.10);
  }
  h1, h2, h3 { color: #333; }
  a { color: #3572a5; text-decoration: none; }
  a:hover { color: #1a4971; text-decoration: underline; }
  pre {
    background: #f4f4f4;
    padding: 10px;
    overflow-x: auto;
    border-radius: 5px;
  }
  code { background: #f4f4f4; padding: 2px 4px; border-radius: 3px; }
  .org-src-container { margin: 1em 0; }
  #table-of-contents {
    background: #f9f9f9;
    padding: 1em;
    margin: 1em 0;
    border-radius: 5px;
  }
  #postamble {
    text-align: center;
    margin-top: 2em;
    padding-top: 1em;
    border-top: 1px solid #ddd;
    font-size: 0.9em;
    color: #666;
  }
  #postamble a { color: #3572a5; }
  #postamble a:hover { color: #1a4971; text-decoration: underline; }
</style>"
         :html-postamble "<div id=\"postamble\">
<script>
if (window.location.pathname !== '/' &&
    !window.location.pathname.endsWith('/index.html')) {
  document.currentScript.parentElement.innerHTML = '<p><a href=\"/\">Back to Home</a></p>';
}
</script>
</div>")))

(org-publish-all t)
(message "Blog published successfully!")