#power-line  [zoom >= 14][zoom < 16][location!='underground'] {
    line-width: 0.5;
    line-color: #777;
}

#power-minorline [zoom >= 16][location!='underground'] {
    line-width: 0.25;
    line-color: #777;
    [power_type='line'] {
    	line-width: 1;
		[line='busbar'],
		[line='bay'] {
			line-width: 0.5;
		}
    }
}

#power-towers {
  [zoom >= 14] {
    point-file: url('symbols/power_tower_3x3.png');
  }
  [zoom >= 15] {
    point-file: url('symbols/power_tower_5x5.png');
  }
  [zoom >= 17] {
    point-file: url('symbols/power_tower.png');
  }
}

#power-poles {
  [zoom >= 16] {
    point-file: url('symbols/power_pole.png');
  }
}
