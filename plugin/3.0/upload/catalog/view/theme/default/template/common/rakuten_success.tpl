{{ header }}
<div id="common-success" class="container">
    <ul class="breadcrumb">
        {% for breadcrumb in breadcrumbs %}
            <li><a href="{{ breadcrumb.href }}">{{ breadcrumb.text }}</a></li>
        {% endfor %}
    </ul>
    <div class="row">{{ column_left }}
        {% if column_left and column_right %}
            {% set class = 'col-sm-6' %}
        {% elseif column_left or column_right %}
            {% set class = 'col-sm-9' %}
        {% else %}
            {% set class = 'col-sm-12' %}
        {% endif %}
        <div id="content" class="{{ class }}">{{ content_top }}
            <h1>{{ title_rakuten_message }}</h1>

            {{ text_rakuten_message }}
            <div class="buttons">
                <div class="pull-right"><a href="{{ continue }}" class="btn btn-primary">{{ button_continue }}</a></div>
            </div>
            {{ content_bottom }}</div>
        {{ column_right }}</div>
</div>
{{ footer }}