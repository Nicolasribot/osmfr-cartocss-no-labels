#buildings-lz {
  [zoom >= 12] {
    [railway = 'station'],
    [building = 'station'] {
      polygon-fill: #d4aaaa;
    }

    [shop!=''],[building = 'supermarket'] {
      polygon-fill: pink;
      polygon-opacity: 0.5;
    }
  }
}

#buildings {
  [building != ''][zoom >= 14] {
    [heritage != '']
     {
      polygon-fill: #888;
      polygon-opacity: 0.5;
    }

    [building = 'greenhouse'] {
      polygon-fill: #c5d2b4;
    }

    polygon-fill: #bdacac;					/* 9%/74% (sat./bright) */
    [zoom = 16] {polygon-fill: #c2b2b2;}	/* 8%/76% */
    [zoom = 17] {polygon-fill: #ccbebe;}	/* 7%/80% */
    [zoom >= 18] {
    	polygon-fill: #d1c5c5;				/* 6%/82% */
      	line-color: #d1c5c5;
      	line-width: 0.5;
      	line-opacity: 0.7;
    }
    polygon-opacity: 0.7;
/*    [zoom >= 16] {
      line-color: #330066;
      line-width: 0.2;
      line-opacity: 0.33;
    }
*/
  	[zoom >= 18][wall='no'],
  	[zoom >= 18][building='roof'] {
  		polygon-opacity: 0.35;
	}

  }
  [aeroway = 'terminal'][zoom >= 14]::aeroway {
    polygon-fill: #cc99ff;
    [zoom >= 14] {
      line-color: #330066;
      line-width: 0.2;
    }
  }
}


#indoor [zoom >= 18] {
	line-color: #220044;
	line-width: 0.2;
}
