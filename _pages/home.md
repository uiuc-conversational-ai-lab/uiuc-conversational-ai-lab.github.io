---
title: "Home: ConvAI Lab @ UIUC"
layout: homelay
excerpt: "Home: ConvAI Lab @ UIUC"
sitemap: false
permalink: /
---

<div markdown="0" id="carousel" class="carousel slide" data-ride="carousel" data-interval="4000" data-pause="hover" >
    <ol class="carousel-indicators"></ol>

    <div class="carousel-inner" markdown="0">
        <div class="item">
            <img src="{{ site.url }}{{ site.baseurl }}/images/slider/convai_carousel_image.jpg" alt="ConvAI Lab" />
        </div>
        <div class="item">
            <img src="{{ site.url }}{{ site.baseurl }}/images/slider/group-inside-2.jpg" alt="Lab group photo (inside)" />
        </div>
        <div class="item">
            <img src="{{ site.url }}{{ site.baseurl }}/images/slider/group-outside.JPG" alt="Lab group photo (outside)" />
        </div>
        <div class="item">
            <img src="{{ site.url }}{{ site.baseurl }}/images/slider/IMG_3150.JPG" alt="Lab photo" />
        </div>
        <div class="item">
            <img src="{{ site.url }}{{ site.baseurl }}/images/slider/IMG_3147.JPG" alt="Lab photo" />
        </div>
        <div class="item">
            <img src="{{ site.url }}{{ site.baseurl }}/images/slider/IMG_3148.JPG" alt="Lab photo" />
        </div>
        <div class="item">
            <img src="{{ site.url }}{{ site.baseurl }}/images/slider/IMG_3149.JPG" alt="Lab photo" />
        </div>
    </div>
  <a class="left carousel-control" href="#carousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

<script>
(function () {
  var inner = document.querySelector('#carousel .carousel-inner');
  var indicators = document.querySelector('#carousel .carousel-indicators');
  if (!inner || !indicators) return;

  // Fisher-Yates shuffle of .item children (runs once per page load)
  var items = Array.prototype.slice.call(inner.children);
  for (var i = items.length - 1; i > 0; i--) {
    var j = Math.floor(Math.random() * (i + 1));
    var tmp = items[i]; items[i] = items[j]; items[j] = tmp;
  }

  // Reattach in shuffled order, assign active to first, rebuild indicators
  indicators.innerHTML = '';
  items.forEach(function (el, idx) {
    el.classList.remove('active');
    if (idx === 0) el.classList.add('active');
    inner.appendChild(el);
    var li = document.createElement('li');
    li.setAttribute('data-target', '#carousel');
    li.setAttribute('data-slide-to', String(idx));
    if (idx === 0) li.className = 'active';
    indicators.appendChild(li);
  });
})();
</script>

We are a research group in the Siebel School of Computing and Data Science at the University of Illinois Urbana-Champaign. 
The ConvAI@UIUC Lab was co-founded by Prof. Dilek Hakkani-Tür and Prof. Gokhan Tur in 2024, when they joined academia after 20+ years of research in industry. Our <A HREF="https://uiuc-conversational-ai-lab.github.io/team">team</A> currently includes 10 PhD students and 3 MSc students. Our work focuses on conversational agents, large language models, reasoning, evaluation, and persuasion. 

Our work has been funded by DARPA, IARPA, Department of Education, Amazon and Microsoft. 

Prof. Hakkani-Tür is also an Amazon Scholar. She has over 100 granted patents and over 60 applications in progress. She published over 400 papers and an h-index of 77 according to Google Scholar. She received several best paper awards, including from IEEE Signal Processing Society and Speech Communication Journal. She is an IEEE Distinguished Industry Speaker (2020) and served as the Editor-in-Cheif of IEEE Transactions on Audio, Speech, and Language Processing. Currently, she is editor-in-chief of Transactions of ACL and president of SIGdial. She was honored as IEEE fellow and ISCA fellow in 2014. 

Prof. Gokhan Tur is a leading artificial intelligence (AI) expert, especially on conversational AI systems. He has been involved with Apple Siri, Microsoft Cortana, Google Assistant, and Amazon Alexa systems. He co-authored more than 250 papers published in journals or books and presented at conferences. He is the editor of the book entitled "Spoken Language Understanding" by Wiley in 2011. Prof. Tur is a Fellow of IEEE, and member of ACL and ISCA. He was a member of IEEE Speech and Language Technical Committee (SLTC) (2006-2008), member of the IEEE SPS Industrial Relations Committee (2013-2014) and an associate editor for the IEEE Transactions on Audio, Speech, and Language Processing (2010-2014), and Multimedia Processing (2014-2016) journals. He has helped organization of countless speech and language processing conferences in various capacities, most recently as senior area chair of EMNLP 2024 and NAACL 2024.

We are part of the bigger <a href="http://nlp.cs.illinois.edu/">UIUC NLP community</a>.

<!-- We also work on problems in the intersection of **Placeholder Text**. Our current focus areas include: -->



<!-- We are located in the city of Cham. We regularly exchange ideas and work with **Placeholder Text** Labs.

We are grateful for funding from **Placeholder Text**, **Placeholder Text**, **Placeholder Text** and **Placeholder Text**. -->

<!-- *We are  looking for passionate new PhD students, Postdocs, and Master students to join the team* [(more info)]({{ site.url }}{{ site.baseurl }}/vacancies) *!* -->




<!-- <figure class="fourth">
  <img src="{{ site.url }}{{ site.baseurl }}/images/logopic/Logo_Leiden.jpg" style="width: 210px">
  <img src="{{ site.url }}{{ site.baseurl }}/images/logopic/Logo_Nanofront.jpg" style="width: 110px">
  <img src="{{ site.url }}{{ site.baseurl }}/images/logopic/Logo_NWO.jpg" style="width: 120px">
  <img src="{{ site.url }}{{ site.baseurl }}/images/logopic/Logo_ERC.jpg" style="width: 110px">
</figure> -->
