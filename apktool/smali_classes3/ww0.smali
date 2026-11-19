.class public final synthetic Lww0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p5, p0, Lww0;->a:I

    iput-object p1, p0, Lww0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lww0;->c:Ljava/lang/Object;

    iput-object p3, p0, Lww0;->d:Ljava/lang/Object;

    iput-object p4, p0, Lww0;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget v0, p0, Lww0;->a:I

    iget-object v1, p0, Lww0;->e:Ljava/lang/Object;

    iget-object v2, p0, Lww0;->d:Ljava/lang/Object;

    iget-object v3, p0, Lww0;->c:Ljava/lang/Object;

    iget-object p0, p0, Lww0;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;

    check-cast v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;

    check-cast v2, Lcom/perfectcorp/perfectlib/ph/template/idc/e;

    check-cast v1, Ljava/util/HashMap;

    invoke-static {p0, v3, v2, v1}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->d(Lcom/perfectcorp/perfectlib/SkuDataForProtocol;Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;Lcom/perfectcorp/perfectlib/ph/template/idc/e;Ljava/util/HashMap;)V

    return-void

    :pswitch_0
    move-object v9, p0

    check-cast v9, Ljava/util/Map;

    move-object v5, v3

    check-cast v5, Ljava/util/concurrent/ConcurrentHashMap;

    move-object v7, v2

    check-cast v7, Ljava/util/List;

    move-object v10, v1

    check-cast v10, Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    new-instance v4, Led;

    const/4 v11, 0x2

    invoke-direct/range {v4 .. v11}, Led;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {p0, v4}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x3

    const-string v2, "SkinCare3RecommendationHandler"

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[downloadProducts] delete download image="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v0, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao;->o(Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/perfectcorp/common/utility/FileUtils;->c(Ljava/io/File;)Z

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "[downloadProducts] "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " products and "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;->size()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " images has been inserted or updated to database"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v2, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " download images has been remove from database and file system"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v2, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
