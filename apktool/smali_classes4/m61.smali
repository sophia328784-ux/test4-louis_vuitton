.class public final synthetic Lm61;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;I)V
    .locals 0

    iput p2, p0, Lm61;->b:I

    iput-object p1, p0, Lm61;->c:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lm61;->b:I

    const/16 v1, 0x30

    const/4 v2, 0x0

    iget-object v3, p0, Lm61;->c:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sget-object v0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->n1:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$Companion;

    and-int/lit8 v0, p2, 0x3

    if-eq v0, v4, :cond_0

    move v6, v5

    :cond_0
    and-int/2addr p2, v5

    invoke-interface {p1, p2, v6}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v1, p0, Lm61;->c:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->T()Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;

    move-result-object p0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;->x:Lkotlinx/coroutines/flow/StateFlow;

    invoke-static {p0, p1}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v4

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->P()Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;->b:Lcom/vuitton/android/presentation/databinding/ToolbarWebViewBinding;

    iget-object p0, p0, Lcom/vuitton/android/presentation/databinding/ToolbarWebViewBinding;->b:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->P()Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/webview/WebViewUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewUiModel;->a:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;->a:Z

    if-eqz p0, :cond_1

    const p0, 0x56287a3d

    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->L(I)V

    new-instance v0, Ldh;

    const/4 v5, 0x7

    invoke-direct/range {v0 .. v5}, Ldh;-><init>(Ljava/lang/Object;IILjava/lang/Object;I)V

    const p0, 0x1893e0e5

    invoke-static {p0, v0, p1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object p0

    const/4 p2, 0x6

    invoke-static {p0, p1, p2}, Lcom/vuitton/android/presentation/compose/components/compositionlocalprovider/LVCheckoutLocalProviderKt;->a(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_0

    :cond_1
    const p0, 0x563263e1

    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sget-object p2, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->n1:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$Companion;

    and-int/lit8 p2, p0, 0x3

    if-eq p2, v4, :cond_3

    move p2, v5

    goto :goto_1

    :cond_3
    move p2, v6

    :goto_1
    and-int/2addr p0, v5

    invoke-interface {p1, p0, p2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance p0, Lcom/vuitton/android/presentation/screen/webview/a;

    invoke-direct {p0, v3, v6}, Lcom/vuitton/android/presentation/screen/webview/a;-><init>(Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;I)V

    const p2, 0x5f280725

    invoke-static {p2, p0, p1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object p0

    invoke-static {v2, p0, p1, v1}, Lcom/vuitton/android/designkit/ui/theme/ThemeKt;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto :goto_2

    :cond_4
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sget-object p2, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->n1:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$Companion;

    and-int/lit8 p2, p0, 0x3

    if-eq p2, v4, :cond_5

    move v6, v5

    :cond_5
    and-int/2addr p0, v5

    invoke-interface {p1, p0, v6}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance p0, Lm61;

    const/4 p2, 0x4

    invoke-direct {p0, v3, p2}, Lm61;-><init>(Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;I)V

    const p2, -0x3ba014df

    invoke-static {p2, p0, p1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object p0

    invoke-static {v2, p0, p1, v1}, Lcom/vuitton/android/designkit/ui/theme/ThemeKt;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto :goto_3

    :cond_6
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sget-object p2, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->n1:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$Companion;

    and-int/lit8 p2, p0, 0x3

    if-eq p2, v4, :cond_7

    move v6, v5

    :cond_7
    and-int/2addr p0, v5

    invoke-interface {p1, p0, v6}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p0

    if-eqz p0, :cond_8

    sget-object p0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance p0, Lcom/vuitton/android/presentation/screen/webview/a;

    invoke-direct {p0, v3, v5}, Lcom/vuitton/android/presentation/screen/webview/a;-><init>(Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;I)V

    const p2, -0x5a93f5b4

    invoke-static {p2, p0, p1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object p0

    invoke-static {v2, p0, p1, v1}, Lcom/vuitton/android/designkit/ui/theme/ThemeKt;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto :goto_4

    :cond_8
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sget-object p2, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->n1:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$Companion;

    and-int/lit8 p2, p0, 0x3

    if-eq p2, v4, :cond_9

    move v6, v5

    :cond_9
    and-int/2addr p0, v5

    invoke-interface {p1, p0, v6}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p0

    if-eqz p0, :cond_a

    sget-object p0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance p0, Lcom/vuitton/android/presentation/screen/webview/a;

    invoke-direct {p0, v3, v4}, Lcom/vuitton/android/presentation/screen/webview/a;-><init>(Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;I)V

    const p2, 0x6e3a1810

    invoke-static {p2, p0, p1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object p0

    invoke-static {v2, p0, p1, v1}, Lcom/vuitton/android/designkit/ui/theme/ThemeKt;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto :goto_5

    :cond_a
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
