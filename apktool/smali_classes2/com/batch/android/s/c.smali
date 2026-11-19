.class public Lcom/batch/android/s/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/s/e;


# static fields
.field private static final f:Ljava/lang/String; = "LocalCampaignsSQLTracker"


# instance fields
.field private b:Lcom/batch/android/s/b;

.field private c:Landroid/database/sqlite/SQLiteDatabase;

.field private d:Lcom/batch/android/e/e;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/batch/android/s/c;->e:Z

    new-instance v0, Lcom/batch/android/e/i0;

    invoke-direct {v0}, Lcom/batch/android/e/i0;-><init>()V

    iput-object v0, p0, Lcom/batch/android/s/c;->d:Lcom/batch/android/e/e;

    return-void
.end method

.method public constructor <init>(Lcom/batch/android/e/e;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/batch/android/s/c;->e:Z

    .line 16
    iput-object p1, p0, Lcom/batch/android/s/c;->d:Lcom/batch/android/e/e;

    return-void
.end method

.method private c()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/s/f;
        }
    .end annotation

    iget-object v0, p0, Lcom/batch/android/s/c;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/batch/android/s/c;->b:Lcom/batch/android/s/b;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/s/c;->c:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "LocalCampaignsSQLTracker"

    const-string v1, "Could not get a writable database"

    invoke-static {v0, v1, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p0, Lcom/batch/android/s/f;

    invoke-direct {p0}, Lcom/batch/android/s/f;-><init>()V

    throw p0

    :cond_0
    new-instance p0, Lcom/batch/android/s/f;

    invoke-direct {p0}, Lcom/batch/android/s/f;-><init>()V

    throw p0

    :cond_1
    return-void
.end method


# virtual methods
.method public a(J)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/s/f;
        }
    .end annotation

    .line 186
    invoke-direct {p0}, Lcom/batch/android/s/c;->c()V

    .line 187
    iget-object p0, p0, Lcom/batch/android/s/c;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 188
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 189
    const-string p2, "SELECT COUNT(*)  FROM view_events WHERE timestamp_ms > ?"

    invoke-virtual {p0, p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 190
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 191
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 192
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return p2
.end method

.method public a(Ljava/lang/String;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/s/f;
        }
    .end annotation

    .line 181
    invoke-direct {p0}, Lcom/batch/android/s/c;->c()V

    .line 182
    iget-object p0, p0, Lcom/batch/android/s/c;->c:Landroid/database/sqlite/SQLiteDatabase;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v0, "SELECT last_oc FROM LocalCampaignsSQLTracker WHERE id = ?"

    invoke-virtual {p0, v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const-wide/16 v0, 0x0

    .line 183
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 184
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0

    .line 185
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-wide v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/batch/android/s/e$a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/s/f;
        }
    .end annotation

    .line 154
    invoke-direct {p0}, Lcom/batch/android/s/c;->c()V

    .line 155
    new-instance v0, Lcom/batch/android/s/e$a;

    invoke-direct {v0, p1, p2}, Lcom/batch/android/s/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object p0, p0, Lcom/batch/android/s/c;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-nez p2, :cond_0

    .line 157
    const-string p2, ""

    :cond_0
    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    .line 158
    const-string p2, "SELECT count, last_oc FROM LocalCampaignsSQLTracker WHERE id = ? AND custom_user_id = ?"

    invoke-virtual {p0, p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 159
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 160
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, v0, Lcom/batch/android/s/e$a;->c:I

    const/4 p1, 0x1

    .line 161
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    iput-wide p1, v0, Lcom/batch/android/s/e$a;->d:J

    .line 162
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method public a(Ljava/util/List;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/s/f;
        }
    .end annotation

    .line 163
    invoke-direct {p0}, Lcom/batch/android/s/c;->c()V

    .line 164
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 165
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 166
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 167
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 168
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "?"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    move v4, v2

    .line 169
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 170
    const-string v5, ",?"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 171
    :cond_1
    iget-object p0, p0, Lcom/batch/android/s/c;->c:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SELECT id, SUM(count)  FROM LocalCampaignsSQLTracker WHERE id IN ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")GROUP BY id"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 172
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 173
    invoke-virtual {p0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 174
    :goto_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 175
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 176
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 177
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 178
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0
.end method

.method public a(Ljava/util/List;Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/s/f;
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "?"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    move v4, v2

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    const-string v5, ",?"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    if-nez p2, :cond_2

    const-string p2, ""

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v4, v2

    new-array v4, v4, [Ljava/lang/String;

    move v5, v3

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    aput-object p2, v4, p1

    iget-object p0, p0, Lcom/batch/android/s/c;->c:Landroid/database/sqlite/SQLiteDatabase;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "SELECT id, SUM(count)  FROM LocalCampaignsSQLTracker WHERE id IN ("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ") AND custom_user_id = ? GROUP BY id"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object v0
.end method

.method public a()V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/batch/android/s/c;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    const/4 v0, 0x0

    .line 151
    iput-object v0, p0, Lcom/batch/android/s/c;->c:Landroid/database/sqlite/SQLiteDatabase;

    :cond_0
    const/4 v0, 0x0

    .line 152
    iput-boolean v0, p0, Lcom/batch/android/s/c;->e:Z

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    .line 179
    new-instance v0, Lcom/batch/android/s/b;

    invoke-direct {v0, p1}, Lcom/batch/android/s/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/batch/android/s/c;->b:Lcom/batch/android/s/b;

    const/4 p1, 0x1

    .line 180
    iput-boolean p1, p0, Lcom/batch/android/s/c;->e:Z

    return-void
.end method

.method public a(Lcom/batch/android/e/e;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/batch/android/s/c;->d:Lcom/batch/android/e/e;

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/batch/android/s/e$a;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/s/f;
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Lcom/batch/android/s/c;->c()V

    .line 77
    new-instance v0, Lcom/batch/android/s/e$a;

    invoke-direct {v0, p1}, Lcom/batch/android/s/e$a;-><init>(Ljava/lang/String;)V

    .line 78
    iget-object p0, p0, Lcom/batch/android/s/c;->c:Landroid/database/sqlite/SQLiteDatabase;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v1, "SELECT count, last_oc FROM LocalCampaignsSQLTracker WHERE id = ?"

    invoke-virtual {p0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 79
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 80
    iget p1, v0, Lcom/batch/android/s/e$a;->c:I

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    add-int/2addr v1, p1

    iput v1, v0, Lcom/batch/android/s/e$a;->c:I

    const/4 p1, 0x1

    .line 81
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iget-wide v3, v0, Lcom/batch/android/s/e$a;->d:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/batch/android/s/e$a;->d:J

    goto :goto_0

    .line 82
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/batch/android/s/e$a;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/s/f;
        }
    .end annotation

    invoke-direct {p0}, Lcom/batch/android/s/c;->c()V

    invoke-virtual {p0, p1, p2}, Lcom/batch/android/s/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/batch/android/s/e$a;

    move-result-object v0

    iget v1, v0, Lcom/batch/android/s/e$a;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/batch/android/s/e$a;->c:I

    iget-object v1, p0, Lcom/batch/android/s/c;->d:Lcom/batch/android/e/e;

    invoke-interface {v1}, Lcom/batch/android/e/e;->a()Lcom/batch/android/i/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/batch/android/i/a;->a()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/batch/android/s/e$a;->d:J

    iget-object v1, p0, Lcom/batch/android/s/c;->c:Landroid/database/sqlite/SQLiteDatabase;

    iget v2, v0, Lcom/batch/android/s/e$a;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, v0, Lcom/batch/android/s/e$a;->d:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    if-nez p2, :cond_0

    move-object v5, v4

    goto :goto_0

    :cond_0
    move-object v5, p2

    :goto_0
    filled-new-array {p1, v2, v3, v5}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "INSERT OR REPLACE INTO LocalCampaignsSQLTracker (id, kind, count, last_oc, custom_user_id) VALUES (?, 1, ?, ?, ?)"

    invoke-virtual {v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/batch/android/s/c;->c:Landroid/database/sqlite/SQLiteDatabase;

    iget-wide v1, v0, Lcom/batch/android/s/e$a;->d:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    if-nez p2, :cond_1

    move-object p2, v4

    :cond_1
    filled-new-array {p1, v1, p2}, [Ljava/lang/String;

    move-result-object p1

    const-string p2, "INSERT INTO view_events (campaign_id, timestamp_ms, custom_user_id) VALUES (?, ?, ?)"

    invoke-virtual {p0, p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/s/f;
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Lcom/batch/android/s/c;->c()V

    .line 84
    iget-object v0, p0, Lcom/batch/android/s/c;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DELETE FROM view_events"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 85
    iget-object p0, p0, Lcom/batch/android/s/c;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "DELETE FROM LocalCampaignsSQLTracker"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public d()Lcom/batch/android/e/e;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/s/c;->d:Lcom/batch/android/e/e;

    return-object p0
.end method

.method public e()Z
    .locals 0

    iget-boolean p0, p0, Lcom/batch/android/s/c;->e:Z

    return p0
.end method
