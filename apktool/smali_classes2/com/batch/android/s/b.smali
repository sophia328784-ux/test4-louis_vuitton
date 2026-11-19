.class public final Lcom/batch/android/s/b;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/s/b$a;
    }
.end annotation


# static fields
.field public static final b:I = 0x3

.field public static final c:Ljava/lang/String; = "LocalCampaignsSQLTracker.db"

.field private static final d:Ljava/lang/String; = "CREATE TABLE LocalCampaignsSQLTracker (_id INTEGER PRIMARY KEY AUTOINCREMENT,id TEXT,kind INTEGER,count INTEGER,last_oc INTEGER,custom_user_id TEXT,unique (id, custom_user_id, kind) on conflict replace)"

.field private static final e:Ljava/lang/String; = "DROP TABLE IF EXISTS LocalCampaignsSQLTracker"

.field private static final f:Ljava/lang/String; = "CREATE TABLE view_events (_id INTEGER PRIMARY KEY AUTOINCREMENT,campaign_id TEXT,timestamp_ms INTEGER NOT NULL,custom_user_id TEXT)"

.field private static final g:Ljava/lang/String; = "CREATE TRIGGER trigger_clean_view_events AFTER INSERT ON view_events BEGIN DELETE FROM view_events WHERE timestamp_ms=( SELECT min(timestamp_ms)  FROM view_events ) AND (SELECT count(*) from view_events )>100; END;"

.field private static final h:Ljava/lang/String; = "ALTER TABLE view_events ADD COLUMN custom_user_id text DEFAULT \'\';"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    const-string v2, "LocalCampaignsSQLTracker.db"

    invoke-direct {p0, p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;
    .locals 7

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Table LocalCampaignsSQLTracker:\n"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "SELECT * FROM LocalCampaignsSQLTracker"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const-string v3, "\n"

    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string p0, "ALTER TABLE LocalCampaignsSQLTracker RENAME TO LocalCampaignsSQLTracker_temp"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE LocalCampaignsSQLTracker (_id INTEGER PRIMARY KEY AUTOINCREMENT,id TEXT,kind INTEGER,count INTEGER,last_oc INTEGER,custom_user_id TEXT,unique (id, custom_user_id, kind) on conflict replace)"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "INSERT INTO LocalCampaignsSQLTracker (_id, id, kind, count, last_oc, custom_user_id) SELECT _id, id, kind, count, last_oc, \'\' FROM LocalCampaignsSQLTracker_temp"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "DROP TABLE IF EXISTS LocalCampaignsSQLTracker_temp"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "ALTER TABLE view_events ADD COLUMN custom_user_id text DEFAULT \'\';"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    const-string p0, "CREATE TABLE LocalCampaignsSQLTracker (_id INTEGER PRIMARY KEY AUTOINCREMENT,id TEXT,kind INTEGER,count INTEGER,last_oc INTEGER,custom_user_id TEXT,unique (id, custom_user_id, kind) on conflict replace)"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE view_events (_id INTEGER PRIMARY KEY AUTOINCREMENT,campaign_id TEXT,timestamp_ms INTEGER NOT NULL,custom_user_id TEXT)"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TRIGGER trigger_clean_view_events AFTER INSERT ON view_events BEGIN DELETE FROM view_events WHERE timestamp_ms=( SELECT min(timestamp_ms)  FROM view_events ) AND (SELECT count(*) from view_events )>100; END;"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    const/4 p3, 0x2

    if-ge p2, p3, :cond_0

    const-string p3, "CREATE TABLE view_events (_id INTEGER PRIMARY KEY AUTOINCREMENT,campaign_id TEXT,timestamp_ms INTEGER NOT NULL,custom_user_id TEXT)"

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "CREATE TRIGGER trigger_clean_view_events AFTER INSERT ON view_events BEGIN DELETE FROM view_events WHERE timestamp_ms=( SELECT min(timestamp_ms)  FROM view_events ) AND (SELECT count(*) from view_events )>100; END;"

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    const/4 p3, 0x3

    if-ge p2, p3, :cond_1

    invoke-virtual {p0, p1}, Lcom/batch/android/s/b;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_1
    return-void
.end method
