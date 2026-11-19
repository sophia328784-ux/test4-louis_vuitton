.class final Lcom/perfectcorp/perfectlib/VtoDetail$PaletteMajor;
.super Lcom/perfectcorp/perfectlib/VtoDetail;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/VtoDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PaletteMajor"
.end annotation


# direct methods
.method public static a(Lcom/perfectcorp/perfectlib/ProductInfo;Lcom/perfectcorp/perfectlib/SkuInfo;)Ljava/util/List;
    .locals 7

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/SkuInfo;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/c;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/SkuInfo;->c:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, p1, v2, v3}, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/c;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    sget-object v2, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    new-instance v2, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;

    invoke-direct {v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;-><init>()V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ProductInfo;->b:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    sget-object v3, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->LIP_STICK:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    const-string v4, "VtoDetail$PaletteMajor"

    const-string v5, ""

    if-ne p0, v3, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/shape/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/template/p;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "shape_lipstick_original"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance p1, Lcom/perfectcorp/perfectlib/ph/template/p;

    invoke-direct {p1, v1, v5, v5}, Lcom/perfectcorp/perfectlib/ph/template/p;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/SubItemInfo;->b(Lcom/perfectcorp/perfectlib/ph/template/p;)Lcom/perfectcorp/perfectlib/SubItemInfo;

    move-result-object p1

    :goto_1
    invoke-virtual {v2, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v1, "[createPatternInfos] can not get shape, ID="

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/perfectcorp/perfectlib/SubItemInfo;->b(Lcom/perfectcorp/perfectlib/ph/template/p;)Lcom/perfectcorp/perfectlib/SubItemInfo;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->i()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->w(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;

    move-result-object v3

    if-nez v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "[createPatternInfos] can not get pattern, ID="

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    iget-object v6, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;

    invoke-static {p0, v6}, Lcom/perfectcorp/perfectlib/SubItemInfo;->g(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;)Z

    move-result v6

    if-eqz v6, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "[createPatternInfos] unsupported 2D pattern, ID="

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    invoke-static {v3}, Lcom/perfectcorp/perfectlib/SubItemInfo;->a(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;)Lcom/perfectcorp/perfectlib/SubItemInfo;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->f(Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->HAIR_DYE:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne p0, v0, :cond_7

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_7

    new-instance p0, Lcom/perfectcorp/perfectlib/SubItemInfo$Builder;

    invoke-direct {p0}, Lcom/perfectcorp/perfectlib/SubItemInfo$Builder;-><init>()V

    const-string p1, "hairdye_pattern_one_color_full"

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/SubItemInfo$Builder;->a(Ljava/lang/String;)V

    sget p1, Lcom/perfectcorp/perfectlib/ymk/utility/Nulls;->a:I

    invoke-static {v5}, Lcom/perfectcorp/thirdparty/com/google/common/base/Strings;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/SubItemInfo$Builder;->b:Ljava/lang/String;

    invoke-static {v5}, Lcom/perfectcorp/thirdparty/com/google/common/base/Strings;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/SubItemInfo$Builder;->d:Ljava/lang/String;

    new-instance p1, Lcom/perfectcorp/perfectlib/SubItemInfo;

    invoke-direct {p1, p0}, Lcom/perfectcorp/perfectlib/SubItemInfo;-><init>(Lcom/perfectcorp/perfectlib/SubItemInfo$Builder;)V

    invoke-virtual {v2, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->f(Ljava/lang/Object;)V

    :cond_7
    invoke-virtual {v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->i()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getPalettes(Lcom/perfectcorp/perfectlib/VtoObject$Callback;)V
    .locals 3

    const-string v0, "callback can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "[getPalettes] start"

    const/4 v1, 0x3

    const-string v2, "VtoDetail$PaletteMajor"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/perfectcorp/perfectlib/o4;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/perfectcorp/perfectlib/o4;-><init>(Lcom/perfectcorp/perfectlib/VtoDetail$PaletteMajor;I)V

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

    invoke-direct {v0, p1, v1}, Lz51;-><init>(Lcom/perfectcorp/perfectlib/VtoObject$Callback;I)V

    new-instance v1, Lz51;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lz51;-><init>(Lcom/perfectcorp/perfectlib/VtoObject$Callback;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p1, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->w(Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;)V

    return-void
.end method

.method public final getPatterns(Lcom/perfectcorp/perfectlib/VtoObject$Callback;)V
    .locals 4

    const-string v0, "callback can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x3

    const-string v1, "VtoDetail$PaletteMajor"

    const-string v2, "[getPatterns] start"

    invoke-static {v0, v1, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/perfectcorp/perfectlib/o4;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/perfectcorp/perfectlib/o4;-><init>(Lcom/perfectcorp/perfectlib/VtoDetail$PaletteMajor;I)V

    invoke-static {v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v1

    sget-object v2, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->subscribeOn(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v1

    sget-object v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions;->a:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    invoke-virtual {v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMapIterable(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/perfectcorp/perfectlib/p4;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/perfectcorp/perfectlib/p4;-><init>(Lcom/perfectcorp/perfectlib/VtoDetail$PaletteMajor;I)V

    invoke-virtual {v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    new-instance v1, Lz51;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v2}, Lz51;-><init>(Lcom/perfectcorp/perfectlib/VtoObject$Callback;I)V

    new-instance v2, Lz51;

    invoke-direct {v2, p1, v0}, Lz51;-><init>(Lcom/perfectcorp/perfectlib/VtoObject$Callback;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p1, v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->w(Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;)V

    return-void
.end method

.method public final getWearingStyles(Lcom/perfectcorp/perfectlib/VtoObject$Callback;)V
    .locals 2

    const-string p0, "callback can\'t be null"

    invoke-static {p1, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p0, "[getWearingStyles] start"

    const/4 v0, 0x3

    const-string v1, "VtoDetail$PaletteMajor"

    invoke-static {v0, v1, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ly51;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ly51;-><init>(Lcom/perfectcorp/perfectlib/VtoObject$Callback;I)V

    invoke-static {p0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void
.end method
