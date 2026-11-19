.class public final synthetic Lcom/perfectcorp/perfectlib/x1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/com/google/common/base/Function;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/perfectcorp/perfectlib/x1;->b:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/x1;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lcom/perfectcorp/perfectlib/x1;->b:I

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/x1;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    check-cast p1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    sget-object v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->h(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lcom/perfectcorp/perfectlib/EffectConfig;

    check-cast p1, Landroid/util/Pair;

    sget-object v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/perfectcorp/perfectlib/VtoSetting;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    invoke-static {v0, p1}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a(Lcom/perfectcorp/perfectlib/VtoSetting;Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;)Lcom/perfectcorp/perfectlib/ApplyEffectUtility$ApplySkuInfo;

    move-result-object v0

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/ApplyEffectUtility$ApplySkuInfo;->a:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;->c:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->d(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/perfectcorp/perfectlib/PerfectEffect;->of(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;)Lcom/perfectcorp/perfectlib/PerfectEffect;

    move-result-object p1

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/ApplyEffectUtility$ApplySkuInfo;->b:Ljava/lang/String;

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/ApplyEffectUtility$ApplySkuInfo;->c:Ljava/lang/String;

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/ApplyEffectUtility$ApplySkuInfo;->d:Ljava/lang/String;

    iget-object v4, v0, Lcom/perfectcorp/perfectlib/ApplyEffectUtility$ApplySkuInfo;->e:Ljava/lang/String;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ApplyEffectUtility$ApplySkuInfo;->h:Ljava/util/List;

    new-instance v5, Lcom/perfectcorp/perfectlib/c2;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Lcom/perfectcorp/perfectlib/c2;-><init>(I)V

    invoke-static {v0, v5}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists;->c(Ljava/util/List;Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Ljava/util/AbstractList;

    move-result-object v5

    new-instance v6, Lcom/perfectcorp/perfectlib/EffectId$Builder;

    invoke-direct {v6, p1}, Lcom/perfectcorp/perfectlib/EffectId$Builder;-><init>(Lcom/perfectcorp/perfectlib/PerfectEffect;)V

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v6, Lcom/perfectcorp/perfectlib/EffectId$Builder;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v6, Lcom/perfectcorp/perfectlib/EffectId$Builder;->c:Ljava/lang/String;

    invoke-static {v3}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v6, Lcom/perfectcorp/perfectlib/EffectId$Builder;->d:Ljava/lang/String;

    invoke-static {v4}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v6, Lcom/perfectcorp/perfectlib/EffectId$Builder;->e:Ljava/lang/String;

    invoke-virtual {v6, v5}, Lcom/perfectcorp/perfectlib/EffectId$Builder;->b(Ljava/util/List;)V

    invoke-virtual {v6, v0}, Lcom/perfectcorp/perfectlib/EffectId$Builder;->c(Ljava/util/List;)V

    iput-object p0, v6, Lcom/perfectcorp/perfectlib/EffectId$Builder;->l:Lcom/perfectcorp/perfectlib/EffectConfig;

    invoke-virtual {v6}, Lcom/perfectcorp/perfectlib/EffectId$Builder;->a()Lcom/perfectcorp/perfectlib/EffectId;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
