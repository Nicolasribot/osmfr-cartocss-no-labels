.symbols {
  ::aeroway [zoom>=10] {
    [aeroway = 'helipad'][zoom >= 16] {
      point-file: url('symbols/helipad.svg');
    }

	  [aeroway = 'aerodrome'][aerodrome = 'international'],
	  [aeroway = 'aerodrome'][aerodrome = 'airport'],
	  [aeroway = 'aerodrome'][aerodrome = 'continental'],
	  [aerodrome =~ '(military|airfield)'],
	  [aeroway = 'airport'] {
  		point-file: url('symbols/airport2.svg');
  		[aerodrome =~ '(military|airfield)'] {
  			point-file: url('symbols/airport-red.svg');
  		}
	  }

	  [aeroway = 'aerodrome'] {
  		point-file: url('symbols/aerodrome.svg');
  		[zoom>=12] {
  			text-dy: -12;
  			text-name: "[nom]";
  			[zoom>=15] { text-name: "[name]"; }
  			text-size: 9;
  			text-fill: #6692da;
  			text-face-name: @oblique-fonts;
  			text-halo-radius: 1;
  			text-placement: interior;
  		}
	  }
  }

  ::man_made {
    [man_made = 'lighthouse'][zoom >= 15]::man_made {
      point-file: url('symbols/lighthouse.p.20.png');
      point-placement: interior;
    }

    [man_made = 'windmill'][zoom >= 16]::man_made {
      point-file: url('symbols/windmill.png');
      point-placement: interior;
    }

    [man_made = 'mast'][zoom >= 17]::man_made {
      point-file: url('symbols/communications.p.20.png');
      point-placement: interior;
    }
  }

  ::railway {
    [railway =~ '(level_crossing|crossing)'][zoom >= 15] {
      point-file: url('symbols/level_crossing2.svg');
      point-transform: "scale(0.5)";
      point-placement: interior;
    }

    [railway = 'buffer_stop'][zoom >= 17] {
      point-file: url('symbols/buffer_stop.svg');
      [zoom=17] { point-transform: "scale(0.5)"; }
    }
  }

  ::natural {
    [natural = 'peak'][zoom >= 11] {
      point-file: url('symbols/peak.svg');
      point-placement: interior;
    }

    [mountain_pass = 'yes'][zoom >= 11],
    [natural = 'saddle'][zoom >= 11]::natural {
      point-file: url('symbols/mountain_pass.svg');
      point-placement: interior;
    }

    [natural = 'volcano'][zoom >= 11] {
      point-file: url('symbols/volcano.png');
      point-placement: interior;
    }

    [natural = 'cave_entrance'][zoom >= 15] {
      point-file: url('symbols/poi_cave.p.16.png');
      point-placement: interior;
    }

    [natural = 'spring'][zoom >= 14] {
      point-file: url('symbols/spring.png');
      point-placement: interior;
    }
  }

  ::power {
    [zoom >= 12][power = 'plant'],
    [zoom >= 15][power = 'generator']['generator:source' = 'wind'],
    [zoom >= 15][power = 'generator'][power_source = 'wind']
     {
        point-file: url('symbols/fr/electricity.svg');
        point-placement: interior;
  	  [power = 'generator']['generator:source' = 'wind'],
  	  [power = 'generator'][power_source = 'wind']
  	  {
  		  point-file: url('symbols/power_wind.png');
  	  }
    }
  }

  ::highway {
    [highway = 'mini_roundabout'][zoom >= 16] {
      point-file: url('symbols/mini_round.png');
      point-placement: interior;
    }

    [highway = 'gate'],
    [barrier = 'gate'] {
      [zoom >= 15] {
        point-file: url('symbols/gate2.png');
        point-placement: interior;
      }
    }

    [barrier = 'toll_booth'][zoom >= 15],
    [barrier = 'lift_gate'][zoom >= 16] {
      point-file: url('symbols/lift_gate.svg');
      point-placement: interior;
    }

    [barrier =~ '(bollard|block)'] {
      [zoom >= 16] {
        point-file: url('symbols/bollard.png');
        point-placement: interior;
      }
    }
  }
}
