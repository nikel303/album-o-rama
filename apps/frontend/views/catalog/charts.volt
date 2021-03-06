
<div class="section-header">
	<h2>Popular Albums by Genre</h2>
</div>

<table><tr>
{% set n = 1 %}
<?php foreach ($charts as $genre => $chart) { ?>

	<td valign="top">
		<table class="chart">
			<tr>
				<td colspan="2" class="title">
					{{ link_to("tag/" ~ genre, genre) }}
				</td>
			</tr>
			{% for album in chart %}
				<tr>
					<td class="image" valign="top">
						<img src="{{ album.url }}" alt="{{ album.name }}">
					</td>
					<td class="album" valign="top">
						{{ link_to('album/' ~ album.id ~ '/' ~ album.uri, album.name) }}<br/>
						<div class="artist-name">{{ link_to('artist/' ~ album.artist_id ~ '/' ~ album.uri, album.artist) }}</div>
					</td>
				</tr>
			{% endfor %}
		</table>
	</td>

	{% if (n % 3) == 0 %}
		</tr><tr>
	{% endif %}
	{% set n = n + 1 %}

<?php } ?>
</table>