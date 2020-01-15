def base_hash
  {:railroads => {}}
end

def monopoly_with_second_tier
  monopoly = base_hash
  monopoly[:railroads][:pieces] = 4
  return monopoly
end

def monopoly_with_third_tier
  monopoly = monopoly_with_second_tier
  railroads = monopoly[:railroads]
  railroads[:rent_in_dollars] = {
    :one_piece_owned => 25,
    :two_pieces_owned => 50,
    :three_pieces_owned => 100,
    :four_pieces_owned => 200
  }
  railroads[:names] = {
    :reading_railroad => {},
    :pennsylvania_railroad => {},
    :b_and_o_railroad => {},
    :shortline_railroad => {}
  }
  return monopoly
end

def monopoly_with_fourth_tier
  monopoly = monopoly_with_third_tier
  railroad_names = monopoly[:railroads][:names]
  railroad_names[:reading_railroad] = createMortgageHash("$100")
  railroad_names[:pennsylvania_railroad] = createMortgageHash("$200")
  railroad_names[:b_and_o_railroad] = createMortgageHash("$400")
  railroad_names[:shortline_railroad] = createMortgageHash("$800")
  return monopoly
end

def createMortgageHash(val)
  return {"mortgage_value" => val}
end