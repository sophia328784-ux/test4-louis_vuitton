.class public Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao;
.super Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao<",
        "Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao;

    const-string v1, "DownloadImage"

    sget-object v2, Lcom/perfectcorp/perfectlib/hc/database/Contract$DownloadImage;->b:[Ljava/lang/String;

    const-string v3, "DownloadImageDao"

    invoke-direct {v0, v3, v1, v2}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao;->d:Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao;

    return-void
.end method

.method public static o(Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo;)Landroid/content/ContentValues;
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "url"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "path"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "referenceId"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo;->d:Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao$Type;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao$Type;->a:Ljava/lang/String;

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo;->e:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v1, "size"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method


# virtual methods
.method public final l(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 7

    const-string p0, "url"

    invoke-static {p1, p0}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->g(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "path"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "referenceId"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "size"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    new-instance p1, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo$Builder;

    invoke-direct {p1}, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo$Builder;-><init>()V

    iput-object p0, p1, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo$Builder;->a:Ljava/lang/String;

    iput-object v0, p1, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo$Builder;->b:Ljava/lang/String;

    iput-object v1, p1, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo$Builder;->c:Ljava/lang/String;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao$Type;->values()[Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao$Type;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v5, p0, v1

    iget-object v6, v5, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao$Type;->a:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    iput-object v5, p1, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo$Builder;->d:Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao$Type;

    iput-wide v3, p1, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo$Builder;->e:J

    new-instance p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo;

    invoke-direct {p0, p1}, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo;-><init>(Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo$Builder;)V

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "Unknown type="

    invoke-static {p0, v2}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->h(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final synthetic n(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 0

    check-cast p1, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo;

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao;->o(Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo;)Landroid/content/ContentValues;

    move-result-object p0

    return-object p0
.end method

.method public final p(Landroid/database/sqlite/SQLiteDatabase;Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao$Type;)V
    .locals 1

    const-string v0, "type"

    iget-object p2, p2, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao$Type;->a:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final q(Landroid/database/sqlite/SQLiteDatabase;Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao$Type;)Ljava/util/List;
    .locals 2

    const-string v0, "path IS NULL AND type"

    iget-object p2, p2, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao$Type;->a:Ljava/lang/String;

    const-string v1, "url"

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->h(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final r(Landroid/database/sqlite/SQLiteDatabase;Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao$Type;)Ljava/util/HashSet;
    .locals 2

    const-string v0, "type"

    iget-object p2, p2, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao$Type;->a:Ljava/lang/String;

    const-string v1, "path"

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->h(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    instance-of p1, p0, Ljava/util/Collection;

    if-eqz p1, :cond_0

    new-instance p1, Ljava/util/HashSet;

    check-cast p0, Ljava/util/Collection;

    invoke-direct {p1, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object p1

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    invoke-static {p1, p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/at;->b(Ljava/util/Collection;Ljava/util/Iterator;)Z

    return-object p1
.end method

.method public final s(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    const-string v0, "[updateByTextColumn] column=url, value="

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "path"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "size"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {v1, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p3, "url"

    iget-object p4, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->a:Ljava/lang/String;

    const-string p5, "=?"

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->b:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p0, v1, p3, p5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", count="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x3

    invoke-static {p1, p4, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "[updateByTextColumn] failed"

    invoke-static {p4, p1, p0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method
