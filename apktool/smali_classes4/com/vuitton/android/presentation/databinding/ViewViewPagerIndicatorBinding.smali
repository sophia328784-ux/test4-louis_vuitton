.class public final Lcom/vuitton/android/presentation/databinding/ViewViewPagerIndicatorBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final b:Landroid/view/View;

.field public final c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/views/ViewPagerIndicator;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vuitton/android/presentation/databinding/ViewViewPagerIndicatorBinding;->b:Landroid/view/View;

    iput-object p3, p0, Lcom/vuitton/android/presentation/databinding/ViewViewPagerIndicatorBinding;->c:Landroid/view/View;

    return-void
.end method

.method public static a(Landroid/view/LayoutInflater;Lcom/vuitton/android/presentation/screen/connectivity/views/ViewPagerIndicator;)Lcom/vuitton/android/presentation/databinding/ViewViewPagerIndicatorBinding;
    .locals 2

    const v0, 0x7f0d0137

    invoke-virtual {p0, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const p0, 0x7f0a0271

    invoke-static {p0, p1}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const p0, 0x7f0a0272

    invoke-static {p0, p1}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance p0, Lcom/vuitton/android/presentation/databinding/ViewViewPagerIndicatorBinding;

    invoke-direct {p0, p1, v0, v1}, Lcom/vuitton/android/presentation/databinding/ViewViewPagerIndicatorBinding;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/views/ViewPagerIndicator;Landroid/view/View;Landroid/view/View;)V

    return-object p0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Missing required view with ID: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
