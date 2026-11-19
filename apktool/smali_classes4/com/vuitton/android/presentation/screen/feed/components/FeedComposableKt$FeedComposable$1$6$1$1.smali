.class final Lcom/vuitton/android/presentation/screen/feed/components/FeedComposableKt$FeedComposable$1$6$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "contributionLink",
        "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;"
    }
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.vuitton.android.presentation.screen.feed.components.FeedComposableKt$FeedComposable$1$6$1$1"
    f = "FeedComposable.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:Landroidx/activity/compose/ManagedActivityResultLauncher;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;Landroid/content/Context;Landroidx/activity/compose/ManagedActivityResultLauncher;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/feed/components/FeedComposableKt$FeedComposable$1$6$1$1;->c:Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/feed/components/FeedComposableKt$FeedComposable$1$6$1$1;->d:Landroid/content/Context;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/feed/components/FeedComposableKt$FeedComposable$1$6$1$1;->e:Landroidx/activity/compose/ManagedActivityResultLauncher;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    new-instance v0, Lcom/vuitton/android/presentation/screen/feed/components/FeedComposableKt$FeedComposable$1$6$1$1;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/feed/components/FeedComposableKt$FeedComposable$1$6$1$1;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/feed/components/FeedComposableKt$FeedComposable$1$6$1$1;->e:Landroidx/activity/compose/ManagedActivityResultLauncher;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/components/FeedComposableKt$FeedComposable$1$6$1$1;->c:Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

    invoke-direct {v0, p0, v1, v2, p2}, Lcom/vuitton/android/presentation/screen/feed/components/FeedComposableKt$FeedComposable$1$6$1$1;-><init>(Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;Landroid/content/Context;Landroidx/activity/compose/ManagedActivityResultLauncher;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/feed/components/FeedComposableKt$FeedComposable$1$6$1$1;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/feed/components/FeedComposableKt$FeedComposable$1$6$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/feed/components/FeedComposableKt$FeedComposable$1$6$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/feed/components/FeedComposableKt$FeedComposable$1$6$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/feed/components/FeedComposableKt$FeedComposable$1$6$1$1;->b:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/feed/components/FeedComposableKt$FeedComposable$1$6$1$1;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->b(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p1, v3, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Monogram;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/feed/components/FeedComposableKt$FeedComposable$1$6$1$1;->e:Landroidx/activity/compose/ManagedActivityResultLauncher;

    :goto_0
    move-object v6, p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    const/16 v7, 0xc

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/feed/components/FeedComposableKt$FeedComposable$1$6$1$1;->c:Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;->a(Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;Landroidx/fragment/app/FragmentActivity;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;Landroid/os/Bundle;Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator$ContributionLinkNavigationAnimation;Landroidx/activity/result/ActivityResultLauncher;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
