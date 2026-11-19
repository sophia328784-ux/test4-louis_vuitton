.class public final Lcom/perfectcorp/perfectlib/SkuDataForProtocol;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/SkuDataForProtocol$ExtraInfoImageProcessor;,
        Lcom/perfectcorp/perfectlib/SkuDataForProtocol$IdSystemFiles;,
        Lcom/perfectcorp/perfectlib/SkuDataForProtocol$Image;,
        Lcom/perfectcorp/perfectlib/SkuDataForProtocol$IdSystemContentZip;,
        Lcom/perfectcorp/perfectlib/SkuDataForProtocol$IdSystem;,
        Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadComponent;,
        Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadType;
    }
.end annotation


# static fields
.field public static final n:Lcom/perfectcorp/common/debug/PerformanceCounter;

.field public static final o:Lcom/perfectcorp/common/debug/PerformanceCounter;

.field public static final p:Lcom/perfectcorp/common/debug/PerformanceCounter;

.field public static final q:Lcom/perfectcorp/common/debug/PerformanceCounter;

.field public static final r:Lcom/perfectcorp/common/debug/PerformanceCounter;

.field public static final s:Lcom/perfectcorp/common/debug/PerformanceCounter;

.field public static final t:Lcom/perfectcorp/common/debug/PerformanceCounter;

.field public static final u:Lcom/perfectcorp/common/debug/PerformanceCounter;

.field public static final v:Lcom/perfectcorp/common/debug/PerformanceCounter;

.field public static final w:Ljava/util/List;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/util/concurrent/LinkedBlockingQueue;

.field public final c:Ljava/util/concurrent/ConcurrentHashMap;

.field public final d:Lcom/perfectcorp/thirdparty/com/google/common/collect/ArrayListMultimap;

.field public final e:Lcom/perfectcorp/thirdparty/com/google/common/collect/HashMultimap;

.field public final f:Lcom/perfectcorp/thirdparty/com/google/common/collect/HashMultimap;

.field public final g:Lcom/perfectcorp/thirdparty/com/google/common/collect/HashMultimap;

.field public final h:Ljava/util/concurrent/ConcurrentHashMap;

.field public final i:Ljava/util/Set;

.field public final j:Ljava/util/Set;

.field public final k:Lcom/perfectcorp/thirdparty/com/google/common/collect/ArrayListMultimap;

.field public final l:Ljava/util/Set;

.field public final m:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/perfectcorp/common/debug/PerformanceCounter;->b:Lcom/perfectcorp/common/debug/PerformanceCounter;

    sput-object v0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->n:Lcom/perfectcorp/common/debug/PerformanceCounter;

    sput-object v0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->o:Lcom/perfectcorp/common/debug/PerformanceCounter;

    sput-object v0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->p:Lcom/perfectcorp/common/debug/PerformanceCounter;

    sput-object v0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->q:Lcom/perfectcorp/common/debug/PerformanceCounter;

    sput-object v0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->r:Lcom/perfectcorp/common/debug/PerformanceCounter;

    sput-object v0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->s:Lcom/perfectcorp/common/debug/PerformanceCounter;

    sput-object v0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->t:Lcom/perfectcorp/common/debug/PerformanceCounter;

    sput-object v0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->u:Lcom/perfectcorp/common/debug/PerformanceCounter;

    sput-object v0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->v:Lcom/perfectcorp/common/debug/PerformanceCounter;

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->EARRINGS:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->w:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->a:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->c:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ArrayListMultimap;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ArrayListMultimap;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->d:Lcom/perfectcorp/thirdparty/com/google/common/collect/ArrayListMultimap;

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/HashMultimap;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/HashMultimap;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->e:Lcom/perfectcorp/thirdparty/com/google/common/collect/HashMultimap;

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/HashMultimap;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/HashMultimap;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->f:Lcom/perfectcorp/thirdparty/com/google/common/collect/HashMultimap;

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/HashMultimap;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/HashMultimap;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->g:Lcom/perfectcorp/thirdparty/com/google/common/collect/HashMultimap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->h:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->i:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->j:Ljava/util/Set;

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ArrayListMultimap;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ArrayListMultimap;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->k:Lcom/perfectcorp/thirdparty/com/google/common/collect/ArrayListMultimap;

    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Sets;->e()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->l:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->m:Ljava/util/HashSet;

    return-void
.end method

.method public static b(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;Ljava/lang/String;Lcom/perfectcorp/perfectlib/SkuDataForProtocol$ExtraInfoImageProcessor;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ArrayListMultimap;
    .locals 10

    if-eqz p1, :cond_0

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/d;

    invoke-direct {v0, p0, p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/d;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance p1, Lcom/perfectcorp/thirdparty/com/google/common/collect/ArrayListMultimap;

    invoke-direct {p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ArrayListMultimap;-><init>()V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->info:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$c;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$c;->room:Lcom/perfectcorp/perfectlib/ph/template/o$d;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/ph/template/o$d;->skus:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/ph/template/o$f;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/ph/template/o$f;->sku:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/perfectlib/ph/template/o$e;

    iget-object v3, v3, Lcom/perfectcorp/perfectlib/ph/template/o$e;->image:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/ph/template/o$b;

    iget-object v5, v4, Lcom/perfectcorp/perfectlib/ph/template/o$b;->attr_path:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    new-instance v6, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo$Builder;

    invoke-direct {v6}, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo$Builder;-><init>()V

    iput-object v5, v6, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo$Builder;->a:Ljava/lang/String;

    iget-object v7, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuGUID:Ljava/lang/String;

    iput-object v7, v6, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo$Builder;->c:Ljava/lang/String;

    sget-object v7, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao$Type;->SKU:Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao$Type;

    iput-object v7, v6, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo$Builder;->d:Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao$Type;

    if-eqz v0, :cond_8

    iget-object v7, v4, Lcom/perfectcorp/perfectlib/ph/template/o$b;->attr_name:Ljava/lang/String;

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v9, -0x1

    sparse-switch v8, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v8, "sku_thumbnail"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_2

    :cond_4
    const/4 v9, 0x3

    goto :goto_2

    :sswitch_1
    const-string v8, "menu_popup_n"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_2

    :cond_5
    const/4 v9, 0x2

    goto :goto_2

    :sswitch_2
    const-string v8, "item_thumbnail"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_2

    :cond_6
    const/4 v9, 0x1

    goto :goto_2

    :sswitch_3
    const-string v8, "menu"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    goto :goto_2

    :cond_7
    const/4 v9, 0x0

    :goto_2
    packed-switch v9, :pswitch_data_0

    const-string v4, ""

    goto :goto_3

    :pswitch_0
    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/d;->d()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :pswitch_1
    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/d;->c()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :pswitch_2
    iget-object v4, v4, Lcom/perfectcorp/perfectlib/ph/template/o$b;->attr_item_guid:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :pswitch_3
    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/d;->a()Ljava/lang/String;

    move-result-object v4

    :goto_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    :try_start_0
    new-instance v7, Ljava/io/File;

    new-instance v8, Lcom/perfectcorp/perfectlib/hc/kernelctrl/networktaskmanager/DownloadImageHelper$DownloadComponent;

    invoke-direct {v8, v5}, Lcom/perfectcorp/perfectlib/hc/kernelctrl/networktaskmanager/DownloadImageHelper$DownloadComponent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/perfectcorp/perfectlib/hc/kernelctrl/networktaskmanager/DownloadImageHelper$DownloadComponent;->a()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v8, v7}, Lcom/perfectcorp/thirdparty/com/google/common/io/Files;->b(Ljava/io/File;Ljava/io/File;)V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo$Builder;->b:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    iput-wide v7, v6, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo$Builder;->e:J

    invoke-virtual {p1, v5, v6}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ArrayListMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v4

    const-string v7, "SkuDataForProtocol"

    const-string v8, "[getImageInfoBuilders] can\'t copy image from room folder."

    invoke-static {v7, v8, v4}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    invoke-virtual {p1, v5, v6}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ArrayListMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_9
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->extraInfo:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$b;

    if-eqz v0, :cond_c

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$b;->eyewearInfo:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$b$a;

    if-eqz v0, :cond_c

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$b$a;->eyewear_attributes:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$b$a$a;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$b$a$a;->frames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$b$a$a$a;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$b$a$a$a;->frame_thumbnail:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    new-instance v2, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo$Builder;

    invoke-direct {v2}, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo$Builder;-><init>()V

    iput-object v1, v2, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo$Builder;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuGUID:Ljava/lang/String;

    iput-object v3, v2, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo$Builder;->c:Ljava/lang/String;

    sget-object v3, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao$Type;->SKU:Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao$Type;

    iput-object v3, v2, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo$Builder;->d:Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao$Type;

    if-eqz p2, :cond_b

    new-instance v3, Ljava/io/File;

    new-instance v4, Lcom/perfectcorp/perfectlib/hc/kernelctrl/networktaskmanager/DownloadImageHelper$DownloadComponent;

    invoke-direct {v4, v1}, Lcom/perfectcorp/perfectlib/hc/kernelctrl/networktaskmanager/DownloadImageHelper$DownloadComponent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/perfectcorp/perfectlib/hc/kernelctrl/networktaskmanager/DownloadImageHelper$DownloadComponent;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v1, v4}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$ExtraInfoImageProcessor;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo$Builder;->b:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo$Builder;->e:J

    :cond_b
    invoke-virtual {p1, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ArrayListMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_4

    :cond_c
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x33155f -> :sswitch_3
        0x1c5c4ac0 -> :sswitch_2
        0x34c7eebb -> :sswitch_1
        0x5f31084a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static c(Lcom/perfectcorp/perfectlib/SkuDataForProtocol;Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;Ljava/lang/String;Lcom/perfectcorp/perfectlib/SkuDataForProtocol$ExtraInfoImageProcessor;)V
    .locals 8

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->k:Lcom/perfectcorp/thirdparty/com/google/common/collect/ArrayListMultimap;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->f:Lcom/perfectcorp/thirdparty/com/google/common/collect/HashMultimap;

    sget-object v2, Lcom/perfectcorp/perfectlib/Configuration$ImageSource;->FILE:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    if-ne p2, v2, :cond_1

    invoke-static {p1, p3, p4}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->b(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;Ljava/lang/String;Lcom/perfectcorp/perfectlib/SkuDataForProtocol$ExtraInfoImageProcessor;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ArrayListMultimap;

    move-result-object p2

    invoke-virtual {p2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ArrayListMultimap;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-interface {p2, p4}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v2

    sget-object v3, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao;->d:Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "url"

    invoke-virtual {v3, v4, v5, p4}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$Image;

    new-instance v5, Lcom/perfectcorp/perfectlib/hc/kernelctrl/networktaskmanager/DownloadImageHelper$DownloadComponent;

    invoke-direct {v5, p4}, Lcom/perfectcorp/perfectlib/hc/kernelctrl/networktaskmanager/DownloadImageHelper$DownloadComponent;-><init>(Ljava/lang/String;)V

    new-instance v6, Lna0;

    const/4 v7, 0x6

    invoke-direct {v6, p0, p4, v7}, Lna0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v5, v4, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$Image;->a:Lcom/perfectcorp/perfectlib/hc/kernelctrl/networktaskmanager/DownloadImageHelper$DownloadComponent;

    iput-object v6, v4, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$Image;->b:Lna0;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v5, Lcom/perfectcorp/perfectlib/hc/kernelctrl/networktaskmanager/DownloadImageHelper$DownloadComponent;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/perfectcorp/thirdparty/com/google/common/collect/HashMultimap;->o(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->e:Lcom/perfectcorp/thirdparty/com/google/common/collect/HashMultimap;

    iget-object v6, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuGUID:Ljava/lang/String;

    invoke-virtual {v5, v6, v3}, Lcom/perfectcorp/thirdparty/com/google/common/collect/HashMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v5, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuGUID:Ljava/lang/String;

    invoke-virtual {v1, v3, v5}, Lcom/perfectcorp/thirdparty/com/google/common/collect/HashMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->i:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v0, v2, p4}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ArrayListMultimap;->n(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {p1, p3, p4}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->b(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;Ljava/lang/String;Lcom/perfectcorp/perfectlib/SkuDataForProtocol$ExtraInfoImageProcessor;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ArrayListMultimap;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ArrayListMultimap;->f()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo$Builder;

    invoke-virtual {v0, p2, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ArrayListMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static d(Lcom/perfectcorp/perfectlib/SkuDataForProtocol;Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;Lcom/perfectcorp/perfectlib/ph/template/idc/e;Ljava/util/HashMap;)V
    .locals 6

    sget-object v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;->SKU:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;

    iget-object v3, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->type:Ljava/lang/String;

    sget v4, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->a:F

    new-instance v5, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i;

    invoke-direct {v5, p3}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i;-><init>(Ljava/util/Map;)V

    const/4 v1, 0x0

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lcom/perfectcorp/perfectlib/ph/template/idc/e;->a(Lcom/perfectcorp/perfectlib/ph/template/idc/e;Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;Ljava/lang/String;FLcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i;)Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;

    move-result-object p2

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->d:Lcom/perfectcorp/thirdparty/com/google/common/collect/ArrayListMultimap;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuGUID:Ljava/lang/String;

    new-instance p3, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;

    invoke-direct {p3, p2}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;-><init>(Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;)V

    invoke-virtual {p0, p1, p3}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ArrayListMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public static e(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a;

    invoke-static {p1, p0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a;->b(Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/io/Files;->b(Ljava/io/File;Ljava/io/File;)V

    :cond_0
    return-void
.end method

.method public static f(Lorg/w3c/dom/Element;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 1

    invoke-interface {p0, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static g(Lcom/perfectcorp/perfectlib/SkuDataForProtocol;Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d;)Z
    .locals 7

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuGUID:Ljava/lang/String;

    iget-object p2, p2, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d;->info:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a;

    iget-object p2, p2, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a;->itemContent:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a$a;

    iget-object p2, p2, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a$a;->palettes:Ljava/util/List;

    sget-object v1, Lcom/perfectcorp/common/utility/MoreCollections;->a:Ljava/util/Set;

    if-nez p2, :cond_0

    sget-object p2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/ph/template/idc/d;

    iget-object v3, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->type:Ljava/lang/String;

    sget-object v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;->SKU:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;

    const/4 v5, 0x0

    sget-object v6, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i;->b:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i;

    invoke-virtual {v2, v5, v3, v4, v6}, Lcom/perfectcorp/perfectlib/ph/template/idc/d;->a(Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;Ljava/lang/String;Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v3

    invoke-virtual {v3}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->d:Lcom/perfectcorp/thirdparty/com/google/common/collect/ArrayListMultimap;

    new-instance v4, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;

    invoke-direct {v4, v1}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;-><init>(Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;)V

    invoke-virtual {v3, v0, v4}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ArrayListMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->t:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a;

    iget-object v4, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->type:Ljava/lang/String;

    invoke-static {v4}, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->valueOfSkuFeatureType(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    move-result-object v4

    invoke-static {v4}, Lcom/perfectcorp/perfectlib/ph/template/SkuTemplateUtils;->b(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v2, Lcom/perfectcorp/perfectlib/ph/template/idc/d;->attr_guid:Ljava/lang/String;

    iget-object v5, v3, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_3
    iget-object v4, p0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->e:Lcom/perfectcorp/thirdparty/com/google/common/collect/HashMultimap;

    iget-object v5, v3, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a;->a:Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Lcom/perfectcorp/thirdparty/com/google/common/collect/HashMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->f:Lcom/perfectcorp/thirdparty/com/google/common/collect/HashMultimap;

    invoke-virtual {v4, v5, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/HashMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->g:Lcom/perfectcorp/thirdparty/com/google/common/collect/HashMultimap;

    invoke-virtual {v4, v5, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/HashMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->i:Ljava/util/Set;

    new-instance v5, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$IdSystem;

    invoke-direct {v5, v3}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$IdSystem;-><init>(Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a;)V

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    :cond_5
    return v1
.end method

.method public static h(Lcom/perfectcorp/perfectlib/ph/template/idc/e;)Z
    .locals 5

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/e;->pattern_mask:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/ph/template/idc/e$i;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/template/idc/e$i;->mask:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/ph/template/idc/e$e;

    new-instance v2, Ljava/io/File;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/ph/template/idc/e$e;->attr_obb_path:Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v3, 0x1

    if-lez v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    if-ge v2, v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v1, ""

    :goto_0
    const-string v2, "obb"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v3

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static i(Ljava/lang/Iterable;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;Ljava/lang/String;Lcom/perfectcorp/perfectlib/x;)Lcom/perfectcorp/perfectlib/SkuDataForProtocol;
    .locals 13

    sget-object v0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->n:Lcom/perfectcorp/common/debug/PerformanceCounter;

    invoke-virtual {v0}, Lcom/perfectcorp/common/debug/PerformanceCounter;->a()Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    move-result-object v0

    new-instance v1, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;

    invoke-direct {v1}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;-><init>()V

    iget-object v2, v1, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;

    iget-object v4, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuGUID:Ljava/lang/String;

    iget-object v5, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->backgroundInfo:Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;

    const/4 v6, 0x0

    if-eqz v5, :cond_5

    iget-object v5, v5, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;->payload:Ljava/lang/String;

    if-eqz v5, :cond_4

    sget-object v7, Lcom/perfectcorp/common/gson/GsonHelper;->a:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    const-class v8, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$a;

    invoke-virtual {v7, v5, v8}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->i(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$a;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, v5, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$a;->data:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$b;

    iget-object v8, v8, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$b;->thumbnail:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, v5, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$a;->data:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$b;

    iget-object v8, v8, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$b;->thumbnail:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_4

    :cond_0
    :goto_1
    iget-object v8, v5, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$a;->makeup:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$d;

    iget-object v8, v8, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$d;->background:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$c;

    iget-object v8, v8, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$c;->imageUrl:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, v5, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$a;->makeup:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$d;

    iget-object v8, v8, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$d;->background:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$c;

    iget-object v8, v8, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$c;->imageUrl:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v8, v5, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$a;->makeup:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$d;

    iget-object v8, v8, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$d;->foreground:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$c;

    iget-object v8, v8, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$c;->imageUrl:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v5, v5, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$a;->makeup:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$d;

    iget-object v5, v5, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$d;->foreground:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$c;

    iget-object v5, v5, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/a$c;->imageUrl:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    new-instance v7, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo$Builder;

    invoke-direct {v7}, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo$Builder;-><init>()V

    iput-object v6, v7, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo$Builder;->a:Ljava/lang/String;

    iget-object v8, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuGUID:Ljava/lang/String;

    iput-object v8, v7, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo$Builder;->c:Ljava/lang/String;

    sget-object v8, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao$Type;->SKU:Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao$Type;

    iput-object v8, v7, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo$Builder;->d:Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao$Type;

    sget-object v8, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao;->d:Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    const-string v10, "url"

    invoke-virtual {v8, v9, v10, v6}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    new-instance v9, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$Image;

    new-instance v10, Lcom/perfectcorp/perfectlib/hc/kernelctrl/networktaskmanager/DownloadImageHelper$DownloadComponent;

    invoke-direct {v10, v6}, Lcom/perfectcorp/perfectlib/hc/kernelctrl/networktaskmanager/DownloadImageHelper$DownloadComponent;-><init>(Ljava/lang/String;)V

    new-instance v11, Lna0;

    const/4 v12, 0x6

    invoke-direct {v11, v1, v6, v12}, Lna0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput-object v10, v9, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$Image;->a:Lcom/perfectcorp/perfectlib/hc/kernelctrl/networktaskmanager/DownloadImageHelper$DownloadComponent;

    iput-object v11, v9, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$Image;->b:Lna0;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, v1, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->f:Lcom/perfectcorp/thirdparty/com/google/common/collect/HashMultimap;

    iget-object v11, v10, Lcom/perfectcorp/perfectlib/hc/kernelctrl/networktaskmanager/DownloadImageHelper$DownloadComponent;->b:Ljava/lang/String;

    invoke-virtual {v8, v11}, Lcom/perfectcorp/thirdparty/com/google/common/collect/HashMultimap;->o(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, v1, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->e:Lcom/perfectcorp/thirdparty/com/google/common/collect/HashMultimap;

    iget-object v11, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuGUID:Ljava/lang/String;

    iget-object v12, v10, Lcom/perfectcorp/perfectlib/hc/kernelctrl/networktaskmanager/DownloadImageHelper$DownloadComponent;->b:Ljava/lang/String;

    invoke-virtual {v8, v11, v12}, Lcom/perfectcorp/thirdparty/com/google/common/collect/HashMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v8, v1, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->f:Lcom/perfectcorp/thirdparty/com/google/common/collect/HashMultimap;

    iget-object v10, v10, Lcom/perfectcorp/perfectlib/hc/kernelctrl/networktaskmanager/DownloadImageHelper$DownloadComponent;->b:Ljava/lang/String;

    iget-object v11, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuGUID:Ljava/lang/String;

    invoke-virtual {v8, v10, v11}, Lcom/perfectcorp/thirdparty/com/google/common/collect/HashMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v8, v1, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->i:Ljava/util/Set;

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v8, v1, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->k:Lcom/perfectcorp/thirdparty/com/google/common/collect/ArrayListMultimap;

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v8, v7, v6}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ArrayListMultimap;->n(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    iget-object v5, v1, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->h:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v6, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->backgroundInfo:Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;

    iget-object v7, v6, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;->guid:Ljava/lang/String;

    invoke-virtual {v5, v7, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v1, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-interface {v5, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v5, v1, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_5
    iget-object v5, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->items:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d;

    invoke-static {v1, v3, v7}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->g(Lcom/perfectcorp/perfectlib/SkuDataForProtocol;Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d;)Z

    move-result v8

    invoke-static {v1, v3, v7}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->m(Lcom/perfectcorp/perfectlib/SkuDataForProtocol;Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d;)Z

    move-result v9

    invoke-static {v1, v3, v7}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->l(Lcom/perfectcorp/perfectlib/SkuDataForProtocol;Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d;)Z

    move-result v7

    if-nez v8, :cond_7

    if-nez v9, :cond_7

    if-eqz v7, :cond_6

    :cond_7
    const/4 v6, 0x1

    goto :goto_3

    :cond_8
    move-object/from16 v7, p3

    invoke-static {v1, v3, p1, p2, v7}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->c(Lcom/perfectcorp/perfectlib/SkuDataForProtocol;Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;Ljava/lang/String;Lcom/perfectcorp/perfectlib/SkuDataForProtocol$ExtraInfoImageProcessor;)V

    if-eqz v6, :cond_9

    iget-object v6, v1, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-interface {v6, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v6, v1, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_9
    new-instance p0, Lcom/perfectcorp/perfectlib/exceptions/ContentIssueException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Invalid metadata for product ID="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/perfectcorp/perfectlib/exceptions/ContentIssueException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    return-object v1

    :goto_4
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static j(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;Lcom/perfectcorp/perfectlib/ph/template/idc/e;)Ljava/util/HashMap;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    invoke-direct {v0, p0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;)V

    sget-object p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/f$a;->a:Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/f$a;

    invoke-static {v0, p0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/f;->b(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/f$a;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a;->d(Lcom/perfectcorp/perfectlib/ph/template/idc/e;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public static l(Lcom/perfectcorp/perfectlib/SkuDataForProtocol;Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d;)Z
    .locals 34

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuGUID:Ljava/lang/String;

    move-object/from16 v2, p2

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d;->info:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a;->itemContent:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a$a;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a$a;->colors:Ljava/util/List;

    sget-object v3, Lcom/perfectcorp/common/utility/MoreCollections;->a:Ljava/util/Set;

    if-nez v2, :cond_0

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perfectcorp/perfectlib/ph/template/idc/a;

    iget-object v8, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->type:Ljava/lang/String;

    sget-object v15, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;->SKU:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    new-instance v6, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;

    invoke-direct {v6}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;-><init>()V

    iget-object v7, v5, Lcom/perfectcorp/perfectlib/ph/template/idc/a;->attr_sku_guid:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, v6, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->v:Ljava/util/HashSet;

    iget-object v9, v5, Lcom/perfectcorp/perfectlib/ph/template/idc/a;->attr_sku_guid:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->g()Ljava/lang/String;

    move-result-object v7

    iget-object v9, v5, Lcom/perfectcorp/perfectlib/ph/template/idc/a;->attr_glow_intensity:Ljava/lang/String;

    iget-object v10, v5, Lcom/perfectcorp/perfectlib/ph/template/idc/a;->attr_coverage_intensity:Ljava/lang/String;

    iget-object v11, v5, Lcom/perfectcorp/perfectlib/ph/template/idc/a;->attr_skin_smooth_intensity:Ljava/lang/String;

    const-string v31, "-1"

    const-string v32, "-1"

    const-string v16, ""

    const-string v17, ""

    const-string v18, "false"

    const-string v19, "-1"

    const-string v20, ""

    const-string v21, "-1"

    const/16 v22, 0x0

    const-string v26, "-1"

    const-string v27, "-1"

    const-string v28, "-1"

    const-string v29, "-1"

    const-string v30, "-1"

    const-string v33, ""

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    move-object/from16 v25, v11

    invoke-static/range {v16 .. v33}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v9, v6

    new-instance v6, Lcom/perfectcorp/perfectlib/makeupcam/template/ColorInfo;

    iget-object v10, v5, Lcom/perfectcorp/perfectlib/ph/template/idc/a;->inner_text:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v5, Lcom/perfectcorp/perfectlib/ph/template/idc/a;->attr_intensity:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    move-object v13, v9

    move-object v9, v10

    move-object v10, v11

    invoke-virtual {v15}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v11

    move-object v14, v13

    iget-object v13, v5, Lcom/perfectcorp/perfectlib/ph/template/idc/a;->attr_guid:Ljava/lang/String;

    move-object/from16 v16, v14

    const-string v14, ""

    move-object/from16 v3, v16

    invoke-direct/range {v6 .. v14}, Lcom/perfectcorp/perfectlib/makeupcam/template/ColorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v16, v8

    iget-object v7, v3, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->g:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, v5, Lcom/perfectcorp/perfectlib/ph/template/idc/a;->attr_guid:Ljava/lang/String;

    invoke-static {v7, v15}, Lcom/perfectcorp/perfectlib/ph/template/idc/d;->d(Ljava/lang/String;Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;)Z

    move-result v7

    const/16 v20, 0x1

    if-nez v7, :cond_3

    new-instance v7, Lcom/perfectcorp/perfectlib/ph/template/d;

    move-object v8, v7

    iget-object v7, v5, Lcom/perfectcorp/perfectlib/ph/template/idc/a;->attr_guid:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v12

    sget v13, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->a:F

    sget-object v9, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;->DOWNLOAD:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;

    if-ne v15, v9, :cond_2

    move/from16 v14, v20

    goto :goto_1

    :cond_2
    const/4 v14, 0x0

    :goto_1
    iget-object v15, v5, Lcom/perfectcorp/perfectlib/ph/template/idc/a;->attr_sku_guid:Ljava/lang/String;

    iget-object v5, v5, Lcom/perfectcorp/perfectlib/ph/template/idc/a;->attr_color_number:Ljava/lang/String;

    sget-object v9, Lcom/perfectcorp/common/gson/GsonHelper;->b:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    new-instance v10, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f$a;

    invoke-direct {v10}, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f$a;-><init>()V

    new-instance v11, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f;

    invoke-direct {v11, v10}, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f;-><init>(Lcom/perfectcorp/perfectlib/ph/template/idc/d$f$a;)V

    invoke-virtual {v9, v11}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->k(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    iget-object v6, v6, Lcom/perfectcorp/perfectlib/makeupcam/template/ColorInfo;->a:Ljava/lang/String;

    const/4 v9, 0x1

    const-string v10, ""

    const-string v11, ""

    const-string v18, ""

    move-object/from16 v17, v8

    move-object v8, v6

    move-object/from16 v6, v17

    move-object/from16 v17, v5

    invoke-direct/range {v6 .. v19}, Lcom/perfectcorp/perfectlib/ph/template/d;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;FZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v3, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->e:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-static {v3}, Lcom/perfectcorp/perfectlib/ph/template/b;->a(Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v3

    invoke-virtual {v3}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v3}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;

    move-object/from16 v5, p0

    iget-object v4, v5, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->d:Lcom/perfectcorp/thirdparty/com/google/common/collect/ArrayListMultimap;

    new-instance v6, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;

    invoke-direct {v6, v3}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;-><init>(Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;)V

    invoke-virtual {v4, v1, v6}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ArrayListMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move/from16 v4, v20

    goto/16 :goto_0

    :cond_4
    move-object/from16 v5, p0

    goto/16 :goto_0

    :cond_5
    return v4
.end method

.method public static m(Lcom/perfectcorp/perfectlib/SkuDataForProtocol;Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d;)Z
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v6, p2

    iget-object v7, v1, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->l:Ljava/util/Set;

    iget-object v8, v1, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->f:Lcom/perfectcorp/thirdparty/com/google/common/collect/HashMultimap;

    iget-object v9, v1, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->e:Lcom/perfectcorp/thirdparty/com/google/common/collect/HashMultimap;

    iget-object v10, v1, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->g:Lcom/perfectcorp/thirdparty/com/google/common/collect/HashMultimap;

    iget-object v11, v1, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->i:Ljava/util/Set;

    iget-object v12, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuGUID:Ljava/lang/String;

    :try_start_0
    iget-object v0, v6, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d;->info:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a;->itemContent:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a$a;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a$a;->patterns:Ljava/util/List;

    sget-object v3, Lcom/perfectcorp/common/utility/MoreCollections;->a:Ljava/util/Set;

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v3, 0x0

    :goto_0
    :try_start_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const-string v4, ", skuGuid="

    const-string v5, "patternGuid is empty. productGuid="

    if-eqz v0, :cond_b

    :try_start_2
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/ph/template/idc/e;

    iget-object v13, v0, Lcom/perfectcorp/perfectlib/ph/template/idc/e;->attr_texture_supported_mode:Ljava/lang/String;

    invoke-static {v13}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;->c(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v13

    const/16 v22, 0x1

    sget-object v15, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;->REAL_3D:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;

    invoke-interface {v13, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    sget-object v15, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->RING:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    move-object/from16 v16, v0

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->BRACELET:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->WATCH:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move/from16 v23, v3

    :try_start_3
    sget-object v3, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->NECKLACE:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    sget-object v17, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    move/from16 v17, v13

    filled-new-array {v15, v0, v1, v3}, [Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v18, v0

    const/4 v0, 0x4

    invoke-static {v0, v13}, Lcom/perfectcorp/thirdparty/com/google/common/collect/al$a;->d(I[Ljava/lang/Object;)V

    invoke-static {v0, v13}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->s(I[Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v0

    if-nez v17, :cond_1

    iget-object v13, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->type:Ljava/lang/String;

    invoke-static {v13}, Lcom/perfectcorp/perfectlib/ph/template/SkuTemplateUtils;->a(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    move-result-object v13

    invoke-virtual {v0, v13}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v19, v14

    move-object/from16 v6, v16

    goto/16 :goto_6

    :cond_2
    sget-object v18, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;->SKU:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;

    iget-object v0, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->type:Ljava/lang/String;

    sget v20, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->a:F

    sget-object v21, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i;->b:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i;

    const/16 v17, 0x0

    move-object/from16 v19, v0

    invoke-static/range {v16 .. v21}, Lcom/perfectcorp/perfectlib/ph/template/idc/e;->a(Lcom/perfectcorp/perfectlib/ph/template/idc/e;Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;Ljava/lang/String;FLcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i;)Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;

    move-result-object v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v3, v16

    :try_start_4
    iget-object v0, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->type:Ljava/lang/String;

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->valueOfSkuFeatureType(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ph/template/SkuTemplateUtils;->b(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v3}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->h(Lcom/perfectcorp/perfectlib/ph/template/idc/e;)Z

    move-result v0

    if-nez v0, :cond_3

    move/from16 v15, v22

    goto :goto_1

    :catchall_0
    move-exception v0

    move/from16 v13, v22

    goto/16 :goto_a

    :cond_3
    const/4 v15, 0x0

    :goto_1
    if-eqz v15, :cond_4

    invoke-static {v2, v3}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->j(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;Lcom/perfectcorp/perfectlib/ph/template/idc/e;)Ljava/util/HashMap;

    move-result-object v4

    new-instance v0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$IdSystemFiles;

    iget-object v1, v3, Lcom/perfectcorp/perfectlib/ph/template/idc/e;->attr_guid:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    move-object/from16 v16, v0

    new-instance v0, Lww0;

    move-object/from16 v17, v5

    const/4 v5, 0x1

    move-object/from16 v19, v14

    move-object/from16 v14, v16

    move-object/from16 v6, v17

    move/from16 v16, v15

    move-object v15, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lww0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object/from16 v24, v3

    move-object v3, v0

    move-object v0, v1

    move-object/from16 v1, v24

    invoke-direct {v14, v15, v6, v3}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$IdSystemFiles;-><init>(Ljava/lang/String;Ljava/util/Collection;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)V

    invoke-virtual {v9, v12, v15}, Lcom/perfectcorp/thirdparty/com/google/common/collect/HashMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {v8, v15, v12}, Lcom/perfectcorp/thirdparty/com/google/common/collect/HashMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-interface {v11, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v19, v14

    move/from16 v16, v15

    :goto_2
    iget-object v3, v13, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->t:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a;

    if-eqz v16, :cond_6

    iget-object v5, v1, Lcom/perfectcorp/perfectlib/ph/template/idc/e;->attr_guid:Ljava/lang/String;

    iget-object v6, v4, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    :cond_6
    iget-object v5, v0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->d:Lcom/perfectcorp/thirdparty/com/google/common/collect/ArrayListMultimap;

    new-instance v6, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;

    invoke-direct {v6, v13}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;-><init>(Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;)V

    invoke-virtual {v5, v12, v6}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ArrayListMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v5, v4, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a;->a:Ljava/lang/String;

    invoke-virtual {v9, v12, v5}, Lcom/perfectcorp/thirdparty/com/google/common/collect/HashMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {v8, v5, v12}, Lcom/perfectcorp/thirdparty/com/google/common/collect/HashMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {v10, v5, v12}, Lcom/perfectcorp/thirdparty/com/google/common/collect/HashMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v5, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->type:Ljava/lang/String;

    sget-object v6, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->EYE_CONTACT:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    invoke-virtual {v6}, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    new-instance v5, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$IdSystem;

    invoke-direct {v5, v4}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$IdSystem;-><init>(Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a;)V

    invoke-interface {v11, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :cond_7
    move-object/from16 v6, p2

    move-object v1, v0

    :goto_4
    move-object/from16 v14, v19

    move/from16 v3, v22

    goto/16 :goto_0

    :goto_5
    move/from16 v13, v23

    goto/16 :goto_a

    :catchall_1
    move-exception v0

    goto :goto_5

    :goto_6
    :try_start_5
    iget-object v13, v6, Lcom/perfectcorp/perfectlib/ph/template/idc/e;->attr_patternGuid:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    xor-int/lit8 v14, v14, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v6, Lcom/perfectcorp/perfectlib/ph/template/idc/e;->attr_guid:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->g(ZLjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-static {v13}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const v4, -0x18080

    invoke-static {v4, v0, v12}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/j;->e(ILjava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v10, v13, v12}, Lcom/perfectcorp/thirdparty/com/google/common/collect/HashMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-interface {v7, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->type:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->type:Ljava/lang/String;

    invoke-virtual/range {v18 .. v18}, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->type:Ljava/lang/String;

    invoke-virtual {v15}, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->type:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_7

    :cond_8
    new-instance v0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$IdSystemContentZip;

    invoke-direct {v0, v13, v2}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$IdSystemContentZip;-><init>(Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;)V

    goto :goto_8

    :cond_9
    :goto_7
    new-instance v0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$IdSystemContentZip;

    invoke-direct {v0, v13, v2, v6}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$IdSystemContentZip;-><init>(Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;Lcom/perfectcorp/perfectlib/ph/template/idc/e;)V

    :goto_8
    invoke-interface {v11, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v7, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_a
    move-object/from16 v1, p0

    move-object/from16 v6, p2

    goto/16 :goto_4

    :catchall_2
    move-exception v0

    move/from16 v23, v3

    goto/16 :goto_5

    :cond_b
    move/from16 v23, v3

    const/16 v22, 0x1

    :try_start_7
    sget-object v0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->w:Ljava/util/List;

    iget-object v1, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->type:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move-object/from16 v6, p2

    iget-object v0, v6, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d;->info:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a;->pattern:Ljava/util/List;

    if-nez v0, :cond_c

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_c
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move/from16 v13, v23

    :goto_9
    :try_start_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d;->itemGUID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->g(ZLjava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const v8, -0x14912

    invoke-static {v8, v3, v12}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/j;->e(ILjava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_d

    invoke-virtual {v10, v1, v12}, Lcom/perfectcorp/thirdparty/com/google/common/collect/HashMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-interface {v7, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    new-instance v3, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$IdSystemContentZip;

    invoke-direct {v3, v1, v2}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$IdSystemContentZip;-><init>(Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;)V

    invoke-interface {v11, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v7, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_d
    move/from16 v13, v22

    goto :goto_9

    :catchall_3
    move-exception v0

    goto :goto_a

    :cond_e
    return v13

    :cond_f
    return v23

    :catchall_4
    move-exception v0

    const/4 v13, 0x0

    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[collectData] parse pattern failed. skuId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SkuDataForProtocol"

    invoke-static {v2, v1, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v13
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final k()V
    .locals 6

    sget-object v0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->o:Lcom/perfectcorp/common/debug/PerformanceCounter;

    invoke-virtual {v0}, Lcom/perfectcorp/common/debug/PerformanceCounter;->a()Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    move-result-object v0

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->v:Lcom/perfectcorp/common/debug/PerformanceCounter;

    invoke-virtual {v2}, Lcom/perfectcorp/common/debug/PerformanceCounter;->a()Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    move-result-object v2

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    new-instance v4, Lhn0;

    const/16 v5, 0x12

    invoke-direct {v4, p0, v5}, Lhn0;-><init>(Ljava/lang/Object;I)V

    invoke-static {v3, v4}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Runnable;)V

    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
