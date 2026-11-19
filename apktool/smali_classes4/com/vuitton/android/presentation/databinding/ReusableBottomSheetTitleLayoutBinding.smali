.class public final Lcom/vuitton/android/presentation/databinding/ReusableBottomSheetTitleLayoutBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final b:Landroid/view/View;

.field public final c:Landroid/widget/ImageView;

.field public final d:Landroid/widget/TextView;

.field public final e:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/databinding/ReusableBottomSheetTitleLayoutBinding;->b:Landroid/view/View;

    iput-object p2, p0, Lcom/vuitton/android/presentation/databinding/ReusableBottomSheetTitleLayoutBinding;->c:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/vuitton/android/presentation/databinding/ReusableBottomSheetTitleLayoutBinding;->d:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/vuitton/android/presentation/databinding/ReusableBottomSheetTitleLayoutBinding;->e:Landroid/view/View;

    return-void
.end method

.method public static a(Landroid/view/View;)Lcom/vuitton/android/presentation/databinding/ReusableBottomSheetTitleLayoutBinding;
    .locals 5

    const v0, 0x7f0a0229

    invoke-static {v0, p0}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const v0, 0x7f0a024e

    invoke-static {v0, p0}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    const v0, 0x7f0a0461

    invoke-static {v0, p0}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    const v0, 0x7f0a0522

    invoke-static {v0, p0}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v0, Lcom/vuitton/android/presentation/databinding/ReusableBottomSheetTitleLayoutBinding;

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vuitton/android/presentation/databinding/ReusableBottomSheetTitleLayoutBinding;-><init>(Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/view/View;)V

    return-object v0

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
