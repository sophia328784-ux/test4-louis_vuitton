.class Landroidx/camera/core/impl/UseCaseConfig$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/imagecapture/TakePictureManager$Provider;


# instance fields
.field public final synthetic a:Landroidx/camera/core/impl/UseCaseConfig;


# direct methods
.method public constructor <init>(Landroidx/camera/core/impl/UseCaseConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/impl/UseCaseConfig$1;->a:Landroidx/camera/core/impl/UseCaseConfig;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/camera/core/imagecapture/ImageCaptureControl;)Landroidx/camera/core/imagecapture/TakePictureManagerImpl;
    .locals 0

    new-instance p0, Landroidx/camera/core/imagecapture/TakePictureManagerImpl;

    invoke-direct {p0, p1}, Landroidx/camera/core/imagecapture/TakePictureManagerImpl;-><init>(Landroidx/camera/core/imagecapture/ImageCaptureControl;)V

    return-object p0
.end method
