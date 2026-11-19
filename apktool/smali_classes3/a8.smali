.class public final synthetic La8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, La8;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    iget v0, v0, La8;->b:I

    const-string v1, "PerfectLib"

    const-string v2, "ShadeFinder"

    const-string v3, "LOOK_LIST_MESSAGE_DIGEST"

    const-string v4, "clearAllCompletable"

    const-string v5, ""

    const/4 v6, 0x3

    const/4 v7, 0x0

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/perfectcorp/common/PfCommons;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "perfectlib/config.json"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    :pswitch_0
    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/clflurry/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v7

    :pswitch_1
    sget-object v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/b;->d:Lcom/perfectcorp/perfectlib/ph/database/ymk/background/b;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    :try_start_0
    const-string v12, "isDeleted=0"

    iget-object v10, v0, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->b:Ljava/lang/String;

    iget-object v11, v0, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->c:[Ljava/lang/String;

    const-string v16, "guid"

    const/16 v17, 0x0

    const/4 v9, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v8 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->m(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v7}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    const-string v1, "BackgroundInfoDao"

    const-string v2, "[getBackgrounds] failed. queryNotDeletedRecordsOnly=true"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :goto_1
    return-object v0

    :catchall_1
    move-exception v0

    invoke-static {v7}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    throw v0

    :pswitch_2
    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    const-string v0, "[checkNeedToUpdate] checking language"

    const-string v1, "SkuHandler"

    invoke-static {v6, v1, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/utility/SettingHelper;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "[checkNeedToUpdate] language changed"

    invoke-static {v6, v1, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->h(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/s;

    move-result-object v0

    goto :goto_2

    :cond_0
    const-string v0, "[checkNeedToUpdate] language no change"

    invoke-static {v6, v1, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h;->b:Ljava/util/List;

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/SkuHandler;->d(Ljava/util/Collection;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;

    move-result-object v0

    :goto_2
    return-object v0

    :pswitch_3
    new-instance v0, Lcom/perfectcorp/perfectlib/rh/utility/networkcache/a$a;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/rh/utility/networkcache/a$a;-><init>()V

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/rh/utility/networkcache/a$a;->b:Lcom/perfectcorp/common/cache/CacheProviders$StringPreferenceCacheProvider;

    iget-object v2, v1, Lcom/perfectcorp/common/cache/CacheProviders$StringPreferenceCacheProvider;->a:Lcom/perfectcorp/common/cache/PreferencesCache;

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/perfectcorp/common/cache/CacheProviders$StringPreferenceCacheProvider;->a()Lcom/perfectcorp/common/cache/PreferencesCache;

    move-result-object v2

    iput-object v2, v1, Lcom/perfectcorp/common/cache/CacheProviders$StringPreferenceCacheProvider;->a:Lcom/perfectcorp/common/cache/PreferencesCache;

    :cond_1
    iget-object v1, v1, Lcom/perfectcorp/common/cache/CacheProviders$StringPreferenceCacheProvider;->a:Lcom/perfectcorp/common/cache/PreferencesCache;

    iget-object v2, v1, Lcom/perfectcorp/common/cache/PreferencesCache;->a:Lcom/perfectcorp/common/utility/BasicPreferences;

    iget-object v1, v1, Lcom/perfectcorp/common/cache/PreferencesCache;->b:Ljava/lang/String;

    invoke-virtual {v2, v1, v5}, Lcom/perfectcorp/common/utility/j;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v0, Ljava/util/MissingResourceException;

    invoke-direct {v0, v7, v7, v7}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Futures;->f(Ljava/lang/Throwable;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    goto :goto_4

    :cond_2
    :try_start_2
    iget-object v2, v0, Lcom/perfectcorp/perfectlib/rh/utility/networkcache/a$a;->a:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/rh/utility/networkcache/a$a;->c:Ljava/lang/reflect/Type;

    invoke-virtual {v2, v1, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->j(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/shadefinder/a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Futures;->g(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_3

    :goto_4
    check-cast v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    sget v1, Lcom/perfectcorp/thirdparty/io/reactivex/Flowable;->a:I

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/flowable/f;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v0, v2, v3, v7}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/flowable/f;-><init>(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/flowable/i;

    invoke-direct {v0, v1, v7}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/flowable/i;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/Flowable;Ljava/lang/Object;)V

    return-object v0

    :pswitch_4
    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    sget-object v9, Lcom/perfectcorp/perfectlib/hc/database/Contract$SkuItem;->a:[Ljava/lang/String;

    const-string v0, "0"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v11

    const-string v12, "_id ASC"

    const/4 v13, 0x0

    const-string v10, "isDeleted=?"

    invoke-static/range {v8 .. v13}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/SkuItemDao;->c(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :pswitch_5
    const-string v0, "[queryCustomFeatures] start"

    invoke-static {v6, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/shadefinder/c;->b()Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;

    move-result-object v0

    new-instance v1, Lcom/perfectcorp/perfectlib/y;

    const/16 v2, 0x18

    invoke-direct {v1, v2}, Lcom/perfectcorp/perfectlib/y;-><init>(I)V

    new-instance v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {v3, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance v0, Ld8;

    invoke-direct {v0, v2}, Ld8;-><init>(I)V

    invoke-virtual {v3, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->f(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;

    move-result-object v0

    new-instance v1, Ld8;

    const/16 v2, 0x19

    invoke-direct {v1, v2}, Ld8;-><init>(I)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/h;

    invoke-direct {v2, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/h;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    return-object v2

    :pswitch_6
    const-string v0, "[queryDetectionMode] start"

    invoke-static {v6, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/shadefinder/c;->a()Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;

    move-result-object v0

    new-instance v1, Lct0;

    const/16 v3, 0x13

    invoke-direct {v1, v3}, Lct0;-><init>(I)V

    new-instance v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {v3, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    const-string v0, "KEY_SHADE_FINDER_DETECT_MODE"

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/QuickLaunchPreferenceHelper;->a:Lcom/perfectcorp/common/utility/BasicPreferences;

    invoke-virtual {v1, v0, v7}, Lcom/perfectcorp/common/utility/j;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    new-instance v4, Ld8;

    const/16 v5, 0x1a

    invoke-direct {v4, v5}, Ld8;-><init>(I)V

    new-instance v5, Ld8;

    const/16 v7, 0x1b

    invoke-direct {v5, v7}, Ld8;-><init>(I)V

    invoke-direct {v1, v4, v5}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {v3, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    const-string v1, "[queryDetectionMode] use the cache"

    invoke-static {v6, v2, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->h(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/s;

    move-result-object v3

    goto :goto_5

    :cond_3
    const-string v0, "[queryDetectionMode] wait for request"

    invoke-static {v6, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    :goto_5
    return-object v3

    :pswitch_7
    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->a:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    const-string v0, "clear jewelry look finish"

    invoke-static {v6, v1, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/perfectcorp/perfectlib/internal/ModuleConfig;->w:Z

    if-nez v0, :cond_4

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/g;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/g;

    goto :goto_6

    :cond_4
    const-string v0, "com.perfectcorp.perfectlib.TutorialHandler"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v4, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v7, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;

    :goto_6
    return-object v0

    :pswitch_8
    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->a:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    const-string v0, "clear sku finish"

    invoke-static {v6, v1, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/perfectcorp/perfectlib/internal/ModuleConfig;->t:Z

    if-nez v0, :cond_5

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/g;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/g;

    goto :goto_7

    :cond_5
    const-class v0, Lcom/perfectcorp/perfectlib/LookHandler;

    invoke-virtual {v0, v4, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v7, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;

    :goto_7
    return-object v0

    :pswitch_9
    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->a:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    sget-boolean v0, Lcom/perfectcorp/perfectlib/internal/ModuleConfig;->t:Z

    if-nez v0, :cond_6

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/g;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/g;

    goto :goto_8

    :cond_6
    const-class v0, Lcom/perfectcorp/perfectlib/SkuHandler;

    invoke-virtual {v0, v4, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v7, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;

    :goto_8
    return-object v0

    :pswitch_a
    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/utility/SettingHelper;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->h(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/s;

    move-result-object v0

    goto :goto_9

    :cond_7
    sget-object v0, Lcom/perfectcorp/perfectlib/hc/preferences/NailLookHandlerPreferences;->a:Lcom/perfectcorp/common/utility/BasicPreferences;

    invoke-virtual {v0, v3, v5}, Lcom/perfectcorp/common/utility/j;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$h;

    invoke-direct {v1, v0}, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$h;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$h;->c()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object v0

    new-instance v1, Llc0;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Llc0;-><init>(I)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {v2, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    move-object v0, v2

    :goto_9
    return-object v0

    :pswitch_b
    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/utility/SettingHelper;->c()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->h(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/s;

    move-result-object v0

    goto :goto_a

    :cond_8
    sget-object v0, Lcom/perfectcorp/perfectlib/hc/preferences/LookHandlerPreferences;->a:Lcom/perfectcorp/common/utility/BasicPreferences;

    invoke-virtual {v0, v3, v5}, Lcom/perfectcorp/common/utility/j;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$f;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$f;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$f;->c()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object v0

    new-instance v1, Lv40;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, Lv40;-><init>(I)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {v2, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    move-object v0, v2

    :goto_a
    return-object v0

    :pswitch_c
    sget-object v0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/a$a;->b:Lcom/perfectcorp/perfectlib/ph/utility/networkcache/a$a;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/a$a;->a()Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/a;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/look/a;->b()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->n(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v0

    new-instance v1, Lg7;

    const/16 v2, 0x17

    invoke-direct {v1, v2}, Lg7;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->r(Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->p()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_b

    :cond_9
    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;->a:Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/e;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_b
    return-object v0

    :pswitch_d
    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/utility/SettingHelper;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->h(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/s;

    move-result-object v0

    goto :goto_c

    :cond_a
    sget-object v0, Lcom/perfectcorp/perfectlib/hc/preferences/JewelryLookHandlerPreferences;->a:Lcom/perfectcorp/common/utility/BasicPreferences;

    invoke-virtual {v0, v3, v5}, Lcom/perfectcorp/common/utility/j;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$e;

    invoke-direct {v1, v0}, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$e;->c()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object v0

    new-instance v1, Ld20;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ld20;-><init>(I)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {v2, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    move-object v0, v2

    :goto_c
    return-object v0

    :pswitch_e
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0

    :pswitch_f
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :pswitch_10
    return-object v7

    :pswitch_11
    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Sets;->e()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
