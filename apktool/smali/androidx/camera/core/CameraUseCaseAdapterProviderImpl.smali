.class public final Landroidx/camera/core/CameraUseCaseAdapterProviderImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/CameraUseCaseAdapterProvider;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Landroidx/camera/core/CameraUseCaseAdapterProviderImpl;",
        "Landroidx/camera/core/CameraUseCaseAdapterProvider;",
        "Landroidx/camera/core/impl/CameraRepository;",
        "cameraRepository",
        "Landroidx/camera/core/concurrent/CameraCoordinator;",
        "cameraCoordinator",
        "Landroidx/camera/core/impl/UseCaseConfigFactory;",
        "useCaseConfigFactory",
        "Landroidx/camera/core/internal/StreamSpecsCalculator;",
        "streamSpecsCalculator",
        "<init>",
        "(Landroidx/camera/core/impl/CameraRepository;Landroidx/camera/core/concurrent/CameraCoordinator;Landroidx/camera/core/impl/UseCaseConfigFactory;Landroidx/camera/core/internal/StreamSpecsCalculator;)V",
        "camera-core_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Landroidx/camera/core/impl/CameraRepository;

.field public final b:Landroidx/camera/core/concurrent/CameraCoordinator;

.field public final c:Landroidx/camera/core/impl/UseCaseConfigFactory;

.field public final d:Landroidx/camera/core/internal/StreamSpecsCalculator;


# direct methods
.method public constructor <init>(Landroidx/camera/core/impl/CameraRepository;Landroidx/camera/core/concurrent/CameraCoordinator;Landroidx/camera/core/impl/UseCaseConfigFactory;Landroidx/camera/core/internal/StreamSpecsCalculator;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/CameraUseCaseAdapterProviderImpl;->a:Landroidx/camera/core/impl/CameraRepository;

    iput-object p2, p0, Landroidx/camera/core/CameraUseCaseAdapterProviderImpl;->b:Landroidx/camera/core/concurrent/CameraCoordinator;

    iput-object p3, p0, Landroidx/camera/core/CameraUseCaseAdapterProviderImpl;->c:Landroidx/camera/core/impl/UseCaseConfigFactory;

    iput-object p4, p0, Landroidx/camera/core/CameraUseCaseAdapterProviderImpl;->d:Landroidx/camera/core/internal/StreamSpecsCalculator;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroidx/camera/core/internal/CameraUseCaseAdapter;
    .locals 11

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/core/CameraUseCaseAdapterProviderImpl;->a:Landroidx/camera/core/impl/CameraRepository;

    invoke-virtual {v0, p1}, Landroidx/camera/core/impl/CameraRepository;->f(Ljava/lang/String;)Landroidx/camera/core/impl/CameraInternal;

    move-result-object v2

    new-instance v4, Landroidx/camera/core/impl/AdapterCameraInfo;

    invoke-interface {v2}, Landroidx/camera/core/impl/CameraInternal;->k()Landroidx/camera/core/impl/CameraInfoInternal;

    move-result-object p1

    sget-object v0, Landroidx/camera/core/impl/CameraConfigs;->a:Landroidx/camera/core/impl/CameraConfig;

    invoke-direct {v4, p1, v0}, Landroidx/camera/core/impl/AdapterCameraInfo;-><init>(Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/core/impl/CameraConfig;)V

    sget-object v6, Landroidx/camera/core/CompositionSettings;->c:Landroidx/camera/core/CompositionSettings;

    new-instance v1, Landroidx/camera/core/internal/CameraUseCaseAdapter;

    iget-object v9, p0, Landroidx/camera/core/CameraUseCaseAdapterProviderImpl;->d:Landroidx/camera/core/internal/StreamSpecsCalculator;

    iget-object v10, p0, Landroidx/camera/core/CameraUseCaseAdapterProviderImpl;->c:Landroidx/camera/core/impl/UseCaseConfigFactory;

    const/4 v3, 0x0

    const/4 v5, 0x0

    iget-object v8, p0, Landroidx/camera/core/CameraUseCaseAdapterProviderImpl;->b:Landroidx/camera/core/concurrent/CameraCoordinator;

    move-object v7, v6

    invoke-direct/range {v1 .. v10}, Landroidx/camera/core/internal/CameraUseCaseAdapter;-><init>(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/AdapterCameraInfo;Landroidx/camera/core/impl/AdapterCameraInfo;Landroidx/camera/core/CompositionSettings;Landroidx/camera/core/CompositionSettings;Landroidx/camera/core/concurrent/CameraCoordinator;Landroidx/camera/core/internal/StreamSpecsCalculator;Landroidx/camera/core/impl/UseCaseConfigFactory;)V

    return-object v1
.end method
