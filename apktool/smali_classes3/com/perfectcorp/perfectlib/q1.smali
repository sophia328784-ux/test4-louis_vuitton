.class public final synthetic Lcom/perfectcorp/perfectlib/q1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

.field public final synthetic d:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

.field public final synthetic e:I

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;III)V
    .locals 0

    iput p5, p0, Lcom/perfectcorp/perfectlib/q1;->b:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/q1;->c:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/q1;->d:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    iput p3, p0, Lcom/perfectcorp/perfectlib/q1;->e:I

    iput p4, p0, Lcom/perfectcorp/perfectlib/q1;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lcom/perfectcorp/perfectlib/q1;->b:I

    const-string v2, "MakeupCamInternal"

    const/4 v3, 0x3

    iget v4, v0, Lcom/perfectcorp/perfectlib/q1;->f:I

    iget v5, v0, Lcom/perfectcorp/perfectlib/q1;->e:I

    iget-object v6, v0, Lcom/perfectcorp/perfectlib/q1;->d:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    iget-object v7, v0, Lcom/perfectcorp/perfectlib/q1;->c:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    packed-switch v1, :pswitch_data_0

    move-object/from16 v0, p1

    check-cast v0, Lcom/perfectcorp/perfectlib/EffectId;

    invoke-static {v7, v6, v5, v4, v0}, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->d(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;IILcom/perfectcorp/perfectlib/EffectId;)Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;

    move-result-object v0

    return-object v0

    :pswitch_0
    move-object/from16 v1, p1

    check-cast v1, Lcom/perfectcorp/perfectlib/EffectId;

    sget-object v4, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v4, v1, Lcom/perfectcorp/perfectlib/EffectId;->b:Ljava/lang/String;

    invoke-static {v4}, Lcom/perfectcorp/perfectlib/ph/unit/sku/a;->f(Ljava/lang/String;)Z

    move-result v5

    iget-object v6, v0, Lcom/perfectcorp/perfectlib/q1;->c:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    iget-object v7, v0, Lcom/perfectcorp/perfectlib/q1;->d:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    iget v10, v0, Lcom/perfectcorp/perfectlib/q1;->e:I

    iget v11, v0, Lcom/perfectcorp/perfectlib/q1;->f:I

    if-eqz v5, :cond_1

    const-string v0, "_lk_"

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SingleLookLipStickSkuSet"

    invoke-static {v3, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v8, v1, Lcom/perfectcorp/perfectlib/EffectId;->a:Lcom/perfectcorp/perfectlib/PerfectEffect;

    iget-object v9, v1, Lcom/perfectcorp/perfectlib/EffectId;->b:Ljava/lang/String;

    invoke-static/range {v6 .. v11}, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->g(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/PerfectEffect;Ljava/lang/String;II)Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "SingleLipLipStickSkuSet"

    invoke-static {v3, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/perfectcorp/perfectlib/EffectId;->a:Lcom/perfectcorp/perfectlib/PerfectEffect;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/EffectId;->i:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    invoke-static {v6, v7, v0, v4, v1}, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->C(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/PerfectEffect;Ljava/lang/String;Ljava/util/List;)Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "DefaultSingleLipStick"

    invoke-static {v3, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {v6, v7, v10, v11, v1}, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->d(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;IILcom/perfectcorp/perfectlib/EffectId;)Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    move-object/from16 v1, p1

    check-cast v1, Lcom/perfectcorp/perfectlib/EffectId;

    sget-object v2, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v2, v1, Lcom/perfectcorp/perfectlib/EffectId;->a:Lcom/perfectcorp/perfectlib/PerfectEffect;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-static {v2}, Lcom/perfectcorp/perfectlib/ph/template/SkuTemplateUtils;->b(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v11, v1, Lcom/perfectcorp/perfectlib/EffectId;->d:Ljava/lang/String;

    iget-object v12, v1, Lcom/perfectcorp/perfectlib/EffectId;->f:Ljava/lang/String;

    invoke-static {v11}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->x(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;

    move-result-object v3

    invoke-static {v3}, Lcom/perfectcorp/perfectlib/ph/template/e;->f(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;)Ljava/util/List;

    move-result-object v15

    invoke-static {v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->c(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)I

    move-result v2

    iget-object v3, v1, Lcom/perfectcorp/perfectlib/EffectId;->i:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    invoke-static {v2, v15, v3}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateWorkarounds;->b(ILjava/util/List;Ljava/util/List;)V

    iget-object v8, v1, Lcom/perfectcorp/perfectlib/EffectId;->a:Lcom/perfectcorp/perfectlib/PerfectEffect;

    iget-object v9, v1, Lcom/perfectcorp/perfectlib/EffectId;->b:Ljava/lang/String;

    iget-object v10, v1, Lcom/perfectcorp/perfectlib/EffectId;->c:Ljava/lang/String;

    iget-object v13, v1, Lcom/perfectcorp/perfectlib/EffectId;->d:Ljava/lang/String;

    iget-object v14, v1, Lcom/perfectcorp/perfectlib/EffectId;->e:Ljava/lang/String;

    const/16 v16, 0x0

    iget-object v4, v0, Lcom/perfectcorp/perfectlib/q1;->c:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    iget-object v5, v0, Lcom/perfectcorp/perfectlib/q1;->d:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    iget v6, v0, Lcom/perfectcorp/perfectlib/q1;->e:I

    iget v7, v0, Lcom/perfectcorp/perfectlib/q1;->f:I

    invoke-static/range {v4 .. v16}, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->e(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;IILcom/perfectcorp/perfectlib/PerfectEffect;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v0, "Pattern major feature unsupported. Maybe use the wrong condition? beautyMode="

    invoke-static {v2, v0}, Laz;->m(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :pswitch_2
    move-object/from16 v0, p1

    check-cast v0, Lcom/perfectcorp/perfectlib/EffectId;

    invoke-static {v7, v6, v5, v4, v0}, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->y(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;IILcom/perfectcorp/perfectlib/EffectId;)Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;

    move-result-object v0

    return-object v0

    :pswitch_3
    move-object/from16 v0, p1

    check-cast v0, Lcom/perfectcorp/perfectlib/EffectId;

    invoke-static {v7, v6, v0, v5, v4}, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->f(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/EffectId;II)Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;

    move-result-object v0

    return-object v0

    :pswitch_4
    move-object/from16 v1, p1

    check-cast v1, Landroid/util/Pair;

    sget-object v2, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v4, v2

    check-cast v4, Lcom/perfectcorp/perfectlib/VtoSetting;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    invoke-static {v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->h(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/s;

    move-result-object v1

    new-instance v3, Lcom/perfectcorp/perfectlib/p1;

    const/4 v9, 0x1

    iget-object v5, v0, Lcom/perfectcorp/perfectlib/q1;->c:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    iget-object v6, v0, Lcom/perfectcorp/perfectlib/q1;->d:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    iget v7, v0, Lcom/perfectcorp/perfectlib/q1;->e:I

    iget v8, v0, Lcom/perfectcorp/perfectlib/q1;->f:I

    invoke-direct/range {v3 .. v9}, Lcom/perfectcorp/perfectlib/p1;-><init>(Ljava/lang/Object;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;III)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {v0, v1, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    return-object v0

    :pswitch_5
    move-object/from16 v1, p1

    check-cast v1, Landroid/util/Pair;

    sget-object v4, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/perfectcorp/perfectlib/VtoSetting;

    iget-object v4, v4, Lcom/perfectcorp/perfectlib/VtoSetting;->a:Ljava/lang/String;

    invoke-static {v4}, Lcom/perfectcorp/perfectlib/ph/unit/sku/a;->f(Ljava/lang/String;)Z

    move-result v4

    iget-object v7, v0, Lcom/perfectcorp/perfectlib/q1;->c:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    iget-object v8, v0, Lcom/perfectcorp/perfectlib/q1;->d:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    if-eqz v4, :cond_3

    const-string v0, "LipStickSkuSet"

    invoke-static {v3, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectEffect;->LIPSTICK:Lcom/perfectcorp/perfectlib/PerfectEffect;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/perfectcorp/perfectlib/VtoSetting;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/VtoSetting;->a:Ljava/lang/String;

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v7, v8, v0, v1, v2}, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->C(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/PerfectEffect;Ljava/lang/String;Ljava/util/List;)Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->h(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/s;

    move-result-object v0

    goto :goto_2

    :cond_3
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v6, v2

    check-cast v6, Lcom/perfectcorp/perfectlib/VtoSetting;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    invoke-static {v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->h(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/s;

    move-result-object v1

    new-instance v5, Lcom/perfectcorp/perfectlib/p1;

    const/4 v11, 0x1

    iget v9, v0, Lcom/perfectcorp/perfectlib/q1;->e:I

    iget v10, v0, Lcom/perfectcorp/perfectlib/q1;->f:I

    invoke-direct/range {v5 .. v11}, Lcom/perfectcorp/perfectlib/p1;-><init>(Ljava/lang/Object;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;III)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {v0, v1, v5}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    :goto_2
    return-object v0

    :pswitch_6
    move-object/from16 v0, p1

    check-cast v0, Landroid/util/Pair;

    sget-object v1, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/perfectcorp/perfectlib/VtoSetting;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/VtoSetting;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/ph/unit/sku/a;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/perfectcorp/perfectlib/PerfectEffect;->BLUSH:Lcom/perfectcorp/perfectlib/PerfectEffect;

    new-instance v2, Lcom/perfectcorp/perfectlib/EffectId$Builder;

    invoke-direct {v2, v1}, Lcom/perfectcorp/perfectlib/EffectId$Builder;-><init>(Lcom/perfectcorp/perfectlib/PerfectEffect;)V

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/perfectcorp/perfectlib/VtoSetting;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/VtoSetting;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/perfectcorp/perfectlib/EffectId$Builder;->b:Ljava/lang/String;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {v2, v0}, Lcom/perfectcorp/perfectlib/EffectId$Builder;->b(Ljava/util/List;)V

    invoke-virtual {v2}, Lcom/perfectcorp/perfectlib/EffectId$Builder;->a()Lcom/perfectcorp/perfectlib/EffectId;

    move-result-object v0

    goto :goto_3

    :cond_4
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/perfectcorp/perfectlib/VtoSetting;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    invoke-static {v1, v0}, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->c(Lcom/perfectcorp/perfectlib/VtoSetting;Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;)Lcom/perfectcorp/perfectlib/EffectId;

    move-result-object v0

    :goto_3
    invoke-static {v7, v6, v5, v4, v0}, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->y(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;IILcom/perfectcorp/perfectlib/EffectId;)Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
