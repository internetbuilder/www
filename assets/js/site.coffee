---
---

$ ->
    # Global mobile menu: right side
    #   -> open / close the right-side menu
    $('.menu-trigger a').click (event) ->
        event.preventDefault()
        $('body').toggleClass 'pmr-open'

    # Blog right panel should be set to a fixed position on scroll
    blog_sidebar_sticky = new Waypoint.Sticky
        element: $('.blog-sidebar ul')

    # Docs navigation: collapse / expand sections
    $('.docs-nav h1, .mobile-doc-links h1').click (event) ->
        $(this).toggleClass('expand').next('ul').slideToggle('fast')

    # Landing page: videos
    #   -> show a video modal on click
    $('.video p').click (event) ->
        event.preventDefault()
        $(this).next('.video-modal').fadeIn()
    #   -> hide the video modal
    $('.video-modal').on('click', dismiss_video)
    dismiss_video = (event) ->
        event.preventDefault()
        $('.video-modal').fadeOut('fast')
    $(document).keyup (event) ->
        if (event.keyCode == 27)
            dismiss_video()
