.class public final synthetic Lcom/vuitton/android/presentation/screen/authentication/common/components/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lkotlin/jvm/functions/Function0;

.field public final synthetic d:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Lkotlinx/coroutines/CoroutineScope;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lcom/vuitton/android/presentation/screen/authentication/common/components/a;->b:I

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/common/components/a;->c:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/authentication/common/components/a;->d:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/authentication/common/components/a;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lcom/vuitton/android/presentation/screen/authentication/common/components/a;->b:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/authentication/common/components/a;->e:Ljava/lang/Object;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/authentication/common/components/a;->d:Lkotlinx/coroutines/CoroutineScope;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/common/components/a;->c:Lkotlin/jvm/functions/Function0;

    packed-switch v0, :pswitch_data_0

    check-cast v3, Landroidx/compose/foundation/pager/PagerState;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    new-instance p0, Lcom/vuitton/android/presentation/screen/authentication/common/components/NativeAuthenticationLayoutKt$NativeAuthenticationLayout$3$1$1$1$1$1$1;

    invoke-direct {p0, v3, v2}, Lcom/vuitton/android/presentation/screen/authentication/common/components/NativeAuthenticationLayoutKt$NativeAuthenticationLayout$3$1$1$1$1$1$1;-><init>(Landroidx/compose/foundation/pager/PagerState;Lkotlin/coroutines/Continuation;)V

    invoke-static {v4, v2, v2, p0, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast v3, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    new-instance p0, Lcom/vuitton/android/presentation/screen/authentication/common/components/NativeAuthenticationLayoutKt$NativeAuthenticationLayout$3$3$1$2$1$1;

    invoke-direct {p0, v3, v2}, Lcom/vuitton/android/presentation/screen/authentication/common/components/NativeAuthenticationLayoutKt$NativeAuthenticationLayout$3$3$1$2$1$1;-><init>(Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/coroutines/Continuation;)V

    invoke-static {v4, v2, v2, p0, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    check-cast v3, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_1
    new-instance p0, Lcom/vuitton/android/presentation/screen/authentication/common/components/NativeAuthenticationLayoutKt$NativeAuthenticationLayout$3$3$1$1$1$1;

    invoke-direct {p0, v3, v2}, Lcom/vuitton/android/presentation/screen/authentication/common/components/NativeAuthenticationLayoutKt$NativeAuthenticationLayout$3$3$1$1$1$1;-><init>(Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/coroutines/Continuation;)V

    invoke-static {v4, v2, v2, p0, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
