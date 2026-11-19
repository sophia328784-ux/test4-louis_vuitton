.class public abstract Lcom/perfectcorp/perfectlib/VtoApplier;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/VtoApplier$PhotoMakeupApplier;,
        Lcom/perfectcorp/perfectlib/VtoApplier$MakeupCamApplier;,
        Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;,
        Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHint;,
        Lcom/perfectcorp/perfectlib/VtoApplier$ReshapeIntensitiesCallback;,
        Lcom/perfectcorp/perfectlib/VtoApplier$IntensitiesCallback;,
        Lcom/perfectcorp/perfectlib/VtoApplier$ProductIdCallback;,
        Lcom/perfectcorp/perfectlib/VtoApplier$ReshapeEffectIdCallback;,
        Lcom/perfectcorp/perfectlib/VtoApplier$EffectIdCallback;,
        Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;,
        Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;,
        Lcom/perfectcorp/perfectlib/VtoApplier$CreateCallback;
    }
.end annotation


# instance fields
.field public volatile a:Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;->NOP:Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/VtoApplier;->a:Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;

    return-void
.end method

.method public static create(Lcom/perfectcorp/perfectlib/ApplierTarget;Lcom/perfectcorp/perfectlib/VtoApplier$CreateCallback;)V
    .locals 4

    const-string v0, "applierTarget can\'t be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "createCallback can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/perfectcorp/perfectlib/i;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, Lcom/perfectcorp/perfectlib/i;-><init>(Ljava/lang/Object;I)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object p0

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    new-instance v1, Lw51;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lw51;-><init>(Lcom/perfectcorp/perfectlib/VtoApplier$CreateCallback;I)V

    new-instance v2, Lw51;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Lw51;-><init>(Lcom/perfectcorp/perfectlib/VtoApplier$CreateCallback;I)V

    invoke-direct {v0, v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    return-void
.end method


# virtual methods
.method public abstract apply(Lcom/perfectcorp/perfectlib/LookSetting;Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;)Lcom/perfectcorp/perfectlib/Cancelable;
.end method

.method public abstract apply(Ljava/util/List;Lcom/perfectcorp/perfectlib/EffectConfig;Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;)Lcom/perfectcorp/perfectlib/Cancelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/perfectcorp/perfectlib/VtoSetting;",
            ">;",
            "Lcom/perfectcorp/perfectlib/EffectConfig;",
            "Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;",
            ")",
            "Lcom/perfectcorp/perfectlib/Cancelable;"
        }
    .end annotation
.end method

.method public abstract applyEffectIds(Ljava/util/List;Ljava/util/List;ZLcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/perfectcorp/perfectlib/EffectId;",
            ">;",
            "Ljava/util/List<",
            "Lcom/perfectcorp/perfectlib/ReshapeEffectId;",
            ">;Z",
            "Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract clearAllEffects(Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;)V
.end method

.method public abstract clearAllEffectsExceptSkinSmooth(Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;)V
.end method

.method public abstract clearAllMakeupEffects(Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;)V
.end method

.method public abstract clearEffect(Lcom/perfectcorp/perfectlib/PerfectEffect;Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;)V
.end method

.method public abstract getEffectIds(Lcom/perfectcorp/perfectlib/VtoApplier$EffectIdCallback;)V
.end method

.method public abstract getIntensities(Lcom/perfectcorp/perfectlib/VtoApplier$IntensitiesCallback;)V
.end method

.method public abstract getMakeupVideoSource()Ljava/lang/Object;
.end method

.method public abstract getProductIds(Lcom/perfectcorp/perfectlib/VtoApplier$ProductIdCallback;)V
.end method

.method public abstract getReshapeEffectIds(Lcom/perfectcorp/perfectlib/VtoApplier$ReshapeEffectIdCallback;)V
.end method

.method public abstract getReshapeIntensities(Lcom/perfectcorp/perfectlib/VtoApplier$ReshapeIntensitiesCallback;)V
.end method

.method public setFunStickerActionHintCallback(Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;->NOP:Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;

    :goto_0
    iput-object p1, p0, Lcom/perfectcorp/perfectlib/VtoApplier;->a:Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;

    return-void
.end method

.method public abstract setIntensities(Ljava/util/Map;Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/perfectcorp/perfectlib/PerfectEffect;",
            "[I>;",
            "Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setLipstickTransition(II)V
.end method

.method public abstract setReshapeIntensities(Ljava/util/Map;Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/perfectcorp/perfectlib/ReshapeEffect;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;",
            ")V"
        }
    .end annotation
.end method
