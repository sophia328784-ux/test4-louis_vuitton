.class public final Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final cancel:Lcom/google/android/material/button/MaterialButton;

.field public final currentTime:Lcom/google/android/material/textview/MaterialTextView;

.field public final mainAction:Lcom/google/android/material/button/MaterialButton;

.field public final preview:Landroidx/appcompat/widget/AppCompatImageView;

.field public final progressBar:Landroid/widget/ProgressBar;

.field public final progressLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final remainingTime:Lcom/google/android/material/textview/MaterialTextView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final send:Lcom/google/android/material/button/MaterialButton;

.field public final timeSlider:Lcom/google/android/material/slider/Slider;

.field public final timelineLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final videoView:Landroid/widget/VideoView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/textview/MaterialTextView;Lcom/google/android/material/button/MaterialButton;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/ProgressBar;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/material/textview/MaterialTextView;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/slider/Slider;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/VideoView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;->cancel:Lcom/google/android/material/button/MaterialButton;

    iput-object p3, p0, Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;->currentTime:Lcom/google/android/material/textview/MaterialTextView;

    iput-object p4, p0, Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;->mainAction:Lcom/google/android/material/button/MaterialButton;

    iput-object p5, p0, Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;->preview:Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p6, p0, Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;->progressBar:Landroid/widget/ProgressBar;

    iput-object p7, p0, Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;->progressLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p8, p0, Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;->remainingTime:Lcom/google/android/material/textview/MaterialTextView;

    iput-object p9, p0, Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;->send:Lcom/google/android/material/button/MaterialButton;

    iput-object p10, p0, Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;->timeSlider:Lcom/google/android/material/slider/Slider;

    iput-object p11, p0, Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;->timelineLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p12, p0, Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;->videoView:Landroid/widget/VideoView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;
    .locals 15

    sget v0, Lcom/sightcall/mediacapture/R$id;->cancel:I

    invoke-static {v0, p0}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/google/android/material/button/MaterialButton;

    if-eqz v4, :cond_0

    sget v0, Lcom/sightcall/mediacapture/R$id;->currentTime:I

    invoke-static {v0, p0}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/google/android/material/textview/MaterialTextView;

    if-eqz v5, :cond_0

    sget v0, Lcom/sightcall/mediacapture/R$id;->mainAction:I

    invoke-static {v0, p0}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/google/android/material/button/MaterialButton;

    if-eqz v6, :cond_0

    sget v0, Lcom/sightcall/mediacapture/R$id;->preview:I

    invoke-static {v0, p0}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v7, :cond_0

    sget v0, Lcom/sightcall/mediacapture/R$id;->progressBar:I

    invoke-static {v0, p0}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/ProgressBar;

    if-eqz v8, :cond_0

    sget v0, Lcom/sightcall/mediacapture/R$id;->progressLayout:I

    invoke-static {v0, p0}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v9, :cond_0

    sget v0, Lcom/sightcall/mediacapture/R$id;->remainingTime:I

    invoke-static {v0, p0}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/google/android/material/textview/MaterialTextView;

    if-eqz v10, :cond_0

    sget v0, Lcom/sightcall/mediacapture/R$id;->send:I

    invoke-static {v0, p0}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/google/android/material/button/MaterialButton;

    if-eqz v11, :cond_0

    sget v0, Lcom/sightcall/mediacapture/R$id;->timeSlider:I

    invoke-static {v0, p0}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/google/android/material/slider/Slider;

    if-eqz v12, :cond_0

    sget v0, Lcom/sightcall/mediacapture/R$id;->timelineLayout:I

    invoke-static {v0, p0}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v13, :cond_0

    sget v0, Lcom/sightcall/mediacapture/R$id;->videoView:I

    invoke-static {v0, p0}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/widget/VideoView;

    if-eqz v14, :cond_0

    new-instance v2, Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v2 .. v14}, Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/textview/MaterialTextView;Lcom/google/android/material/button/MaterialButton;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/ProgressBar;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/material/textview/MaterialTextView;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/slider/Slider;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/VideoView;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 17
    invoke-static {p0, v0, v1}, Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;
    .locals 2

    sget v0, Lcom/sightcall/mediacapture/R$layout;->fragment_preview:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;->bind(Landroid/view/View;)Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method
