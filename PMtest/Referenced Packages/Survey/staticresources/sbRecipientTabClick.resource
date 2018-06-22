<script>
window.onload = function() 
            {
                var clickedTab ='{!currentTab}';
                
            if(clickedTab == "ContactTab") 
            {
            currentTab = 'Contacts'; 
                }
            if(clickedTab == "LeadTab") 
            {
            currentTab = 'Leads'; 
                }
                document.getElementById('tab'+currentTab  +'Id').focus();
                document.getElementById(currentTab).style.display = "block";
                clickTab(currentTab);
                
            };
            
            function toggle(source) 
            {
                var sourceId = source.id;
                var checkboxes;
                console.log('sourceId.contains() '+sourceId.includes('toggleLead'));
                if(sourceId.includes('toggleLead'))
                {
                    checkboxes = document.querySelectorAll('#ldIdDiv input[type="checkbox"]');
                }else{
                    checkboxes = document.querySelectorAll('#CntIdDiv input[type="checkbox"]');
                }
                
                for (var i = 0; i < checkboxes.length; i++) 
                {
                    if (checkboxes[i] != source)
                        checkboxes[i].checked = source.checked;
                }
            }
            
            function clickTab(cityName) 
            {
                var i, tabcontent, tablinks;
                tabcontent = document.getElementsByClassName("tabcontent");
                for (i = 0; i < tabcontent.length; i++) 
                {
                    tabcontent[i].style.display = "none";
                }
                makeActivTab(cityName);
            }
            
            
            function makeActivTab(cityName) {
                var i, tabcontent, tablinks; 
                tablinks = document.getElementsByClassName("tablinks");
                for (i = 0; i < tablinks.length; i++) 
                {
                    tablinks[i].className = tablinks[i].className.replace(" recipient-tabs active", "");
                }
                document.getElementById(cityName).style.display = "block";
                //evt.currentTarget.className += " recipient-tabs active";
                document.getElementById('tab'+cityName  +'Id').className += " recipient-tabs active";
                
            }
</script>