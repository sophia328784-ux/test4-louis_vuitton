.class public final Lcom/vuitton/android/presentation/screen/authentication/register/kisa/WebViewKisaFragment;
.super Lcom/vuitton/android/presentation/screen/authentication/register/kisa/Hilt_WebViewKisaFragment;
.source "SourceFile"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/authentication/register/kisa/WebViewKisaFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u000cB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J!\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/authentication/register/kisa/WebViewKisaFragment;",
        "Landroidx/fragment/app/Fragment;",
        "<init>",
        "()V",
        "",
        "onResume",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Companion",
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
.field public static final O:Lcom/vuitton/android/presentation/screen/authentication/register/kisa/WebViewKisaFragment$Companion;

.field public static final P:Ljava/lang/String;


# instance fields
.field public F:Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

.field public G:Lcom/vuitton/android/presentation/link/LinkHandler;

.field public H:Lcom/vuitton/android/presentation/screen/webview/AnalyticsWebInterface;

.field public I:Lcom/vuitton/android/presentation/security/AkamaiSecurityHelper;

.field public J:Lcom/vuitton/foundation/logger/Logger;

.field public K:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;

.field public final L:Landroidx/lifecycle/ViewModelLazy;

.field public M:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

.field public N:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/register/kisa/WebViewKisaFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/authentication/register/kisa/WebViewKisaFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/authentication/register/kisa/WebViewKisaFragment;->O:Lcom/vuitton/android/presentation/screen/authentication/register/kisa/WebViewKisaFragment$Companion;

    const-string v0, "WebViewKisaFragment"

    sput-object v0, Lcom/vuitton/android/presentation/screen/authentication/register/kisa/WebViewKisaFragment;->P:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lcom/vuitton/android/presentation/screen/authentication/register/kisa/Hilt_WebViewKisaFragment;-><init>()V

    const-class v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;

    sget-object v1, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/authentication/register/kisa/WebViewKisaFragment$special$$inlined$activityViewModels$default$1;

    invoke-direct {v1, p0}, Lcom/vuitton/android/presentation/screen/authentication/register/kisa/WebViewKisaFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    new-instance v2, Lcom/vuitton/android/presentation/screen/authentication/register/kisa/WebViewKisaFragment$special$$inlined$activityViewModels$default$2;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0}, Lcom/vuitton/android/presentation/screen/authentication/register/kisa/WebViewKisaFragment$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    new-instance v3, Lcom/vuitton/android/presentation/screen/authentication/register/kisa/WebViewKisaFragment$special$$inlined$activityViewModels$default$3;

    invoke-direct {v3, p0}, Lcom/vuitton/android/presentation/screen/authentication/register/kisa/WebViewKisaFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    new-instance v4, Landroidx/lifecycle/ViewModelLazy;

    invoke-direct {v4, v0, v1, v3, v2}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-object v4, p0, Lcom/vuitton/android/presentation/screen/authentication/register/kisa/WebViewKisaFragment;->L:Landroidx/lifecycle/ViewModelLazy;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    const-string v3, "KEY_TRACKING_AUTH_ORIGIN"

    if-lt v1, v2, :cond_0

    const-class v0, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object p1

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    move-object p1, v0

    check-cast p1, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    :goto_1
    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    :cond_2
    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/kisa/WebViewKisaFragment;->M:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling;

    new-instance v0, Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling$SystemBarsConfig;

    const/16 v5, 0xb

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling$SystemBarsConfig;-><init>(ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p1, p0, v0}, Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling;-><init>(Landroidx/fragment/app/Fragment;Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling$SystemBarsConfig;)V

    new-instance p1, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling;

    sget-object p2, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;->h:Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;->j:Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;

    invoke-direct {p1, p0, p2}, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling;-><init>(Landroidx/fragment/app/Fragment;Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const-string p3, "KEY_DEEPLINK_VALUES"

    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-object p3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string p3, "KEY_CID"

    invoke-virtual {p1, p3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    move-object v4, p1

    goto :goto_1

    :cond_2
    move-object v4, p2

    :goto_1
    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/kisa/WebViewKisaFragment;->F:Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

    const-string p3, "environmentProvider"

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;->j()Ljava/lang/String;

    move-result-object p1

    const-string v0, "identiity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/kisa/WebViewKisaFragment;->F:Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;->j()Ljava/lang/String;

    move-result-object p1

    const-string p2, "login_error"

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Landroidx/compose/ui/platform/ComposeView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v5 .. v10}, Landroidx/compose/ui/platform/ComposeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object p1, v5

    sget-object p2, Landroidx/compose/ui/platform/ViewCompositionStrategy$DisposeOnViewTreeLifecycleDestroyed;->a:Landroidx/compose/ui/platform/ViewCompositionStrategy$DisposeOnViewTreeLifecycleDestroyed;

    invoke-virtual {p1, p2}, Landroidx/compose/ui/platform/AbstractComposeView;->setViewCompositionStrategy(Landroidx/compose/ui/platform/ViewCompositionStrategy;)V

    new-instance v0, Lys0;

    const/16 v5, 0xa

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lys0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const p2, -0x757fd6d0

    const/4 p3, 0x1

    invoke-direct {p0, p2, p3, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-virtual {p1, p0}, Landroidx/compose/ui/platform/ComposeView;->setContent(Lkotlin/jvm/functions/Function2;)V

    return-object p1

    :cond_3
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw p2

    :cond_4
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw p2
.end method

.method public final onDestroyView()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vuitton/android/presentation/utils/SecurityUtils;->a(Landroid/app/Activity;)V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/vuitton/android/presentation/screen/authentication/register/kisa/Hilt_WebViewKisaFragment;->onResume()V

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/kisa/WebViewKisaFragment;->N:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/kisa/WebViewKisaFragment;->L:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {v0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;

    new-instance v1, Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$KisaConsentsScreen;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/authentication/register/kisa/WebViewKisaFragment;->M:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    invoke-direct {v1, v2}, Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$KisaConsentsScreen;-><init>(Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;)V

    invoke-interface {v0, v1}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;->I0(Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/kisa/WebViewKisaFragment;->N:Z

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/authentication/register/kisa/Hilt_WebViewKisaFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/vuitton/android/presentation/utils/SecurityUtils;->b(Landroid/app/Activity;)V

    return-void
.end method
