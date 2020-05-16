date_strings = c("14.07.2014", "14.07.2016")
datetimes = strptime(date_strings, format = "%d.%m.%Y") # convert to datetime objects
datetimes

diff_in_days = difftime(datetimes[2], datetimes[1], units = "days") # days
diff_in_days
#Time difference of 435.9583 days

diff_in_years = as.double(diff_in_days)/365.25 # absolute years
diff_in_years
#[1] 1.194406
floor(diff_in_years)

# months, defined as absolute calendar months (this might be what you want, given your question details)
month_diff = diff_in_years*12
floor(month_diff)
#[1] 14
