---
title: "Team: ConvAI Lab @ UIUC"
layout: gridlay
excerpt: "Team: ConvAI Lab @ UIUC"
sitemap: false
permalink: /team
---

<!-- Lab Members container -->
<h2>Lab Members</h2>

<!-- Faculty Section -->
<h3>Faculty</h3>

<script type="text/javascript">
  function shuffle(array) {
    for (let i = array.length - 1; i > 0; i--) {
      const j = Math.floor(Math.random() * (i + 1));
      [array[i], array[j]] = [array[j], array[i]];
    }
    return array;
  }

  var facultyMembers = {{ site.data.faculty | jsonify }};
  var randomizedFaculty = shuffle(facultyMembers);

  var container = document.getElementById('faculty-container');
  randomizedFaculty.forEach(function(member, index) {
    var evenOdd = index % 2;
    if (evenOdd === 0) {
      container.innerHTML += '<div class="row">';
    }
    
    container.innerHTML += `
      <div class="col-sm-6 clearfix">
        <img src="{{ site.url }}{{ site.baseurl }}/images/convai_members/${member.photo}" class="img-responsive" width="25%" style="float: left" />
        <h4>${member.name}</h4>
        <i>${member.info} <br>email: <${member.email}></i>
        <ul style="overflow: hidden">
          ${member.number_educ >= 1 ? `<li>${member.education1}</li>` : ''}
          ${member.number_educ >= 2 ? `<li>${member.education2}</li>` : ''}
          ${member.number_educ >= 3 ? `<li>${member.education3}</li>` : ''}
          ${member.number_educ >= 4 ? `<li>${member.education4}</li>` : ''}
          ${member.number_educ >= 5 ? `<li>${member.education5}</li>` : ''}
        </ul>
      </div>
    `;
    
    if (evenOdd === 1) {
      container.innerHTML += '</div>';
    }
  });

  if (randomizedFaculty.length % 2 !== 0) {
    container.innerHTML += '</div>';
  }
</script>

<div id="faculty-container"></div>

<!-- PhD Students Section -->
<h3>PhD Students</h3>

<script type="text/javascript">
  var phdStudents = {{ site.data.phd_students | jsonify }};
  var randomizedPhD = shuffle(phdStudents);

  var phdContainer = document.getElementById('phd-container');
  randomizedPhD.forEach(function(member, index) {
    var evenOdd = index % 2;
    if (evenOdd === 0) {
      phdContainer.innerHTML += '<div class="row">';
    }

    phdContainer.innerHTML += `
      <div class="col-sm-6 clearfix">
        <h4>${member.name}</h4>
        <i>${member.info}</i>
        <ul style="overflow: hidden">
          ${member.number_educ >= 1 ? `<li>${member.education1}</li>` : ''}
          ${member.number_educ >= 2 ? `<li>${member.education2}</li>` : ''}
          ${member.number_educ >= 3 ? `<li>${member.education3}</li>` : ''}
          ${member.number_educ >= 4 ? `<li>${member.education4}</li>` : ''}
        </ul>
      </div>
    `;

    if (evenOdd === 1) {
      phdContainer.innerHTML += '</div>';
    }
  });

  if (randomizedPhD.length % 2 !== 0) {
    phdContainer.innerHTML += '</div>';
  }
</script>

<div id="phd-container"></div>

<!-- Masters Students Section -->
<h3>Masters Students</h3>

<script type="text/javascript">
  var masterStudents = {{ site.data.masters_students | jsonify }};
  var randomizedMasters = shuffle(masterStudents);

  var mastersContainer = document.getElementById('masters-container');
  randomizedMasters.forEach(function(member, index) {
    var evenOdd = index % 2;
    if (evenOdd === 0) {
      mastersContainer.innerHTML += '<div class="row">';
    }

    mastersContainer.innerHTML += `
      <div class="col-sm-6 clearfix">
        <h4>${member.name}</h4>
        <i>${member.info}</i>
        <ul style="overflow: hidden">
          ${member.number_educ >= 1 ? `<li>${member.education1}</li>` : ''}
          ${member.number_educ >= 2 ? `<li>${member.education2}</li>` : ''}
          ${member.number_educ >= 3 ? `<li>${member.education3}</li>` : ''}
          ${member.number_educ >= 4 ? `<li>${member.education4}</li>` : ''}
        </ul>
      </div>
    `;

    if (evenOdd === 1) {
      mastersContainer.innerHTML += '</div>';
    }
  });

  if (randomizedMasters.length % 2 !== 0) {
    mastersContainer.innerHTML += '</div>';
  }
</script>

<div id="masters-container"></div>

<!-- Bachelors Students Section -->
<h2>Bachelors Students</h2>

<script type="text/javascript">
  var bachelorStudents = {{ site.data.bachelors_students | jsonify }};
  var randomizedBachelors = shuffle(bachelorStudents);

  var bachelorsContainer = document.getElementById('bachelors-container');
  randomizedBachelors.forEach(function(member, index) {
    var evenOdd = index % 2;
    if (evenOdd === 0) {
      bachelorsContainer.innerHTML += '<div class="row">';
    }

    bachelorsContainer.innerHTML += `
      <div class="col-sm-6 clearfix">
        <h4>${member.name}</h4>
        <i>${member.info}</i>
        <ul style="overflow: hidden">
          ${member.number_educ >= 1 ? `<li>${member.education1}</li>` : ''}
          ${member.number_educ >= 2 ? `<li>${member.education2}</li>` : ''}
          ${member.number_educ >= 3 ? `<li>${member.education3}</li>` : ''}
          ${member.number_educ >= 4 ? `<li>${member.education4}</li>` : ''}
        </ul>
      </div>
    `;

    if (evenOdd === 1) {
      bachelorsContainer.innerHTML += '</div>';
    }
  });

  if (randomizedBachelors.length % 2 !== 0) {
    bachelorsContainer.innerHTML += '</div>';
  }
</script>

<div id="bachelors-container"></div>










<!-- ## Alumni

{% assign number_printed = 0 %}
{% for member in site.data.alumni_members %}

{% assign even_odd = number_printed | modulo: 2 %}

{% if even_odd == 0 %}
<div class="row">
{% endif %}

<div class="col-sm-6 clearfix">
  <img src="{{ site.url }}{{ site.baseurl }}/images/convai_members/{{ member.photo }}" class="img-responsive" width="25%" style="float: left" />
  <h4>{{ member.name }}</h4>
  <i>{{ member.duration }} <br> Role: {{ member.info }}</i>
  <ul style="overflow: hidden">

  </ul>
</div>

{% assign number_printed = number_printed | plus: 1 %}

{% if even_odd == 1 %}
</div>
{% endif %}

{% endfor %}

{% assign even_odd = number_printed | modulo: 2 %}
{% if even_odd == 1 %}
</div>
{% endif %}

## Former visitors, BSc/ MSc students
<div class="row">

<div class="col-sm-4 clearfix">
<h4>Visitors</h4>
{% for member in site.data.alumni_visitors %}
{{ member.name }}
{% endfor %}
</div>

<div class="col-sm-4 clearfix">
<h4>Master students</h4>
{% for member in site.data.alumni_msc %}
{{ member.name }}
{% endfor %}
</div>

<div class="col-sm-4 clearfix">
<h4>Bachelor Students</h4>
{% for member in site.data.alumni_bsc %}
{{ member.name }}
{% endfor %}
</div>

</div>


## Administrative Support
<a href="mailto:Rijsewijk@Physics.LeidenUniv.nl">Ellie van Rijsewijk</a> is helping us (and other groups) with administration. -->
