def drag_and_drop_element(access_type, access_name, direction, distance_in_pixels)
	element = $driver.find_element(:"#{access_type}" => "#{access_name}")
	
	case direction
	when 'right'
		$driver.action.drag_and_drop_by(element, distance_in_pixels.to_i, 0).perform
	when 'left'
		$driver.action.drag_and_drop_by(element, -distance_in_pixels.to_i, 0).perform
	when 'top'
		$driver.action.drag_and_drop_by(element, 0, distance_in_pixels.to_i).perform
	when 'bottom'
		$driver.action.drag_and_drop_by(element, 0, -distance_in_pixels.to_i).perform
	else
		raise "direction #{direction} is unrecognized"
	end
end
