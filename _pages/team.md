---
title: "Team: ConvAI Lab @ UIUC"
layout: gridlay
excerpt: "Team: ConvAI Lab @ UIUC"
sitemap: false
permalink: /team
---

<script type="text/javascript">
  // Shuffle function to randomize the array
  function shuffle(array) {
    for (let i = array.length - 1; i > 0; i--) {
      const j = Math.floor(Math.random() * (i + 1));
      [array[i], array[j]] = [array[j], array[i]];
    }
    return array;
  }

  // Render function to handle even/odd layout
  function renderMembers(containerId, members) {
    var container = document.getElementById(containerId);
    members.forEach(function(member, index) {
      var evenOdd = index % 2;
      if (evenOdd === 0) {
        container.innerHTML += '<div class="row">';
      }
      
      container.innerHTML += `
        <div class="col-sm-6 clearfix">
          ${member.photo ? `<img src="${member.photo}" class="img-responsive" width="25%" style="float: left" />` : ''}
          <h4>${member.name}</h4>
          <i>${member.info}</i>
          ${member.email ? `<br>email: <${member.email}>` : ''}
          <ul style="overflow: hidden">
            ${member.education1 ? `<li>${member.education1}</li>` : ''}
            ${member.education2 ? `<li>${member.education2}</li>` : ''}
            ${member.education3 ? `<li>${member.education3}</li>` : ''}
            ${member.education4 ? `<li>${member.education4}</li>` : ''}
            ${member.education5 ? `<li>${member.education5}</li>` : ''}
          </ul>
        </div>
      `;
      
      if (evenOdd === 1) {
        container.innerHTML += '</div>';
      }
    });

    if (members.length % 2 !== 0) {
      container.innerHTML += '</div>';
    }
  }

  // Get data from Liquid and randomize each category
  var faculty = shuffle({{ site.data.faculty | jsonify }});
  var phdStudents = shuffle({{ site.data.phd_students | jsonify }});
  var masterStudents = shuffle({{ site.data.masters_students | jsonify }});
  var bachelorStudents = shuffle({{ site.data.bachelors_students | jsonify }});

  // Render each section
  renderMembers('faculty-container', faculty);
  renderMembers('phd-students-container', phdStudents);
  renderMembers('masters-students-container', masterStudents);
  renderMembers('bachelors-students-container', bachelorStudents);
</script>

<!-- Faculty container -->
<h2>Faculty</h2>
<div id="faculty-container"></div>

<!-- PhD Students container -->
<h2>PhD Students</h2>
<div id="phd-students-container"></div>

<!-- Master's Students container -->
<h2>Masters Students</h2>
<div id="masters-students-container"></div>

<!-- Bachelor's Students container -->
<h2>Bachelors Students</h2>
<div id="bachelors-students-container"></div>









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
