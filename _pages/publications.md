---
title: "Relational ML - Publications"
layout: gridlay
excerpt: "Relational ML -- Publications."
sitemap: false
permalink: /publications/
---

# Publications

<!-- selectable dropdown based on names from _data/team_members.yml -->

{% assign team_members = site.data.team_members %}
<select id="memberselect">
    <option value="">All members</option>
    {% for member in team_members %}<option value="{{ member.last_name }}">{{ member.name }}</option>
    {% endfor %}</select>

{% bibliography %}

<script>
document.getElementById('memberselect').addEventListener('change', function() {
    var member = this.value;
    var entries = document.querySelectorAll('.row');
    entries.forEach(function(entry) {
    if (entry.id.includes('bib')) {
        if (entry.id.includes(member)) {
            entry.style.display = 'flex';
        } else {
            entry.style.display = 'none';
        }
    }
    });
});
</script>

<br>