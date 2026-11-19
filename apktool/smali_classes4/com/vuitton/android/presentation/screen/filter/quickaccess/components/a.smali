.class public final synthetic Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic d:Landroidx/compose/runtime/MutableState;

.field public final synthetic e:Lkotlin/jvm/functions/Function1;

.field public final synthetic f:Lkotlin/jvm/functions/Function1;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/a;->b:Z

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/a;->c:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/a;->d:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/a;->e:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/a;->f:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/a;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    sget-object v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersSliderKt;->a:Landroidx/compose/animation/ExitTransition;

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/a;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/a;->d:Landroidx/compose/runtime/MutableState;

    invoke-interface {v1, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    new-instance v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersSliderKt$AnimatedActiveFilterList$3$onFilterClicked$1$1$1;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/a;->e:Lkotlin/jvm/functions/Function1;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/a;->f:Lkotlin/jvm/functions/Function1;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/a;->g:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/ActiveFiltersSliderKt$AnimatedActiveFilterList$3$onFilterClicked$1$1$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x3

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/a;->c:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v4, v4, v0, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
