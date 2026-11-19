.class public final synthetic Lcom/perfectcorp/perfectlib/c2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/com/google/common/base/Function;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/perfectcorp/perfectlib/c2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget p0, p0, Lcom/perfectcorp/perfectlib/c2;->b:I

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/a$a;

    sget p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/a$a;->guid:Ljava/lang/String;

    return-object p0

    :pswitch_0
    check-cast p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;

    sget p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->c()Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/a$a;

    sget p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/a$a;->guid:Ljava/lang/String;

    return-object p0

    :pswitch_2
    check-cast p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/a$a;

    sget-object p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/a$a;->guid:Ljava/lang/String;

    return-object p0

    :pswitch_3
    check-cast p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;

    sget-object p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->c()Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/a$a;

    sget-object p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/a$a;->guid:Ljava/lang/String;

    return-object p0

    :pswitch_5
    check-cast p1, Ljava/util/List;

    sget-object p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    new-instance p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;

    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/EffectId;

    iget-object v2, v1, Lcom/perfectcorp/perfectlib/EffectId;->b:Ljava/lang/String;

    iget-object v3, v1, Lcom/perfectcorp/perfectlib/EffectId;->a:Lcom/perfectcorp/perfectlib/PerfectEffect;

    const-string v4, "N/A"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    sget-object v2, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    sget-object v2, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    new-instance v2, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;

    invoke-direct {v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;-><init>()V

    new-instance v4, Lcom/perfectcorp/perfectlib/ProductId;

    new-instance v5, Lcom/perfectcorp/perfectlib/EffectId$Builder;

    invoke-direct {v5, v3}, Lcom/perfectcorp/perfectlib/EffectId$Builder;-><init>(Lcom/perfectcorp/perfectlib/PerfectEffect;)V

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/EffectId;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/perfectcorp/perfectlib/EffectId$Builder;->b:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/perfectcorp/perfectlib/EffectId$Builder;->a()Lcom/perfectcorp/perfectlib/EffectId;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/perfectcorp/perfectlib/ProductId;-><init>(Lcom/perfectcorp/perfectlib/EffectId;)V

    invoke-virtual {v2, v4}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->f(Ljava/lang/Object;)V

    iget-object v4, v3, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-static {v4}, Lcom/perfectcorp/perfectlib/ph/unit/sku/a;->e(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/ph/unit/sku/a;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/perfectcorp/perfectlib/ph/template/e$e;->a(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v1, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v1, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c;

    new-instance v5, Lcom/perfectcorp/perfectlib/ProductId;

    new-instance v6, Lcom/perfectcorp/perfectlib/EffectId$Builder;

    invoke-direct {v6, v3}, Lcom/perfectcorp/perfectlib/EffectId$Builder;-><init>(Lcom/perfectcorp/perfectlib/PerfectEffect;)V

    iget-object v7, v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c;->b:Ljava/lang/String;

    invoke-static {v7}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perfectcorp/perfectlib/EffectId$Builder;->c:Ljava/lang/String;

    iget-object v4, v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c;->c:Ljava/lang/String;

    invoke-static {v4}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lcom/perfectcorp/perfectlib/EffectId$Builder;->d:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/perfectcorp/perfectlib/EffectId$Builder;->a()Lcom/perfectcorp/perfectlib/EffectId;

    move-result-object v4

    invoke-direct {v5, v4}, Lcom/perfectcorp/perfectlib/ProductId;-><init>(Lcom/perfectcorp/perfectlib/EffectId;)V

    invoke-virtual {v2, v5}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object v4, v3, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-static {v4}, Lcom/perfectcorp/perfectlib/ph/unit/sku/a;->h(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/ph/unit/sku/a;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/perfectcorp/perfectlib/ph/template/e$e;->c(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v1, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v1, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c;

    new-instance v5, Lcom/perfectcorp/perfectlib/ProductId;

    new-instance v6, Lcom/perfectcorp/perfectlib/EffectId$Builder;

    invoke-direct {v6, v3}, Lcom/perfectcorp/perfectlib/EffectId$Builder;-><init>(Lcom/perfectcorp/perfectlib/PerfectEffect;)V

    iget-object v7, v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c;->b:Ljava/lang/String;

    invoke-static {v7}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perfectcorp/perfectlib/EffectId$Builder;->c:Ljava/lang/String;

    iget-object v4, v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c;->c:Ljava/lang/String;

    invoke-static {v4}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lcom/perfectcorp/perfectlib/EffectId$Builder;->d:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/perfectcorp/perfectlib/EffectId$Builder;->a()Lcom/perfectcorp/perfectlib/EffectId;

    move-result-object v4

    invoke-direct {v5, v4}, Lcom/perfectcorp/perfectlib/ProductId;-><init>(Lcom/perfectcorp/perfectlib/EffectId;)V

    invoke-virtual {v2, v5}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->f(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object v4, v3, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-static {v4}, Lcom/perfectcorp/perfectlib/ph/unit/sku/a;->j(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/ph/unit/sku/a;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/perfectcorp/perfectlib/ph/template/e$e;->f(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v1, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v1, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c;

    new-instance v5, Lcom/perfectcorp/perfectlib/ProductId;

    new-instance v6, Lcom/perfectcorp/perfectlib/EffectId$Builder;

    invoke-direct {v6, v3}, Lcom/perfectcorp/perfectlib/EffectId$Builder;-><init>(Lcom/perfectcorp/perfectlib/PerfectEffect;)V

    iget-object v7, v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c;->b:Ljava/lang/String;

    invoke-static {v7}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perfectcorp/perfectlib/EffectId$Builder;->c:Ljava/lang/String;

    iget-object v4, v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c;->c:Ljava/lang/String;

    invoke-static {v4}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lcom/perfectcorp/perfectlib/EffectId$Builder;->d:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/perfectcorp/perfectlib/EffectId$Builder;->a()Lcom/perfectcorp/perfectlib/EffectId;

    move-result-object v4

    invoke-direct {v5, v4}, Lcom/perfectcorp/perfectlib/ProductId;-><init>(Lcom/perfectcorp/perfectlib/EffectId;)V

    invoke-virtual {v2, v5}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->f(Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    invoke-virtual {v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->i()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->g(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_6
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    iget-object p1, v3, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->getFeatureType()Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unsupported SKU set type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance v2, Lcom/perfectcorp/perfectlib/ProductId;

    invoke-direct {v2, v1}, Lcom/perfectcorp/perfectlib/ProductId;-><init>(Lcom/perfectcorp/perfectlib/EffectId;)V

    invoke-virtual {p0, v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->f(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->i()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/ProductMappingUtility;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    sget-object p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget p0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->e:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_8
    check-cast p1, Lcom/perfectcorp/perfectlib/EffectId;

    sget-object p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p1, Lcom/perfectcorp/perfectlib/EffectId;->l:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    return-object p0

    :pswitch_9
    check-cast p1, Lcom/perfectcorp/perfectlib/EffectId;

    sget-object p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p1, Lcom/perfectcorp/perfectlib/EffectId;->d:Ljava/lang/String;

    return-object p0

    :pswitch_a
    check-cast p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    sget-object p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget p0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->e:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
