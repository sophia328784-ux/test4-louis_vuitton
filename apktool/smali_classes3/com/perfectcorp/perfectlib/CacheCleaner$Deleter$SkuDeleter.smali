.class final Lcom/perfectcorp/perfectlib/CacheCleaner$Deleter$SkuDeleter;
.super Lcom/perfectcorp/perfectlib/CacheCleaner$Deleter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/CacheCleaner$Deleter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SkuDeleter"
.end annotation


# virtual methods
.method public final b()V
    .locals 9

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/CacheCleaner$Deleter;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    sget-object v2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    invoke-static {}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/f$a;->a()[Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/f$a;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    move v7, v4

    move v6, v5

    :goto_0
    if-ge v6, v3, :cond_0

    aget-object v8, v2, v6

    if-eqz v7, :cond_1

    new-instance v7, Ljava/io/File;

    invoke-static {v1, v8}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/f;->b(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/f$a;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/perfectcorp/common/utility/FileUtils;->c(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v4

    goto :goto_1

    :cond_1
    move v7, v5

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/CacheCleaner$Deleter;->f()V

    return-void
.end method

.method public final c(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/CacheCleaner$Deleter;->a:Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Row;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Row;->a:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/SkuDao;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v2

    invoke-virtual {v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/CacheCleaner$Deleter;->e:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Lyp;

    invoke-direct {p0, v1, p1, v0}, Lyp;-><init>(ILandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
