.class public final Lcom/vuitton/android/presentation/databinding/FragmentLightUpProductDetailBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final b:Landroid/widget/RelativeLayout;

.field public final c:Landroid/widget/Button;

.field public final d:Lcom/vuitton/android/presentation/screen/connectivity/views/FixedAspectRatioImageView;

.field public final e:Landroid/widget/RelativeLayout;

.field public final f:Lcom/vuitton/android/presentation/databinding/ToolbarSimpleBinding;

.field public final g:Landroid/widget/LinearLayout;

.field public final h:Landroid/widget/LinearLayout;

.field public final i:Lcom/vuitton/android/presentation/databinding/InAppNotificationBinding;

.field public final j:Landroidx/recyclerview/widget/RecyclerView;

.field public final k:Landroidx/core/widget/NestedScrollView;

.field public final l:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/Button;Lcom/vuitton/android/presentation/screen/connectivity/views/FixedAspectRatioImageView;Landroid/widget/RelativeLayout;Lcom/vuitton/android/presentation/databinding/ToolbarSimpleBinding;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/vuitton/android/presentation/databinding/InAppNotificationBinding;Landroidx/recyclerview/widget/RecyclerView;Landroidx/core/widget/NestedScrollView;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/databinding/FragmentLightUpProductDetailBinding;->b:Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/vuitton/android/presentation/databinding/FragmentLightUpProductDetailBinding;->c:Landroid/widget/Button;

    iput-object p3, p0, Lcom/vuitton/android/presentation/databinding/FragmentLightUpProductDetailBinding;->d:Lcom/vuitton/android/presentation/screen/connectivity/views/FixedAspectRatioImageView;

    iput-object p4, p0, Lcom/vuitton/android/presentation/databinding/FragmentLightUpProductDetailBinding;->e:Landroid/widget/RelativeLayout;

    iput-object p5, p0, Lcom/vuitton/android/presentation/databinding/FragmentLightUpProductDetailBinding;->f:Lcom/vuitton/android/presentation/databinding/ToolbarSimpleBinding;

    iput-object p6, p0, Lcom/vuitton/android/presentation/databinding/FragmentLightUpProductDetailBinding;->g:Landroid/widget/LinearLayout;

    iput-object p7, p0, Lcom/vuitton/android/presentation/databinding/FragmentLightUpProductDetailBinding;->h:Landroid/widget/LinearLayout;

    iput-object p8, p0, Lcom/vuitton/android/presentation/databinding/FragmentLightUpProductDetailBinding;->i:Lcom/vuitton/android/presentation/databinding/InAppNotificationBinding;

    iput-object p9, p0, Lcom/vuitton/android/presentation/databinding/FragmentLightUpProductDetailBinding;->j:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p10, p0, Lcom/vuitton/android/presentation/databinding/FragmentLightUpProductDetailBinding;->k:Landroidx/core/widget/NestedScrollView;

    iput-object p11, p0, Lcom/vuitton/android/presentation/databinding/FragmentLightUpProductDetailBinding;->l:Landroid/widget/TextView;

    return-void
.end method

.method public static a(Landroid/view/View;)Lcom/vuitton/android/presentation/databinding/FragmentLightUpProductDetailBinding;
    .locals 14

    const v0, 0x7f0a00c1

    invoke-static {v0, p0}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/Button;

    const/4 v1, 0x0

    const-string v2, "Missing required view with ID: "

    if-eqz v4, :cond_1

    const v0, 0x7f0a0260

    invoke-static {v0, p0}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/vuitton/android/presentation/screen/connectivity/views/FixedAspectRatioImageView;

    if-eqz v5, :cond_1

    const v0, 0x7f0a028b

    invoke-static {v0, p0}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroid/widget/RelativeLayout;

    if-eqz v6, :cond_1

    const v0, 0x7f0a0299

    invoke-static {v0, p0}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v3}, Lcom/vuitton/android/presentation/databinding/ToolbarSimpleBinding;->a(Landroid/view/View;)Lcom/vuitton/android/presentation/databinding/ToolbarSimpleBinding;

    move-result-object v7

    const v0, 0x7f0a029e

    invoke-static {v0, p0}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_1

    const v0, 0x7f0a02a3

    invoke-static {v0, p0}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_1

    const v0, 0x7f0a02a6

    invoke-static {v0, p0}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    const v0, 0x7f0a032f

    invoke-static {v0, v3}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_0

    const v0, 0x7f0a0332

    invoke-static {v0, v3}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    move-object v11, v10

    new-instance v10, Lcom/vuitton/android/presentation/databinding/InAppNotificationBinding;

    check-cast v3, Landroidx/cardview/widget/CardView;

    invoke-direct {v10, v3, v11}, Lcom/vuitton/android/presentation/databinding/InAppNotificationBinding;-><init>(Landroidx/cardview/widget/CardView;Landroid/widget/TextView;)V

    const v0, 0x7f0a0375

    invoke-static {v0, p0}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    if-eqz v3, :cond_1

    const v0, 0x7f0a038a

    invoke-static {v0, p0}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v11, :cond_1

    const v0, 0x7f0a03b0

    invoke-static {v0, p0}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Landroidx/core/widget/NestedScrollView;

    if-eqz v12, :cond_1

    const v0, 0x7f0a0462

    invoke-static {v0, p0}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    const v0, 0x7f0a0463

    invoke-static {v0, p0}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    const v0, 0x7f0a046d

    invoke-static {v0, p0}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    const v0, 0x7f0a047a

    invoke-static {v0, p0}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    const v0, 0x7f0a047b

    invoke-static {v0, p0}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_1

    new-instance v2, Lcom/vuitton/android/presentation/databinding/FragmentLightUpProductDetailBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    invoke-direct/range {v2 .. v13}, Lcom/vuitton/android/presentation/databinding/FragmentLightUpProductDetailBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/Button;Lcom/vuitton/android/presentation/screen/connectivity/views/FixedAspectRatioImageView;Landroid/widget/RelativeLayout;Lcom/vuitton/android/presentation/databinding/ToolbarSimpleBinding;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/vuitton/android/presentation/databinding/InAppNotificationBinding;Landroidx/recyclerview/widget/RecyclerView;Landroidx/core/widget/NestedScrollView;Landroid/widget/TextView;)V

    return-object v2

    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    return-object v1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    return-object v1
.end method
