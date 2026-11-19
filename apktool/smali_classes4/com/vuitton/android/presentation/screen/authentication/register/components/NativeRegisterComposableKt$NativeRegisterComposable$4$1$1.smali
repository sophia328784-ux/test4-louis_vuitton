.class final Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterComposableKt$NativeRegisterComposable$4$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlin/Unit;",
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "it"
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
    c = "com.vuitton.android.presentation.screen.authentication.register.components.NativeRegisterComposableKt$NativeRegisterComposable$4$1$1"
    f = "NativeRegisterComposable.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/authentication/accountmanager/AccountManager;

.field public final synthetic c:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic d:Lkotlin/jvm/functions/Function0;

.field public final synthetic e:Landroid/content/Context;

.field public final synthetic f:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/authentication/accountmanager/AccountManager;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function0;Landroid/content/Context;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterComposableKt$NativeRegisterComposable$4$1$1;->b:Lcom/vuitton/android/presentation/screen/authentication/accountmanager/AccountManager;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterComposableKt$NativeRegisterComposable$4$1$1;->c:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterComposableKt$NativeRegisterComposable$4$1$1;->d:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterComposableKt$NativeRegisterComposable$4$1$1;->e:Landroid/content/Context;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterComposableKt$NativeRegisterComposable$4$1$1;->f:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterComposableKt$NativeRegisterComposable$4$1$1;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterComposableKt$NativeRegisterComposable$4$1$1;->e:Landroid/content/Context;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterComposableKt$NativeRegisterComposable$4$1$1;->f:Landroidx/compose/runtime/MutableState;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterComposableKt$NativeRegisterComposable$4$1$1;->b:Lcom/vuitton/android/presentation/screen/authentication/accountmanager/AccountManager;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterComposableKt$NativeRegisterComposable$4$1$1;->c:Lkotlinx/coroutines/CoroutineScope;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterComposableKt$NativeRegisterComposable$4$1$1;->d:Lkotlin/jvm/functions/Function0;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterComposableKt$NativeRegisterComposable$4$1$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/accountmanager/AccountManager;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function0;Landroid/content/Context;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/Unit;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterComposableKt$NativeRegisterComposable$4$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterComposableKt$NativeRegisterComposable$4$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterComposableKt$NativeRegisterComposable$4$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterComposableKt$NativeRegisterComposable$4$1$1;->d:Lkotlin/jvm/functions/Function0;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterComposableKt$NativeRegisterComposable$4$1$1;->b:Lcom/vuitton/android/presentation/screen/authentication/accountmanager/AccountManager;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterComposableKt$NativeRegisterComposable$4$1$1$1;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterComposableKt$NativeRegisterComposable$4$1$1;->e:Landroid/content/Context;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterComposableKt$NativeRegisterComposable$4$1$1;->f:Landroidx/compose/runtime/MutableState;

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterComposableKt$NativeRegisterComposable$4$1$1$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/accountmanager/AccountManager;Landroid/content/Context;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    const/4 v0, 0x3

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterComposableKt$NativeRegisterComposable$4$1$1;->c:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v4, v4, v1, v0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p0

    new-instance v0, Ly2;

    const/16 v1, 0x19

    invoke-direct {v0, p1, v1}, Ly2;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-interface {p0, v0}, Lkotlinx/coroutines/Job;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
