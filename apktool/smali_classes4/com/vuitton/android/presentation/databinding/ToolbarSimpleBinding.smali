.class public final Lcom/vuitton/android/presentation/databinding/ToolbarSimpleBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final b:Lcom/google/android/material/appbar/AppBarLayout;

.field public final c:Lcom/vuitton/android/presentation/databinding/ToolbarTitleBinding;


# direct methods
.method public constructor <init>(Lcom/google/android/material/appbar/AppBarLayout;Lcom/vuitton/android/presentation/databinding/ToolbarTitleBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/databinding/ToolbarSimpleBinding;->b:Lcom/google/android/material/appbar/AppBarLayout;

    iput-object p2, p0, Lcom/vuitton/android/presentation/databinding/ToolbarSimpleBinding;->c:Lcom/vuitton/android/presentation/databinding/ToolbarTitleBinding;

    return-void
.end method

.method public static a(Landroid/view/View;)Lcom/vuitton/android/presentation/databinding/ToolbarSimpleBinding;
    .locals 3

    const v0, 0x7f0a0070

    invoke-static {v0, p0}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/vuitton/android/presentation/databinding/ToolbarTitleBinding;->a(Landroid/view/View;)Lcom/vuitton/android/presentation/databinding/ToolbarTitleBinding;

    move-result-object v0

    const v1, 0x7f0a0179

    invoke-static {v1, p0}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v1, Lcom/vuitton/android/presentation/databinding/ToolbarSimpleBinding;

    check-cast p0, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-direct {v1, p0, v0}, Lcom/vuitton/android/presentation/databinding/ToolbarSimpleBinding;-><init>(Lcom/google/android/material/appbar/AppBarLayout;Lcom/vuitton/android/presentation/databinding/ToolbarTitleBinding;)V

    return-object v1

    :cond_0
    move v0, v1

    :cond_1
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
