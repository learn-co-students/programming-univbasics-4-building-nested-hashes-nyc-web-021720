def base_hash
	base_hash = { :railroads => {} }
end

def monopoly_with_second_tier
  base_hash = { :railroads => {:pieces => 4} }
end

def monopoly_with_third_tier
  base_hash = { :railroads => 
                  {:pieces => 4,
                  
                  :rent_in_dollars => {
                    :four_pieces_owned => 200,
                    :three_pieces_owned =>100,
                    :two_pieces_owned => 50,
                    :one_piece_owned => 25
                  },
                  
                  :names => {
                    :shortline_railroad => {},
                    :b_and_o_railroad => {},
                    :pennsylvania_railroad => {},
                    :reading_railroad => {}
                  }
                    
                  } 
    
  }
  
end

def monopoly_with_fourth_tier
  base_hash = { :railroads => 
                  {:pieces => 4,
                  
                  :rent_in_dollars => {
                    :four_pieces_owned => 200,
                    :three_pieces_owned =>100,
                    :two_pieces_owned => 50,
                    :one_piece_owned => 25
                  },
                  
                  :names => {
                    :shortline_railroad => {"mortgage_value" => "$800"},
                    :b_and_o_railroad => {"mortgage_value" => "$400"},
                    :pennsylvania_railroad => {"mortgage_value" => "$200"},
                    :reading_railroad => {"mortgage_value" => "$100"}
                  }
                    
                  } 
  }
  
  return base_hash
end  
