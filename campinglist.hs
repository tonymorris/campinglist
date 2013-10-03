import Data.Set(Set)
import qualified Data.Set as S
import Prelude((==), (.), Bool, String, Eq, Show, foldr, id, undefined)

list ::
  Items
list = 
  [
    "Steak" !> "food"
  , "Sausages" !> "food"
  , "Onions" !> "food"
  , "Eggs" !> "food"
  , "Bread" !> "food"
  , "Cheese" !> "food"
  , "Butter" !> "food"
  , "Milk" !> "food"
  , "Ice" !> "food"
  , "Sugar" !> "food"
  , "Salt / Pepper" !> "food"
  , "Fruit" !> "food"
  , "Gas Stove" !> "cooking"
  , "Gas Bottle" !> "cooking"
  , "Frying Pan" !> "cooking"
  , "Billy" !> "cooking"
  , "Egg Flipper" !> "cooking"
  , "Tongs" !> "cooking"
  , "Plastic Plates" !> "cooking"
  , "Plastic Bowls" !> "cooking"
  , "Plastic Cutlery" !> "cooking"
  , "Paper Towel" !> "cooking"
  , "Can Opener" !> "cooking"
  , "Plastic Drinking Cups" !> "cooking"
  , "Washing Up Bucket" !> "cooking"
  , "Washing Up Detergent and Cloth" !> "cooking"
  , "Aluminium Foil" !> "cooking"
  , "Plastic Wrap" !> "cooking"
  , "Tea Towels" !> "cooking"
  , "Scourer" !> "cooking"
  , "Dish Brush" !> "cooking"
  , "Can Opener" !> "cooking"
  , "Chopping Board" !> "cooking"
  , "Large Knife" !> "cooking"
  , "Corkscrew" !> "cooking"
  , "Camping Cupboard" !> "cooking"
  , "Folding Table" !> "cooking"
  , "Beer" !> "drink"
  , "Beer Cooler" !> "drink"
  , "Water / Water Bottles" !> "drink"
  , "Soft Drink" !> "drink"
  , "Electrolyte Drink" !> "drink"
  , "Tea / Coffee" !> "drink"
  , "Beanie" !> "clothing"
  , "Scarf" !> "clothing"
  , "Gloves" !> "clothing"
  , "Jeans" !> "clothing"
  , "Trackpants" !> "clothing"
  , "Woolen Jumper" !> "clothing"
  , "Socks" !> "clothing"
  , "Underwear" !> "clothing"
  , "Thermal Clothing" !> "clothing"
  , "Running Shoes" !> "clothing"
  , "Hiking Boots" !> "clothing"
  , "Hat / Cap" !> "clothing"
  , "Pyjamas" !> "clothing"
  , "Tent" !> "shelter"
  , "Sleeping Bag" !> "shelter"
  , "Swag" !> "shelter"
  , "Pillows" !> "shelter"
  , "Undermat" !> "shelter"
  , "Tarpaulin" !> "shelter"
  , "Air Pump" !> "shelter"
  , "Camping Chairs" !> "outdoor"
  , "Camping Light" !> "outdoor"
  , "Toilet Paper" !> "hygiene"
  , "Toothbrush" !> "hygiene"
  , "Toothpaste" !> "hygiene"
  , "Deodorant" !> "hygiene"
  , "Soap" !> "hygiene"
  , "Shampoo / Conditioner" !> "hygiene"
  , "Towel" !> "hygiene"
  , "Hair Brush" !> "hygiene"
  , "Thongs" !> "hygiene"
  , "Football" !> "recreation"
  , "Soccer Ball" !> "hygiene"
  , "Cricket Set" !> "hygiene"
  , "Card Deck x 2" !> "hygiene"
  , "Swimming Gear" !> "hygiene"
  , "Chess Board" !> "hygiene"
  , "First Aid Book" !> "first aid"
  , "Saline Solution" !> "first aid"
  , "Torch" !> "first aid"
  , "Whistle" !> "first aid"
  , "Gauze Pads" !> "first aid"
  , "Non-adherent Gauze Pads" !> "first aid"
  , "Burn Ointment" !> "first aid"
  , "Anaesthetic Spray" !> "first aid"
  , "Thermometer" !> "first aid"
  , "Tweezers" !> "first aid"
  , "Examination Gloves" !> "first aid"
  , "Resuscitation Mask" !> "first aid"
  , "Safety Pins x 2" !> "first aid"
  , "Trauma Scissors" !> "first aid"
  , "Iodine Pack" !> "first aid"
  , "Splint" !> "first aid"
  , "Band-Aids" !> "first aid"
  , "Fishing Knife" !> "fishing"
  , "Hooks" !> "fishing"
  , "Sinkers" !> "fishing"
  , "Swivels" !> "fishing"
  , "Wire Traces" !> "fishing"
  , "Floats" !> "fishing"
  , "Spare Line" !> "fishing"
  , "Lures" !> "fishing"
  , "Fishing Rod" !> "fishing"
  , "Fishing Reels" !> "fishing"
  , "Walking Boots" !> "walking"
  , "Compass" !> "walking"
  , "Maps" !> "walking"
  , "Walking Stick" !> "walking"
  , "Waterproof Matches" !> "survival"
  , "Standard Matches" !> "survival"
  , "Tallow Candle" !> "survival"
  , "Flint" !> "survival"
  , "Magnifying Glass" !> "survival"
  , "Needle and Thread" !> "survival"
  , "Fish Hooks and Line" !> "survival"
  , "Compass" !> "survival"
  , "Beta Light" !> "survival"
  , "Snare Wire" !> "survival"
  , "Flexible Saw" !> "survival"
  , "Analgesic Drugs" !> "survival"
  , "Intestinal Sedative" !> "survival"
  , "Antihistamine" !> "survival"
  , "Water-sterilising tablets" !> "survival"
  , "Anti-malaria tablets" !> "survival"
  , "Potassium Permanganate" !> "survival"
  , "Surgical Blades" !> "survival"
  , "Steri Strips" !> "survival"
  , "Plasters" !> "survival"
  , "Condoms" !> "survival"
  , "Aluminium Mess Tin" !> "survival"
  , "Solid Fuel" !> "survival"
  , "Torch" !> "survival"
  , "Signal Flares" !> "survival"
  , "Survival Knife" !> "survival"
  , "Camera" !> "survival"
  , "Pen & Paper" !> "survival"
  , "Polythene Bags" !> "survival"
  , "Torch" !> "survival"
  , "Fluoroscent Lantern" !> "survival"
  , "Rope" !> "survival"
  , "Chair" !> "survival"
  , "Matches" !> "survival"
  , "Esky" !> "survival"
  ]

data Item =
  Item String (Set String)
  deriving (Eq, Show)

type Items =
  [Item]

item ::
  String
  -> (Set String)
  -> Item
item =
  Item

nitem ::
  String
  -> Item
nitem =
  (`Item` S.empty)

(!>) ::
  String
  -> String
  -> Item
(!>) s =
  Item s . S.singleton

(#>) ::
  String
  -> [String]
  -> Item
(#>) s =
  Item s . S.fromList

filterI ::
  (Item -> Bool)
  -> Items
filterI p =
  foldr (\i -> if p i then (i:) else id) [] list

tagged t =
  filterI (\(Item _ t') -> S.member t t')
