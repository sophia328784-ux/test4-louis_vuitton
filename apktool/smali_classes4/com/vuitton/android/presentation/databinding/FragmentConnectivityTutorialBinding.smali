.class public final Lcom/vuitton/android/presentation/databinding/FragmentConnectivityTutorialBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final b:Lcom/vuitton/android/presentation/databinding/ToolbarSimpleBinding;

.field public final c:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/databinding/ToolbarSimpleBinding;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/databinding/FragmentConnectivityTutorialBinding;->b:Lcom/vuitton/android/presentation/databinding/ToolbarSimpleBinding;

    iput-object p2, p0, Lcom/vuitton/android/presentation/databinding/FragmentConnectivityTutorialBinding;->c:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public static a(Landroid/view/View;)Lcom/vuitton/android/presentation/databinding/FragmentConnectivityTutorialBinding;
    .locals 3

    const v0, 0x7f0a02a4

    invoke-static {v0, p0}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/vuitton/android/presentation/databinding/ToolbarSimpleBinding;->a(Landroid/view/View;)Lcom/vuitton/android/presentation/databinding/ToolbarSimpleBinding;

    move-result-object v0

    const v1, 0x7f0a038b

    invoke-static {v1, p0}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_0

    new-instance v1, Lcom/vuitton/android/presentation/databinding/FragmentConnectivityTutorialBinding;

    check-cast p0, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0, v2}, Lcom/vuitton/android/presentation/databinding/FragmentConnectivityTutorialBinding;-><init>(Lcom/vuitton/android/presentation/databinding/ToolbarSimpleBinding;Landroidx/recyclerview/widget/RecyclerView;)V

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
