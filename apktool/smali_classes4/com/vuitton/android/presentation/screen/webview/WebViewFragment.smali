.class public final Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;
.super Lcom/vuitton/android/presentation/screen/webview/Hilt_WebViewFragment;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/main/OnBackPressedListener;


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$Companion;,
        Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$LVWebChromeClient;,
        Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$LVWebViewClient;,
        Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0003\u000c\r\u000eB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J!\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0013\u00b2\u0006\u000c\u0010\u0010\u001a\u00020\u000f8\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0010\u001a\u00020\u000f8\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0012\u001a\u00020\u00118\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0010\u001a\u00020\u000f8\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0012\u001a\u00020\u00118\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Lcom/vuitton/android/presentation/screen/main/OnBackPressedListener;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Companion",
        "LVWebChromeClient",
        "LVWebViewClient",
        "",
        "showBottomSheet",
        "Lcom/vuitton/android/presentation/screen/webview/WebViewUiModel;",
        "viewState",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final n1:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$Companion;

.field public static final synthetic o1:[Lkotlin/reflect/KProperty;

.field public static final p1:Ljava/lang/String;


# instance fields
.field public final F:Landroidx/lifecycle/ViewModelLazy;

.field public G:Ldagger/Lazy;

.field public H:Ldagger/Lazy;

.field public I:Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;

.field public J:Lcom/vuitton/android/core/events/LVEventSender;

.field public K:Lcom/vuitton/foundation/logger/Logger;

.field public L:Lkotlinx/serialization/json/Json;

.field public M:Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;

.field public N:Lcom/vuitton/android/presentation/security/AkamaiSecurityHelper;

.field public O:Lcom/vuitton/android/presentation/link/LinkHandler;

.field public P:Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;

.field public Q:Lcom/vuitton/android/presentation/chat/ChatAttachable;

.field public R:Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;

.field public S:Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;

.field public final T:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

.field public final V:Lkotlin/Lazy;

.field public final W:Lkotlin/Lazy;

.field public final X:Lkotlin/Lazy;

.field public final Y:Lkotlin/Lazy;

.field public final Z:Lkotlin/Lazy;

.field public final b1:Lkotlin/Lazy;

.field public final c1:Lkotlin/Lazy;

.field public final d1:Lkotlin/Lazy;

.field public final e1:Lkotlin/Lazy;

.field public final f1:Lkotlin/Lazy;

.field public g1:Z

.field public final h0:Lkotlin/Lazy;

.field public h1:Z

.field public i1:Z

.field public j1:Ljava/lang/String;

.field public final k1:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final l1:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final m1:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final t0:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v1, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->h(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    aput-object v0, v1, v4

    sput-object v1, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->o1:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->n1:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$Companion;

    const-string v0, "WebViewFragment"

    sput-object v0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->p1:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const v0, 0x7f0d0090

    invoke-direct {p0, v0}, Lcom/vuitton/android/presentation/screen/webview/Hilt_WebViewFragment;-><init>(I)V

    new-instance v0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v2, v0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const-class v1, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;

    sget-object v2, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v2, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v2, v0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    new-instance v3, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$special$$inlined$viewModels$default$4;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    new-instance v4, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$special$$inlined$viewModels$default$5;

    invoke-direct {v4, p0, v0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    new-instance v0, Landroidx/lifecycle/ViewModelLazy;

    invoke-direct {v0, v1, v2, v4, v3}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->F:Landroidx/lifecycle/ViewModelLazy;

    sget-object v0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$binding$2;->b:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$binding$2;

    invoke-static {p0, v0}, Lcom/vuitton/android/presentation/extensions/FragmentExtKt;->d(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->T:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    new-instance v0, Ll61;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Ll61;-><init>(Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->V:Lkotlin/Lazy;

    new-instance v0, Ll61;

    const/16 v1, 0x11

    invoke-direct {v0, p0, v1}, Ll61;-><init>(Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->W:Lkotlin/Lazy;

    new-instance v0, Ll61;

    const/16 v1, 0x12

    invoke-direct {v0, p0, v1}, Ll61;-><init>(Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->X:Lkotlin/Lazy;

    new-instance v0, Ll61;

    const/16 v1, 0x13

    invoke-direct {v0, p0, v1}, Ll61;-><init>(Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->Y:Lkotlin/Lazy;

    new-instance v0, Ll61;

    const/16 v1, 0x14

    invoke-direct {v0, p0, v1}, Ll61;-><init>(Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->Z:Lkotlin/Lazy;

    new-instance v0, Ll61;

    const/16 v1, 0x15

    invoke-direct {v0, p0, v1}, Ll61;-><init>(Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->h0:Lkotlin/Lazy;

    new-instance v0, Ll61;

    const/16 v1, 0x16

    invoke-direct {v0, p0, v1}, Ll61;-><init>(Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->t0:Lkotlin/Lazy;

    new-instance v0, Ll61;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ll61;-><init>(Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->b1:Lkotlin/Lazy;

    new-instance v0, Ll61;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ll61;-><init>(Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->c1:Lkotlin/Lazy;

    new-instance v0, Ll61;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Ll61;-><init>(Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->d1:Lkotlin/Lazy;

    new-instance v0, Ll61;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, Ll61;-><init>(Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->e1:Lkotlin/Lazy;

    new-instance v0, Ll61;

    const/16 v1, 0xe

    invoke-direct {v0, p0, v1}, Ll61;-><init>(Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->f1:Lkotlin/Lazy;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->k1:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->l1:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->m1:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-void
.end method

.method public static final O(Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->T()Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;->x:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/webview/WebViewUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/webview/WebViewUiModel;->c:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/vuitton/android/presentation/extensions/UriExtKt;->b(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->P()Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;->f:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->R()Ljava/util/HashMap;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lcom/sensorsdata/analytics/android/sdk/jsbridge/JSHookAop;->loadUrl(Landroid/view/View;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, p1, p0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final P()Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;
    .locals 2

    sget-object v0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->o1:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->T:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    invoke-virtual {v1, p0, v0}, Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;->c(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KProperty;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;

    return-object p0
.end method

.method public final Q()Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->d1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;

    return-object p0
.end method

.method public final R()Ljava/util/HashMap;
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->T()Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;->x:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/webview/WebViewUiModel;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/webview/WebViewUiModel;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->N:Lcom/vuitton/android/presentation/security/AkamaiSecurityHelper;

    if-eqz v2, :cond_4

    const-string v3, "X-Akamai-Webview"

    sget-object v4, Lcom/vuitton/android/data/net/interceptor/UserAgentInterceptor;->c:Lcom/vuitton/android/data/net/interceptor/UserAgentInterceptor$Companion;

    iget-object v5, v2, Lcom/vuitton/android/presentation/security/AkamaiSecurityHelper;->a:Landroid/content/Context;

    iget-object v2, v2, Lcom/vuitton/android/presentation/security/AkamaiSecurityHelper;->b:Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-static {v5, v2}, Lcom/vuitton/android/data/net/interceptor/UserAgentInterceptor$Companion;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "USERID_SF"

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->T()Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;->x:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v3}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/webview/WebViewUiModel;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/webview/WebViewUiModel;->j:Ljava/lang/String;

    if-nez v3, :cond_1

    const-string v3, ""

    :cond_1
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "TOKEN_SF"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->W()Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "X-acf-sensor-data"

    const-class v1, Lcom/akamai/botman/CYFMonitor;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/cyberfend/cyfsecurity/CYFMonitor;->f()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v1

    goto :goto_2

    :catchall_0
    :try_start_1
    invoke-static {}, Lcom/akamai/botman/CYFMonitor;->a()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :goto_2
    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_3
    return-object v0

    :cond_4
    const-string p0, "akamaiSecurityHelper"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final S()Lcom/vuitton/foundation/logger/Logger;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->K:Lcom/vuitton/foundation/logger/Logger;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "logger"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final T()Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->F:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;

    return-object p0
.end method

.method public final U()Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->M:Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "webViewRouter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final V()Z
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->f1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final W()Z
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->X:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final X()Z
    .locals 1

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->P()Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->Y:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->h1:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->V()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->P()Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;->f:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->goBack()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->R:Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;

    if-eqz p0, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;->d(IILandroid/content/Intent;)V

    return-void

    :cond_0
    const-string p0, "chatLifecycleObserver"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    return-void
.end method

.method public final onBackPressed()Z
    .locals 0

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->X()Z

    move-result p0

    return p0
.end method

.method public final onDestroyView()V
    .locals 7

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->h0:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->T()Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->P()Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;

    move-result-object v4

    iget-object v4, v4, Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;->f:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, v0, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;->w:Z

    if-nez v5, :cond_0

    iput-boolean v3, v0, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;->w:Z

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v5

    new-instance v6, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel$onCheckoutWebViewClosing$1;

    invoke-direct {v6, v0, v4, v2}, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel$onCheckoutWebViewClosing$1;-><init>(Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {v5, v2, v2, v6, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_0
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->P()Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;->f:Landroid/webkit/WebView;

    const-string v4, "about:blank"

    invoke-static {v0, v4}, Lcom/sensorsdata/analytics/android/sdk/jsbridge/JSHookAop;->loadUrl(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->clearCache(Z)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->P()Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->W()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->T()Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;

    move-result-object v0

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v3, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$onDestroyView$1;

    invoke-direct {v3, p0, v2}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$onDestroyView$1;-><init>(Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v2, v2, v3, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 20

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super/range {p0 .. p2}, Lcom/vuitton/android/presentation/screen/webview/Hilt_WebViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    new-instance v1, Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling;

    new-instance v2, Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling$SystemBarsConfig;

    const/16 v7, 0xf

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling$SystemBarsConfig;-><init>(ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v1, v0, v2}, Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling;-><init>(Landroidx/fragment/app/Fragment;Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling$SystemBarsConfig;)V

    new-instance v1, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling;

    sget-object v2, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;->h:Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;->i:Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;

    invoke-direct {v1, v0, v2}, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling;-><init>(Landroidx/fragment/app/Fragment;Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;)V

    new-instance v2, Lcom/vuitton/android/presentation/lifecycleaware/KeyboardVisibilityListener;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$onViewCreated$1;

    invoke-direct {v4, v0, v1}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$onViewCreated$1;-><init>(Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling;)V

    move-object/from16 v1, p1

    invoke-direct {v2, v1, v3, v4}, Lcom/vuitton/android/presentation/lifecycleaware/KeyboardVisibilityListener;-><init>(Landroid/view/View;Landroidx/lifecycle/Lifecycle;Lcom/vuitton/android/presentation/lifecycleaware/KeyboardVisibilityListener$OnKeyboardVisibilityListener;)V

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->P()Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;->b:Lcom/vuitton/android/presentation/databinding/ToolbarWebViewBinding;

    iget-object v1, v1, Lcom/vuitton/android/presentation/databinding/ToolbarWebViewBinding;->b:Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->b(ILandroid/view/View;)V

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->P()Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x2

    invoke-static {v3, v1}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->b(ILandroid/view/View;)V

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->P()Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;->h:Landroid/widget/FrameLayout;

    const/16 v4, 0x8

    invoke-static {v4, v1}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->b(ILandroid/view/View;)V

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->P()Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;->f:Landroid/webkit/WebView;

    new-instance v5, Lln0;

    const/16 v6, 0x19

    invoke-direct {v5, v1, v6}, Lln0;-><init>(Ljava/lang/Object;I)V

    invoke-static {v1, v5}, Landroidx/core/view/ViewCompat;->x(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->requestApplyInsets()V

    goto :goto_0

    :cond_0
    new-instance v5, Lcom/vuitton/android/presentation/extensions/ViewExtKt$requestApplyInsetsWhenAttachedToWindow$1;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, v5}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :goto_0
    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->W:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->c1:Lkotlin/Lazy;

    const/4 v6, 0x3

    const/4 v7, 0x0

    sget-object v8, Landroidx/compose/ui/platform/ViewCompositionStrategy$DisposeOnViewTreeLifecycleDestroyed;->a:Landroidx/compose/ui/platform/ViewCompositionStrategy$DisposeOnViewTreeLifecycleDestroyed;

    const/4 v9, -0x2

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->P()Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;->b:Lcom/vuitton/android/presentation/databinding/ToolbarWebViewBinding;

    iget-object v1, v1, Lcom/vuitton/android/presentation/databinding/ToolbarWebViewBinding;->c:Landroidx/appcompat/widget/Toolbar;

    new-instance v10, Ll61;

    invoke-direct {v10, v0, v6}, Ll61;-><init>(Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;I)V

    invoke-static {v0, v1, v10, v3}, Lcom/vuitton/android/presentation/extensions/FragmentExtKt;->a(Landroidx/fragment/app/Fragment;Landroidx/appcompat/widget/Toolbar;Ll61;I)V

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->Y:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->Z:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_2

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v10

    if-eqz v10, :cond_1

    const v11, 0x7f0a04a8

    invoke-virtual {v10, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_1

    invoke-virtual {v10, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v10

    if-eqz v10, :cond_2

    const v11, 0x7f0a04a9

    invoke-virtual {v10, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_2

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v10, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v10, Landroidx/compose/ui/platform/ComposeView;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v14, 0x6

    const/4 v15, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v10 .. v15}, Landroidx/compose/ui/platform/ComposeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v10, v8}, Landroidx/compose/ui/platform/AbstractComposeView;->setViewCompositionStrategy(Landroidx/compose/ui/platform/ViewCompositionStrategy;)V

    new-instance v1, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    const v11, 0x800005

    invoke-direct {v1, v9, v9, v11}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(III)V

    invoke-virtual {v10, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lm61;

    invoke-direct {v1, v0, v3}, Lm61;-><init>(Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;I)V

    new-instance v3, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v11, 0x7fe36e85

    invoke-direct {v3, v11, v2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-virtual {v10, v3}, Landroidx/compose/ui/platform/ComposeView;->setContent(Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->P()Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;->b:Lcom/vuitton/android/presentation/databinding/ToolbarWebViewBinding;

    iget-object v1, v1, Lcom/vuitton/android/presentation/databinding/ToolbarWebViewBinding;->c:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->P()Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;->b:Lcom/vuitton/android/presentation/databinding/ToolbarWebViewBinding;

    iget-object v1, v1, Lcom/vuitton/android/presentation/databinding/ToolbarWebViewBinding;->b:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v1, v4}, Lcom/google/android/material/appbar/AppBarLayout;->setVisibility(I)V

    :cond_4
    :goto_1
    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->P()Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;->f:Landroid/webkit/WebView;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    invoke-virtual {v1}, Landroid/webkit/WebView;->resumeTimers()V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_5

    const v10, 0x7f0603f4

    invoke-static {v3, v10}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    :cond_5
    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setInitialScale(I)V

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v7}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {v3, v7}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    invoke-virtual {v3, v7}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    new-instance v3, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$LVWebViewClient;

    invoke-direct {v3, v0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$LVWebViewClient;-><init>(Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v3, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$LVWebChromeClient;

    invoke-direct {v3, v0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$LVWebChromeClient;-><init>(Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->G:Ldagger/Lazy;

    const/4 v10, 0x0

    if-eqz v3, :cond_18

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    const-string v11, "AnalyticsWebInterface"

    invoke-virtual {v1, v3, v11}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->H:Ldagger/Lazy;

    if-eqz v3, :cond_17

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    const-string v11, "AppsFlyerWebInterface"

    invoke-virtual {v1, v3, v11}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->e1:Lkotlin/Lazy;

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    const-string v12, "json"

    if-eqz v11, :cond_7

    new-instance v11, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$initWebView$1$customizationCallback$1;

    invoke-direct {v11, v0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$initWebView$1$customizationCallback$1;-><init>(Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;)V

    new-instance v13, Lcom/vuitton/android/presentation/screen/pdp/models/CustomizationJsInterface;

    iget-object v14, v0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->L:Lkotlinx/serialization/json/Json;

    if-eqz v14, :cond_6

    invoke-direct {v13, v11, v14}, Lcom/vuitton/android/presentation/screen/pdp/models/CustomizationJsInterface;-><init>(Lcom/vuitton/android/presentation/screen/pdp/models/CustomizationCallback;Lkotlinx/serialization/json/Json;)V

    const-string v11, "Android"

    invoke-virtual {v1, v13, v11}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v10

    :cond_7
    :goto_2
    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->V()Z

    move-result v11

    const/4 v13, 0x4

    if-eqz v11, :cond_9

    new-instance v11, Lcom/vuitton/android/presentation/screen/webview/BookingPaymentJsInterface;

    iget-object v14, v0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->L:Lkotlinx/serialization/json/Json;

    if-eqz v14, :cond_8

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->S()Lcom/vuitton/foundation/logger/Logger;

    move-result-object v12

    new-instance v15, Ll61;

    invoke-direct {v15, v0, v13}, Ll61;-><init>(Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;I)V

    invoke-direct {v11, v14, v12, v15}, Lcom/vuitton/android/presentation/screen/webview/BookingPaymentJsInterface;-><init>(Lkotlinx/serialization/json/Json;Lcom/vuitton/foundation/logger/Logger;Lkotlin/jvm/functions/Function0;)V

    const-string v12, "BookingPaymentBridge"

    invoke-virtual {v1, v11, v12}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v10

    :cond_9
    :goto_3
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v3, -0x1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->Q()Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;

    move-result-object v1

    sget-object v11, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$WhenMappings;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v11, v1

    packed-switch v1, :pswitch_data_0

    invoke-static {}, Lv40;->g()V

    return-void

    :pswitch_0
    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->T()Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;

    move-result-object v1

    sget-object v11, Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$DiamondEngravingWebViewScreen;->a:Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$DiamondEngravingWebViewScreen;

    invoke-virtual {v1, v11}, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;->zc(Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel;)V

    goto :goto_4

    :pswitch_1
    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->T()Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;

    move-result-object v1

    sget-object v11, Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$PerfumeEngravingWebViewScreen;->a:Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$PerfumeEngravingWebViewScreen;

    invoke-virtual {v1, v11}, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;->zc(Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel;)V

    goto :goto_4

    :pswitch_2
    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->T()Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;

    move-result-object v1

    sget-object v11, Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$HotstampingWebViewScreen;->a:Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$HotstampingWebViewScreen;

    invoke-virtual {v1, v11}, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;->zc(Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel;)V

    goto :goto_4

    :pswitch_3
    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->T()Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;

    move-result-object v1

    sget-object v11, Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$BeautyEngravingWebViewScreen;->a:Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$BeautyEngravingWebViewScreen;

    invoke-virtual {v1, v11}, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;->zc(Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel;)V

    goto :goto_4

    :pswitch_4
    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->T()Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;

    move-result-object v1

    sget-object v11, Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$MyMonogramWebViewScreen;->a:Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel$MyMonogramWebViewScreen;

    invoke-virtual {v1, v11}, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;->zc(Lcom/vuitton/android/presentation/screen/webview/WebViewTrackingUiModel;)V

    :goto_4
    :pswitch_5
    new-instance v14, Landroidx/compose/ui/platform/ComposeView;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v18, 0x6

    const/16 v19, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v14 .. v19}, Landroidx/compose/ui/platform/ComposeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v14, v8}, Landroidx/compose/ui/platform/AbstractComposeView;->setViewCompositionStrategy(Landroidx/compose/ui/platform/ViewCompositionStrategy;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v14, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lm61;

    invoke-direct {v1, v0, v7}, Lm61;-><init>(Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;I)V

    new-instance v11, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v12, -0x1c836e8c

    invoke-direct {v11, v12, v2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-virtual {v14, v11}, Landroidx/compose/ui/platform/ComposeView;->setContent(Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->P()Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_a
    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->V()Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v14, Landroidx/compose/ui/platform/ComposeView;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v18, 0x6

    const/16 v19, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v14 .. v19}, Landroidx/compose/ui/platform/ComposeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v14, v8}, Landroidx/compose/ui/platform/AbstractComposeView;->setViewCompositionStrategy(Landroidx/compose/ui/platform/ViewCompositionStrategy;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v14, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lm61;

    invoke-direct {v1, v0, v2}, Lm61;-><init>(Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;I)V

    new-instance v11, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v12, 0x1b058cb0

    invoke-direct {v11, v12, v2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-virtual {v14, v11}, Landroidx/compose/ui/platform/ComposeView;->setContent(Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->P()Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_b
    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->T()Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;

    move-result-object v1

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->b1:Lkotlin/Lazy;

    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;->e:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    if-eqz v5, :cond_c

    sget-object v5, Lcom/vuitton/android/presentation/contact/ContactUsMode;->DISTANT_CARE:Lcom/vuitton/android/presentation/contact/ContactUsMode;

    invoke-interface {v1, v5}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->f8(Lcom/vuitton/android/presentation/contact/ContactUsMode;)V

    goto :goto_5

    :cond_c
    invoke-static {v1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->Y3(Lcom/vuitton/android/presentation/contact/ContactUsDelegate;)V

    :goto_5
    new-instance v14, Landroidx/compose/ui/platform/ComposeView;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v18, 0x6

    const/16 v19, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v14 .. v19}, Landroidx/compose/ui/platform/ComposeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v14, v8}, Landroidx/compose/ui/platform/AbstractComposeView;->setViewCompositionStrategy(Landroidx/compose/ui/platform/ViewCompositionStrategy;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v14, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lm61;

    invoke-direct {v1, v0, v6}, Lm61;-><init>(Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;I)V

    new-instance v3, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v5, -0x1eb92d77

    invoke-direct {v3, v5, v2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-virtual {v14, v3}, Landroidx/compose/ui/platform/ComposeView;->setContent(Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->P()Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->T()Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;

    move-result-object v1

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;->CHECKOUT:Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;

    invoke-virtual {v1, v3}, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;->C(Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;)V

    :cond_d
    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->P()Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;->c:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->W()Z

    move-result v3

    if-eqz v3, :cond_e

    move v4, v7

    :cond_e
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->P()Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;->c:Landroid/widget/Button;

    new-instance v3, Lp11;

    const/16 v4, 0x13

    invoke-direct {v3, v0, v4}, Lp11;-><init>(Ljava/lang/Object;I)V

    invoke-static {v1, v3}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->d(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/webview/Hilt_WebViewFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "connectivity"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_9

    :cond_f
    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->P()Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;->f:Landroid/webkit/WebView;

    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->d()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    goto :goto_6

    :cond_10
    move-object v1, v10

    :goto_6
    if-eqz v1, :cond_14

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v3, "tag alert"

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0, v3}, Landroidx/fragment/app/FragmentManager;->G(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v4, v0, Landroidx/fragment/app/DialogFragment;

    if-eqz v4, :cond_11

    move-object v4, v0

    check-cast v4, Landroidx/fragment/app/DialogFragment;

    goto :goto_7

    :cond_11
    move-object v4, v10

    :goto_7
    if-eqz v4, :cond_12

    invoke-virtual {v4}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_12
    instance-of v0, v0, Lcom/vuitton/android/presentation/screen/webview/LVAlertView;

    if-eqz v0, :cond_13

    goto :goto_8

    :cond_13
    invoke-virtual {v1, v10}, Landroidx/fragment/app/FragmentTransaction;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/vuitton/android/presentation/screen/webview/LVAlertView;->G:Lcom/vuitton/android/presentation/screen/webview/LVAlertView$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/webview/LVAlertView;

    invoke-direct {v0}, Lcom/vuitton/android/presentation/screen/webview/LVAlertView;-><init>()V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "IS_FISH_ACTIVITY_WHEN_CLOSE"

    invoke-virtual {v4, v5, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v4}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1, v3}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentTransaction;Ljava/lang/String;)I

    :cond_14
    :goto_8
    return-void

    :cond_15
    :goto_9
    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->P()Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/presentation/databinding/FragmentWebViewBinding;->f:Landroid/webkit/WebView;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->T()Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;

    move-result-object v1

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;->c:Lcom/vuitton/android/domain/usecase/privacy/consent/GetConsentListUseCase;

    iget-object v2, v2, Lcom/vuitton/android/domain/usecase/privacy/consent/GetConsentListUseCase;->a:Lcom/vuitton/android/domain/repository/ConsentRepository;

    invoke-interface {v2}, Lcom/vuitton/android/domain/repository/ConsentRepository;->f()Ljava/util/List;

    move-result-object v2

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;->u:Lkotlinx/coroutines/channels/BufferedChannel;

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/privacy/Consent;

    invoke-static {v4}, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentMapperKt;->c(Lcom/vuitton/foundation/model/domain/model/privacy/Consent;)Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_16
    new-instance v2, Lcom/vuitton/android/presentation/screen/webview/WebViewViewEvents$SetConsents;

    invoke-direct {v2, v3}, Lcom/vuitton/android/presentation/screen/webview/WebViewViewEvents$SetConsents;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v2}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Landroidx/lifecycle/LifecycleOwnerKt;->a(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$onViewCreated$3;

    invoke-direct {v2, v0, v10}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$onViewCreated$3;-><init>(Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v10, v10, v2, v6}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->a(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$onViewCreated$4;

    invoke-direct {v2, v0, v10}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$onViewCreated$4;-><init>(Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v10, v10, v2, v6}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->a(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$onViewCreated$5;

    invoke-direct {v2, v0, v10}, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$onViewCreated$5;-><init>(Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v10, v10, v2, v6}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void

    :cond_17
    const-string v0, "appsFlyerWebInterface"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v10

    :cond_18
    const-string v0, "analyticsWebInterface"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v10

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
