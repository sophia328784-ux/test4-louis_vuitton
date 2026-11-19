.class public final Lcom/sightcall/mediacapture/databinding/FragmentMediaCaptureBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final container:Landroid/widget/FrameLayout;

.field private final rootView:Landroid/widget/FrameLayout;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/mediacapture/databinding/FragmentMediaCaptureBinding;->rootView:Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/sightcall/mediacapture/databinding/FragmentMediaCaptureBinding;->container:Landroid/widget/FrameLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/sightcall/mediacapture/databinding/FragmentMediaCaptureBinding;
    .locals 1

    if-eqz p0, :cond_0

    check-cast p0, Landroid/widget/FrameLayout;

    new-instance v0, Lcom/sightcall/mediacapture/databinding/FragmentMediaCaptureBinding;

    invoke-direct {v0, p0, p0}, Lcom/sightcall/mediacapture/databinding/FragmentMediaCaptureBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V

    return-object v0

    :cond_0
    const-string p0, "rootView"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/sightcall/mediacapture/databinding/FragmentMediaCaptureBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 17
    invoke-static {p0, v0, v1}, Lcom/sightcall/mediacapture/databinding/FragmentMediaCaptureBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/sightcall/mediacapture/databinding/FragmentMediaCaptureBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/sightcall/mediacapture/databinding/FragmentMediaCaptureBinding;
    .locals 2

    sget v0, Lcom/sightcall/mediacapture/R$layout;->fragment_media_capture:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/sightcall/mediacapture/databinding/FragmentMediaCaptureBinding;->bind(Landroid/view/View;)Lcom/sightcall/mediacapture/databinding/FragmentMediaCaptureBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/sightcall/mediacapture/databinding/FragmentMediaCaptureBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/sightcall/mediacapture/databinding/FragmentMediaCaptureBinding;->rootView:Landroid/widget/FrameLayout;

    return-object p0
.end method
