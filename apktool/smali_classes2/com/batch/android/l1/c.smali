.class public final Lcom/batch/android/l1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/l1/h;


# static fields
.field private static final f:Ljava/lang/String; = "SQLUserDatasource"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/database/sqlite/SQLiteDatabase;

.field private c:Lcom/batch/android/l1/g;

.field private d:Z

.field private e:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/batch/android/l1/c;->d:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/batch/android/l1/c;->e:J

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/batch/android/l1/c;->a:Landroid/content/Context;

    new-instance p1, Lcom/batch/android/l1/g;

    iget-object v0, p0, Lcom/batch/android/l1/c;->a:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/batch/android/l1/g;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/batch/android/l1/c;->c:Lcom/batch/android/l1/g;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iput-object p1, p0, Lcom/batch/android/l1/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    return-void

    :cond_0
    const-string p0, "context==null"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/batch/android/l1/a;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/l1/f;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/batch/android/l1/c;->d:Z

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-wide v0, p0, Lcom/batch/android/l1/c;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    const-string v0, "name"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p4, :cond_1

    const-string p4, "n."

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_1
    const-string p4, "c."

    :goto_0
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, v0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "type"

    invoke-virtual {p3}, Lcom/batch/android/l1/a;->c()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p3, "changeset"

    iget-wide v0, p0, Lcom/batch/android/l1/c;->e:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object p3, p0, Lcom/batch/android/l1/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string p4, "attributes"

    const/4 v0, 0x0

    invoke-virtual {p3, p4, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    const-string p3, "Error while inserting custom attribute \'"

    const-string p4, "\'"

    invoke-static {p3, p1, p4}, Lfc;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/batch/android/l1/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :catch_1
    return-void

    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/batch/android/l1/c;->f()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/l1/f;
        }
    .end annotation

    .line 122
    const-string p0, "User"

    invoke-static {p0, p1, p2}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 123
    new-instance p0, Lcom/batch/android/l1/f;

    invoke-direct {p0, p1}, Lcom/batch/android/l1/f;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private b(Ljava/lang/String;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/l1/f;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/batch/android/l1/c;->d:Z

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/batch/android/l1/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "attributes"

    const-string v2, "name=?"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_1

    const-string p2, "n."

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_1
    const-string p2, "c."

    :goto_0
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    const-string v0, "Error while deleting custom attribute \'"

    const-string v1, "\'"

    invoke-static {v0, p1, v1}, Lfc;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/batch/android/l1/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/batch/android/l1/c;->f()V

    return-void
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/l1/f;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/batch/android/l1/c;->d:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/batch/android/l1/c;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/batch/android/l1/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "tags"

    const-string v2, "collection=? AND value=?"

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "\' in collection \'"

    const-string v2, "\'"

    const-string v3, "Error while removing tag \'"

    invoke-static {v3, p2, v1, p1, v2}, Ld21;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/batch/android/l1/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/batch/android/l1/c;->f()V

    return-void
.end method

.method private e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/l1/f;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/batch/android/l1/c;->d:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/batch/android/l1/c;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "collection"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "changeset"

    iget-wide v2, p0, Lcom/batch/android/l1/c;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v1, p0, Lcom/batch/android/l1/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "tags"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "\' in collection \'"

    const-string v2, "\'"

    const-string v3, "Error while adding tag \'"

    invoke-static {v3, p2, v1, p1, v2}, Ld21;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/batch/android/l1/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :catch_1
    return-void

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/batch/android/l1/c;->f()V

    return-void
.end method

.method private f()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/l1/f;
        }
    .end annotation

    new-instance p0, Lcom/batch/android/l1/f;

    const-string v0, "Invalid database state"

    invoke-direct {p0, v0}, Lcom/batch/android/l1/f;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 114
    iget-boolean v0, p0, Lcom/batch/android/l1/c;->d:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/batch/android/l1/c;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    iget-object p0, p0, Lcom/batch/android/l1/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "attributes"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public a(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/l1/f;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 116
    iget-boolean v0, p0, Lcom/batch/android/l1/c;->d:Z

    if-nez v0, :cond_0

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/batch/android/l1/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "BEGIN TRANSACTION;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 118
    iput-boolean v0, p0, Lcom/batch/android/l1/c;->d:Z

    .line 119
    iput-wide p1, p0, Lcom/batch/android/l1/c;->e:J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 120
    const-string p2, "Error while starting the SQLite transaction"

    invoke-direct {p0, p2, p1}, Lcom/batch/android/l1/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 121
    :cond_0
    invoke-direct {p0}, Lcom/batch/android/l1/c;->f()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/l1/f;
        }
    .end annotation

    const/4 v0, 0x0

    .line 112
    invoke-direct {p0, p1, v0}, Lcom/batch/android/l1/c;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;D)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/l1/f;
        }
    .end annotation

    .line 100
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 101
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const-string p3, "value"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 102
    sget-object p2, Lcom/batch/android/l1/a;->g:Lcom/batch/android/l1/a;

    const/4 p3, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/batch/android/l1/c;->a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/batch/android/l1/a;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/l1/f;
        }
    .end annotation

    .line 97
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 98
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "value"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 99
    sget-object p2, Lcom/batch/android/l1/a;->f:Lcom/batch/android/l1/a;

    const/4 p3, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/batch/android/l1/c;->a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/batch/android/l1/a;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/l1/f;
        }
    .end annotation

    .line 113
    invoke-direct {p0, p1, p2}, Lcom/batch/android/l1/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/net/URI;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/l1/f;
        }
    .end annotation

    .line 109
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 110
    invoke-virtual {p2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    sget-object p2, Lcom/batch/android/l1/a;->j:Lcom/batch/android/l1/a;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/batch/android/l1/c;->a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/batch/android/l1/a;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Date;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/l1/f;
        }
    .end annotation

    .line 106
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 107
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 108
    sget-object p2, Lcom/batch/android/l1/a;->i:Lcom/batch/android/l1/a;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/batch/android/l1/c;->a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/batch/android/l1/a;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/l1/f;
        }
    .end annotation

    .line 103
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 104
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 105
    sget-object p2, Lcom/batch/android/l1/a;->h:Lcom/batch/android/l1/a;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/batch/android/l1/c;->a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/batch/android/l1/a;Z)V

    return-void
.end method

.method public b()V
    .locals 4

    .line 65
    iget-boolean v0, p0, Lcom/batch/android/l1/c;->d:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/batch/android/l1/c;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    iget-object p0, p0, Lcom/batch/android/l1/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "tags"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    .line 67
    iget-boolean v0, p0, Lcom/batch/android/l1/c;->d:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/batch/android/l1/c;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    iget-object p0, p0, Lcom/batch/android/l1/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v0, "tags"

    const-string v1, "collection=?"

    invoke-virtual {p0, v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/l1/f;
        }
    .end annotation

    .line 69
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 70
    const-string v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    sget-object p2, Lcom/batch/android/l1/a;->e:Lcom/batch/android/l1/a;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/batch/android/l1/c;->a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/batch/android/l1/a;Z)V

    return-void
.end method

.method public c()Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v1, "value"

    const-string v2, "collection"

    const-string v3, "SQLUserDatasource"

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    iget-object v5, p0, Lcom/batch/android/l1/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "tags"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v7

    const-string v12, "collection"

    const/4 v13, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_0

    if-eqz p0, :cond_8

    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_6

    :cond_0
    const/4 v0, 0x0

    move-object v5, v0

    move-object v6, v5

    :cond_1
    :goto_0
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_6

    :try_start_2
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v7, :cond_2

    if-nez v0, :cond_3

    :cond_2
    const-string v8, "Consistency error while reading tags: collection or value null, skipping"

    invoke-static {v3, v8}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-static {v5, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    if-eqz v5, :cond_4

    if-eqz v6, :cond_4

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_4
    :goto_1
    :try_start_3
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v6, v5

    move-object v5, v7

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v5, v7

    goto :goto_3

    :cond_5
    :goto_2
    if-eqz v6, :cond_1

    :try_start_4
    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :goto_3
    :try_start_5
    const-string v7, "Error while reading tag"

    invoke-static {v3, v7, v0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_6
    if-eqz v5, :cond_7

    if-eqz v6, :cond_7

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_7
    :try_start_6
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_7

    :goto_4
    :try_start_7
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object p0, v0

    :try_start_8
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :goto_6
    const-string v0, "Unexpected error while reading attributes"

    invoke-static {v3, v0, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    :goto_7
    return-object v4
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/l1/f;
        }
    .end annotation

    .line 145
    invoke-direct {p0, p1, p2}, Lcom/batch/android/l1/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public clear()V
    .locals 3

    iget-boolean v0, p0, Lcom/batch/android/l1/c;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/batch/android/l1/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "attributes"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object p0, p0, Lcom/batch/android/l1/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "tags"

    invoke-virtual {p0, v0, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public close()V
    .locals 1

    iget-boolean v0, p0, Lcom/batch/android/l1/c;->d:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/batch/android/l1/c;->e()V
    :try_end_0
    .catch Lcom/batch/android/l1/f; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iget-object p0, p0, Lcom/batch/android/l1/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    return-void
.end method

.method public d()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/l1/f;
        }
    .end annotation

    .line 58
    iget-boolean v0, p0, Lcom/batch/android/l1/c;->d:Z

    if-eqz v0, :cond_0

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/batch/android/l1/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "COMMIT TRANSACTION;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/batch/android/l1/c;->d:Z

    const-wide/16 v0, 0x0

    .line 61
    iput-wide v0, p0, Lcom/batch/android/l1/c;->e:J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 62
    const-string v1, "Error while committing the SQLite transaction"

    invoke-direct {p0, v1, v0}, Lcom/batch/android/l1/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 63
    :cond_0
    invoke-direct {p0}, Lcom/batch/android/l1/c;->f()V

    return-void
.end method

.method public e()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/l1/f;
        }
    .end annotation

    .line 79
    iget-boolean v0, p0, Lcom/batch/android/l1/c;->d:Z

    if-eqz v0, :cond_0

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/batch/android/l1/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ROLLBACK TRANSACTION;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lcom/batch/android/l1/c;->d:Z

    const-wide/16 v0, 0x0

    .line 82
    iput-wide v0, p0, Lcom/batch/android/l1/c;->e:J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 83
    const-string v1, "Error while rolling back the SQLite transaction"

    invoke-direct {p0, v1, v0}, Lcom/batch/android/l1/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 84
    :cond_0
    invoke-direct {p0}, Lcom/batch/android/l1/c;->f()V

    return-void
.end method

.method public getAttributes()Ljava/util/HashMap;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/batch/android/l1/d;",
            ">;"
        }
    .end annotation

    const-string v1, "SQLUserDatasource"

    const-string v2, "value"

    const-string v3, "type"

    const-string v4, "name"

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    iget-object v6, p0, Lcom/batch/android/l1/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "attributes"

    filled-new-array {v4, v3, v2}, [Ljava/lang/String;

    move-result-object v8

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v6 .. v14}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p0, :cond_4

    :goto_0
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    :try_start_2
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/batch/android/l1/a;->a(I)Lcom/batch/android/l1/a;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    goto :goto_0

    :cond_1
    sget-object v7, Lcom/batch/android/l1/c$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v7, Ljava/net/URI;

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :pswitch_1
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    goto :goto_2

    :pswitch_2
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    goto :goto_2

    :pswitch_3
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto :goto_2

    :pswitch_4
    new-instance v7, Ljava/util/Date;

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    goto :goto_2

    :pswitch_5
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_2
    if-nez v7, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Lcom/batch/android/l1/d;

    invoke-direct {v8, v7, v0}, Lcom/batch/android/l1/d;-><init>(Ljava/lang/Object;Lcom/batch/android/l1/a;)V

    invoke-virtual {v5, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_3
    :try_start_3
    const-string v6, "Error while reading attribute"

    invoke-static {v1, v6, v0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :goto_4
    :try_start_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object p0, v0

    :try_start_5
    invoke-virtual {v2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v2

    :catch_1
    move-exception v0

    move-object p0, v0

    goto :goto_6

    :cond_4
    if-eqz p0, :cond_5

    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_7

    :goto_6
    const-string v0, "Unexpected error while reading attributes"

    invoke-static {v1, v0, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_7
    return-object v5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
