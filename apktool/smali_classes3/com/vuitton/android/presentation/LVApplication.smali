.class public Lcom/vuitton/android/presentation/LVApplication;
.super Lcom/vuitton/android/presentation/Hilt_LVApplication;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/CoroutineScope;
.implements Lcoil3/SingletonImageLoader$Factory;
.implements Lcom/vuitton/android/domain/repository/AppInitializationStateHolder;
.implements Landroidx/work/Configuration$Provider;


# annotations
.annotation runtime Ldagger/hilt/android/HiltAndroidApp;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/LVApplication$Companion;,
        Lcom/vuitton/android/presentation/LVApplication$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0017\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u0005:\u0001\u0008B\u0007\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/LVApplication;",
        "Landroid/app/Application;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lcoil3/SingletonImageLoader$Factory;",
        "Lcom/vuitton/android/domain/repository/AppInitializationStateHolder;",
        "Landroidx/work/Configuration$Provider;",
        "<init>",
        "()V",
        "Companion",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final t:Lcom/vuitton/android/presentation/LVApplication$Companion;

.field public static final u:Ljava/lang/String;


# instance fields
.field public d:Z

.field public final e:Lkotlin/coroutines/CoroutineContext;

.field public final f:Lkotlinx/coroutines/internal/ContextScope;

.field public g:Lcom/vuitton/foundation/logger/Logger;

.field public h:Lcom/vuitton/foundation/secrets/SecretsProvider;

.field public i:Lcom/vuitton/android/platform/security/RootDetector;

.field public j:Lcom/vuitton/android/platform/activity/CurrentActivityTracker;

.field public k:Lcom/vuitton/android/presentation/inappbanner/InAppBannerSupervisor;

.field public l:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/LVTrunkDeviceManager;

.field public m:Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;

.field public n:Lcom/vuitton/android/domain/usecase/automatedtest/IsUiTestUseCase;

.field public o:Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/SubscribeAppsFlyerDeepLinkUseCase;

.field public p:Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

.field public q:Landroidx/hilt/work/HiltWorkerFactory;

.field public r:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

.field public final s:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/LVApplication$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/LVApplication$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/LVApplication;->t:Lcom/vuitton/android/presentation/LVApplication$Companion;

    const-string v0, "LVApplication"

    sput-object v0, Lcom/vuitton/android/presentation/LVApplication;->u:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/vuitton/android/presentation/Hilt_LVApplication;-><init>()V

    invoke-static {}, Lkotlinx/coroutines/JobKt;->a()Lkotlinx/coroutines/JobImpl;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v1, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->b:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/LVApplication;->e:Lkotlin/coroutines/CoroutineContext;

    invoke-static {}, Lkotlinx/coroutines/SupervisorKt;->b()Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/internal/MainDispatcherLoader;->a:Lkotlinx/coroutines/MainCoroutineDispatcher;

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/LVApplication;->f:Lkotlinx/coroutines/internal/ContextScope;

    new-instance v0, Lss;

    const/16 v1, 0x1a

    invoke-direct {v0, p0, v1}, Lss;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/LVApplication;->s:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vuitton/android/presentation/LVApplication;->d:Z

    return-void
.end method

.method public final b(Landroid/content/Context;)Lcoil3/RealImageLoader;
    .locals 9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcoil3/ImageLoader$Builder;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p1, v0}, Lcoil3/ImageLoader$Builder;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcoil3/ComponentRegistry$Builder;

    invoke-direct {v0}, Lcoil3/ComponentRegistry$Builder;-><init>()V

    new-instance v1, Lgp0;

    invoke-direct {v1, p0}, Lgp0;-><init>(Lcom/vuitton/android/presentation/LVApplication;)V

    new-instance v2, Lcoil3/network/NetworkFetcher$Factory;

    new-instance v3, Lx60;

    const/16 p0, 0x11

    invoke-direct {v3, v1, p0}, Lx60;-><init>(Ljava/lang/Object;I)V

    const/16 v7, 0xe

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Lcoil3/network/NetworkFetcher$Factory;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-class p0, Lcoil3/Uri;

    sget-object v1, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, p0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Lcoil3/ComponentRegistry$Builder;->a(Lcoil3/fetch/Fetcher$Factory;Lkotlin/reflect/KClass;)V

    invoke-virtual {v0}, Lcoil3/ComponentRegistry$Builder;->c()Lcoil3/ComponentRegistry;

    move-result-object p0

    iput-object p0, p1, Lcoil3/ImageLoader$Builder;->g:Lcoil3/ComponentRegistry;

    invoke-virtual {p1}, Lcoil3/ImageLoader$Builder;->a()Lcoil3/RealImageLoader;

    move-result-object p0

    return-object p0
.end method

.method public final c()Landroidx/work/Configuration;
    .locals 1

    new-instance v0, Landroidx/work/Configuration$Builder;

    invoke-direct {v0}, Landroidx/work/Configuration$Builder;-><init>()V

    iget-object p0, p0, Lcom/vuitton/android/presentation/LVApplication;->q:Landroidx/hilt/work/HiltWorkerFactory;

    if-eqz p0, :cond_0

    iput-object p0, v0, Landroidx/work/Configuration$Builder;->b:Landroidx/work/WorkerFactory;

    new-instance p0, Landroidx/work/Configuration;

    invoke-direct {p0, v0}, Landroidx/work/Configuration;-><init>(Landroidx/work/Configuration$Builder;)V

    return-object p0

    :cond_0
    const-string p0, "workerFactory"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final d()Z
    .locals 0

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/LVApplication;->d:Z

    return p0
.end method

.method public final getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/LVApplication;->e:Lkotlin/coroutines/CoroutineContext;

    return-object p0
.end method

.method public final h()V
    .locals 2

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/Runtime;->exit(I)V

    return-void
.end method

.method public final onCreate()V
    .locals 12

    invoke-static {p0}, Lcom/dynatrace/android/callback/Callback;->p(Lcom/vuitton/android/presentation/Hilt_LVApplication;)V

    invoke-super {p0}, Lcom/vuitton/android/presentation/Hilt_LVApplication;->onCreate()V

    sget-object v0, Lcom/vuitton/android/presentation/LVApplication;->t:Lcom/vuitton/android/presentation/LVApplication$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/LVApplication;->n:Lcom/vuitton/android/domain/usecase/automatedtest/IsUiTestUseCase;

    const/4 v7, 0x0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/vuitton/android/presentation/LVApplication;->m:Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/vuitton/android/data/database/room/LVAppDatabase;->n:Lcom/vuitton/android/data/database/room/LVAppDatabase$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/vuitton/android/data/database/room/LVAppDatabase;->o:Lcom/vuitton/android/data/database/room/LVAppDatabase;

    const/4 v6, 0x0

    const/4 v8, 0x1

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v2, Lcom/vuitton/android/data/database/room/LVAppDatabase;

    const-string v3, "LVAppDatabase"

    invoke-static {v0, v2, v3}, Landroidx/room/Room;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object v0

    new-array v2, v8, [Landroidx/room/migration/Migration;

    sget-object v3, Lcom/vuitton/android/data/database/room/LVAppDatabase;->p:Lcom/vuitton/android/data/database/room/LVAppDatabase$Companion$MIGRATION_1_2$1;

    aput-object v3, v2, v6

    invoke-virtual {v0, v2}, Landroidx/room/RoomDatabase$Builder;->a([Landroidx/room/migration/Migration;)V

    new-array v2, v8, [Landroidx/room/migration/Migration;

    sget-object v3, Lcom/vuitton/android/data/database/room/LVAppDatabase;->q:Lcom/vuitton/android/data/database/room/LVAppDatabase$Companion$MIGRATION_2_3$1;

    aput-object v3, v2, v6

    invoke-virtual {v0, v2}, Landroidx/room/RoomDatabase$Builder;->a([Landroidx/room/migration/Migration;)V

    invoke-virtual {v0}, Landroidx/room/RoomDatabase$Builder;->b()Landroidx/room/RoomDatabase;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/vuitton/android/data/database/room/LVAppDatabase;

    sput-object v2, Lcom/vuitton/android/data/database/room/LVAppDatabase;->o:Lcom/vuitton/android/data/database/room/LVAppDatabase;

    :cond_0
    invoke-virtual {v2}, Lcom/vuitton/android/data/database/room/LVAppDatabase;->y()Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/data/di/DataModule;->a:Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroidx/media3/datasource/cache/LeastRecentlyUsedCacheEvictor;

    const-wide/32 v3, 0x6400000

    invoke-direct {v2, v3, v4}, Landroidx/media3/datasource/cache/LeastRecentlyUsedCacheEvictor;-><init>(J)V

    new-instance v3, Landroidx/media3/database/StandaloneDatabaseProvider;

    invoke-direct {v3, v0}, Landroidx/media3/database/StandaloneDatabaseProvider;-><init>(Landroid/content/Context;)V

    sget-object v4, Lcom/vuitton/android/presentation/di/AppModule;->a:Lcom/vuitton/android/presentation/CacheFactory;

    if-nez v4, :cond_1

    new-instance v4, Lcom/vuitton/android/presentation/CacheFactory;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v0, v2, v3}, Lcom/vuitton/android/presentation/CacheFactory;-><init>(Ljava/io/File;Landroidx/media3/datasource/cache/LeastRecentlyUsedCacheEvictor;Landroidx/media3/database/StandaloneDatabaseProvider;)V

    sput-object v4, Lcom/vuitton/android/presentation/di/AppModule;->a:Lcom/vuitton/android/presentation/CacheFactory;

    :cond_1
    iget-object v0, p0, Lcom/vuitton/android/presentation/LVApplication;->p:Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

    const-string v9, "environmentProvider"

    if-eqz v0, :cond_1d

    invoke-interface {v0}, Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "kakao"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Lcom/kakao/sdk/common/model/ServerHosts;

    invoke-direct {v0}, Lcom/kakao/sdk/common/model/ServerHosts;-><init>()V

    new-instance v4, Lcom/kakao/sdk/common/model/ApprovalType;

    invoke-direct {v4}, Lcom/kakao/sdk/common/model/ApprovalType;-><init>()V

    move-object v5, v4

    sget-object v4, Lcom/kakao/sdk/common/KakaoSdk$Type;->KOTLIN:Lcom/kakao/sdk/common/KakaoSdk$Type;

    move-object v10, v5

    new-instance v5, Lcom/kakao/sdk/common/model/SdkIdentifier;

    invoke-direct {v5, v7, v8, v7}, Lcom/kakao/sdk/common/model/SdkIdentifier;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-object v0, Lcom/kakao/sdk/common/KakaoSdk;->b:Lcom/kakao/sdk/common/model/ServerHosts;

    sput-boolean v6, Lcom/kakao/sdk/common/KakaoSdk;->c:Z

    sput-object v10, Lcom/kakao/sdk/common/KakaoSdk;->d:Lcom/kakao/sdk/common/model/ApprovalType;

    new-instance v0, Lcom/kakao/sdk/common/model/ApplicationContextInfo;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/kakao/sdk/common/model/ApplicationContextInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/kakao/sdk/common/KakaoSdk$Type;Lcom/kakao/sdk/common/model/SdkIdentifier;)V

    sput-object v0, Lcom/kakao/sdk/common/KakaoSdk;->a:Lcom/kakao/sdk/common/model/ApplicationContextInfo;

    :try_start_0
    const-class v0, Lcom/kakao/sdk/user/AppLifecycleObserver;

    sget-object v2, Lcom/kakao/sdk/user/AppLifecycleObserver;->Companion:Lcom/kakao/sdk/user/AppLifecycleObserver$Companion;

    const-string v2, "getInstance"

    invoke-virtual {v0, v2, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Landroidx/lifecycle/LifecycleEventObserver;

    sget-object v2, Landroidx/lifecycle/ProcessLifecycleOwner;->i:Landroidx/lifecycle/ProcessLifecycleOwner$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/lifecycle/ProcessLifecycleOwner;->j:Landroidx/lifecycle/ProcessLifecycleOwner;

    iget-object v2, v2, Landroidx/lifecycle/ProcessLifecycleOwner;->g:Landroidx/lifecycle/LifecycleRegistry;

    invoke-virtual {v2, v0}, Landroidx/lifecycle/LifecycleRegistry;->a(Landroidx/lifecycle/LifecycleObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/kakao/sdk/common/util/SdkLog;->d:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to register AppLifecycleObserver "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->a(Ljava/io/Serializable;)V

    :goto_0
    iget-object v0, p0, Lcom/vuitton/android/presentation/LVApplication;->p:Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

    if-eqz v0, :cond_1c

    invoke-interface {v0}, Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/batch/android/Batch;->start(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v2, Lcom/vuitton/android/data/migration/SharedPreferencesMigrationHelper;->a:Z

    if-eqz v2, :cond_2

    goto/16 :goto_5

    :cond_2
    const-string v2, "SP_MYLV"

    invoke-virtual {v0, v2, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "SP_MYLV_ENC"

    invoke-static {v0, v3}, Lcom/vuitton/android/data/di/sharedpreferences/SharedPreferencesFactory;->a(Landroid/content/Context;Ljava/lang/String;)Landroidx/security/crypto/EncryptedSharedPreferences;

    move-result-object v0

    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    const-string v10, "dispatch_country_model"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual {v0}, Landroidx/security/crypto/EncryptedSharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v9, v4, Ljava/lang/String;

    if-eqz v9, :cond_5

    invoke-virtual {v0}, Landroidx/security/crypto/EncryptedSharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    check-cast v4, Ljava/lang/String;

    invoke-interface {v9, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_4

    :cond_5
    instance-of v9, v4, Ljava/lang/Boolean;

    if-eqz v9, :cond_6

    invoke-virtual {v0}, Landroidx/security/crypto/EncryptedSharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v9, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_4

    :cond_6
    instance-of v9, v4, Ljava/lang/Integer;

    if-eqz v9, :cond_7

    invoke-virtual {v0}, Landroidx/security/crypto/EncryptedSharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-interface {v9, v5, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_4

    :cond_7
    instance-of v9, v4, Ljava/lang/Long;

    if-eqz v9, :cond_8

    invoke-virtual {v0}, Landroidx/security/crypto/EncryptedSharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    invoke-interface {v9, v5, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_4

    :cond_8
    instance-of v9, v4, Ljava/lang/Float;

    if-eqz v9, :cond_9

    invoke-virtual {v0}, Landroidx/security/crypto/EncryptedSharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-interface {v9, v5, v4}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_4

    :cond_9
    instance-of v9, v4, Ljava/util/Set;

    if-eqz v9, :cond_d

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_c

    move-object v9, v4

    check-cast v9, Ljava/lang/Iterable;

    instance-of v10, v9, Ljava/util/Collection;

    if-eqz v10, :cond_a

    move-object v10, v9

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_a

    goto :goto_3

    :cond_a
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    instance-of v10, v10, Ljava/lang/String;

    if-nez v10, :cond_b

    move-object v4, v7

    :cond_c
    :goto_3
    if-eqz v4, :cond_d

    invoke-virtual {v0}, Landroidx/security/crypto/EncryptedSharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v5, v4}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_d
    :goto_4
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_2

    :cond_e
    sput-boolean v8, Lcom/vuitton/android/data/migration/SharedPreferencesMigrationHelper;->a:Z

    :goto_5
    iget-object v0, p0, Lcom/vuitton/android/presentation/LVApplication;->g:Lcom/vuitton/foundation/logger/Logger;

    const-string v2, "logger"

    if-eqz v0, :cond_1b

    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/LVApplication;->h:Lcom/vuitton/foundation/secrets/SecretsProvider;

    if-eqz v3, :cond_1a

    sget-object v4, Lcom/vuitton/foundation/secrets/SecretKey;->APPSFLYER_KEY:Lcom/vuitton/foundation/secrets/SecretKey;

    invoke-interface {v3, v4}, Lcom/vuitton/foundation/secrets/SecretsProvider;->a(Lcom/vuitton/foundation/secrets/SecretKey;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v7, p0}, Lcom/appsflyer/AppsFlyerLib;->init(Ljava/lang/String;Lcom/appsflyer/share/AppsFlyerConversionListener;Landroid/content/Context;)Lcom/appsflyer/AppsFlyerLib;

    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    const/16 v3, 0x4e20

    invoke-virtual {v0, v3}, Lcom/appsflyer/AppsFlyerLib;->setMinTimeBetweenSessions(I)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/LVApplication;->o:Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/SubscribeAppsFlyerDeepLinkUseCase;

    if-eqz v0, :cond_19

    iget-object v0, v0, Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/SubscribeAppsFlyerDeepLinkUseCase;->a:Lcom/vuitton/android/domain/repository/AppsFlyerRepository;

    invoke-interface {v0}, Lcom/vuitton/android/domain/repository/AppsFlyerRepository;->e()V

    :try_start_1
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    invoke-static {p0}, Lcom/google/android/gms/security/ProviderInstaller;->a(Lcom/vuitton/android/presentation/LVApplication;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    sget-object v3, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v3, Lkotlin/Result$Failure;

    invoke-direct {v3, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v3

    :goto_6
    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_f

    goto :goto_8

    :cond_f
    instance-of v3, v0, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;

    if-eqz v3, :cond_11

    sget-object v2, Lcom/google/android/gms/common/GoogleApiAvailability;->e:Lcom/google/android/gms/common/GoogleApiAvailability;

    check-cast v0, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;

    iget v0, v0, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;->b:I

    const-string v3, "n"

    invoke-virtual {v2, p0, v0, v3}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    if-nez v3, :cond_10

    move-object v3, v7

    goto :goto_7

    :cond_10
    const/high16 v4, 0xc000000

    invoke-static {p0, v6, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    :goto_7
    invoke-virtual {v2, p0, v0, v3}, Lcom/google/android/gms/common/GoogleApiAvailability;->f(Landroid/content/Context;ILandroid/app/PendingIntent;)V

    goto :goto_8

    :cond_11
    iget-object v3, p0, Lcom/vuitton/android/presentation/LVApplication;->g:Lcom/vuitton/foundation/logger/Logger;

    if-eqz v3, :cond_18

    sget-object v2, Lcom/vuitton/android/presentation/LVApplication;->u:Ljava/lang/String;

    const-string v4, "checkTlsVersion()"

    invoke-interface {v3, v2, v4, v0}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_8
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const v2, 0x7f14038d

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroid/app/NotificationChannel;

    const-string v4, "CHANNEL_SYNC"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v2, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    new-instance v4, Landroid/app/NotificationChannel;

    const-string v5, "CHANNEL_PUSH"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v2, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    if-eqz v0, :cond_12

    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_12
    if-eqz v0, :cond_13

    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_13
    iget-object v0, p0, Lcom/vuitton/android/presentation/LVApplication;->k:Lcom/vuitton/android/presentation/inappbanner/InAppBannerSupervisor;

    if-eqz v0, :cond_17

    iget-boolean v2, v0, Lcom/vuitton/android/presentation/inappbanner/InAppBannerSupervisor;->d:Z

    if-eqz v2, :cond_14

    goto :goto_9

    :cond_14
    iput-boolean v8, v0, Lcom/vuitton/android/presentation/inappbanner/InAppBannerSupervisor;->d:Z

    new-instance v2, Lcom/vuitton/android/presentation/inappbanner/InAppBannerSupervisor$init$1;

    invoke-direct {v2, v0}, Lcom/vuitton/android/presentation/inappbanner/InAppBannerSupervisor$init$1;-><init>(Lcom/vuitton/android/presentation/inappbanner/InAppBannerSupervisor;)V

    invoke-virtual {p0, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :goto_9
    iget-object v0, p0, Lcom/vuitton/android/presentation/LVApplication;->r:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    if-eqz v0, :cond_16

    iget-object v8, v0, Lcom/vuitton/android/domain/service/authentication/UserSessionService;->g:Lkotlinx/coroutines/flow/StateFlow;

    new-instance v0, Lcom/vuitton/android/presentation/LVApplication$onCreate$1;

    const-string v5, "initShortcut(Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;)V"

    const/4 v6, 0x4

    const/4 v1, 0x2

    const-class v3, Lcom/vuitton/android/presentation/LVApplication;

    const-string v4, "initShortcut"

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/AdaptedFunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-direct {v2, v8, v0}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v2, p0}, Lkotlinx/coroutines/flow/FlowKt;->u(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/LVApplication;->j:Lcom/vuitton/android/platform/activity/CurrentActivityTracker;

    if-eqz v0, :cond_15

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    sget-object v2, Landroidx/lifecycle/ProcessLifecycleOwner;->i:Landroidx/lifecycle/ProcessLifecycleOwner$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/lifecycle/ProcessLifecycleOwner;->j:Landroidx/lifecycle/ProcessLifecycleOwner;

    iget-object v2, v2, Landroidx/lifecycle/ProcessLifecycleOwner;->g:Landroidx/lifecycle/LifecycleRegistry;

    new-instance v3, Lcom/vuitton/android/presentation/LVApplication$registerLifecycleCallbacks$1;

    invoke-direct {v3, p0, v0}, Lcom/vuitton/android/presentation/LVApplication$registerLifecycleCallbacks$1;-><init>(Lcom/vuitton/android/presentation/LVApplication;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    invoke-virtual {v2, v3}, Landroidx/lifecycle/LifecycleRegistry;->a(Landroidx/lifecycle/LifecycleObserver;)V

    new-instance v2, Lcom/vuitton/android/presentation/LVApplication$registerLifecycleCallbacks$2;

    invoke-direct {v2, p0, v0}, Lcom/vuitton/android/presentation/LVApplication$registerLifecycleCallbacks$2;-><init>(Lcom/vuitton/android/presentation/LVApplication;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    invoke-virtual {p0, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void

    :cond_15
    const-string v0, "currentActivityTracker"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v7

    :cond_16
    const-string v0, "userSessionService"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v7

    :cond_17
    const-string v0, "inAppBannerSupervisor"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v7

    :cond_18
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v7

    :cond_19
    const-string v0, "subscribeAppsFlyerDeepLinkUseCase"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v7

    :cond_1a
    const-string v0, "secretsProvider"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v7

    :cond_1b
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v7

    :cond_1c
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v7

    :cond_1d
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v7

    :cond_1e
    const-string v0, "buildConfigProvider"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v7

    :cond_1f
    const-string v0, "isUiTestUseCase"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v7
.end method

.method public final onLowMemory()V
    .locals 2

    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    iget-object p0, p0, Lcom/vuitton/android/presentation/LVApplication;->f:Lkotlinx/coroutines/internal/ContextScope;

    iget-object p0, p0, Lkotlinx/coroutines/internal/ContextScope;->b:Lkotlin/coroutines/CoroutineContext;

    sget-object v0, Lkotlinx/coroutines/Job$Key;->b:Lkotlinx/coroutines/Job$Key;

    invoke-interface {p0, v0}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/Job;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lkotlinx/coroutines/Job;->getChildren()Lkotlin/sequences/Sequence;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onTerminate()V
    .locals 2

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    const/16 v1, 0x154d

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_0
    iget-object v0, p0, Lcom/vuitton/android/presentation/LVApplication;->l:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/LVTrunkDeviceManager;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/core/app/LPDeviceManager;->stop()V

    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/core/app/LPDeviceManager;->removeObserver()V

    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    return-void

    :cond_1
    const-string p0, "trunkDeviceManager"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
