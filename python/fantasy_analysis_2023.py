"""
Reading in and Analysis Fantasy Football 2023


"""


# Dependencies
import pandas as pd
import espnfantasyfootball_main.espnfantasyfootball as espn
import requests
import espnsecrets




# Get League
league = espn.FantasyLeague(league_id=1527302859, year=2023, swid=espnsecrets.swid, espn_s2=espnsecrets.espn_s2)

# get data
data = league.get_league_data()

# save data
data.to_csv("data/league_data_2023.csv")

# get matchups
matchups = league.get_matchup_data()
# save matchups
matchups.to_csv("data/league_matchups_2023.csv")

