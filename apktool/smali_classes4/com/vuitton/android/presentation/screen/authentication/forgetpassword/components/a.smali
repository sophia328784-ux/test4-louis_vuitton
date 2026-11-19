.class public final synthetic Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic d:Landroidx/compose/foundation/pager/PagerState;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModel;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/pager/PagerState;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/a;->e:Ljava/lang/Object;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/a;->c:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/a;->d:Landroidx/compose/foundation/pager/PagerState;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/pager/PagerState;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/a;->c:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/a;->d:Landroidx/compose/foundation/pager/PagerState;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/a;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/a;->b:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/a;->d:Landroidx/compose/foundation/pager/PagerState;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/a;->c:Lkotlinx/coroutines/CoroutineScope;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/a;->e:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModel;

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordTrackingUiModel$OnPreviousEvent;->a:Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordTrackingUiModel$OnPreviousEvent;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModel;->y4(Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordTrackingUiModel;)V

    new-instance p0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/ForgetPasswordComposableKt$ForgetPasswordComposable$10$1$1;

    invoke-direct {p0, v3, v2}, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/ForgetPasswordComposableKt$ForgetPasswordComposable$10$1$1;-><init>(Landroidx/compose/foundation/pager/PagerState;Lkotlin/coroutines/Continuation;)V

    invoke-static {v4, v2, v2, p0, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p0, Lkotlin/jvm/functions/Function0;

    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/ForgetPasswordComposableKt$ForgetPasswordComposable$3$1$1;

    invoke-direct {v0, v3, p0, v2}, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/ForgetPasswordComposableKt$ForgetPasswordComposable$3$1$1;-><init>(Landroidx/compose/foundation/pager/PagerState;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    invoke-static {v4, v2, v2, v0, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
