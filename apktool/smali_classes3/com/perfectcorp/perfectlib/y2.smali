.class public final synthetic Lcom/perfectcorp/perfectlib/y2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# instance fields
.field public final synthetic b:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

.field public final synthetic c:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

.field public final synthetic d:Z

.field public final synthetic e:I

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;ZII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/y2;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/y2;->c:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    iput-boolean p3, p0, Lcom/perfectcorp/perfectlib/y2;->d:Z

    iput p4, p0, Lcom/perfectcorp/perfectlib/y2;->e:I

    iput p5, p0, Lcom/perfectcorp/perfectlib/y2;->f:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    move-object v3, p1

    check-cast v3, Lcom/perfectcorp/thirdparty/io/reactivex/observables/GroupedObservable;

    sget-object p1, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object p1, v3, Lcom/perfectcorp/thirdparty/io/reactivex/observables/GroupedObservable;->b:Ljava/lang/Object;

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->FACE_CONTOUR:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    iget-object v5, p0, Lcom/perfectcorp/perfectlib/y2;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    iget-object v6, p0, Lcom/perfectcorp/perfectlib/y2;->c:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    if-ne p1, v0, :cond_0

    invoke-virtual {v3}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p1

    new-instance v0, Lcom/perfectcorp/perfectlib/u1;

    move-object v1, v5

    const/4 v5, 0x0

    iget-boolean v4, p0, Lcom/perfectcorp/perfectlib/y2;->d:Z

    move-object v2, v6

    invoke-direct/range {v0 .. v5}, Lcom/perfectcorp/perfectlib/u1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZI)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {p0, p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->l()Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_SHADOW:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    iget v7, p0, Lcom/perfectcorp/perfectlib/y2;->e:I

    iget v8, p0, Lcom/perfectcorp/perfectlib/y2;->f:I

    const-wide/16 v1, 0x1

    if-eq p1, v0, :cond_8

    sget-object p0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_LINES:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne p1, p0, :cond_1

    goto/16 :goto_0

    :cond_1
    sget-object p0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->BLUSH:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne p1, p0, :cond_2

    invoke-virtual {v3, v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->take(J)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    new-instance v4, Lcom/perfectcorp/perfectlib/q1;

    const/4 v9, 0x4

    invoke-direct/range {v4 .. v9}, Lcom/perfectcorp/perfectlib/q1;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;III)V

    invoke-virtual {p0, v4}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->o:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance v4, Lcom/perfectcorp/perfectlib/q1;

    const/4 v9, 0x5

    invoke-direct/range {v4 .. v9}, Lcom/perfectcorp/perfectlib/q1;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;III)V

    invoke-virtual {v3, v4}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    return-object p0

    :cond_3
    iget-object p0, v3, Lcom/perfectcorp/thirdparty/io/reactivex/observables/GroupedObservable;->b:Ljava/lang/Object;

    sget-object p1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->HAIR_DYE:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    invoke-virtual {v3}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    new-instance p1, Lcom/perfectcorp/perfectlib/r1;

    invoke-direct {p1, v5, v6, v0}, Lcom/perfectcorp/perfectlib/r1;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/d;

    invoke-direct {v0, p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/d;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    return-object v0

    :cond_4
    sget-object p1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EARRINGS:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne p0, p1, :cond_5

    invoke-virtual {v3}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    new-instance p1, Lcom/perfectcorp/perfectlib/r1;

    const/4 v0, 0x2

    invoke-direct {p1, v5, v6, v0}, Lcom/perfectcorp/perfectlib/r1;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {v0, p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->l()Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    return-object p0

    :cond_5
    sget-object p1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->BACKGROUND:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne p0, p1, :cond_6

    invoke-virtual {v3}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    new-instance p1, Lcom/perfectcorp/perfectlib/s1;

    invoke-direct {p1, v5, v0}, Lcom/perfectcorp/perfectlib/s1;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {v0, p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->l()Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    return-object p0

    :cond_6
    sget-object p1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->LIP_STICK:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne p0, p1, :cond_7

    invoke-virtual {v3, v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->take(J)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    new-instance v4, Lcom/perfectcorp/perfectlib/q1;

    const/4 v9, 0x6

    invoke-direct/range {v4 .. v9}, Lcom/perfectcorp/perfectlib/q1;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;III)V

    invoke-virtual {p0, v4}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    return-object p0

    :cond_7
    new-instance v4, Lcom/perfectcorp/perfectlib/q1;

    const/4 v9, 0x7

    invoke-direct/range {v4 .. v9}, Lcom/perfectcorp/perfectlib/q1;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;III)V

    invoke-virtual {v3, v4}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    return-object p0

    :cond_8
    :goto_0
    invoke-virtual {v3, v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->take(J)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    new-instance v4, Lcom/perfectcorp/perfectlib/q1;

    const/4 v9, 0x3

    invoke-direct/range {v4 .. v9}, Lcom/perfectcorp/perfectlib/q1;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;III)V

    invoke-virtual {p0, v4}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method
