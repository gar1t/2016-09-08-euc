-module(index).

data(_) ->
    #{
      title       => "Erlang and Deep Learning",
      where       => "Erlang User Conference",
      date        => "September 9, 2016",
      transition  => "fade",
      theme       => "night",
      splash      => "euc.png",
      slides      => {apply, fun slides/1, {markdown, "slides.md"}}
     }.

slides(Markdown) ->
    format_slides(lpad_markdown:to_html(Markdown)).

format_slides(HTML) ->
    [buildout_list_items(Slide) || Slide <- split_slides(HTML)].

split_slides(HTML) ->
    re:split(HTML, "<hr />").

buildout_list_items(HTML) ->
    iolist_to_binary(
      re:replace(HTML, "<li>", "<li class=\"fragment\">", [global])).

site(_) ->
    #{
      "presentation/index.html" => {template, "templates/index.html"},
      "presentation"            => {dir,      "static"}
     }.
