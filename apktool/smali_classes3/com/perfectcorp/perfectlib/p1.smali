.class public final synthetic Lcom/perfectcorp/perfectlib/p1;
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

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;IILcom/perfectcorp/perfectlib/EffectConfig;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/perfectcorp/perfectlib/p1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/p1;->c:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/p1;->d:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    iput p3, p0, Lcom/perfectcorp/perfectlib/p1;->e:I

    iput p4, p0, Lcom/perfectcorp/perfectlib/p1;->f:I

    iput-object p5, p0, Lcom/perfectcorp/perfectlib/p1;->g:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;III)V
    .locals 0

    .line 17
    iput p6, p0, Lcom/perfectcorp/perfectlib/p1;->b:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/p1;->g:Ljava/lang/Object;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/p1;->c:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/p1;->d:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    iput p4, p0, Lcom/perfectcorp/perfectlib/p1;->e:I

    iput p5, p0, Lcom/perfectcorp/perfectlib/p1;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lcom/perfectcorp/perfectlib/p1;->b:I

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/p1;->g:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    check-cast v2, Lcom/perfectcorp/perfectlib/EffectConfig;

    move-object/from16 v4, p1

    check-cast v4, Lcom/perfectcorp/thirdparty/io/reactivex/observables/GroupedObservable;

    sget-object v1, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, v4, Lcom/perfectcorp/thirdparty/io/reactivex/observables/GroupedObservable;->b:Ljava/lang/Object;

    sget-object v3, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->FACE_CONTOUR:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    const/4 v5, 0x1

    iget-object v7, v0, Lcom/perfectcorp/perfectlib/p1;->c:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    iget-object v8, v0, Lcom/perfectcorp/perfectlib/p1;->d:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    if-ne v1, v3, :cond_0

    new-instance v0, Lcom/perfectcorp/perfectlib/y;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/perfectcorp/perfectlib/y;-><init>(I)V

    invoke-virtual {v4, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object v0

    new-instance v1, Lcom/perfectcorp/perfectlib/c0;

    invoke-direct {v1, v7, v8, v4, v5}, Lcom/perfectcorp/perfectlib/c0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {v2, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    :goto_0
    invoke-virtual {v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->l()Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    goto/16 :goto_3

    :cond_0
    sget-object v3, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_SHADOW:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    const/4 v6, 0x0

    if-ne v1, v3, :cond_1

    move v3, v5

    goto :goto_1

    :cond_1
    move v3, v6

    :goto_1
    sget-object v9, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_LINES:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne v1, v9, :cond_2

    goto :goto_2

    :cond_2
    move v5, v6

    :goto_2
    or-int/2addr v3, v5

    iget v9, v0, Lcom/perfectcorp/perfectlib/p1;->e:I

    iget v10, v0, Lcom/perfectcorp/perfectlib/p1;->f:I

    const-wide/16 v11, 0x1

    if-eqz v3, :cond_3

    invoke-virtual {v4, v11, v12}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->take(J)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    new-instance v3, Lcom/perfectcorp/perfectlib/p1;

    move-object v5, v7

    move v7, v9

    const/4 v9, 0x0

    move-object v6, v8

    move v8, v10

    invoke-direct/range {v3 .. v9}, Lcom/perfectcorp/perfectlib/p1;-><init>(Ljava/lang/Object;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;III)V

    invoke-virtual {v0, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    goto/16 :goto_3

    :cond_3
    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->BLUSH:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne v1, v0, :cond_4

    invoke-virtual {v4, v11, v12}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->take(J)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    new-instance v6, Lcom/perfectcorp/perfectlib/q1;

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v11}, Lcom/perfectcorp/perfectlib/q1;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;III)V

    invoke-virtual {v0, v6}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    goto :goto_3

    :cond_4
    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->HAIR_DYE:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne v1, v0, :cond_5

    invoke-virtual {v4}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object v0

    new-instance v1, Lcom/perfectcorp/perfectlib/c0;

    const/4 v3, 0x2

    invoke-direct {v1, v7, v8, v2, v3}, Lcom/perfectcorp/perfectlib/c0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/d;

    invoke-direct {v2, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/d;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    move-object v0, v2

    goto :goto_3

    :cond_5
    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EARRINGS:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne v1, v0, :cond_6

    invoke-virtual {v4}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object v0

    new-instance v1, Lcom/perfectcorp/perfectlib/r1;

    invoke-direct {v1, v7, v8, v6}, Lcom/perfectcorp/perfectlib/r1;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {v2, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->BACKGROUND:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne v1, v0, :cond_7

    invoke-virtual {v4}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object v0

    new-instance v1, Lcom/perfectcorp/perfectlib/s1;

    invoke-direct {v1, v7, v6}, Lcom/perfectcorp/perfectlib/s1;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {v2, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    goto/16 :goto_0

    :cond_7
    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->LIP_STICK:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne v1, v0, :cond_8

    invoke-virtual {v4, v11, v12}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->take(J)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    new-instance v6, Lcom/perfectcorp/perfectlib/q1;

    const/4 v11, 0x1

    invoke-direct/range {v6 .. v11}, Lcom/perfectcorp/perfectlib/q1;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;III)V

    invoke-virtual {v0, v6}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMapSingle(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    goto :goto_3

    :cond_8
    new-instance v6, Lcom/perfectcorp/perfectlib/q1;

    const/4 v11, 0x2

    invoke-direct/range {v6 .. v11}, Lcom/perfectcorp/perfectlib/q1;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;III)V

    invoke-virtual {v4, v6}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMapSingle(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    :goto_3
    return-object v0

    :pswitch_0
    check-cast v2, Lcom/perfectcorp/perfectlib/VtoSetting;

    move-object/from16 v1, p1

    check-cast v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    sget-object v3, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {v2, v1}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a(Lcom/perfectcorp/perfectlib/VtoSetting;Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;)Lcom/perfectcorp/perfectlib/ApplyEffectUtility$ApplySkuInfo;

    move-result-object v2

    iget-object v3, v2, Lcom/perfectcorp/perfectlib/ApplyEffectUtility$ApplySkuInfo;->a:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    iget-object v9, v2, Lcom/perfectcorp/perfectlib/ApplyEffectUtility$ApplySkuInfo;->b:Ljava/lang/String;

    iget-object v10, v2, Lcom/perfectcorp/perfectlib/ApplyEffectUtility$ApplySkuInfo;->c:Ljava/lang/String;

    iget-object v11, v2, Lcom/perfectcorp/perfectlib/ApplyEffectUtility$ApplySkuInfo;->d:Ljava/lang/String;

    iget-object v12, v2, Lcom/perfectcorp/perfectlib/ApplyEffectUtility$ApplySkuInfo;->e:Ljava/lang/String;

    iget-object v13, v2, Lcom/perfectcorp/perfectlib/ApplyEffectUtility$ApplySkuInfo;->f:Ljava/lang/String;

    iget-object v14, v2, Lcom/perfectcorp/perfectlib/ApplyEffectUtility$ApplySkuInfo;->g:Ljava/lang/String;

    iget-object v15, v2, Lcom/perfectcorp/perfectlib/ApplyEffectUtility$ApplySkuInfo;->h:Ljava/util/List;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;->c:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->d(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/perfectcorp/perfectlib/PerfectEffect;->of(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;)Lcom/perfectcorp/perfectlib/PerfectEffect;

    move-result-object v8

    iget v1, v2, Lcom/perfectcorp/perfectlib/ApplyEffectUtility$ApplySkuInfo;->i:I

    iget-object v4, v0, Lcom/perfectcorp/perfectlib/p1;->c:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    iget-object v5, v0, Lcom/perfectcorp/perfectlib/p1;->d:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    iget v6, v0, Lcom/perfectcorp/perfectlib/p1;->e:I

    iget v7, v0, Lcom/perfectcorp/perfectlib/p1;->f:I

    move/from16 v16, v1

    invoke-static/range {v4 .. v16}, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->e(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;IILcom/perfectcorp/perfectlib/PerfectEffect;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;

    move-result-object v0

    return-object v0

    :pswitch_1
    check-cast v2, Lcom/perfectcorp/thirdparty/io/reactivex/observables/GroupedObservable;

    move-object/from16 v1, p1

    check-cast v1, Landroid/util/Pair;

    sget-object v3, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v2, v2, Lcom/perfectcorp/thirdparty/io/reactivex/observables/GroupedObservable;->b:Ljava/lang/Object;

    sget-object v3, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_SHADOW:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne v2, v3, :cond_9

    sget-object v2, Lcom/perfectcorp/perfectlib/PerfectEffect;->EYESHADOW:Lcom/perfectcorp/perfectlib/PerfectEffect;

    goto :goto_4

    :cond_9
    sget-object v2, Lcom/perfectcorp/perfectlib/PerfectEffect;->EYELINER:Lcom/perfectcorp/perfectlib/PerfectEffect;

    :goto_4
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/perfectcorp/perfectlib/VtoSetting;

    iget-object v3, v3, Lcom/perfectcorp/perfectlib/VtoSetting;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/perfectcorp/perfectlib/ph/unit/sku/a;->f(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    new-instance v3, Lcom/perfectcorp/perfectlib/EffectId$Builder;

    invoke-direct {v3, v2}, Lcom/perfectcorp/perfectlib/EffectId$Builder;-><init>(Lcom/perfectcorp/perfectlib/PerfectEffect;)V

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/perfectcorp/perfectlib/VtoSetting;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/VtoSetting;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/perfectcorp/perfectlib/EffectId$Builder;->b:Ljava/lang/String;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {v3, v1}, Lcom/perfectcorp/perfectlib/EffectId$Builder;->b(Ljava/util/List;)V

    invoke-virtual {v3}, Lcom/perfectcorp/perfectlib/EffectId$Builder;->a()Lcom/perfectcorp/perfectlib/EffectId;

    move-result-object v1

    goto :goto_5

    :cond_a
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/perfectcorp/perfectlib/VtoSetting;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    invoke-static {v2, v1}, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->c(Lcom/perfectcorp/perfectlib/VtoSetting;Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;)Lcom/perfectcorp/perfectlib/EffectId;

    move-result-object v1

    :goto_5
    iget-object v2, v0, Lcom/perfectcorp/perfectlib/p1;->c:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/p1;->d:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    iget v4, v0, Lcom/perfectcorp/perfectlib/p1;->e:I

    iget v0, v0, Lcom/perfectcorp/perfectlib/p1;->f:I

    invoke-static {v2, v3, v1, v4, v0}, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->f(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/EffectId;II)Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
