$(document).ready(function(){

    bootcards.init( {
        offCanvasBackdrop : true,
        offCanvasHideOnMainClick : true,
        enableTabletPortraitMode : true,
        disableRubberBanding : true,
        disableBreakoutSelector : 'a.no-break-out'
    });


    /*var jsonData = { activities : [
        { 
            id : 1 , 
            name : "activity1", 
            description : "activitytest1", 
            owner : "Pedro Amaral"
        },
        { 
            id : 2 , 
            name : "activity2", 
            description : "activitytest2", 
            owner : "Pedro Amaral"
        },
        { 
            id : 3 , 
            name : "activity3", 
            description : "activitytest3", 
            owner : "Pedro Amaral"
        },
        { 
            id : 4 , 
            name : "activity4", 
            description : "activitytest4", 
            owner : "Pedro Amaral"
        },
    ]};
    
    placeCards( $("#cards"), jsonData, cardBodyAsList );
    */

    $.ajax({
        async : true ,
        contentType : "application/json" ,
        url : "activity",
        dataType : "json",
        method : "GET",
        success: function(jsonData)
        {
            //console.log(jsonData);
            placeCards( $("#cards"), jsonData, cardBodyAsList );
        },
        error: function(err)
        {
            console.log("Error in ajax call to '/activity'");
            console.log(err);
        }
    });

 


});