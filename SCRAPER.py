import requests
from bs4 import BeautifulSoup
import json

def scrape_events():
    url = "https://www.eventbrite.com.au/d/australia--sydney/events/"
    response = requests.get(url)
    soup = BeautifulSoup(response.text, 'html.parser')

    events = []
    for card in soup.select('.eds-event-card-content__content'):
        title = card.select_one('.eds-event-card-content__title') or {}
        date = card.select_one('.eds-text-bs--fixed') or {}
        link_tag = card.find('a', href=True)

        if title and date and link_tag:
            events.append({
                'title': title.text.strip(),
                'date': date.text.strip(),
                'url': link_tag['href']
            })

    with open("events.json", "w") as f:
        json.dump(events, f, indent=4)

if _name_ == "_main_":
    scrape_events()