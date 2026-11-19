.class public final Lcom/vuitton/android/presentation/databinding/FragmentImageCropBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final b:Landroid/widget/FrameLayout;

.field public final c:Landroid/widget/ImageView;

.field public final d:Lcom/canhub/cropper/CropImageView;


# direct methods
.method public constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/ImageView;Lcom/canhub/cropper/CropImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/databinding/FragmentImageCropBinding;->b:Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/vuitton/android/presentation/databinding/FragmentImageCropBinding;->c:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/vuitton/android/presentation/databinding/FragmentImageCropBinding;->d:Lcom/canhub/cropper/CropImageView;

    return-void
.end method
