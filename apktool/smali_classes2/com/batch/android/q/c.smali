.class public final Lcom/batch/android/q/c;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# static fields
.field protected static final b:Ljava/lang/String; = "_db_id"

.field protected static final c:Ljava/lang/String; = "fetchers"

.field protected static final d:Ljava/lang/String; = "type"

.field protected static final e:Ljava/lang/String; = "identifier"

.field protected static final f:Ljava/lang/String; = "fetcher_notifications"

.field protected static final g:Ljava/lang/String; = "fetcher_id"

.field protected static final h:Ljava/lang/String; = "install_id"

.field protected static final i:Ljava/lang/String; = "custom_id"

.field protected static final j:Ljava/lang/String; = "notifications"

.field protected static final k:Ljava/lang/String; = "notification_id"

.field protected static final l:Ljava/lang/String; = "send_id"

.field protected static final m:Ljava/lang/String; = "title"

.field protected static final n:Ljava/lang/String; = "body"

.field protected static final o:Ljava/lang/String; = "unread"

.field protected static final p:Ljava/lang/String; = "deleted"

.field protected static final q:Ljava/lang/String; = "date"

.field protected static final r:Ljava/lang/String; = "payload"

.field private static final s:Ljava/lang/String; = "ba_in.db"

.field private static final t:I = 0x2


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "ba_in.db"

    invoke-direct {p0, p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    const-string p0, "create table fetchers(_db_id integer primary key autoincrement, type integer not null, identifier text not null, unique(type, identifier));"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "create table notifications(_db_id integer primary key autoincrement, notification_id text not null, send_id text not null, title text not null, body text not null, unread integer not null default 0 check(unread IN (0,1)), deleted integer not null default 0 check(deleted IN (0,1)), date integer not null, payload text, unique(notification_id,send_id));"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "create table fetcher_notifications(_db_id integer primary key autoincrement, fetcher_id integer not null, notification_id text not null, install_id text, custom_id text, unique(fetcher_id, notification_id), foreign key(fetcher_id) references fetchers(_db_id), foreign key(notification_id) references notifications(notification_id));"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    const/4 p0, 0x2

    if-ge p2, p0, :cond_0

    const-string p0, "ALTER TABLE notifications ADD COLUMN deleted integer not null default 0 check(deleted IN (0,1)) "

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
