.class public final synthetic Lcom/perfectcorp/perfectlib/r1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

.field public final synthetic d:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;I)V
    .locals 0

    iput p3, p0, Lcom/perfectcorp/perfectlib/r1;->b:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/r1;->c:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/r1;->d:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    iget v1, v0, Lcom/perfectcorp/perfectlib/r1;->b:I

    const/4 v2, 0x0

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/r1;->d:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    iget-object v4, v0, Lcom/perfectcorp/perfectlib/r1;->c:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    packed-switch v1, :pswitch_data_0

    move-object/from16 v0, p1

    check-cast v0, Lcom/perfectcorp/perfectlib/PerfectEffect;

    sget-object v1, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    sget-object v2, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->FACE_CONTOUR:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne v1, v2, :cond_6

    invoke-virtual {v3, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {v3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourSettingHelper;->a(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;)Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;

    move-result-object v1

    const/4 v5, 0x0

    if-nez v1, :cond_0

    move-object v1, v5

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

    :goto_0
    if-eqz v1, :cond_1

    iget-object v6, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->h:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    iget-object v7, v0, Lcom/perfectcorp/perfectlib/PerfectEffect;->itemSubType:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    if-ne v6, v7, :cond_1

    move-object v1, v5

    :cond_1
    invoke-static {v3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourSettingHelper;->a(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;)Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;

    move-result-object v6

    if-nez v6, :cond_2

    move-object v6, v5

    goto :goto_1

    :cond_2
    iget-object v6, v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

    :goto_1
    if-eqz v6, :cond_3

    iget-object v7, v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->h:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    iget-object v8, v0, Lcom/perfectcorp/perfectlib/PerfectEffect;->itemSubType:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    if-ne v7, v8, :cond_3

    goto :goto_2

    :cond_3
    move-object v5, v6

    :goto_2
    if-nez v1, :cond_4

    if-eqz v5, :cond_6

    :cond_4
    new-instance v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Builder;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Builder;-><init>()V

    iput-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Builder;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

    iput-object v5, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Builder;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

    invoke-static {v3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourSettingHelper;->a(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;)Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;

    move-result-object v1

    if-nez v1, :cond_5

    const/16 v1, 0x32

    goto :goto_3

    :cond_5
    iget v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;->c:I

    :goto_3
    iput v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Builder;->c:I

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Builder;->a()Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;

    invoke-direct {v1, v4, v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V

    invoke-virtual {v1, v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->k(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->c()Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;

    move-result-object v0

    goto :goto_4

    :cond_6
    iget-object v0, v0, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v4, v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->h(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;

    move-result-object v0

    :goto_4
    return-object v0

    :pswitch_0
    move-object/from16 v0, p1

    check-cast v0, Ljava/util/List;

    invoke-static {v4, v3, v0}, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->i(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Ljava/util/List;)Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;

    move-result-object v0

    return-object v0

    :pswitch_1
    move-object/from16 v1, p1

    check-cast v1, Ljava/util/List;

    sget-object v3, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/perfectcorp/perfectlib/EffectId;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v5, Lcom/perfectcorp/perfectlib/EffectId;->b:Ljava/lang/String;

    invoke-static {v5}, Lcom/perfectcorp/perfectlib/ph/unit/sku/a;->f(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {v4}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->e(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v3

    goto :goto_5

    :cond_8
    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->a()Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v3

    :goto_5
    invoke-virtual {v3}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v4

    iget-object v5, v0, Lcom/perfectcorp/perfectlib/r1;->c:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    iget-object v6, v0, Lcom/perfectcorp/perfectlib/r1;->d:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    if-eqz v4, :cond_9

    invoke-virtual {v3}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object v0

    :goto_6
    check-cast v0, Lcom/perfectcorp/perfectlib/EffectId;

    iget-object v9, v0, Lcom/perfectcorp/perfectlib/EffectId;->a:Lcom/perfectcorp/perfectlib/PerfectEffect;

    iget-object v10, v0, Lcom/perfectcorp/perfectlib/EffectId;->b:Ljava/lang/String;

    iget-object v11, v0, Lcom/perfectcorp/perfectlib/EffectId;->c:Ljava/lang/String;

    iget-object v12, v0, Lcom/perfectcorp/perfectlib/EffectId;->d:Ljava/lang/String;

    iget-object v13, v0, Lcom/perfectcorp/perfectlib/EffectId;->e:Ljava/lang/String;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/EffectId;->l:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    const/16 v17, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v14, v12

    move-object v15, v13

    move-object/from16 v16, v0

    invoke-static/range {v5 .. v17}, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->e(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;IILcom/perfectcorp/perfectlib/PerfectEffect;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;

    move-result-object v0

    :goto_7
    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->just(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    goto :goto_8

    :cond_9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_a

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->empty()Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    goto :goto_8

    :cond_a
    const/4 v3, 0x1

    if-ne v0, v3, :cond_b

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_6

    :cond_b
    invoke-static {v5, v1}, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->j(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Ljava/util/List;)Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;

    move-result-object v0

    goto :goto_7

    :goto_8
    return-object v0

    :pswitch_2
    move-object/from16 v0, p1

    check-cast v0, Ljava/util/List;

    sget-object v1, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/perfectcorp/perfectlib/y;

    const/4 v5, 0x6

    invoke-direct {v1, v5}, Lcom/perfectcorp/perfectlib/y;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    new-instance v1, Ltg0;

    invoke-direct {v1, v2}, Ltg0;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->to(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v4, v3, v0}, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->i(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Ljava/util/List;)Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
