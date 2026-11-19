.class public final synthetic Lzy0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/BiConsumer;
.implements Landroidx/media3/common/util/Consumer;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lzy0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a()Landroid/hardware/camera2/CameraCharacteristics$Key;
    .locals 1

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_STREAM_USE_CASES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    return-object v0
.end method

.method public static synthetic b()V
    .locals 1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public static synthetic c(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic d(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 0

    .line 8
    return-void
.end method

.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/HashSet;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget p0, p0, Lzy0;->b:I

    const/16 v0, 0x8

    const/16 v1, 0x9

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    check-cast p1, Landroid/util/Pair;

    iget-object p0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    return-object p0

    :pswitch_1
    check-cast p1, Landroid/util/Pair;

    iget-object p0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c;->b:Ljava/lang/String;

    return-object p0

    :pswitch_2
    check-cast p1, Landroid/util/Pair;

    iget-object p0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    return-object p0

    :pswitch_3
    check-cast p1, Landroid/util/Pair;

    iget-object p0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c;->b:Ljava/lang/String;

    return-object p0

    :pswitch_4
    check-cast p1, Landroid/util/Pair;

    iget-object p0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    return-object p0

    :pswitch_5
    check-cast p1, Landroid/util/Pair;

    iget-object p0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c;->b:Ljava/lang/String;

    return-object p0

    :pswitch_6
    check-cast p1, Landroid/util/Pair;

    iget-object p0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    return-object p0

    :pswitch_7
    check-cast p1, Landroid/util/Pair;

    iget-object p0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c;->b:Ljava/lang/String;

    return-object p0

    :pswitch_8
    check-cast p1, Landroid/util/Pair;

    iget-object p0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c;->b:Ljava/lang/String;

    return-object p0

    :pswitch_9
    check-cast p1, Landroid/util/Pair;

    iget-object p0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    return-object p0

    :pswitch_a
    check-cast p1, Landroid/util/Pair;

    iget-object p0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c;->b:Ljava/lang/String;

    return-object p0

    :pswitch_b
    check-cast p1, Landroid/util/Pair;

    iget-object p0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    return-object p0

    :pswitch_c
    check-cast p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;

    iget-object p0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;->a:Ljava/lang/String;

    return-object p0

    :pswitch_d
    check-cast p1, Ljava/lang/String;

    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, p1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :pswitch_e
    check-cast p1, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/ProductInfo;

    return-object p0

    :pswitch_f
    check-cast p1, Ljava/lang/Throwable;

    const-string p0, "SkuHandler"

    const-string v0, "getProductInfosWithGuids failed"

    invoke-static {p0, v0, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->a()Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    return-object p0

    :pswitch_10
    check-cast p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b;

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b;->b()Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_11
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/ph/unit/sku/a;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :pswitch_12
    check-cast p1, Landroid/util/Pair;

    iget-object p0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->g(Ljava/util/Collection;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/util/Collection;

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h$a$a;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h$a$a;-><init>()V

    sget-object v1, Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;->NORMAL:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    iput-object v1, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h$a$a;->d:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h$a$a;->a:Z

    iput-boolean v1, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h$a$a;->b:Z

    iput-boolean v1, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h$a$a;->c:Z

    new-instance v2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h$a;

    invoke-direct {v2, v0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h$a;-><init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h$a$a;)V

    invoke-static {p1, v1, v2}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h;->a(Ljava/util/Collection;ILcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h$a;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p1

    new-instance v0, Lyw0;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lyw0;-><init>(I)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/o;

    invoke-direct {v1, p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/o;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    invoke-virtual {p0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->mergeWith(Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    return-object p0

    :pswitch_13
    check-cast p1, Ljava/util/List;

    new-instance p0, Lsa0;

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lsa0;-><init>(Ljava/util/List;I)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object p0, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object p0

    new-instance v0, Lc8;

    invoke-direct {v0, p1, v1}, Lc8;-><init>(Ljava/util/List;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {p1, p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    return-object p1

    :pswitch_14
    check-cast p1, Ljava/util/List;

    invoke-static {}, Lcom/perfectcorp/perfectlib/SkuHandler;->e()Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    move-result-object p0

    new-instance v1, Lc8;

    invoke-direct {v1, p1, v0}, Lc8;-><init>(Ljava/util/List;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {p1, p0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    return-object p1

    :pswitch_15
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/ph/unit/sku/a;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :pswitch_16
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->h(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/s;

    move-result-object p0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h;->e()Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/perfectcorp/perfectlib/ph/unit/sku/a;->c()Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/f;

    move-result-object p0

    new-instance p1, Lyw0;

    invoke-direct {p1, v0}, Lyw0;-><init>(I)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/d;

    invoke-direct {v0, p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/d;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance p0, Lzy0;

    const/4 p1, 0x6

    invoke-direct {p0, p1}, Lzy0;-><init>(I)V

    invoke-virtual {v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->concatMapIterable(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    new-instance p1, Lyw0;

    invoke-direct {p1, v1}, Lyw0;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->filter(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Predicate;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->take(J)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    new-instance p1, Lyw0;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Lyw0;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {v0, p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance p0, Lpv0;

    const/16 p1, 0xc

    invoke-direct {p0, p1}, Lpv0;-><init>(I)V

    invoke-virtual {v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->f(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;

    move-result-object p0

    :goto_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
