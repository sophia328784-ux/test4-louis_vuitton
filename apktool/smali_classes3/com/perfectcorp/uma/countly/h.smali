.class final Lcom/perfectcorp/uma/countly/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/util/Map;

.field private synthetic c:I

.field private synthetic d:D

.field private synthetic e:Lcom/perfectcorp/uma/countly/d;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/uma/countly/d;Ljava/lang/String;Ljava/util/Map;ID)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/uma/countly/h;->e:Lcom/perfectcorp/uma/countly/d;

    iput-object p2, p0, Lcom/perfectcorp/uma/countly/h;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/perfectcorp/uma/countly/h;->b:Ljava/util/Map;

    iput p4, p0, Lcom/perfectcorp/uma/countly/h;->c:I

    iput-wide p5, p0, Lcom/perfectcorp/uma/countly/h;->d:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget-object v0, p0, Lcom/perfectcorp/uma/countly/h;->e:Lcom/perfectcorp/uma/countly/d;

    iget-object v0, v0, Lcom/perfectcorp/uma/countly/d;->d:Lcom/perfectcorp/uma/countly/s;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/perfectcorp/uma/countly/h;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/perfectcorp/uma/countly/h;->b:Ljava/util/Map;

    iget v4, p0, Lcom/perfectcorp/uma/countly/h;->c:I

    iget-wide v5, p0, Lcom/perfectcorp/uma/countly/h;->d:D

    iget-object v9, v0, Lcom/perfectcorp/uma/countly/s;->a:Lcom/perfectcorp/uma/countly/p;

    new-instance v0, Lcom/perfectcorp/uma/countly/u;

    invoke-direct {v0}, Lcom/perfectcorp/uma/countly/u;-><init>()V

    monitor-enter v9

    if-eqz v2, :cond_1

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v9}, Lcom/perfectcorp/uma/countly/p;->a()Lcom/perfectcorp/uma/countly/m;

    move-result-object v10

    new-instance v1, Lcom/perfectcorp/uma/countly/r;

    iget-wide v7, v0, Lcom/perfectcorp/uma/countly/u;->a:J

    const-wide/16 v11, 0x3e8

    div-long/2addr v7, v11

    long-to-int v7, v7

    invoke-virtual {v0}, Lcom/perfectcorp/uma/countly/u;->a()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Lcom/perfectcorp/uma/countly/r;-><init>(Ljava/lang/String;Ljava/util/Map;IDILjava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, v10, Lcom/perfectcorp/uma/countly/m;->b:Lcom/perfectcorp/uma/countly/m$a;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "EVENT_TABLE"

    invoke-virtual {v1}, Lcom/perfectcorp/uma/countly/r;->b()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/perfectcorp/uma/countly/m;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "CountlyDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[addEvent] Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/perfectcorp/uma/b$d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit v9

    iget-object p0, p0, Lcom/perfectcorp/uma/countly/h;->e:Lcom/perfectcorp/uma/countly/d;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Lcom/perfectcorp/uma/countly/d;->j:I

    if-lez v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x64

    :goto_1
    iget-object v1, p0, Lcom/perfectcorp/uma/countly/d;->d:Lcom/perfectcorp/uma/countly/s;

    iget-object v1, v1, Lcom/perfectcorp/uma/countly/s;->a:Lcom/perfectcorp/uma/countly/p;

    invoke-virtual {v1}, Lcom/perfectcorp/uma/countly/p;->a()Lcom/perfectcorp/uma/countly/m;

    move-result-object v1

    const-string v2, "EVENT_TABLE"

    invoke-virtual {v1, v2}, Lcom/perfectcorp/uma/countly/m;->e(Ljava/lang/String;)J

    move-result-wide v1

    long-to-int v1, v1

    if-lt v1, v0, :cond_2

    invoke-virtual {p0}, Lcom/perfectcorp/uma/countly/d;->g()V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_1
    :try_start_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "valid key required"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_2
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :cond_2
    :goto_3
    return-void
.end method
