.class public final synthetic Lcom/vuitton/android/presentation/screen/plp/components/screens/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:Lkotlin/jvm/functions/Function1;

.field public final synthetic c:Z

.field public final synthetic d:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic e:Lkotlin/jvm/functions/Function0;

.field public final synthetic f:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;ZLkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/plp/components/screens/a;->b:Lkotlin/jvm/functions/Function1;

    iput-boolean p2, p0, Lcom/vuitton/android/presentation/screen/plp/components/screens/a;->c:Z

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/plp/components/screens/a;->d:Lkotlinx/coroutines/CoroutineScope;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/plp/components/screens/a;->e:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/plp/components/screens/a;->f:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    sget-object v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FiltersButtonState;->Hidden:Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FiltersButtonState;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/plp/components/screens/a;->b:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/plp/components/screens/a;->c:Z

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/plp/components/screens/a;->e:Lkotlin/jvm/functions/Function0;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/plp/components/screens/a;->f:Lkotlin/jvm/functions/Function1;

    if-nez v0, :cond_0

    new-instance v0, Lcom/vuitton/android/presentation/screen/plp/components/screens/PLPScreenKt$PLPScreen$6$handleBackPressed$1$1$1;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/vuitton/android/presentation/screen/plp/components/screens/PLPScreenKt$PLPScreen$6$handleBackPressed$1$1$1;-><init>(Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    const/4 v1, 0x3

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/components/screens/a;->d:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v3, v3, v0, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
