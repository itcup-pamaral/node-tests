

function placeCards( parentElem , cardsJson , cardBodyGenerator) //, bodyParams)
{

    var mainDiv = $("<div>").addClass("col-md-12 bootcards-cards");

    cardsJson.activities.forEach( function(currentActivity,index,arr){
        var cardDiv = $("<div>").addClass("panel col-md-3");
        //card header
        var headerDiv = $("<div>").addClass("panel-heading clearfix");
        headerDiv.append( 
            $("<h3>").html(currentActivity.name)
                    .addClass("panel-title pull-left"),
            $("<a>").attr("href","javascript:alert('clicked header button')")
                    .addClass("btn btn-primary pull-right")
                    .append( $("<i>").addClass("fa fa-pencil") , "Open" ) 
        );

        //card body
        var bodyDiv = cardBodyGenerator( currentActivity );

        //card footer
        var footerDiv = $("<div>").addClass("panel-footer").append(
            $("<small>").html("Rendered activity with id '" + currentActivity.id + "'")
        );

        cardDiv.append( headerDiv, bodyDiv, footerDiv );
        mainDiv.append( cardDiv , $("<div>").addClass("col-md-1"));
    });

    parentElem.append(mainDiv);
}

function cardBodyAsList( activity ) //, bodyParams)
{
    var cardBody = $("<div>").addClass( "list-group" ),
        key;

    for( key in activity){
        cardBody.append( genListEntry(key, activity[key] ) );
    }

//    bodyParams.forEach( function (val,idx,arr){
//        genListEntry(val, activity[val] );
//    });
//    cardBody.append( 
//        genListEntry( "Name", activity.name ),
//        genListEntry( "Owner", activity.owner),
//        genListEntry( "Description", activity.description ) 
//    );

    return cardBody;
}

function genListEntry( label, value )
{
    var listEntry = $("<div>").addClass("list-group-item").append(
        $("<p>").addClass("list-group-item-text").html( label ) ,
        $("<h4>").addClass("list-group-item-heading").html( value ) 
    );

    return listEntry;
}