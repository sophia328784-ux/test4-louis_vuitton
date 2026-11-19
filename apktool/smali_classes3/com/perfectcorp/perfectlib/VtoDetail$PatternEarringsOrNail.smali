.class final Lcom/perfectcorp/perfectlib/VtoDetail$PatternEarringsOrNail;
.super Lcom/perfectcorp/perfectlib/VtoDetail;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/VtoDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PatternEarringsOrNail"
.end annotation


# instance fields
.field public final d:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/ProductInfo;Lcom/perfectcorp/perfectlib/SkuInfo;Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/perfectcorp/perfectlib/VtoDetail;-><init>(Lcom/perfectcorp/perfectlib/ProductInfo;Lcom/perfectcorp/perfectlib/SkuInfo;)V

    invoke-virtual {p3}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;->a()Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "extra data is null for SKU \'"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p3, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;->a:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/VtoDetail$PatternEarringsOrNail;->d:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;

    return-void
.end method


# virtual methods
.method public final getPalettes(Lcom/perfectcorp/perfectlib/VtoObject$Callback;)V
    .locals 2

    const-string p0, "callback can\'t be null"

    invoke-static {p1, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p0, "[getPalettes] start"

    const/4 v0, 0x3

    const-string v1, "VtoDetailPatternEarrings"

    invoke-static {v0, v1, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ly51;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ly51;-><init>(Lcom/perfectcorp/perfectlib/VtoObject$Callback;I)V

    invoke-static {p0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getPatterns(Lcom/perfectcorp/perfectlib/VtoObject$Callback;)V
    .locals 3

    const-string v0, "callback can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "[getPatterns] start"

    const/4 v1, 0x3

    const-string v2, "VtoDetailPatternEarrings"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/VtoDetail$PatternEarringsOrNail;->d:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;->earringsOrNail:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$a;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/perfectcorp/perfectlib/q4;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/perfectcorp/perfectlib/q4;-><init>(Lcom/perfectcorp/perfectlib/VtoDetail$PatternEarringsOrNail;I)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;

    invoke-direct {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object p0

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    new-instance v0, Lz51;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Lz51;-><init>(Lcom/perfectcorp/perfectlib/VtoObject$Callback;I)V

    new-instance v1, Lz51;

    const/4 v2, 0x5

    invoke-direct {v1, p1, v2}, Lz51;-><init>(Lcom/perfectcorp/perfectlib/VtoObject$Callback;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p1, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->w(Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;)V

    return-void

    :cond_0
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {p1, p0}, Lcom/perfectcorp/perfectlib/VtoObject$Callback;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public final getWearingStyles(Lcom/perfectcorp/perfectlib/VtoObject$Callback;)V
    .locals 3

    const-string v0, "callback can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "[getWearingStyles] start"

    const/4 v1, 0x3

    const-string v2, "VtoDetailPatternEarrings"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/VtoDetail$PatternEarringsOrNail;->d:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;->earringsOrNail:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$a;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/perfectcorp/perfectlib/q4;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/perfectcorp/perfectlib/q4;-><init>(Lcom/perfectcorp/perfectlib/VtoDetail$PatternEarringsOrNail;I)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;

    invoke-direct {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object p0

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    new-instance v0, Lz51;

    const/4 v1, 0x6

    invoke-direct {v0, p1, v1}, Lz51;-><init>(Lcom/perfectcorp/perfectlib/VtoObject$Callback;I)V

    new-instance v1, Lz51;

    const/4 v2, 0x7

    invoke-direct {v1, p1, v2}, Lz51;-><init>(Lcom/perfectcorp/perfectlib/VtoObject$Callback;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p1, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->w(Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;)V

    return-void

    :cond_0
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {p1, p0}, Lcom/perfectcorp/perfectlib/VtoObject$Callback;->onSuccess(Ljava/util/List;)V

    return-void
.end method
