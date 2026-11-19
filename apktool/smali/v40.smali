.class public final synthetic Lv40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Converter;
.implements Landroidx/compose/runtime/ShouldPauseCallback;
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;
.implements Landroidx/media3/common/util/Consumer;
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;
.implements Landroidx/media3/exoplayer/mediacodec/LoudnessCodecController$LoudnessParameterUpdateListener;
.implements Landroidx/activity/result/ActivityResultCallback;
.implements Lcom/google/common/collect/Maps$EntryTransformer;
.implements Landroidx/compose/foundation/MarqueeSpacing;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 8
    iput p1, p0, Lv40;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Luh;)V
    .locals 0

    const/16 p1, 0x19

    iput p1, p0, Lv40;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic g()V
    .locals 1

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method public static synthetic h(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/teleal/cling/model/message/header/InvalidHeaderException;

    invoke-direct {p1, p0}, Lorg/teleal/cling/model/message/header/InvalidHeaderException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic j(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic k(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public static bridge synthetic l(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Landroid/app/ForegroundServiceStartNotAllowedException;

    return p0
.end method

.method public static synthetic m(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/teleal/cling/model/message/header/InvalidHeaderException;

    invoke-direct {v0, p0}, Lorg/teleal/cling/model/message/header/InvalidHeaderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    return-object p1
.end method

.method public accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget p0, p0, Lv40;->b:I

    const-string v0, "LookHandler"

    const/4 v1, 0x1

    const/16 v2, 0x130

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    check-cast p1, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHint;

    return-object p0

    :pswitch_1
    check-cast p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$ActionHint;

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHint;->a(Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$ActionHint;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->k()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    return-object p0

    :pswitch_3
    check-cast p1, Ljava/lang/Throwable;

    const-string p0, "release failed"

    const-string v0, "MakeupCam"

    invoke-static {v0, p0, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    :pswitch_4
    check-cast p1, Ljava/util/List;

    new-instance p0, Lg7;

    const/16 v0, 0x18

    invoke-direct {p0, v0}, Lg7;-><init>(I)V

    invoke-static {p1, p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists;->c(Ljava/util/List;Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Ljava/util/AbstractList;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/LookHandler;->a(Ljava/util/List;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    new-instance v0, Lc8;

    const/4 v1, 0x5

    invoke-direct {v0, p1, v1}, Lc8;-><init>(Ljava/util/List;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {p1, p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    return-object p1

    :pswitch_5
    check-cast p1, Ljava/util/concurrent/Future;

    invoke-static {p1}, Lcom/perfectcorp/common/guava/MoreFutures;->b(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    return-object p0

    :pswitch_6
    check-cast p1, Lcom/perfectcorp/common/network/RequestTask$Response;

    iget p0, p1, Lcom/perfectcorp/common/network/RequestTask$Response;->a:I

    if-ne p0, v2, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->h(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/s;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p1, Lcom/perfectcorp/common/network/RequestTask$Response;->b:Ljava/lang/Object;

    check-cast p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/a;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/a;->b()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->h(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/s;

    move-result-object p0

    new-instance v0, Lv40;

    const/16 v2, 0x11

    invoke-direct {v0, v2}, Lv40;-><init>(I)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {v2, p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance p0, Lr40;

    invoke-direct {p0, p1, v1}, Lr40;-><init>(Lcom/perfectcorp/common/network/RequestTask$Response;I)V

    invoke-virtual {v2, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->f(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_7
    check-cast p1, Ljava/util/List;

    new-instance p0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$g;

    invoke-direct {p0, p1}, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$g;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$g;->c()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->l()Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    return-object p0

    :pswitch_8
    check-cast p1, Lcom/perfectcorp/common/network/RequestTask$Response;

    iget p0, p1, Lcom/perfectcorp/common/network/RequestTask$Response;->a:I

    if-eq p0, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->h(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/s;

    move-result-object p0

    return-object p0

    :pswitch_9
    check-cast p1, Ljava/util/concurrent/Future;

    invoke-static {p1}, Lcom/perfectcorp/common/guava/MoreFutures;->b(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/common/network/DownloadReport$CompleteReport;

    return-object p0

    :pswitch_a
    check-cast p1, Ljava/lang/String;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    move-result-object p0

    if-nez p0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t find metadata of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->b(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    return-object p0

    :pswitch_b
    check-cast p1, Ljava/lang/Throwable;

    sget-object p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/g;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/g;

    return-object p0

    :pswitch_c
    check-cast p1, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/LookInfo;

    return-object p0

    :pswitch_d
    check-cast p1, Ljava/lang/Throwable;

    const-string p0, "getDownloadedLookInfo failed"

    invoke-static {v0, p0, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->a()Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    sget-object p0, Lcom/vuitton/android/presentation/screen/main/MainActivity;->L:Lcom/vuitton/android/presentation/screen/main/MainActivity$Companion;

    return-void
.end method

.method public c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ljava/util/Collection;

    check-cast p2, Ljava/util/Collection;

    invoke-static {p2}, Lcom/google/common/collect/ImmutableMultiset;->q(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableMultiset;

    move-result-object p0

    return-object p0
.end method

.method public d(Landroidx/compose/ui/unit/Density;I)I
    .locals 0

    const p0, 0x3eaaaaab

    int-to-float p1, p2

    mul-float/2addr p0, p1

    invoke-static {p0}, Lkotlin/math/MathKt;->c(F)I

    move-result p0

    return p0
.end method

.method public e()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/kakao/sdk/common/util/KakaoJson;->a:Lcom/google/gson/Gson;

    invoke-virtual {p0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public i(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Expedited WorkRequests require a ListenableWorker to provide an implementation for`getForegroundInfoAsync()`"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->d(Ljava/lang/Throwable;)Z

    const-string p0, "default failing getForegroundInfoAsync"

    return-object p0
.end method
