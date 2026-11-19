.class public final synthetic Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/pager/PagerState;

.field public final synthetic c:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic d:Lkotlin/jvm/functions/Function1;

.field public final synthetic e:Landroidx/compose/ui/platform/SoftwareKeyboardController;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/pager/PagerState;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/platform/SoftwareKeyboardController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/b;->b:Landroidx/compose/foundation/pager/PagerState;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/b;->c:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/b;->d:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/b;->e:Landroidx/compose/ui/platform/SoftwareKeyboardController;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/b;->b:Landroidx/compose/foundation/pager/PagerState;

    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->k()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    new-instance v1, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/ForgetPasswordScreenKt$ForgetPasswordScreen$1$3$1$1;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/b;->d:Lkotlin/jvm/functions/Function1;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/b;->e:Landroidx/compose/ui/platform/SoftwareKeyboardController;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/ForgetPasswordScreenKt$ForgetPasswordScreen$1$3$1$1;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/platform/SoftwareKeyboardController;Landroidx/compose/foundation/pager/PagerState;Lkotlin/coroutines/Continuation;)V

    const/4 v0, 0x3

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/b;->c:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v4, v4, v1, v0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
