-- INNER JOIN to retrieve all bookings and the respective users who made those bookings.
SELECT User.first_name, Booking.booking_id
FROM User
INNER JOIN Booking ON User.user_id = Booking.user_id;

-- LEFT JOIN to retrieve all properties and their reviews, including properties that have no reviews.
SELECT Property.name, Review.rating, Review.comment
FROM Property
LEFT JOIN Review ON Property.property_id = Review.property_id;

-- FULL OUTER JOIN to retrieve all users and all bookings, even if the user has no booking or a booking is not linked to a user.
SELECT User.first_name, Booking.booking_id
FROM User
LEFT JOIN Booking ON User.user_id = Booking.user_id
UNION
SELECT User.first_name, Booking.booking_id
FROM Booking
RIGHT JOIN User ON User.user_id = Booking.user_id;
