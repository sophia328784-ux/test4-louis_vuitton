.class public final Landroidx/camera/core/CameraX;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/CameraX$InternalInitState;
    }
.end annotation


# static fields
.field public static final r:Ljava/lang/Object;

.field public static final s:Landroid/util/SparseArray;


# instance fields
.field public final a:Landroidx/camera/core/impl/CameraRepository;

.field public final b:Ljava/lang/Object;

.field public final c:Landroidx/camera/core/CameraXConfig;

.field public final d:Ljava/util/concurrent/Executor;

.field public final e:Landroid/os/Handler;

.field public final f:Landroid/os/HandlerThread;

.field public g:Landroidx/camera/core/impl/CameraFactory;

.field public h:Landroidx/camera/core/impl/CameraDeviceSurfaceManager;

.field public i:Landroidx/camera/core/impl/UseCaseConfigFactory;

.field public j:Landroidx/camera/core/internal/StreamSpecsCalculatorImpl;

.field public k:Landroidx/camera/core/CameraUseCaseAdapterProviderImpl;

.field public final l:Landroidx/camera/core/RetryPolicy;

.field public final m:Lcom/google/common/util/concurrent/ListenableFuture;

.field public final n:Landroidx/camera/core/impl/CameraPresenceProvider;

.field public o:Landroidx/camera/core/CameraX$InternalInitState;

.field public p:Lcom/google/common/util/concurrent/ListenableFuture;

.field public final q:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/camera/core/CameraX;->r:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroidx/camera/core/CameraX;->s:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/camera/core/CameraXConfig$Provider;)V
    .locals 7

    new-instance v0, Landroidx/camera/core/impl/QuirkSettingsLoader;

    invoke-direct {v0}, Landroidx/camera/core/impl/QuirkSettingsLoader;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroidx/camera/core/impl/CameraRepository;

    invoke-direct {v1}, Landroidx/camera/core/impl/CameraRepository;-><init>()V

    iput-object v1, p0, Landroidx/camera/core/CameraX;->a:Landroidx/camera/core/impl/CameraRepository;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroidx/camera/core/CameraX;->b:Ljava/lang/Object;

    sget-object v1, Landroidx/camera/core/CameraX$InternalInitState;->UNINITIALIZED:Landroidx/camera/core/CameraX$InternalInitState;

    iput-object v1, p0, Landroidx/camera/core/CameraX;->o:Landroidx/camera/core/CameraX$InternalInitState;

    const/4 v1, 0x0

    invoke-static {v1}, Landroidx/camera/core/impl/utils/futures/Futures;->g(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    iput-object v2, p0, Landroidx/camera/core/CameraX;->p:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroidx/camera/core/CameraXConfig$Provider;->getCameraXConfig()Landroidx/camera/core/CameraXConfig;

    move-result-object p2

    iput-object p2, p0, Landroidx/camera/core/CameraX;->c:Landroidx/camera/core/CameraXConfig;

    goto/16 :goto_5

    :cond_0
    const-string p2, "CameraX"

    invoke-static {p1}, Landroidx/camera/core/impl/utils/ContextUtil;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    :goto_0
    instance-of v3, v2, Landroid/content/ContextWrapper;

    if-eqz v3, :cond_2

    instance-of v3, v2, Landroid/app/Application;

    if-eqz v3, :cond_1

    check-cast v2, Landroid/app/Application;

    goto :goto_1

    :cond_1
    check-cast v2, Landroid/content/ContextWrapper;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v1

    :goto_1
    instance-of v3, v2, Landroidx/camera/core/CameraXConfig$Provider;

    if-eqz v3, :cond_3

    check-cast v2, Landroidx/camera/core/CameraXConfig$Provider;

    goto :goto_4

    :cond_3
    :try_start_0
    invoke-static {p1}, Landroidx/camera/core/impl/utils/ContextUtil;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v4, Landroid/content/ComponentName;

    const-class v5, Landroidx/camera/core/impl/MetadataHolderService;

    invoke-direct {v4, v2, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x280

    invoke-virtual {v3, v4, v2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_4

    const-string v3, "androidx.camera.core.impl.MetadataHolderService.DEFAULT_CONFIG_PROVIDER"

    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_4
    move-object v2, v1

    :goto_2
    if-nez v2, :cond_5

    invoke-static {p2}, Landroidx/camera/core/Logger;->a(Ljava/lang/String;)V

    :goto_3
    move-object v2, v1

    goto :goto_4

    :cond_5
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/CameraXConfig$Provider;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    invoke-static {p2}, Landroidx/camera/core/Logger;->b(Ljava/lang/String;)V

    goto :goto_3

    :goto_4
    if-eqz v2, :cond_e

    invoke-interface {v2}, Landroidx/camera/core/CameraXConfig$Provider;->getCameraXConfig()Landroidx/camera/core/CameraXConfig;

    move-result-object p2

    iput-object p2, p0, Landroidx/camera/core/CameraX;->c:Landroidx/camera/core/CameraXConfig;

    :goto_5
    iget-object p2, p0, Landroidx/camera/core/CameraX;->c:Landroidx/camera/core/CameraXConfig;

    iget-object p2, p2, Landroidx/camera/core/CameraXConfig;->M:Landroidx/camera/core/impl/OptionsBundle;

    sget-object v2, Landroidx/camera/core/CameraXConfig;->W:Landroidx/camera/core/impl/Config$Option;

    invoke-virtual {p2, v2, v1}, Landroidx/camera/core/impl/OptionsBundle;->f(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/camera/core/impl/QuirkSettings;

    const-string v2, "CameraX"

    const/4 v3, 0x3

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Landroidx/camera/core/impl/QuirkSettings;->toString()Ljava/lang/String;

    invoke-static {v3, v2}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    goto :goto_6

    :cond_6
    invoke-virtual {v0, p1}, Landroidx/camera/core/impl/QuirkSettingsLoader;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/camera/core/impl/QuirkSettings;

    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v3, v2}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    :goto_6
    if-nez p2, :cond_7

    sget-object p2, Landroidx/camera/core/impl/QuirkSettingsHolder;->b:Landroidx/camera/core/impl/QuirkSettings;

    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v3, v2}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    :cond_7
    sget-object v0, Landroidx/camera/core/impl/QuirkSettingsHolder;->c:Landroidx/camera/core/impl/QuirkSettingsHolder;

    iget-object v0, v0, Landroidx/camera/core/impl/QuirkSettingsHolder;->a:Landroidx/camera/core/impl/MutableStateObservable;

    invoke-virtual {v0, p2}, Landroidx/camera/core/impl/StateObservable;->f(Ljava/lang/Object;)V

    iget-object p2, p0, Landroidx/camera/core/CameraX;->c:Landroidx/camera/core/CameraXConfig;

    iget-object p2, p2, Landroidx/camera/core/CameraXConfig;->M:Landroidx/camera/core/impl/OptionsBundle;

    sget-object v0, Landroidx/camera/core/CameraXConfig;->X:Landroidx/camera/core/impl/Config$Option;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Landroidx/camera/core/impl/OptionsBundle;->f(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, Landroidx/camera/core/CameraX;->c:Landroidx/camera/core/CameraXConfig;

    iget-object p2, p2, Landroidx/camera/core/CameraXConfig;->M:Landroidx/camera/core/impl/OptionsBundle;

    sget-object v0, Landroidx/camera/core/CameraXConfig;->Q:Landroidx/camera/core/impl/Config$Option;

    invoke-virtual {p2, v0, v1}, Landroidx/camera/core/impl/OptionsBundle;->f(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/concurrent/Executor;

    iget-object v0, p0, Landroidx/camera/core/CameraX;->c:Landroidx/camera/core/CameraXConfig;

    iget-object v0, v0, Landroidx/camera/core/CameraXConfig;->M:Landroidx/camera/core/impl/OptionsBundle;

    sget-object v2, Landroidx/camera/core/CameraXConfig;->R:Landroidx/camera/core/impl/Config$Option;

    invoke-virtual {v0, v2, v1}, Landroidx/camera/core/impl/OptionsBundle;->f(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    if-nez p2, :cond_8

    new-instance p2, Landroidx/camera/core/CameraExecutor;

    invoke-direct {p2}, Landroidx/camera/core/CameraExecutor;-><init>()V

    :cond_8
    iput-object p2, p0, Landroidx/camera/core/CameraX;->d:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_9

    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "CameraX-scheduler"

    const/16 v4, 0xa

    invoke-direct {v0, v2, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Landroidx/camera/core/CameraX;->f:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/core/CameraX;->e:Landroid/os/Handler;

    goto :goto_7

    :cond_9
    iput-object v1, p0, Landroidx/camera/core/CameraX;->f:Landroid/os/HandlerThread;

    iput-object v0, p0, Landroidx/camera/core/CameraX;->e:Landroid/os/Handler;

    :goto_7
    iget-object v0, p0, Landroidx/camera/core/CameraX;->c:Landroidx/camera/core/CameraXConfig;

    sget-object v2, Landroidx/camera/core/CameraXConfig;->S:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {v0, v2, v1}, Landroidx/camera/core/impl/ReadableConfig;->f(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Landroidx/camera/core/CameraX;->q:Ljava/lang/Integer;

    sget-object v2, Landroidx/camera/core/CameraX;->r:Ljava/lang/Object;

    monitor-enter v2

    const/4 v1, 0x1

    if-nez v0, :cond_a

    :try_start_1
    monitor-exit v2

    goto :goto_9

    :catchall_0
    move-exception p0

    goto/16 :goto_c

    :cond_a
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "minLogLevel"

    const/4 v6, 0x6

    invoke-static {v4, v3, v6, v5}, Landroidx/core/util/Preconditions;->c(IIILjava/lang/String;)V

    sget-object v3, Landroidx/camera/core/CameraX;->s:Landroid/util/SparseArray;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v1

    goto :goto_8

    :cond_b
    move v4, v1

    :goto_8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {}, Landroidx/camera/core/CameraX;->c()V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_9
    new-instance v0, Landroidx/camera/core/RetryPolicy$Builder;

    iget-object v2, p0, Landroidx/camera/core/CameraX;->c:Landroidx/camera/core/CameraXConfig;

    iget-object v2, v2, Landroidx/camera/core/CameraXConfig;->M:Landroidx/camera/core/impl/OptionsBundle;

    sget-object v3, Landroidx/camera/core/CameraXConfig;->V:Landroidx/camera/core/impl/Config$Option;

    sget-object v4, Landroidx/camera/core/RetryPolicy;->a:Landroidx/camera/core/impl/CameraProviderInitRetryPolicy$Legacy;

    invoke-virtual {v2, v3, v4}, Landroidx/camera/core/impl/OptionsBundle;->f(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/RetryPolicy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, v2}, Landroidx/camera/core/RetryPolicy$Builder;-><init>(Landroidx/camera/core/RetryPolicy;)V

    iget-wide v2, v0, Landroidx/camera/core/RetryPolicy$Builder;->b:J

    iget-object v0, v0, Landroidx/camera/core/RetryPolicy$Builder;->a:Landroidx/camera/core/RetryPolicy;

    instance-of v4, v0, Landroidx/camera/core/impl/RetryPolicyInternal;

    if-eqz v4, :cond_c

    check-cast v0, Landroidx/camera/core/impl/RetryPolicyInternal;

    invoke-interface {v0, v2, v3}, Landroidx/camera/core/impl/RetryPolicyInternal;->b(J)Landroidx/camera/core/RetryPolicy;

    move-result-object v0

    goto :goto_a

    :cond_c
    new-instance v4, Landroidx/camera/core/impl/TimeoutRetryPolicy;

    invoke-direct {v4, v2, v3, v0}, Landroidx/camera/core/impl/TimeoutRetryPolicy;-><init>(JLandroidx/camera/core/RetryPolicy;)V

    move-object v0, v4

    :goto_a
    iput-object v0, p0, Landroidx/camera/core/CameraX;->l:Landroidx/camera/core/RetryPolicy;

    new-instance v0, Landroidx/camera/core/impl/CameraPresenceProvider;

    invoke-direct {v0, p2}, Landroidx/camera/core/impl/CameraPresenceProvider;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Landroidx/camera/core/CameraX;->n:Landroidx/camera/core/impl/CameraPresenceProvider;

    iget-object p2, p0, Landroidx/camera/core/CameraX;->b:Ljava/lang/Object;

    monitor-enter p2

    :try_start_2
    iget-object v0, p0, Landroidx/camera/core/CameraX;->o:Landroidx/camera/core/CameraX$InternalInitState;

    sget-object v2, Landroidx/camera/core/CameraX$InternalInitState;->UNINITIALIZED:Landroidx/camera/core/CameraX$InternalInitState;

    if-ne v0, v2, :cond_d

    goto :goto_b

    :cond_d
    const/4 v1, 0x0

    :goto_b
    const-string v0, "CameraX.initInternal() should only be called once per instance"

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->f(Ljava/lang/String;Z)V

    sget-object v0, Landroidx/camera/core/CameraX$InternalInitState;->INITIALIZING:Landroidx/camera/core/CameraX$InternalInitState;

    iput-object v0, p0, Landroidx/camera/core/CameraX;->o:Landroidx/camera/core/CameraX$InternalInitState;

    new-instance v0, Lp3;

    const/4 v1, 0x4

    invoke-direct {v0, p0, p1, v1}, Lp3;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->a(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iput-object p1, p0, Landroidx/camera/core/CameraX;->m:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :goto_c
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :cond_e
    const-string p0, "CameraX is not configured properly. The most likely cause is you did not include a default implementation in your build such as \'camera-camera2\'."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    throw v1
.end method

.method public static a(Ljava/lang/Integer;)V
    .locals 3

    sget-object v0, Landroidx/camera/core/CameraX;->r:Ljava/lang/Object;

    monitor-enter v0

    if-nez p0, :cond_0

    :try_start_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    sget-object v1, Landroidx/camera/core/CameraX;->s:Landroid/util/SparseArray;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_0
    invoke-static {}, Landroidx/camera/core/CameraX;->c()V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static c()V
    .locals 3

    sget-object v0, Landroidx/camera/core/CameraX;->s:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x3

    if-nez v1, :cond_0

    sput v2, Landroidx/camera/core/Logger;->a:I

    return-void

    :cond_0
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    sput v2, Landroidx/camera/core/Logger;->a:I

    return-void

    :cond_1
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    sput v1, Landroidx/camera/core/Logger;->a:I

    return-void

    :cond_2
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    sput v1, Landroidx/camera/core/Logger;->a:I

    return-void

    :cond_3
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    sput v1, Landroidx/camera/core/Logger;->a:I

    :cond_4
    return-void
.end method


# virtual methods
.method public final b()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    iget-object v0, p0, Landroidx/camera/core/CameraX;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/camera/core/CameraX;->e:Landroid/os/Handler;

    const-string v2, "retry_token"

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Landroidx/camera/core/CameraX;->o:Landroidx/camera/core/CameraX$InternalInitState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/camera/core/CameraX$InternalInitState;->SHUTDOWN:Landroidx/camera/core/CameraX$InternalInitState;

    iput-object v1, p0, Landroidx/camera/core/CameraX;->o:Landroidx/camera/core/CameraX$InternalInitState;

    iget-object v1, p0, Landroidx/camera/core/CameraX;->q:Ljava/lang/Integer;

    invoke-static {v1}, Landroidx/camera/core/CameraX;->a(Ljava/lang/Integer;)V

    new-instance v1, Ls3;

    const/16 v2, 0x10

    invoke-direct {v1, p0, v2}, Ls3;-><init>(Ljava/lang/Object;I)V

    invoke-static {v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->a(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    iput-object v1, p0, Landroidx/camera/core/CameraX;->p:Lcom/google/common/util/concurrent/ListenableFuture;

    :goto_0
    iget-object p0, p0, Landroidx/camera/core/CameraX;->p:Lcom/google/common/util/concurrent/ListenableFuture;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "CameraX could not be shutdown when it is initializing."

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    sget-object v1, Landroidx/camera/core/CameraX$InternalInitState;->SHUTDOWN:Landroidx/camera/core/CameraX$InternalInitState;

    iput-object v1, p0, Landroidx/camera/core/CameraX;->o:Landroidx/camera/core/CameraX$InternalInitState;

    const/4 p0, 0x0

    invoke-static {p0}, Landroidx/camera/core/impl/utils/futures/Futures;->g(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
