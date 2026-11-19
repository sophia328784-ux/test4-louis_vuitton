.class final Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$Preferences;,
        Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$RecommendationResult;,
        Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$EffectType;,
        Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$RecommendationSetting;,
        Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$Singleton;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicReference;

.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler;->a:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static a(ILjava/util/List;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;
    .locals 3

    const/16 v0, 0x1e

    invoke-static {v0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists;->b(ILjava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lct0;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Lct0;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMapSingle(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lct0;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Lct0;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions;->a:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMapIterable(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    new-instance v1, Lct0;

    const/16 v2, 0x1a

    invoke-direct {v1, v2}, Lct0;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->collectInto(Ljava/lang/Object;Lcom/perfectcorp/thirdparty/io/reactivex/functions/BiConsumer;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p1

    new-instance v0, Lcom/perfectcorp/perfectlib/g4;

    invoke-direct {v0, p0}, Lcom/perfectcorp/perfectlib/g4;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {p0, p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    return-object p0
.end method

.method public static b(Lcom/perfectcorp/perfectlib/SkinCareRecommendationData;)Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/SkinCareRecommendationData;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    new-instance v1, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/SkinAnalysisData;

    invoke-virtual {v2}, Lcom/perfectcorp/perfectlib/SkinAnalysisData;->getFeature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "age_spot"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "dark_circle"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/perfectcorp/perfectlib/SkinAnalysisData;->getFeature()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;

    invoke-virtual {v2}, Lcom/perfectcorp/perfectlib/SkinAnalysisData;->getScore()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v4, v2}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v1, v3, v4}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->o(Ljava/lang/String;Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;)V

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;

    invoke-virtual {v2}, Lcom/perfectcorp/perfectlib/SkinAnalysisData;->getScore()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v2, "darkCircle"

    :goto_1
    invoke-virtual {v1, v2, v3}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->o(Ljava/lang/String;Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;)V

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;

    invoke-virtual {v2}, Lcom/perfectcorp/perfectlib/SkinAnalysisData;->getScore()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v2, "spot"

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;

    iget p0, p0, Lcom/perfectcorp/perfectlib/SkinCareRecommendationData;->c:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string p0, "skin_age"

    invoke-virtual {v1, p0, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->o(Ljava/lang/String;Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;)V

    sget-object p0, Lcom/perfectcorp/common/gson/GsonHelper;->a:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    invoke-virtual {p0, v1}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->k(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(ZLcom/perfectcorp/perfectlib/Configuration$ImageSource;Ljava/util/List;I)Ljava/util/ArrayList;
    .locals 8

    sget-object v0, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/a;->d:Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/a;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/a;->o(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap$Builder;

    invoke-direct {v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap$Builder;-><init>()V

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v3, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap$Builder;->a()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[querySkinCareProducts] match "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " products from database"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    const-string v3, "SkinCare3RecommendationHandler"

    invoke-static {v2, v3, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c;

    if-eqz v4, :cond_1

    const/16 v4, 0xa

    if-lt p3, v4, :cond_2

    const-string v4, "Product has recursive reference?"

    const/4 v5, 0x5

    invoke-static {v5, v3, v4}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    :goto_2
    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_3

    :cond_2
    sget-object v4, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/b;->d:Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/b;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "ReferencedId"

    const-string v7, "ProductId"

    invoke-virtual {v4, v5, v6, v7, v2}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->h(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v5, p3, 0x1

    invoke-static {p0, p1, v4, v5}, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler;->c(ZLcom/perfectcorp/perfectlib/Configuration$ImageSource;Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v4

    :goto_3
    new-instance v5, Lcom/perfectcorp/perfectlib/SkinCareProduct;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v5, v2, v4, p0, p1}, Lcom/perfectcorp/perfectlib/SkinCareProduct;-><init>(Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c;Ljava/util/List;ZLcom/perfectcorp/perfectlib/Configuration$ImageSource;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-object v1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, ". To index multiple values under a key, use Multimaps.index."

    invoke-static {p0, p1}, La61;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static f()V
    .locals 4

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Lpw0;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Lpw0;-><init>(Ljava/util/HashSet;Landroid/database/sqlite/SQLiteDatabase;I)V

    invoke-static {v0, v2}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Runnable;)V

    sget-object v0, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$Preferences;->a:Lcom/perfectcorp/common/utility/BasicPreferences;

    invoke-virtual {v0}, Lcom/perfectcorp/common/utility/j;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/perfectcorp/common/utility/FileUtils;->c(Ljava/io/File;)Z

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final d(Lcom/perfectcorp/perfectlib/RecommendationData;Lcom/perfectcorp/perfectlib/JsExecutor;Ljava/lang/String;Lcom/perfectcorp/perfectlib/RecommendationHandler$GetRecommendedResultCallback;)V
    .locals 7

    const-string v0, "callback can\'t be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x3

    const-string v1, "SkinCare3RecommendationHandler"

    const-string v2, "[getRecommendedResult] start"

    invoke-static {v0, v1, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    instance-of v1, p1, Lcom/perfectcorp/perfectlib/SkinCareRecommendationData;

    if-nez v1, :cond_0

    new-instance p0, Lcr0;

    invoke-direct {p0, p4, v0}, Lcr0;-><init>(Lcom/perfectcorp/perfectlib/RecommendationHandler$GetRecommendedResultCallback;I)V

    invoke-static {p0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    check-cast p1, Lcom/perfectcorp/perfectlib/SkinCareRecommendationData;

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/SkinCareRecommendationData;->b:Lcom/perfectcorp/perfectlib/SurveyAnswer;

    if-nez v1, :cond_1

    const-string v1, "{}"

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/perfectcorp/common/gson/GsonHelper;->a:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/SurveyAnswer;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    new-instance v3, Lcom/perfectcorp/perfectlib/SurveyAnswer$1;

    invoke-direct {v3}, Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;-><init>()V

    iget-object v3, v3, Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;->b:Ljava/lang/reflect/Type;

    invoke-virtual {v2, v1, v3}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->l(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    const/4 v3, 0x4

    if-eqz v2, :cond_2

    new-instance p0, Lcr0;

    invoke-direct {p0, p4, v3}, Lcr0;-><init>(Lcom/perfectcorp/perfectlib/RecommendationHandler$GetRecommendedResultCallback;I)V

    invoke-static {p0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    sget-object v2, Lcom/perfectcorp/perfectlib/PerfectLib;->g:Lcom/perfectcorp/perfectlib/Configuration;

    iget-boolean v2, v2, Lcom/perfectcorp/perfectlib/Configuration;->h:Z

    sget-object v4, Lcom/perfectcorp/perfectlib/PerfectLib;->g:Lcom/perfectcorp/perfectlib/Configuration;

    iget-object v4, v4, Lcom/perfectcorp/perfectlib/Configuration;->d:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    new-instance v5, Lcom/perfectcorp/perfectlib/z;

    const/16 v6, 0xb

    invoke-direct {v5, p1, v1, v6}, Lcom/perfectcorp/perfectlib/z;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {p1, v5}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object v1, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object p1

    new-instance v5, Lln0;

    invoke-direct {v5, p2, v6}, Lln0;-><init>(Ljava/lang/Object;I)V

    new-instance p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {p2, p1, v5}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    invoke-virtual {p2, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p1

    new-instance p2, Lcom/perfectcorp/perfectlib/c4;

    invoke-direct {p2, p0, v2, v4, p3}, Lcom/perfectcorp/perfectlib/c4;-><init>(Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler;ZLcom/perfectcorp/perfectlib/Configuration$ImageSource;Ljava/lang/String;)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {p0, p1, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance p1, Lpv0;

    invoke-direct {p1, v3}, Lpv0;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->f(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;

    move-result-object p0

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    new-instance p1, Ltv0;

    const/4 p2, 0x2

    invoke-direct {p1, p4, p2}, Ltv0;-><init>(Lcom/perfectcorp/perfectlib/RecommendationHandler$GetRecommendedResultCallback;I)V

    new-instance p2, Ltv0;

    invoke-direct {p2, p4, v0}, Ltv0;-><init>(Lcom/perfectcorp/perfectlib/RecommendationHandler$GetRecommendedResultCallback;I)V

    new-instance p3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p3, p1, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p0, p3}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    sget-object p0, Lcom/perfectcorp/perfectlib/PerfectLib;->i:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p3}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final e()Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncingTask;
    .locals 6

    new-instance v0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    const-string v1, "SkinCare3RecommendationHandler#syncServer"

    invoke-direct {v0, v1}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/perfectcorp/common/utility/EventPublisher;

    invoke-direct {v1}, Lcom/perfectcorp/common/utility/EventPublisher;-><init>()V

    new-instance v2, Lcom/perfectcorp/perfectlib/d4;

    invoke-direct {v2, p0, v0, v1}, Lcom/perfectcorp/perfectlib/d4;-><init>(Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Lcom/perfectcorp/common/utility/EventPublisher;)V

    new-instance v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/e;

    invoke-direct {v3, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/e;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance v2, Lcom/perfectcorp/perfectlib/e4;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/perfectcorp/perfectlib/e4;-><init>(Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler;I)V

    invoke-virtual {v3, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->h(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;

    move-result-object v2

    new-instance v3, Lcom/perfectcorp/perfectlib/e4;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lcom/perfectcorp/perfectlib/e4;-><init>(Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler;I)V

    invoke-virtual {v2, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->f(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;

    move-result-object v2

    new-instance v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/b;

    invoke-direct {v3, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/b;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;)V

    :goto_0
    iget-object v2, p0, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncingTask;

    if-nez v4, :cond_2

    new-instance v5, Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncingTask;

    invoke-direct {v5, v0, v1, v3}, Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncingTask;-><init>(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Lcom/perfectcorp/common/utility/EventPublisher;Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/b;)V

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v5

    :cond_1
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_2
    return-object v4
.end method
