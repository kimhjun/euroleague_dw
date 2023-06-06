import psycopg2

def connect_db():
    try:
        conn = psycopg2.connect('host=localhost dbname=euroleague user=junn password=junn')
        cur = conn.cursor()
        conn.set_session(autocommit=True)
    except Exception as e:
        print("Failed to establish connection to db")
    return cur, conn