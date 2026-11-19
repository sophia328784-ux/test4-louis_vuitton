.class public Lcom/linkplay/bonjour/db/LinkplayDatebase;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# static fields
.field private static final DB_NAME:Ljava/lang/String; = "linkplay_bonjour"

.field private static final DB_VERSION:I = 0x1

.field private static final FLAGS:Ljava/lang/String; = "flags"

.field private static final FULLNAME:Ljava/lang/String; = "fullName"

.field private static final IFINDEX:Ljava/lang/String; = "ifIndex"

.field private static final IP:Ljava/lang/String; = "ip"

.field private static final PORT:Ljava/lang/String; = "port"

.field private static final RDATA:Ljava/lang/String; = "rdata"

.field private static final RRCLASS:Ljava/lang/String; = "rrclass"

.field private static final RRTYPE:Ljava/lang/String; = "rrtype"

.field private static final SERVICENAME:Ljava/lang/String; = "serviceName"

.field private static final TABLE:Ljava/lang/String; = "service_table"

.field private static final TAG:Ljava/lang/String; = "LinkplayDatebase"

.field private static final TIME:Ljava/lang/String; = "time"

.field private static final UUID:Ljava/lang/String; = "uuid"

.field private static final VERSION:Ljava/lang/String; = "version"


# instance fields
.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private formater:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "linkplay_bonjour"

    invoke-direct {p0, p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/linkplay/bonjour/db/LinkplayDatebase;->formater:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iput-object p1, p0, Lcom/linkplay/bonjour/db/LinkplayDatebase;->db:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method private createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    const-string p0, "create table if not exists service_table (_id INTEGER PRIMARY KEY AUTOINCREMENT, ip TEXT, port INT, uuid TEXT, serviceName TEXT, flags INT, ifIndex INT, fullName TEXT, rrtype INT, rrclass INT, rdata BLOB, time DATETIME DEFAULT (datetime( \'now\', \'localtime\')));"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private insert(Lcom/linkplay/bonjour/model/LinkPlayService;)V
    .locals 11

    iget-object p0, p0, Lcom/linkplay/bonjour/db/LinkplayDatebase;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/linkplay/bonjour/model/LinkPlayService;->getIp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/linkplay/bonjour/model/LinkPlayService;->getPort()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/linkplay/bonjour/model/LinkPlayService;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/linkplay/bonjour/model/LinkPlayService;->getServiceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/linkplay/bonjour/model/LinkPlayService;->getFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1}, Lcom/linkplay/bonjour/model/LinkPlayService;->getIfIndex()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1}, Lcom/linkplay/bonjour/model/LinkPlayService;->getFullName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/linkplay/bonjour/model/LinkPlayService;->getRrtype()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1}, Lcom/linkplay/bonjour/model/LinkPlayService;->getRrclass()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p1}, Lcom/linkplay/bonjour/model/LinkPlayService;->getRdata()[B

    move-result-object v9

    invoke-virtual {p1}, Lcom/linkplay/bonjour/model/LinkPlayService;->getTimeStr()Ljava/lang/String;

    move-result-object v10

    filled-new-array/range {v0 .. v10}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "insert into  service_table(ip,port, uuid, serviceName, flags, ifIndex, fullName, rrtype, rrclass, rdata, time) values (?,?,?,?,?,?,?,?,?,?,?)"

    invoke-virtual {p0, v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private isServiceExist(Ljava/lang/String;)Z
    .locals 2

    iget-object p0, p0, Lcom/linkplay/bonjour/db/LinkplayDatebase;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "select ip,port,uuid from service_table where serviceName=?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method private update(Lcom/linkplay/bonjour/model/LinkPlayService;)V
    .locals 12

    iget-object p0, p0, Lcom/linkplay/bonjour/db/LinkplayDatebase;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/linkplay/bonjour/model/LinkPlayService;->getIp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/linkplay/bonjour/model/LinkPlayService;->getPort()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/linkplay/bonjour/model/LinkPlayService;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/linkplay/bonjour/model/LinkPlayService;->getServiceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/linkplay/bonjour/model/LinkPlayService;->getFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1}, Lcom/linkplay/bonjour/model/LinkPlayService;->getIfIndex()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1}, Lcom/linkplay/bonjour/model/LinkPlayService;->getFullName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/linkplay/bonjour/model/LinkPlayService;->getRrtype()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1}, Lcom/linkplay/bonjour/model/LinkPlayService;->getRrclass()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p1}, Lcom/linkplay/bonjour/model/LinkPlayService;->getRdata()[B

    move-result-object v9

    invoke-virtual {p1}, Lcom/linkplay/bonjour/model/LinkPlayService;->getTimeStr()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Lcom/linkplay/bonjour/model/LinkPlayService;->getUuid()Ljava/lang/String;

    move-result-object v11

    filled-new-array/range {v0 .. v11}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "update service_table set ip=?, port=?, uuid=?, serviceName=?, flags=?, ifIndex=?, fullName=?, rrtype=?, rrclass=?, rdata=?, time=? where uuid=?"

    invoke-virtual {p0, v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/linkplay/bonjour/model/LinkPlayService;)Lcom/linkplay/bonjour/model/LinkPlayService;
    .locals 4

    iget-object v0, p0, Lcom/linkplay/bonjour/db/LinkplayDatebase;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Lcom/linkplay/bonjour/model/LinkPlayService;->getServiceName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "select ip, port, uuid, fullName, rrtype, rrclass, rdata, time from service_table where serviceName=?"

    invoke-virtual {v0, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_9

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance v1, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;

    invoke-direct {v1, p1}, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;-><init>(Lcom/linkplay/bonjour/model/LinkPlayService;)V

    const-string p1, "ip"

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->ip(Ljava/lang/String;)Lcom/linkplay/bonjour/model/LinkPlayService$Builder;

    :cond_1
    const-string p1, "port"

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_2

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->port(I)Lcom/linkplay/bonjour/model/LinkPlayService$Builder;

    :cond_2
    const-string p1, "uuid"

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_3

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->uuid(Ljava/lang/String;)Lcom/linkplay/bonjour/model/LinkPlayService$Builder;

    :cond_3
    const-string p1, "fullName"

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_4

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->fullName(Ljava/lang/String;)Lcom/linkplay/bonjour/model/LinkPlayService$Builder;

    :cond_4
    const-string p1, "rrtype"

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_5

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->rrtype(I)Lcom/linkplay/bonjour/model/LinkPlayService$Builder;

    :cond_5
    const-string p1, "rrclass"

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_6

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->rrclass(I)Lcom/linkplay/bonjour/model/LinkPlayService$Builder;

    :cond_6
    const-string p1, "rdata"

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_7

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->rdata([B)Lcom/linkplay/bonjour/model/LinkPlayService$Builder;

    :cond_7
    const-string p1, "time"

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_8

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    iget-object p0, p0, Lcom/linkplay/bonjour/db/LinkplayDatebase;->formater:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->time(Ljava/util/Date;)Lcom/linkplay/bonjour/model/LinkPlayService$Builder;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    :goto_0
    invoke-virtual {v1}, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->build()Lcom/linkplay/bonjour/model/LinkPlayService;

    move-result-object p0

    return-object p0

    :cond_9
    return-object v1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/linkplay/bonjour/db/LinkplayDatebase;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method

.method public save(Lcom/linkplay/bonjour/model/LinkPlayService;)V
    .locals 1

    invoke-virtual {p1}, Lcom/linkplay/bonjour/model/LinkPlayService;->getServiceName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/linkplay/bonjour/db/LinkplayDatebase;->isServiceExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/linkplay/bonjour/model/LinkPlayService;->toString()Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/linkplay/bonjour/db/LinkplayDatebase;->update(Lcom/linkplay/bonjour/model/LinkPlayService;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/linkplay/bonjour/model/LinkPlayService;->toString()Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/linkplay/bonjour/db/LinkplayDatebase;->insert(Lcom/linkplay/bonjour/model/LinkPlayService;)V

    return-void
.end method
