.class public final Landroidx/camera/core/CameraXConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/internal/TargetConfig;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/CameraXConfig$Builder;,
        Landroidx/camera/core/CameraXConfig$Provider;,
        Landroidx/camera/core/CameraXConfig$ImplType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/camera/core/internal/TargetConfig<",
        "Landroidx/camera/core/CameraX;",
        ">;"
    }
.end annotation


# static fields
.field public static final N:Landroidx/camera/core/impl/Config$Option;

.field public static final O:Landroidx/camera/core/impl/Config$Option;

.field public static final P:Landroidx/camera/core/impl/Config$Option;

.field public static final Q:Landroidx/camera/core/impl/Config$Option;

.field public static final R:Landroidx/camera/core/impl/Config$Option;

.field public static final S:Landroidx/camera/core/impl/Config$Option;

.field public static final T:Landroidx/camera/core/impl/Config$Option;

.field public static final U:Landroidx/camera/core/impl/Config$Option;

.field public static final V:Landroidx/camera/core/impl/Config$Option;

.field public static final W:Landroidx/camera/core/impl/Config$Option;

.field public static final X:Landroidx/camera/core/impl/Config$Option;

.field public static final Y:Landroidx/camera/core/impl/Config$Option;


# instance fields
.field public final M:Landroidx/camera/core/impl/OptionsBundle;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "camerax.core.appConfig.cameraFactoryProvider"

    const-class v1, Landroidx/camera/core/impl/CameraFactory$Provider;

    invoke-static {v1, v0}, Landroidx/camera/core/impl/Config$Option;->a(Ljava/lang/Class;Ljava/lang/String;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/CameraXConfig;->N:Landroidx/camera/core/impl/Config$Option;

    const-string v0, "camerax.core.appConfig.deviceSurfaceManagerProvider"

    const-class v1, Landroidx/camera/core/impl/CameraDeviceSurfaceManager$Provider;

    invoke-static {v1, v0}, Landroidx/camera/core/impl/Config$Option;->a(Ljava/lang/Class;Ljava/lang/String;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/CameraXConfig;->O:Landroidx/camera/core/impl/Config$Option;

    const-string v0, "camerax.core.appConfig.useCaseConfigFactoryProvider"

    const-class v1, Landroidx/camera/core/impl/UseCaseConfigFactory$Provider;

    invoke-static {v1, v0}, Landroidx/camera/core/impl/Config$Option;->a(Ljava/lang/Class;Ljava/lang/String;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/CameraXConfig;->P:Landroidx/camera/core/impl/Config$Option;

    const-string v0, "camerax.core.appConfig.cameraExecutor"

    const-class v1, Ljava/util/concurrent/Executor;

    invoke-static {v1, v0}, Landroidx/camera/core/impl/Config$Option;->a(Ljava/lang/Class;Ljava/lang/String;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/CameraXConfig;->Q:Landroidx/camera/core/impl/Config$Option;

    const-string v0, "camerax.core.appConfig.schedulerHandler"

    const-class v1, Landroid/os/Handler;

    invoke-static {v1, v0}, Landroidx/camera/core/impl/Config$Option;->a(Ljava/lang/Class;Ljava/lang/String;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/CameraXConfig;->R:Landroidx/camera/core/impl/Config$Option;

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v1, "camerax.core.appConfig.minimumLoggingLevel"

    invoke-static {v0, v1}, Landroidx/camera/core/impl/Config$Option;->a(Ljava/lang/Class;Ljava/lang/String;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v1

    sput-object v1, Landroidx/camera/core/CameraXConfig;->S:Landroidx/camera/core/impl/Config$Option;

    const-string v1, "camerax.core.appConfig.availableCamerasLimiter"

    const-class v2, Landroidx/camera/core/CameraSelector;

    invoke-static {v2, v1}, Landroidx/camera/core/impl/Config$Option;->a(Ljava/lang/Class;Ljava/lang/String;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v1

    sput-object v1, Landroidx/camera/core/CameraXConfig;->T:Landroidx/camera/core/impl/Config$Option;

    const-string v1, "camerax.core.appConfig.cameraOpenRetryMaxTimeoutInMillisWhileResuming"

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Landroidx/camera/core/impl/Config$Option;->a(Ljava/lang/Class;Ljava/lang/String;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v1

    sput-object v1, Landroidx/camera/core/CameraXConfig;->U:Landroidx/camera/core/impl/Config$Option;

    const-string v1, "camerax.core.appConfig.cameraProviderInitRetryPolicy"

    const-class v2, Landroidx/camera/core/RetryPolicy;

    invoke-static {v2, v1}, Landroidx/camera/core/impl/Config$Option;->a(Ljava/lang/Class;Ljava/lang/String;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v1

    sput-object v1, Landroidx/camera/core/CameraXConfig;->V:Landroidx/camera/core/impl/Config$Option;

    const-string v1, "camerax.core.appConfig.quirksSettings"

    const-class v2, Landroidx/camera/core/impl/QuirkSettings;

    invoke-static {v2, v1}, Landroidx/camera/core/impl/Config$Option;->a(Ljava/lang/Class;Ljava/lang/String;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v1

    sput-object v1, Landroidx/camera/core/CameraXConfig;->W:Landroidx/camera/core/impl/Config$Option;

    const-string v1, "camerax.core.appConfig.configImplType"

    invoke-static {v0, v1}, Landroidx/camera/core/impl/Config$Option;->a(Ljava/lang/Class;Ljava/lang/String;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/CameraXConfig;->X:Landroidx/camera/core/impl/Config$Option;

    const-string v0, "camerax.core.appConfig.repeatingStreamForced"

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Landroidx/camera/core/impl/Config$Option;->a(Ljava/lang/Class;Ljava/lang/String;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/CameraXConfig;->Y:Landroidx/camera/core/impl/Config$Option;

    return-void
.end method

.method public constructor <init>(Landroidx/camera/core/impl/OptionsBundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/CameraXConfig;->M:Landroidx/camera/core/impl/OptionsBundle;

    return-void
.end method


# virtual methods
.method public final c0()Landroidx/camera/core/CameraSelector;
    .locals 2

    iget-object p0, p0, Landroidx/camera/core/CameraXConfig;->M:Landroidx/camera/core/impl/OptionsBundle;

    sget-object v0, Landroidx/camera/core/CameraXConfig;->T:Landroidx/camera/core/impl/Config$Option;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/camera/core/impl/OptionsBundle;->f(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/core/CameraSelector;

    return-object p0
.end method

.method public final d0()Landroidx/camera/core/impl/CameraFactory$Provider;
    .locals 2

    iget-object p0, p0, Landroidx/camera/core/CameraXConfig;->M:Landroidx/camera/core/impl/OptionsBundle;

    sget-object v0, Landroidx/camera/core/CameraXConfig;->N:Landroidx/camera/core/impl/Config$Option;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/camera/core/impl/OptionsBundle;->f(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/core/impl/CameraFactory$Provider;

    return-object p0
.end method

.method public final e0()J
    .locals 2

    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object p0, p0, Landroidx/camera/core/CameraXConfig;->M:Landroidx/camera/core/impl/OptionsBundle;

    sget-object v1, Landroidx/camera/core/CameraXConfig;->U:Landroidx/camera/core/impl/Config$Option;

    invoke-virtual {p0, v1, v0}, Landroidx/camera/core/impl/OptionsBundle;->f(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final f0()Landroidx/camera/core/impl/CameraDeviceSurfaceManager$Provider;
    .locals 2

    iget-object p0, p0, Landroidx/camera/core/CameraXConfig;->M:Landroidx/camera/core/impl/OptionsBundle;

    sget-object v0, Landroidx/camera/core/CameraXConfig;->O:Landroidx/camera/core/impl/Config$Option;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/camera/core/impl/OptionsBundle;->f(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/core/impl/CameraDeviceSurfaceManager$Provider;

    return-object p0
.end method

.method public final g0()Landroidx/camera/core/impl/UseCaseConfigFactory$Provider;
    .locals 2

    iget-object p0, p0, Landroidx/camera/core/CameraXConfig;->M:Landroidx/camera/core/impl/OptionsBundle;

    sget-object v0, Landroidx/camera/core/CameraXConfig;->P:Landroidx/camera/core/impl/Config$Option;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/camera/core/impl/OptionsBundle;->f(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/core/impl/UseCaseConfigFactory$Provider;

    return-object p0
.end method

.method public final l()Landroidx/camera/core/impl/Config;
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/CameraXConfig;->M:Landroidx/camera/core/impl/OptionsBundle;

    return-object p0
.end method
