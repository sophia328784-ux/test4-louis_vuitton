.class public final Lcom/sightcall/mediacapture/databinding/FragmentCameraBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final back:Lcom/google/android/material/button/MaterialButton;

.field public final cameraPreview:Landroidx/camera/view/PreviewView;

.field public final circularProgressIndicator:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

.field public final collimatorView:Lcom/sightcall/mediacapture/presenter/views/collimator/CollimatorView;

.field public final flashlight:Lcom/google/android/material/button/MaterialButton;

.field public final mainAction:Lcom/google/android/material/button/MaterialButton;

.field public final maskView:Lcom/sightcall/graphik/MaskView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final switchCamera:Lcom/google/android/material/button/MaterialButton;

.field public final timer:Lcom/google/android/material/chip/Chip;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/material/button/MaterialButton;Landroidx/camera/view/PreviewView;Lcom/google/android/material/progressindicator/CircularProgressIndicator;Lcom/sightcall/mediacapture/presenter/views/collimator/CollimatorView;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/sightcall/graphik/MaskView;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/chip/Chip;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/mediacapture/databinding/FragmentCameraBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lcom/sightcall/mediacapture/databinding/FragmentCameraBinding;->back:Lcom/google/android/material/button/MaterialButton;

    iput-object p3, p0, Lcom/sightcall/mediacapture/databinding/FragmentCameraBinding;->cameraPreview:Landroidx/camera/view/PreviewView;

    iput-object p4, p0, Lcom/sightcall/mediacapture/databinding/FragmentCameraBinding;->circularProgressIndicator:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    iput-object p5, p0, Lcom/sightcall/mediacapture/databinding/FragmentCameraBinding;->collimatorView:Lcom/sightcall/mediacapture/presenter/views/collimator/CollimatorView;

    iput-object p6, p0, Lcom/sightcall/mediacapture/databinding/FragmentCameraBinding;->flashlight:Lcom/google/android/material/button/MaterialButton;

    iput-object p7, p0, Lcom/sightcall/mediacapture/databinding/FragmentCameraBinding;->mainAction:Lcom/google/android/material/button/MaterialButton;

    iput-object p8, p0, Lcom/sightcall/mediacapture/databinding/FragmentCameraBinding;->maskView:Lcom/sightcall/graphik/MaskView;

    iput-object p9, p0, Lcom/sightcall/mediacapture/databinding/FragmentCameraBinding;->switchCamera:Lcom/google/android/material/button/MaterialButton;

    iput-object p10, p0, Lcom/sightcall/mediacapture/databinding/FragmentCameraBinding;->timer:Lcom/google/android/material/chip/Chip;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/sightcall/mediacapture/databinding/FragmentCameraBinding;
    .locals 13

    sget v0, Lcom/sightcall/mediacapture/R$id;->back:I

    invoke-static {v0, p0}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/google/android/material/button/MaterialButton;

    if-eqz v4, :cond_0

    sget v0, Lcom/sightcall/mediacapture/R$id;->cameraPreview:I

    invoke-static {v0, p0}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/camera/view/PreviewView;

    if-eqz v5, :cond_0

    sget v0, Lcom/sightcall/mediacapture/R$id;->circularProgressIndicator:I

    invoke-static {v0, p0}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    if-eqz v6, :cond_0

    sget v0, Lcom/sightcall/mediacapture/R$id;->collimatorView:I

    invoke-static {v0, p0}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/sightcall/mediacapture/presenter/views/collimator/CollimatorView;

    sget v0, Lcom/sightcall/mediacapture/R$id;->flashlight:I

    invoke-static {v0, p0}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/google/android/material/button/MaterialButton;

    if-eqz v8, :cond_0

    sget v0, Lcom/sightcall/mediacapture/R$id;->mainAction:I

    invoke-static {v0, p0}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/google/android/material/button/MaterialButton;

    if-eqz v9, :cond_0

    sget v0, Lcom/sightcall/mediacapture/R$id;->maskView:I

    invoke-static {v0, p0}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/sightcall/graphik/MaskView;

    sget v0, Lcom/sightcall/mediacapture/R$id;->switchCamera:I

    invoke-static {v0, p0}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/google/android/material/button/MaterialButton;

    if-eqz v11, :cond_0

    sget v0, Lcom/sightcall/mediacapture/R$id;->timer:I

    invoke-static {v0, p0}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/google/android/material/chip/Chip;

    if-eqz v12, :cond_0

    new-instance v2, Lcom/sightcall/mediacapture/databinding/FragmentCameraBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v2 .. v12}, Lcom/sightcall/mediacapture/databinding/FragmentCameraBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/material/button/MaterialButton;Landroidx/camera/view/PreviewView;Lcom/google/android/material/progressindicator/CircularProgressIndicator;Lcom/sightcall/mediacapture/presenter/views/collimator/CollimatorView;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/sightcall/graphik/MaskView;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/chip/Chip;)V

    return-object v2

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Missing required view with ID: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/sightcall/mediacapture/databinding/FragmentCameraBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 17
    invoke-static {p0, v0, v1}, Lcom/sightcall/mediacapture/databinding/FragmentCameraBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/sightcall/mediacapture/databinding/FragmentCameraBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/sightcall/mediacapture/databinding/FragmentCameraBinding;
    .locals 2

    sget v0, Lcom/sightcall/mediacapture/R$layout;->fragment_camera:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/sightcall/mediacapture/databinding/FragmentCameraBinding;->bind(Landroid/view/View;)Lcom/sightcall/mediacapture/databinding/FragmentCameraBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/sightcall/mediacapture/databinding/FragmentCameraBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/sightcall/mediacapture/databinding/FragmentCameraBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method
