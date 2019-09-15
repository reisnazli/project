# Web scraping and pickle
from typing import List, Any

import requests
from bs4 import BeautifulSoup
import pickle

# Scrapping
def url_to_comment(url):
    page = requests.get(url).text
    soup = BeautifulSoup(page, "html.parser")
    # text = [p.text for p in soup.find_all(class_='c-review__body')]
    text=[p.text for p in soup.find_all(class_='notes')]
    print(url)
    return text

# from urllib.request import urlopen
# def url_to_comment(url):
#     page=urlopen(url)
#     source=BeautifulSoup(page, 'html.parser')
#     table=source.find('table', {'class': 'c-review__body'})
#     abbs=table.find_all('c-review__row')
#     values = [ele.text.strip() for ele in abbs]
#     print(values)


# URLs for the hotels from booking website
# Criteria for the evaluation is comments over 300

# urls=['https://www.booking.com/hotel/tr/mercure-istanbul-city-bosphorus.tr.html?aid=304142;label=gen173nr-1FCAEoggI46AdIM1gEaH2IAQGYASi4ARfIAQzYAQHoAQH4AQuIAgGoAgO4AuLYmOsFwAIB;sid=9c6c9cd702c141f0da07de97f6576359;all_sr_blocks=8962439_94303572_2_2_0;checkin=2019-08-29;checkout=2019-08-30;dest_id=-755070;dest_type=city;dist=0;group_adults=2;hapos=1003;highlighted_blocks=8962439_94303572_2_2_0;hpos=23;room1=A%2CA;sb_price_type=total;sr_order=review_score_and_price;srepoch=1566978976;srpvid=f16937cf3eca00ad;type=total;ucfs=1&#tab-reviews',
#       'https://www.booking.com/hotel/tr/nippon-istanbul.tr.html?aid=304142;label=gen173nr-1FCAEoggI46AdIM1gEaH2IAQGYASi4ARfIAQzYAQHoAQH4AQuIAgGoAgO4AuLYmOsFwAIB;sid=9c6c9cd702c141f0da07de97f6576359;all_sr_blocks=18661401_91911661_0_42_0;checkin=2019-08-29;checkout=2019-08-30;dest_id=-755070;dest_type=city;dist=0;group_adults=2;hapos=1002;highlighted_blocks=18661401_91911661_0_42_0;hpos=22;room1=A%2CA;sb_price_type=total;sr_order=review_score_and_price;srepoch=1566978976;srpvid=f16937cf3eca00ad;type=total;ucfs=1&#tab-reviews',
#       'https://www.booking.com/hotel/tr/senator-taksim.tr.html?aid=304142;label=gen173nr-1FCAEoggI46AdIM1gEaH2IAQGYASi4ARfIAQzYAQHoAQH4AQuIAgGoAgO4AuLYmOsFwAIB;sid=9c6c9cd702c141f0da07de97f6576359;all_sr_blocks=26810707_89004890_0_1_0;checkin=2019-08-29;checkout=2019-08-30;dest_id=-755070;dest_type=city;dist=0;group_adults=2;hapos=1000;highlighted_blocks=26810707_89004890_0_1_0;hpos=20;room1=A%2CA;sb_price_type=total;sr_order=review_score_and_price;srepoch=1566978976;srpvid=f16937cf3eca00ad;type=total;ucfs=1&#tab-reviews',
#       'https://www.booking.com/hotel/tr/beyond-style.tr.html?aid=304142;label=gen173nr-1FCAEoggI46AdIM1gEaH2IAQGYASi4ARfIAQzYAQHoAQH4AQuIAgGoAgO4AuLYmOsFwAIB;sid=9c6c9cd702c141f0da07de97f6576359;all_sr_blocks=158344301_88626697_2_1_0;checkin=2019-08-29;checkout=2019-08-30;dest_id=-755070;dest_type=city;dist=0;group_adults=2;hapos=996;highlighted_blocks=158344301_88626697_2_1_0;hpos=16;room1=A%2CA;sb_price_type=total;sr_order=review_score_and_price;srepoch=1566978976;srpvid=f16937cf3eca00ad;type=total;ucfs=1&#tab-reviews',
#       'https://www.booking.com/hotel/tr/ambassadorhotel.tr.html?aid=304142;label=gen173nr-1FCAEoggI46AdIM1gEaH2IAQGYASi4ARfIAQzYAQHoAQH4AQuIAgGoAgO4AuLYmOsFwAIB;sid=9c6c9cd702c141f0da07de97f6576359;all_sr_blocks=8621707_88795945_0_1_0;checkin=2019-08-29;checkout=2019-08-30;dest_id=-755070;dest_type=city;dist=0;group_adults=2;hapos=995;highlighted_blocks=8621707_88795945_0_1_0;hpos=15;room1=A%2CA;sb_price_type=total;sr_order=review_score_and_price;srepoch=1566978976;srpvid=f16937cf3eca00ad;type=total;ucfs=1&#tab-reviews']

urls=['https://www.hostelworld.com/hosteldetails.php/Hipotel-Paris-Belleville/Paris/17136?dateFrom=2019-09-24&dateTo=2019-09-25&number_of_guests=1&sc_pos=2#reviews',
      'https://www.hostelworld.com/hosteldetails.php/Hotel-Hipotel-Paris-Hippodrome/Paris/29790?dateFrom=2019-09-24&dateTo=2019-09-25&number_of_guests=1&sc_pos=4#reviews',
      'https://www.hostelworld.com/hosteldetails.php/Hotel-Gerando/Paris/47?dateFrom=2019-09-24&dateTo=2019-09-25&number_of_guests=1&sc_pos=6#reviews',
      'https://www.hostelworld.com/hosteldetails.php/Hotel-Le-Rocroy-Gare-du-Nord/Paris/35200?dateFrom=2019-09-24&dateTo=2019-09-25&number_of_guests=1&sc_pos=9#reviews',
      'https://www.hostelworld.com/hosteldetails.php/Eurohotel-St-Denis/Paris/36568?dateFrom=2019-09-24&dateTo=2019-09-25&number_of_guests=1&sc_pos=1#reviews']

# Hotel names
# hotels=['mercure','nippon','senator','beyond','ambassador']
hotels=['belleville','hippodrome','gerando','recroy','eurohotel']
comments=[url_to_comment(u) for u in urls]

# Pickle files
# make folder name as a comments

for i,c in enumerate(hotels):
    with open('comments/'+c+'.txt','wb') as file:
        pickle.dump(comments[i], file)

# Load pickled files
data={}

for i, c in enumerate(hotels):
    with open('comments/'+c+'.txt','rb') as file:
        data[c]=pickle.load(file)

# Double check
data.keys()

# Take a look at our data
next(iter(data.keys()))

# Change this to key: hotels, value:string format
def combine_text(list_of_text):
    combined_text=''.join(list_of_text)
    return combined_text

# Combine it
data_combined={key:[combine_text(value)] for (key,value) in data.items()}

import pandas as pd

pd.set_option('max_colwidth', 150)

data_df=pd.DataFrame.from_dict(data_combined).transpose()
data_df.columns = ['comments']
data_df = data_df.sort_index()
data_df

data_df.comments.loc['belleville']

# Apply a first round of text cleaning techniques
import re
import string


def clean_text_round1(text):
    ' Make text lowercase, remove text in square brackets, remove punctuation and remove words containing numbers.'''
    text = text.lower()
    text = re.sub('\[.*?\]', '', text)
    text = re.sub('[%s]' % re.escape(string.punctuation), '', text)
    text = re.sub('\w*\d\w*', '', text)
    return text


round1 = lambda x: clean_text_round1(x)

# Let's take a look at the updated text
data_clean = pd.DataFrame( data_df.comments.apply(round1))
data_clean


# Apply a second round of cleaning
def clean_text_round2(text):
    '''Get rid of some additional punctuation and non-sensical text that was missed the first time around.'''
    text = re.sub( '[‘’“”…]', '', text )
    text = re.sub( '\n', '', text )
    return text


round2 = lambda x: clean_text_round2( x )

# Let's take a look at the updated text
data_clean = pd.DataFrame( data_clean.comments.apply(round2))
data_clean

# ORGANIZE THE DATA
# Let's take a look at our dataframe
data_df

# Let's add the comedians' full names as well

full_names=['belleville','hippodrome','gerando','recroy','eurohotel']

data_df['hotel_name'] = full_names
data_df

# Let's pickle it for later use
data_df.to_pickle( "corpus.pkl" )

# DOCUMENT TERM MATRIX
# We are going to create a document-term matrix using CountVectorizer, and exclude common English stop words
from sklearn.feature_extraction.text import CountVectorizer

cv = CountVectorizer(stop_words='english')
data_cv = cv.fit_transform(data_clean.comments)
data_dtm = pd.DataFrame(data_cv.toarray(), columns=cv.get_feature_names())
data_dtm.index = data_clean.index
data_dtm

# Let's pickle it for later use
data_dtm.to_pickle("dtm.pkl")

# Let's also pickle the cleaned data (before we put it in document-term matrix format) and the CountVectorizer object
data_clean.to_pickle('data_clean.pkl')
pickle.dump(cv, open("cv.pkl", "wb"))