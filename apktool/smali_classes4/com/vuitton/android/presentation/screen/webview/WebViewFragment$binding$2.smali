.class final synthetic Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$binding$2;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/view/View;",
        "Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final b:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$binding$2;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$binding$2;

    const-string v4, "bind(Landroid/view/View;)Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;"

    const/4 v5, 0x0

    const/4 v1, 0x1

    const-class v2, Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;

    const-string v3, "bind"

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$binding$2;->b:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$binding$2;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, 0x7f0a02a4

    invoke-static {p0, p1}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "Missing required view with ID: "

    if-eqz v0, :cond_1

    const p0, 0x7f0a04a7

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/Toolbar;

    if-eqz v3, :cond_0

    const p0, 0x7f0a04a8

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    const p0, 0x7f0a04a9

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v4, :cond_0

    new-instance v6, Lcom/vuitton/android/presentation/databinding/ToolbarWebViewBinding;

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-direct {v6, v0, v3}, Lcom/vuitton/android/presentation/databinding/ToolbarWebViewBinding;-><init>(Lcom/google/android/material/appbar/AppBarLayout;Landroidx/appcompat/widget/Toolbar;)V

    const p0, 0x7f0a02ae

    invoke-static {p0, p1}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/Button;

    if-eqz v7, :cond_1

    const p0, 0x7f0a0375

    invoke-static {p0, p1}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/ProgressBar;

    if-eqz v8, :cond_1

    move-object v9, p1

    check-cast v9, Landroidx/constraintlayout/widget/ConstraintLayout;

    const p0, 0x7f0a055c

    invoke-static {p0, p1}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/webkit/WebView;

    if-eqz v10, :cond_1

    const p0, 0x7f0a055d

    invoke-static {p0, p1}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_1

    const p0, 0x7f0a055e

    invoke-static {p0, p1}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/FrameLayout;

    if-eqz v12, :cond_1

    new-instance v5, Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;

    invoke-direct/range {v5 .. v12}, Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;-><init>(Lcom/vuitton/android/presentation/databinding/ToolbarWebViewBinding;Landroid/widget/Button;Landroid/widget/ProgressBar;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/webkit/WebView;Landroid/view/View;Landroid/widget/FrameLayout;)V

    return-object v5

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    return-object v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    return-object v1
.end method
