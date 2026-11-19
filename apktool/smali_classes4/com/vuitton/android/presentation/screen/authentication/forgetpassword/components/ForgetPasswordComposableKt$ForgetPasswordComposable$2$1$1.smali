.class final Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/ForgetPasswordComposableKt$ForgetPasswordComposable$2$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Boolean;",
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
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "isSuccess",
        ""
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
    c = "com.vuitton.android.presentation.screen.authentication.forgetpassword.components.ForgetPasswordComposableKt$ForgetPasswordComposable$2$1$1"
    f = "ForgetPasswordComposable.kt"
    l = {
        0x54
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public synthetic c:Z

.field public final synthetic d:Landroidx/compose/material3/SnackbarHostState;

.field public final synthetic e:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

.field public final synthetic f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroidx/compose/material3/SnackbarHostState;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/ForgetPasswordComposableKt$ForgetPasswordComposable$2$1$1;->d:Landroidx/compose/material3/SnackbarHostState;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/ForgetPasswordComposableKt$ForgetPasswordComposable$2$1$1;->e:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/ForgetPasswordComposableKt$ForgetPasswordComposable$2$1$1;->f:Landroid/content/Context;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/ForgetPasswordComposableKt$ForgetPasswordComposable$2$1$1;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/ForgetPasswordComposableKt$ForgetPasswordComposable$2$1$1;->e:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/ForgetPasswordComposableKt$ForgetPasswordComposable$2$1$1;->f:Landroid/content/Context;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/ForgetPasswordComposableKt$ForgetPasswordComposable$2$1$1;->d:Landroidx/compose/material3/SnackbarHostState;

    invoke-direct {v0, p0, v1, v2, p2}, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/ForgetPasswordComposableKt$ForgetPasswordComposable$2$1$1;-><init>(Landroidx/compose/material3/SnackbarHostState;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    iput-boolean p0, v0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/ForgetPasswordComposableKt$ForgetPasswordComposable$2$1$1;->c:Z

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/ForgetPasswordComposableKt$ForgetPasswordComposable$2$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/ForgetPasswordComposableKt$ForgetPasswordComposable$2$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/ForgetPasswordComposableKt$ForgetPasswordComposable$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/ForgetPasswordComposableKt$ForgetPasswordComposable$2$1$1;->c:Z

    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/ForgetPasswordComposableKt$ForgetPasswordComposable$2$1$1;->b:I

    const/4 v7, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-ne v0, v7, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    const/4 p1, 0x2

    if-eqz v2, :cond_2

    new-instance v0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v3, 0x7f140d4d

    invoke-direct {v0, v3, v1, p1, v1}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_0
    move-object v1, v0

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v3, 0x7f140d4c

    invoke-direct {v0, v3, v1, p1, v1}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :goto_1
    const/4 v4, 0x0

    const/16 v5, 0x3c

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/ForgetPasswordComposableKt$ForgetPasswordComposable$2$1$1;->e:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/notification/NotificationBuilder;->a(Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ZLcom/vuitton/android/presentation/notification/NotificationDuration;Lcom/vuitton/android/presentation/notification/NotificationAction;I)Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    move-result-object p1

    sget-object v0, Lcom/vuitton/android/presentation/notification/NotificationBuilderKt;->a:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    sget-object v0, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;->DEFAULT:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/ForgetPasswordComposableKt$ForgetPasswordComposable$2$1$1;->f:Landroid/content/Context;

    invoke-static {p1, v1, v0}, Lcom/vuitton/android/presentation/notification/NotificationBuilderKt;->b(Lcom/vuitton/android/presentation/notification/NotificationUiModel;Landroid/content/Context;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;)Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarVisuals;

    move-result-object p1

    iput-boolean v2, p0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/ForgetPasswordComposableKt$ForgetPasswordComposable$2$1$1;->c:Z

    iput v7, p0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/ForgetPasswordComposableKt$ForgetPasswordComposable$2$1$1;->b:I

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/ForgetPasswordComposableKt$ForgetPasswordComposable$2$1$1;->d:Landroidx/compose/material3/SnackbarHostState;

    invoke-virtual {v0, p1, p0}, Landroidx/compose/material3/SnackbarHostState;->a(Landroidx/compose/material3/SnackbarVisuals;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v6, :cond_3

    return-object v6

    :cond_3
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
