.class public final Lcom/vuitton/android/presentation/screen/imagepicker/ImagePickerFragment$onViewCreated$4;
.super Lcom/otaliastudios/cameraview/CameraListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vuitton/android/presentation/screen/imagepicker/ImagePickerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/vuitton/android/presentation/screen/imagepicker/ImagePickerFragment$onViewCreated$4",
        "Lcom/otaliastudios/cameraview/CameraListener;",
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


# instance fields
.field public final synthetic a:Lcom/vuitton/android/presentation/screen/imagepicker/ImagePickerFragment;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/imagepicker/ImagePickerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/imagepicker/ImagePickerFragment$onViewCreated$4;->a:Lcom/vuitton/android/presentation/screen/imagepicker/ImagePickerFragment;

    invoke-direct {p0}, Lcom/otaliastudios/cameraview/CameraListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/otaliastudios/cameraview/PictureResult;)V
    .locals 3

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/imagepicker/ImagePickerFragment$onViewCreated$4;->a:Lcom/vuitton/android/presentation/screen/imagepicker/ImagePickerFragment;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/imagepicker/ImagePickerFragment;->G:Ljava/io/File;

    if-eqz v0, :cond_0

    new-instance v1, Lfw;

    const/16 v2, 0x9

    invoke-direct {v1, p0, v2}, Lfw;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0, v1}, Lcom/otaliastudios/cameraview/PictureResult;->a(Ljava/io/File;Lfw;)V

    return-void

    :cond_0
    const-string p0, "file"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
