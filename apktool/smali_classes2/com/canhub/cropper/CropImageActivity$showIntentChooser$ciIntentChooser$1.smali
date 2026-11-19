.class public final Lcom/canhub/cropper/CropImageActivity$showIntentChooser$ciIntentChooser$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/canhub/cropper/CropImageIntentChooser$ResultCallback;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/canhub/cropper/CropImageActivity$showIntentChooser$ciIntentChooser$1",
        "Lcom/canhub/cropper/CropImageIntentChooser$ResultCallback;",
        "cropper_release"
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
.field public final synthetic a:Lcom/canhub/cropper/CropImageActivity;


# direct methods
.method public constructor <init>(Lcom/canhub/cropper/CropImageActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/canhub/cropper/CropImageActivity$showIntentChooser$ciIntentChooser$1;->a:Lcom/canhub/cropper/CropImageActivity;

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)V
    .locals 0

    iget-object p0, p0, Lcom/canhub/cropper/CropImageActivity$showIntentChooser$ciIntentChooser$1;->a:Lcom/canhub/cropper/CropImageActivity;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageActivity;->x()V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/canhub/cropper/CropImageActivity;->i:Landroid/net/Uri;

    iget-object p0, p0, Lcom/canhub/cropper/CropImageActivity;->k:Lcom/canhub/cropper/CropImageView;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/canhub/cropper/CropImageView;->setImageUriAsync(Landroid/net/Uri;)V

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 0

    iget-object p0, p0, Lcom/canhub/cropper/CropImageActivity$showIntentChooser$ciIntentChooser$1;->a:Lcom/canhub/cropper/CropImageActivity;

    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageActivity;->x()V

    return-void
.end method
