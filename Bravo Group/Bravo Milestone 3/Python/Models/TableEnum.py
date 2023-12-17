from enum import Enum


# List of all valid tables
class Tables(Enum):
    airfare = "airfare"
    destination = "destination"
    employee = "employee"
    equipment = "equipment"
    marketing = "marketing"
    trip = "trip"
    guide ="guide"
    customer = "customer"
    registration = "registration"
    product = "product"
    rental = "rental"
    orders = "orders"

# List of all destination locations
class Destinations(Enum):
    destination1 = "Spituk Gompa"
    destination2 = "Dubai Desert Safari"
    destination3 = "Nandi Hills"
    destination4 = "Grand Canyon"
    destination5 = "Iceland blue lagoon"
    destination6 = "Cinque Terre"
