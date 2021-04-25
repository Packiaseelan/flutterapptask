class FlutterAppDbConfig {
  static const String databaseName = 'flutterappdb.db';
  static const int databaseVersion = 1;
  static const createTablesQueries = [
    '''
    'CREATE TABLE IF NOT EXISTS User(
            id INTEGER PRIMARY KEY
          , name TEXT
          , avatar TEXT
          , email TEXT
          , password TEXT
          , token TEXT
          , birthDate NUMERIC
    )
    ''',
    '''
    CREATE TABLE IF NOT EXISTS Post(
            id INTEGER PRIMARY KEY
          , userId INTEGER
          , description TEXT
          , type TEXT
          , imagePath TEXT
          , postedDate NUMERIC
    )
    ''',
    '''
    CREATE TABLE IF NOT EXISTS HashTags(
            id INTEGER PRIMARY KEY
          , title TEXT
          , isMandatory INTEGER
    )
    ''',
    '''
    CREATE TABLE IF NOT EXISTS PostLikes(
            id INTEGER PRIMARY KEY
          , postId INTEGER
          , userId INTEGER
    )
    ''',
    '''
    CREATE TABLE IF NOT EXISTS PostCommentss(
            id INTEGER PRIMARY KEY
          , postId INTEGER
          , userId INTEGER
          , comment TEXT
    )
    ''',
  ];
}
