.class public final synthetic Lph0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/options/optoutprivacymenu/OptOutPrivacyMenuActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/options/optoutprivacymenu/OptOutPrivacyMenuActivity;I)V
    .locals 0

    iput p2, p0, Lph0;->b:I

    iput-object p1, p0, Lph0;->c:Lcom/vuitton/android/presentation/screen/options/optoutprivacymenu/OptOutPrivacyMenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    iget v0, p0, Lph0;->b:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    iget-object p0, p0, Lph0;->c:Lcom/vuitton/android/presentation/screen/options/optoutprivacymenu/OptOutPrivacyMenuActivity;

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    move-object v10, p1

    check-cast v10, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object p2, Lcom/vuitton/android/presentation/screen/options/optoutprivacymenu/OptOutPrivacyMenuActivity;->q:Lcom/vuitton/android/presentation/screen/options/optoutprivacymenu/OptOutPrivacyMenuActivity$Companion;

    and-int/lit8 p2, p1, 0x3

    if-eq p2, v1, :cond_0

    move p2, v4

    goto :goto_0

    :cond_0
    move p2, v2

    :goto_0
    and-int/2addr p1, v4

    invoke-interface {v10, p1, p2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v10}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->a(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-static {v6, v10}, Landroidx/hilt/lifecycle/viewmodel/compose/HiltViewModelKt;->a(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/compose/runtime/Composer;)Ldagger/hilt/android/internal/lifecycle/HiltViewModelFactory;

    move-result-object v8

    instance-of p1, v6, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz p1, :cond_1

    move-object p1, v6

    check-cast p1, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {p1}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object p1

    :goto_1
    move-object v9, p1

    goto :goto_2

    :cond_1
    sget-object p1, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->c:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    goto :goto_1

    :goto_2
    const-class p1, Lcom/vuitton/android/presentation/screen/options/optoutprivacymenu/OptOutPrivacyMenuViewModelImpl;

    sget-object p2, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {p2, p1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, Landroidx/lifecycle/viewmodel/compose/ViewModelKt;->a(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/options/optoutprivacymenu/OptOutPrivacyMenuViewModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/options/optoutprivacymenu/OptOutPrivacyMenuActivity;->p:Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;

    if-eqz p0, :cond_2

    invoke-static {p1, p0, v10, v2}, Lcom/vuitton/android/presentation/screen/options/optoutprivacymenu/components/OptOutPrivacyMenuComposableKt;->a(Lcom/vuitton/android/presentation/screen/options/optoutprivacymenu/OptOutPrivacyMenuViewModel;Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;Landroidx/compose/runtime/Composer;I)V

    goto :goto_3

    :cond_2
    const-string p0, "webViewRouter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v3

    :cond_3
    const-string p0, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->D()V

    :goto_3
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_4
    return-object v3

    :pswitch_0
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sget-object v0, Lcom/vuitton/android/presentation/screen/options/optoutprivacymenu/OptOutPrivacyMenuActivity;->q:Lcom/vuitton/android/presentation/screen/options/optoutprivacymenu/OptOutPrivacyMenuActivity$Companion;

    and-int/lit8 v0, p2, 0x3

    if-eq v0, v1, :cond_5

    move v2, v4

    :cond_5
    and-int/2addr p2, v4

    invoke-interface {p1, p2, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p2

    if-eqz p2, :cond_6

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance p2, Lph0;

    invoke-direct {p2, p0, v4}, Lph0;-><init>(Lcom/vuitton/android/presentation/screen/options/optoutprivacymenu/OptOutPrivacyMenuActivity;I)V

    const p0, -0x3951cb53

    invoke-static {p0, p2, p1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object p0

    const/16 p2, 0x30

    invoke-static {v3, p0, p1, p2}, Lcom/vuitton/android/designkit/ui/theme/ThemeKt;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto :goto_5

    :cond_6
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
