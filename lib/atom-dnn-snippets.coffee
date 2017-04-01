module.exports = AtomDnnSnippets =

  window: null

  ctrl:
    code: 17
    down: no

  keyboardOne:
    code: 49
    down: no

  activate: (state) ->
    @window = document.createElement 'div'
    @window.className = 'atom-dnn-snippets'
    @window.innerHTML = @html
    @window.style.display = 'none'
    document.body.appendChild(@window)
    @keyDown = @keyDown.bind(@)
    @keyUp = @keyUp.bind(@)
    document.body.addEventListener 'keydown', @keyDown
    document.body.addEventListener 'keyup', @keyUp

  keyDown: (e) ->
    @keyboardOne.down = yes if e.which is @keyboardOne.code
    @ctrl.down = yes if e.which is @ctrl.code
    @showWindow() if @keyboardOne.down and @ctrl.down

  keyUp: (e) ->
    @keyboardOne.down = no if e.which is @keyboardOne.code
    @ctrl.down = no if e.which is @ctrl.code
    @hideWindow() if !@keyboardOne.down or !@ctrl.down

  showWindow: ->
    @window.style.display = 'block'

  hideWindow: ->
    @window.style.display = 'none'

  deactivate: ->
    document.body.removeEventListener 'keydown', @keyDown
    document.body.removeEventListener 'keyup', @keyUp
    @window.remove()

  html: "
<div class='atom-dnn-snippets'>

    <div class='section'>
        <h2>Menu.Item.Html</h2>

        <ul>
            <li>[ADMINLINK]</li>
            <li>[ARCHIVESLINK]</li>
            <li>[APPROVEARTICLESLINK]</li>
            <li>[APPROVECOMMENTSLINK]</li>
            <li>[CATEGORIESLINK]</li>
            <li>[CURRENTARTICLESLINK]</li>
            <li>[HASCOMMENTSENABLED][/HASCOMMENTSENABLED]</li>
            <li>[ISADMIN][/ISADMIN]</li>
            <li>[ISAPPROVER][/ISAPPROVER]</li>
            <li>[ISSELECTEDADMIN][/ISSELECTEDADMIN]</li>
            <li>[ISSELECTEDAPPROVEARTICLES][/ISSELECTEDAPPROVEARTICLES]</li>
            <li>[ISSELECTEDAPPROVECOMMENTS][/ISSELECTEDAPPROVECOMMENTS]</li>
            <li>[ISSELECTEDCATEGORIES][/ISSELECTEDCATEGORIES]</li>
            <li>[ISSELECTEDCURRENTARTICLES][/ISSELECTEDCURRENTARTICLES]</li>
            <li>[ISSELECTEDMYARTICLES][/ISSELECTEDMYARTICLES]</li>
            <li>[ISSELECTEDSEARCH][/ISSELECTEDSEARCH]</li>
            <li>[ISSELECTEDSYNDICATION][/ISSELECTEDSYNDICATION]</li>
            <li>[ISSELECTEDSUBMITARTICLE][/ISSELECTEDSUBMITARTICLE]</li>
            <li>[ISSYNDICATIONENABLED][/ISSYNDICATIONENABLED]</li>
            <li>[ISSUBMITTER][/ISSUBMITTER]</li>
            <li>[MYARTICLESLINK][/MYARTICLESLINK]</li>
            <li>[RSSLATESTLINK][/RSSLATESTLINK]</li>
            <li>[SEARCHLINK][/SEARCHLINK]</li>
            <li>[SUBMITARTICLELINK][/SUBMITARTICLELINK]</li>
            <li>[SYNDICATIONLINK][/SYNDICATIONLINK]</li>
            <li>[RESX:XXX] where XXX is the name of the key in sharedresources.ascx.resx</li>
        </ul>

    </div>

    <div class='section'>
        <h2>Listing.Header.Html / Listing.Footer.Html</h2>
        <ul>
            <li>[CATEGORYFILTER]</li>
            <li>[CATEGORYSELECTED][/CATEGORYSELECTED]</li>
            <li>[CATEGORYNOTSELECTED][/CATEGORYNOTSELECTED]</li>
            <li>[CURRENTPAGE]</li>
            <li>[HASMULTIPLEPAGES][/HASMULTIPLEPAGES]</li>
            <li>[HASNEXTPAGE][/HASNEXTPAGE]</li>
            <li>[HASPREVPAGE][/HASPREVPAGE]</li>
            <li>[LINKPREVIOUS]</li>
            <li>[LINKPREVIOUSURL]</li>
            <li>[LINKNEXT]</li>
            <li>[LINKNEXTURL]</li>
            <li>[PAGECOUNT]</li>
            <li>[TABID]</li>
        </ul>
    </div>

    <div class='section'>
        <h2>Listing.Featured.Html/Listing.Item.Html / View.Item.Html / View.Title.Html / View.Description.Html / View.Keyword.Html / Handout.Item.Html / Rss.Item.Html</h2>
        <ul>
            <li>[ARTICLEID]</li>
            <li>[ARTICLELINK]</li>
            <li>[ARTICLELINK:XXX] where XXX is antoher article ID.</li>
            <li>[APPROVERDISPLAYNAME]</li>
            <li>[APPROVERFIRSTNAME]</li>
            <li>[APPROVERLASTNAME]</li>
            <li>[APPROVERUSERNAME]</li>
            <li>[AUTHOR]</li>
            <li>[AUTHOR:XXX] where XXX is the profile field name. e.g. [AUTHOR:FirstName]</li>
            <li>[AUTHOREMAIL]</li>
            <li>[AUTHORUSERNAME]</li>
            <li>[AUTHORFIRSTNAME]</li>
            <li>[AUTHORLASTNAME]</li>
            <li>[AUTHORFULLNAME]</li>
            <li>[AUTHORID]</li>
            <li>[CAPTION:XXX] where XXX is the name of the caption.</li>
            <li>[CATEGORIES]</li>
            <li>[CATEGORIESNOLINK]</li>
            <li>[CREATEDATE]</li>
            <li>[CREATETIME]</li>
            <li>[COMMENTCOUNT]</li>
            <li>[COMMENTLINK]</li>
            <li>[COMMENTRSS]</li>
            <li>[COMMENTS] - loads the comment.item template for each comment.</li>
            <li>[CURRENTPAGE]</li>
            <li>[CUSTOMFIELDS]</li>
            <li>[CUSTOM:XXX] where XXX is the name of the custom field.</li>
            <li>[DETAILS]</li>
            <li>[DETAILS:XXX] where XXX is the number of characters to show.</li>
            <li>[EDIT]</li>
            <li>[EXPRESSION:XXX:YY:ZZZ][/EXPRESSION:XXX:YY:ZZZ] where XXX is the name of a custom field, YY is the operator (=,!=,&gt;,&gt;=,&lt;,&lt;=) and ZZZ is the value to compare against. e.g. [EXPRESSION:Bedrooms:&gt;:5]Wow this is a big
                place[/EXPRESSION:Bedrooms:&gt;:5]</li>
            <li>[FILECOUNT]</li>
            <li>[FILES] -- Loads file templates for each file</li>
            <li>[GRAVATARURL]</li>
            <li>[HASAUTHOR][/HASAUTHOR]</li>
            <li>[HASAUTHORVALUE:XXX][/HASAUTHORVALUE:XXX]</li>
            <li>[HASCOMMENTS][/HASCOMMENTS]</li>
            <li>[HASCOMMENTSENABLED][/HASCOMMENTSENABLED]</li>
            <li>[HASCUSTOMFIELDS][/HASCUSTOMFIELDS]</li>
            <li>[HASFILES][/HASFILES]</li>
            <li>[HASIMAGE][/HASIMAGE]</li>
            <li>[HASIMAGES][/HASIMAGES]</li>
            <li>[HASMULTIPLEIMAGES][/HASMULTIPLEIMAGES] - image count &gt; 1</li>
            <li>[HASNOAUTHOR][/HASNOAUTHOR]</li>
            <li>[HASNOCOMMENTS][/HASNOCOMMENTS]</li>
            <li>[HASNOFILES][/HASNOFILES]</li>
            <li>[HASNOIMAGE][/HASNOIMAGE]</li>
            <li>[HASNOIMAGES][/HASNOIMAGES]</li>
            <li>[HASNOLINK][/HASNOLINK]</li>
            <li>[HASLINK][/HASLINK]</li>
            <li>[HASMOREDETAIL][/HASMOREDETAIL]</li>
            <li>[HASMOREDETAIL:XXX][/HASMOREDETAIL:XXX] where XXX is the number of characters to check against.</li>
            <li>[HASMULTIPLEPAGES][/HASMULTIPLEPAGES]</li>
            <li>[HASNEXTPAGE][/HASNEXTPAGE]</li>
            <li>[HASPREVPAGE][/HASPREVPAGE]</li>
            <li>[HASRATING][/HASRATING]</li>
            <li>[HASRATINGSENABLED][/HASRATINGSENABLED]</li>
            <li>[HASRELATED][/HASRELATED]</li>
            <li>[HASSUMMARY][/HASSUMMARY]</li>
            <li>[HASNOSUMMARY][/HASNOSUMMARY]</li>
            <li>[HASTAG:XXX][/HASTAG:XXX] where XXX is the name of the tag.</li>
            <li>[HASVALUE:XXX][/HASVALUE:XXX] where XXX is the name of a custom field.</li>
            <li>[HASNOVALUE:XXX][/HASNOVALUE:XXX] where XXX is the name of a custom field.</li>
            <li>[HASTAGS][/HASTAGS]</li>
            <li>[IMAGE]</li>
            <li>[IMAGE:ZZZ] (Where ZZZ&nbsp;is the position in list of images)</li>
            <li>[IMAGECOUNT]</li>
            <li>[IMAGELINK]</li>
            <li>[IMAGES] -- loads images templates</li>
            <li>[IMAGETHUMB:XXX:YYY] (Where XXX is the maximum width and YYY is the maximum height)</li>
            <li>[IMAGETHUMBRANDOM:XXX:YYY] (Where XXX is the maximum width and YYY&nbsp;is the maximum height)</li>
            <li>[IMAGETHUMB:XXX:YYY:ZZZ] (Where XXX is the maximum width and YYY is the maximum height and ZZZ&nbsp;is the position in list of images)</li>
            <li>[IMAGETHUMBLINK:XXX] is the actual URL of the link to the thumbnail image.</li>
            <li>[ISANONYMOUS][/ISANONYMOUS]</li>
            <li>[ISAUTHOR][/ISAUTHOR]</li>
            <li>[ISDRAFT][/ISDRAFT]</li>
            <li>[ISFEATURED][/ISFEATURED]</li>
            <li>[ISNOTFEATURED][/ISNOTFEATURED]</li>
            <li>[ISFIRST][/ISFIRST]</li>
            <li>[ISFIRST2][/ISFIRST2] only true when on the first page of listings.</li>
            <li>[ISINROLE:XXX][/ISINROLE:XXX] where XXX is the role name.</li>
            <li>[ISITEMINDEX:XXX][/ISITEMINDEX:XXX] where XXX is a number.</li>
            <li>[ISLOCALE:XXX][/ISLOCALE:XXX]</li>
            <li>[ISNOTANONYMOUS][/ISNOTANONYMOUS]</li>
            <li>[ISNOTFIRST][/ISNOTFIRST]</li>
            <li>[ISNOTSECOND][/ISNOTSECOND]</li>
            <li>[ISNOTSECURE][/ISNOTSECURE]</li>
            <li>[ISPAGE:XXX][/ISPAGE:XXX]</li>
            <li>[ISNOTPAGE:XXX][/ISNOTPAGE:XXX]</li>
            <li>[ISPUBLISHED][/ISPUBLISHED]</li>
            <li>[ISRATEABLE][/ISRATEABLE]</li>
            <li>[ISRSSITEM][/ISRSSITEM]</li>
            <li>[ISNOTRSSITEM][/ISNOTRSSITEM]</li>
            <li>[ISSECOND][/ISSECOND]</li>
            <li>[ISSECURE][/ISSECURE]</li>
            <li>[ISSYNDICATIONENABLED][/ISSYNDICATIONENABLED]</li>
            <li>[ITEMINDEX]</li>
            <li>[LASTUPDATEDATE]</li>
            <li>[LASTUPDATEEMAIL]</li>
            <li>[LASTUPDATEFIRSTNAME]</li>
            <li>[LASTUPDATELASTNAME]</li>
            <li>[LASTUPDATEUSERNAME]</li>
            <li>[LASTUPDATEFULLNAME]</li>
            <li>[LASTUPDATEID]</li>
            <li>[LINK]</li>
            <li>[LINKNEXT]</li>
            <li>[LINKPREVIOUS]</li>
            <li>[LINKTARGET]</li>
            <li>[MODULEID]</li>
            <li>[PAGECOUNT]</li>
            <li>[PAGE:XX] where XX is the page number.</li>
            <li>[PAGER]</li>
            <li>[PAGER2] - an UL&nbsp;list of pages.</li>
            <li>[PAGES] (View.Item.Html Only)</li>
            <li>[PAGESLIST]</li>
            <li>[PAGESLIST2]</li>
            <li>[PAGETEXT]</li>
            <li>[PAGETITLE]</li>
            <li>[PAGETITLENEXT]</li>
            <li>[PAGETITLEPREV]</li>
            <li>[PORTALALIAS]</li>
            <li>[PORTALROOT]</li>
            <li>[POSTCOMMENT] - the post comment form.</li>
            <li>[POSTRATING] - the post rating form.</li>
            <li>[PRINT]</li>
            <li>[PRINTLINK]</li>
            <li>[PUBLISHSTARTDATE]</li>
            <li>[PUBLISHSTARTDATE:XXX] where XXX is a date format expression for flexibility of date format.</li>
            <li>[PUBLISHENDDATE]</li>
            <li>[PUBLISHENDDATE:XXX] where XXX is a date format expression for flexibility of date format.</li>
            <li>[RATING]</li>
            <li>[RATINGCOUNT]</li>
            <li>[RATINGDETAIL]</li>
            <li>[RELATED] (uses related templates, shows up to 5 articles).</li>
            <li>[RELATED:XXX] where XXX is the number of related articles to show (uses related templates)</li>
            <li>[SITETITLE]</li>
            <li>[SUMMARY]</li>
            <li>[TABID]</li>
            <li>[TABTITLE]</li>
            <li>[TAGS]</li>
            <li>[TAGSNOLINK]</li>
            <li>[TEMPLATEPATH]</li>
            <li>[TITLE]</li>
            <li>[TITLEURLENCODED]</li>
            <li>[TITLE:XXX] where XXX is the number of chars.</li>
            <li>[TWITTERNAME]</li>
            <li>[VIEWCOUNT]</li>
            <li>[SUMMARY:XXX] where XXX is a number of chars.</li>
            <li>[CREATEDATELESSTHAN:XXX] where XXX is number of days</li>
            <li>[UPDATEDATELESSTHAN:XXX] where XXX is number of days</li>
        </ul>
    </div>

    <div class='section'>
        <h2>Image.Item.Html</h2>
        <ul>
            <li>[ARTICLEID]</li>
            <li>[DESCRIPTION]</li>
            <li>[FILENAME]</li>
            <li>[HEIGHT]</li>
            <li>[IMAGEID]</li>
            <li>[IMAGELINK]</li>
            <li>[ISITEMINDEX:XXX][/ISITEMINDEX:XXX] -- where XXX&nbsp;is the item position number, e.g. 1</li>
            <li>[ISNOTITEMINDEX:XXX][/ISNOTITEMINDEX:XXX] -- where XXX is the item position number, e.g. 2</li>
            <li>[ITEMINDEX]</li>
            <li>[SIZE]</li>
            <li>[SORTORDER]</li>
            <li>[TITLE]</li>
            <li>[WIDTH]</li>
            <li>[IMAGETHUMB:XXX:YYY] where XXX is the max width and YYY is the max height.</li>
        </ul>
    </div>
</div>
  "
