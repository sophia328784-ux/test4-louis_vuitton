.class final Lcom/perfectcorp/perfectlib/VtoPalette$PaletteMajor;
.super Lcom/perfectcorp/perfectlib/VtoPalette;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/VtoPalette;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PaletteMajor"
.end annotation


# instance fields
.field public final f:Lcom/perfectcorp/perfectlib/SkuInfo;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/ProductInfo;Lcom/perfectcorp/perfectlib/SkuInfo;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/perfectcorp/perfectlib/VtoPalette;-><init>(Lcom/perfectcorp/perfectlib/ProductInfo;Lcom/perfectcorp/perfectlib/SkuInfo;)V

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/VtoPalette$PaletteMajor;->f:Lcom/perfectcorp/perfectlib/SkuInfo;

    return-void
.end method


# virtual methods
.method public final getPatterns(Lcom/perfectcorp/perfectlib/VtoObject$Callback;)V
    .locals 3

    const-string v0, "callback can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "[getPatterns] start"

    const/4 v1, 0x3

    const-string v2, "VtoPalette$PaletteMajor"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/perfectcorp/perfectlib/i;

    const/16 v1, 0xb

    invoke-direct {v0, p0, v1}, Lcom/perfectcorp/perfectlib/i;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->subscribeOn(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions;->a:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMapIterable(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/perfectcorp/perfectlib/z0;

    const/16 v2, 0xa

    invoke-direct {v1, p0, v2}, Lcom/perfectcorp/perfectlib/z0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    const-class v0, Lcom/perfectcorp/perfectlib/VtoPattern;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->cast(Ljava/lang/Class;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    new-instance v0, Lz51;

    const/16 v1, 0x8

    invoke-direct {v0, p1, v1}, Lz51;-><init>(Lcom/perfectcorp/perfectlib/VtoObject$Callback;I)V

    new-instance v1, Lz51;

    const/16 v2, 0x9

    invoke-direct {v1, p1, v2}, Lz51;-><init>(Lcom/perfectcorp/perfectlib/VtoObject$Callback;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p1, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->w(Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;)V

    return-void
.end method
