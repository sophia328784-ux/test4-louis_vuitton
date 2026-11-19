.class public final Lcom/vuitton/android/presentation/inappbanner/InAppBannerSupervisor$init$1;
.super Lcom/vuitton/android/platform/activity/DefaultActivityLifecycleCallbacksAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/vuitton/android/presentation/inappbanner/InAppBannerSupervisor$init$1",
        "Lcom/vuitton/android/platform/activity/DefaultActivityLifecycleCallbacksAdapter;",
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


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/inappbanner/InAppBannerSupervisor;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/inappbanner/InAppBannerSupervisor;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/inappbanner/InAppBannerSupervisor$init$1;->b:Lcom/vuitton/android/presentation/inappbanner/InAppBannerSupervisor;

    invoke-direct {p0}, Lcom/vuitton/android/platform/activity/DefaultActivityLifecycleCallbacksAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityPostCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 11

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPostCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    instance-of p2, p1, Lcom/sightcall/universal/permission/PermissionsActivity;

    if-nez p2, :cond_b

    instance-of p2, p1, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity;

    if-eqz p2, :cond_0

    return-void

    :cond_0
    instance-of p2, p1, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity;

    if-nez p2, :cond_b

    iget-object p0, p0, Lcom/vuitton/android/presentation/inappbanner/InAppBannerSupervisor$init$1;->b:Lcom/vuitton/android/presentation/inappbanner/InAppBannerSupervisor;

    iget-object p2, p0, Lcom/vuitton/android/presentation/inappbanner/InAppBannerSupervisor;->c:Lcom/vuitton/android/platform/activity/CurrentActivityProvider;

    new-instance v0, Lx20;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lx20;-><init>(I)V

    invoke-interface {p2, v0}, Lcom/vuitton/android/platform/activity/CurrentActivityProvider;->a(Lx20;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto/16 :goto_2

    :cond_1
    const p2, 0x1020002

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    const-string v0, "in_app_banner_container_view"

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/platform/ComposeView;

    if-eqz v1, :cond_2

    goto/16 :goto_2

    :cond_2
    instance-of v1, p1, Landroidx/lifecycle/LifecycleOwner;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    move-object v1, p1

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    goto :goto_0

    :cond_3
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_4

    goto/16 :goto_2

    :cond_4
    instance-of v3, p1, Landroidx/savedstate/SavedStateRegistryOwner;

    if-eqz v3, :cond_5

    move-object v2, p1

    check-cast v2, Landroidx/savedstate/SavedStateRegistryOwner;

    :cond_5
    if-nez v2, :cond_6

    goto/16 :goto_2

    :cond_6
    iget-object v3, p0, Lcom/vuitton/android/presentation/inappbanner/InAppBannerSupervisor;->b:Lcom/vuitton/android/domain/reporter/CrashReporter;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_7

    goto/16 :goto_2

    :cond_7
    invoke-static {v4}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->a(Landroid/view/View;)Landroidx/lifecycle/LifecycleOwner;

    move-result-object v5

    if-eqz v5, :cond_8

    goto :goto_1

    :cond_8
    invoke-static {p1}, Lcom/vuitton/android/presentation/extensions/ActivityViewTreeExtKt;->a(Landroid/app/Activity;)V

    invoke-static {v4}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->a(Landroid/view/View;)Landroidx/lifecycle/LifecycleOwner;

    move-result-object v4

    if-eqz v4, :cond_9

    :goto_1
    new-instance v5, Landroidx/compose/ui/platform/ComposeView;

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, p1

    invoke-direct/range {v5 .. v10}, Landroidx/compose/ui/platform/ComposeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v5, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    sget-object p1, Landroidx/compose/ui/platform/ViewCompositionStrategy$DisposeOnViewTreeLifecycleDestroyed;->a:Landroidx/compose/ui/platform/ViewCompositionStrategy$DisposeOnViewTreeLifecycleDestroyed;

    invoke-virtual {v5, p1}, Landroidx/compose/ui/platform/AbstractComposeView;->setViewCompositionStrategy(Landroidx/compose/ui/platform/ViewCompositionStrategy;)V

    const p1, 0x7f0a0532

    invoke-virtual {v5, p1, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const p1, 0x7f0a0535

    invoke-virtual {v5, p1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    new-instance p1, Lw20;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lw20;-><init>(Ljava/lang/Object;I)V

    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v1, 0x130845e

    invoke-direct {p0, v1, v0, p1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-virtual {v5, p0}, Landroidx/compose/ui/platform/ComposeView;->setContent(Lkotlin/jvm/functions/Function2;)V

    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p1, -0x2

    invoke-direct {p0, p1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v5, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_9
    move-object v6, p1

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    sget-object p1, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {p1, p0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/KClass;->B()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_a

    const-string p0, ""

    :cond_a
    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object p2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, ": DecorView still has no ViewTreeLifecycleOwner after repair. Device: "

    const-string v2, " "

    const-string v4, "[ViewTreeLifecycleOwner ComposeView crash fix] Skipping InAppBanner for "

    invoke-static {v4, p0, v1, p1, v2}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", API: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3}, Lcom/vuitton/android/domain/reporter/CrashReporter;->isReady()Z

    move-result p2

    if-eqz p2, :cond_b

    const-string p2, "W/InAppBannerSupervisor: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v3, p2}, Lcom/vuitton/android/domain/reporter/CrashReporter;->a(Ljava/lang/String;)V

    sget-object p2, Lcom/vuitton/android/presentation/inappbanner/InAppBannerSupervisor;->e:Ljava/util/Set;

    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    new-instance p0, Lcom/vuitton/android/presentation/inappbanner/InAppBannerSkippedMissingViewTreeOwner;

    invoke-direct {p0, p1}, Lcom/vuitton/android/presentation/inappbanner/InAppBannerSkippedMissingViewTreeOwner;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, p0}, Lcom/vuitton/android/domain/reporter/CrashReporter;->b(Ljava/lang/RuntimeException;)V

    :cond_b
    :goto_2
    return-void
.end method
