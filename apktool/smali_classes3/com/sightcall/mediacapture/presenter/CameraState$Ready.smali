.class public final Lcom/sightcall/mediacapture/presenter/CameraState$Ready;
.super Lcom/sightcall/mediacapture/presenter/CameraState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/mediacapture/presenter/CameraState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Ready"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/sightcall/mediacapture/presenter/CameraState$Ready;",
        "Lcom/sightcall/mediacapture/presenter/CameraState;",
        "cameraProvider",
        "Landroidx/camera/lifecycle/ProcessCameraProvider;",
        "cameraSelector",
        "Landroidx/camera/core/CameraSelector;",
        "preview",
        "Landroidx/camera/core/Preview;",
        "useCaseGroup",
        "Landroidx/camera/core/UseCaseGroup;",
        "<init>",
        "(Landroidx/camera/lifecycle/ProcessCameraProvider;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/Preview;Landroidx/camera/core/UseCaseGroup;)V",
        "getCameraProvider",
        "()Landroidx/camera/lifecycle/ProcessCameraProvider;",
        "getCameraSelector",
        "()Landroidx/camera/core/CameraSelector;",
        "getPreview",
        "()Landroidx/camera/core/Preview;",
        "getUseCaseGroup",
        "()Landroidx/camera/core/UseCaseGroup;",
        "lib_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final cameraProvider:Landroidx/camera/lifecycle/ProcessCameraProvider;

.field private final cameraSelector:Landroidx/camera/core/CameraSelector;

.field private final preview:Landroidx/camera/core/Preview;

.field private final useCaseGroup:Landroidx/camera/core/UseCaseGroup;


# direct methods
.method public constructor <init>(Landroidx/camera/lifecycle/ProcessCameraProvider;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/Preview;Landroidx/camera/core/UseCaseGroup;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sightcall/mediacapture/presenter/CameraState;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/sightcall/mediacapture/presenter/CameraState$Ready;->cameraProvider:Landroidx/camera/lifecycle/ProcessCameraProvider;

    iput-object p2, p0, Lcom/sightcall/mediacapture/presenter/CameraState$Ready;->cameraSelector:Landroidx/camera/core/CameraSelector;

    iput-object p3, p0, Lcom/sightcall/mediacapture/presenter/CameraState$Ready;->preview:Landroidx/camera/core/Preview;

    iput-object p4, p0, Lcom/sightcall/mediacapture/presenter/CameraState$Ready;->useCaseGroup:Landroidx/camera/core/UseCaseGroup;

    return-void
.end method


# virtual methods
.method public final getCameraProvider()Landroidx/camera/lifecycle/ProcessCameraProvider;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/CameraState$Ready;->cameraProvider:Landroidx/camera/lifecycle/ProcessCameraProvider;

    return-object p0
.end method

.method public final getCameraSelector()Landroidx/camera/core/CameraSelector;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/CameraState$Ready;->cameraSelector:Landroidx/camera/core/CameraSelector;

    return-object p0
.end method

.method public final getPreview()Landroidx/camera/core/Preview;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/CameraState$Ready;->preview:Landroidx/camera/core/Preview;

    return-object p0
.end method

.method public final getUseCaseGroup()Landroidx/camera/core/UseCaseGroup;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/CameraState$Ready;->useCaseGroup:Landroidx/camera/core/UseCaseGroup;

    return-object p0
.end method
