<div 
    fx:template="list" 
    fx:name="Лента" 
    fx:of="list" 
    fx:styled
    fx:b="news-list">
    
    <div fx:each="$items" fx:e="item">
        
        <div fx:e="header">{apply floxim.ui.header:header with $header = $name, $level = 3, $header_link = $url /}</div>
        
        <div fx:e="date">
            {apply floxim.ui.date:date with $date = $publish_date /}
        </div>
        
        <div fx:aif="$image" fx:e="image">
            <img src="{$image | 'max-height:500; max-width:800'}" alt="{$name}" />
        </div>
        <div fx:e="anounce">{$description}</div>
        <div fx:e="more"><a fx:e="more-link" href="{$url}" fx:if="$url">{%read_more}Читать далее...{/%}</a></div>
    </div>
    
    <div fx:e="pagination" fx:hide-empty>
        {$pagination | floxim.main.content:pagination}
    </div>
</div>