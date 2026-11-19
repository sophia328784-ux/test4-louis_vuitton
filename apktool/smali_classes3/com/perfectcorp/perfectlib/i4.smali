.class public final synthetic Lcom/perfectcorp/perfectlib/i4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/perfectcorp/perfectlib/PerfectEffect;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/PerfectEffect;I)V
    .locals 0

    iput p2, p0, Lcom/perfectcorp/perfectlib/i4;->b:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/i4;->c:Lcom/perfectcorp/perfectlib/PerfectEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lcom/perfectcorp/perfectlib/i4;->b:I

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/i4;->c:Lcom/perfectcorp/perfectlib/PerfectEffect;

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->getFeatureType()Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/PerfectEffect;->itemSubType:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    const-string v2, "itemSubTypes can not be null"

    invoke-static {p0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v2, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->NONE:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    const/4 v3, 0x0

    const-string v4, "0"

    if-ne p0, v2, :cond_0

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    const-string p0, "featureType=? AND isDeleted=?"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v3, v1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/i;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->c()Ljava/util/Set;

    move-result-object p0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {p0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->c([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "featureType=? AND isDeleted=? AND featureSubtype"

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v3, v1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/i;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_0
    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->getFeatureType()Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/PerfectEffect;->itemSubType:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    invoke-static {v0, v1, p0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/SkuDao;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
