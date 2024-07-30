select 
round(abs(max(long_w)-min(long_w))+ abs(max(lat_n)-min(lat_n)),4)
from station;