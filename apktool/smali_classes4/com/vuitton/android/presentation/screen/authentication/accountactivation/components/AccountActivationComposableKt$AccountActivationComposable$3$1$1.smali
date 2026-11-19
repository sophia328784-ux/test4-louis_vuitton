.class final Lcom/vuitton/android/presentation/screen/authentication/accountactivation/components/AccountActivationComposableKt$AccountActivationComposable$3$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationUiEvent;",
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
        "event",
        "Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationUiEvent;"
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
    c = "com.vuitton.android.presentation.screen.authentication.accountactivation.components.AccountActivationComposableKt$AccountActivationComposable$3$1$1"
    f = "AccountActivationComposable.kt"
    l = {
        0x3d,
        0x46
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Landroidx/compose/foundation/pager/PagerState;

.field public final synthetic e:Landroid/content/Context;

.field public final synthetic f:Landroidx/compose/material3/SnackbarHostState;

.field public final synthetic g:Lcom/vuitton/android/presentation/notification/NotificationBuilder;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/pager/PagerState;Landroid/content/Context;Landroidx/compose/material3/SnackbarHostState;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/components/AccountActivationComposableKt$AccountActivationComposable$3$1$1;->d:Landroidx/compose/foundation/pager/PagerState;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/components/AccountActivationComposableKt$AccountActivationComposable$3$1$1;->e:Landroid/content/Context;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/components/AccountActivationComposableKt$AccountActivationComposable$3$1$1;->f:Landroidx/compose/material3/SnackbarHostState;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/components/AccountActivationComposableKt$AccountActivationComposable$3$1$1;->g:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/components/AccountActivationComposableKt$AccountActivationComposable$3$1$1;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/components/AccountActivationComposableKt$AccountActivationComposable$3$1$1;->f:Landroidx/compose/material3/SnackbarHostState;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/components/AccountActivationComposableKt$AccountActivationComposable$3$1$1;->g:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/components/AccountActivationComposableKt$AccountActivationComposable$3$1$1;->d:Landroidx/compose/foundation/pager/PagerState;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/components/AccountActivationComposableKt$AccountActivationComposable$3$1$1;->e:Landroid/content/Context;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/components/AccountActivationComposableKt$AccountActivationComposable$3$1$1;-><init>(Landroidx/compose/foundation/pager/PagerState;Landroid/content/Context;Landroidx/compose/material3/SnackbarHostState;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/components/AccountActivationComposableKt$AccountActivationComposable$3$1$1;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationUiEvent;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/components/AccountActivationComposableKt$AccountActivationComposable$3$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/components/AccountActivationComposableKt$AccountActivationComposable$3$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/components/AccountActivationComposableKt$AccountActivationComposable$3$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/components/AccountActivationComposableKt$AccountActivationComposable$3$1$1;->c:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationUiEvent;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, p0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/components/AccountActivationComposableKt$AccountActivationComposable$3$1$1;->b:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    if-eq v2, v3, :cond_1

    if-ne v2, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_1
    :goto_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p1, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationUiEvent$InitiateSuccess;->a:Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationUiEvent$InitiateSuccess;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iput-object v5, p0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/components/AccountActivationComposableKt$AccountActivationComposable$3$1$1;->c:Ljava/lang/Object;

    iput v3, p0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/components/AccountActivationComposableKt$AccountActivationComposable$3$1$1;->b:I

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/components/AccountActivationComposableKt$AccountActivationComposable$3$1$1;->d:Landroidx/compose/foundation/pager/PagerState;

    const/4 v0, 0x6

    invoke-static {p1, v3, v5, p0, v0}, Landroidx/compose/foundation/pager/PagerState;->g(Landroidx/compose/foundation/pager/PagerState;ILandroidx/compose/animation/core/TweenSpec;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    goto :goto_1

    :cond_3
    sget-object p1, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationUiEvent$ActivationSuccess;->a:Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationUiEvent$ActivationSuccess;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/components/AccountActivationComposableKt$AccountActivationComposable$3$1$1;->e:Landroid/content/Context;

    if-eqz p1, :cond_4

    invoke-static {v2}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->b(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    :cond_4
    instance-of p1, v0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationUiEvent$Error;

    if-eqz p1, :cond_6

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationUiEvent$Error;

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationUiEvent$Error;->a:Ljava/lang/String;

    if-eqz p1, :cond_5

    new-instance v7, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Text;

    invoke-direct {v7, p1}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Text;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x0

    const/16 v11, 0x3c

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/components/AccountActivationComposableKt$AccountActivationComposable$3$1$1;->g:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lcom/vuitton/android/presentation/notification/NotificationBuilder;->a(Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ZLcom/vuitton/android/presentation/notification/NotificationDuration;Lcom/vuitton/android/presentation/notification/NotificationAction;I)Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    move-result-object p1

    sget-object v0, Lcom/vuitton/android/presentation/notification/NotificationBuilderKt;->a:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    sget-object v0, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;->DEFAULT:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    invoke-static {p1, v2, v0}, Lcom/vuitton/android/presentation/notification/NotificationBuilderKt;->b(Lcom/vuitton/android/presentation/notification/NotificationUiModel;Landroid/content/Context;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;)Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarVisuals;

    move-result-object p1

    iput-object v5, p0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/components/AccountActivationComposableKt$AccountActivationComposable$3$1$1;->c:Ljava/lang/Object;

    iput v4, p0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/components/AccountActivationComposableKt$AccountActivationComposable$3$1$1;->b:I

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/components/AccountActivationComposableKt$AccountActivationComposable$3$1$1;->f:Landroidx/compose/material3/SnackbarHostState;

    invoke-virtual {v0, p1, p0}, Landroidx/compose/material3/SnackbarHostState;->a(Landroidx/compose/material3/SnackbarVisuals;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    :goto_1
    return-object v1

    :cond_5
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_6
    invoke-static {}, Lv40;->g()V

    return-object v5
.end method
