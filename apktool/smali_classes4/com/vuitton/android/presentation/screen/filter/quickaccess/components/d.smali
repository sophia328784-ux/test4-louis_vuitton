.class public final synthetic Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;

.field public final synthetic d:Lkotlin/jvm/functions/Function1;

.field public final synthetic e:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic f:Landroidx/compose/runtime/MutableState;

.field public final synthetic g:Landroidx/compose/runtime/MutableState;

.field public final synthetic h:Lkotlin/jvm/functions/Function1;

.field public final synthetic i:Lkotlin/jvm/functions/Function1;

.field public final synthetic j:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/hapticfeedback/HapticFeedback;Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/d;->b:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/d;->c:Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/d;->d:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/d;->e:Lkotlinx/coroutines/CoroutineScope;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/d;->f:Landroidx/compose/runtime/MutableState;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/d;->g:Landroidx/compose/runtime/MutableState;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/d;->h:Lkotlin/jvm/functions/Function1;

    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/d;->i:Lkotlin/jvm/functions/Function1;

    iput-object p9, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/d;->j:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 8

    sget-object v0, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;->b:Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedbackType;->a:I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/d;->b:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    invoke-interface {v1, v0}, Landroidx/compose/ui/hapticfeedback/HapticFeedback;->a(I)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/d;->f:Landroidx/compose/runtime/MutableState;

    invoke-interface {v1, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/d;->g:Landroidx/compose/runtime/MutableState;

    invoke-interface {v1, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/d;->c:Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;

    iget-boolean v0, v3, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;->q:Z

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/d;->d:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    sget-object p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDropDownType;->SORT_BY:Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDropDownType;

    invoke-interface {v1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-boolean v0, v3, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;->r:Z

    if-eqz v0, :cond_1

    sget-object p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDropDownType;->MORES_FILTERS:Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDropDownType;

    invoke-interface {v1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$onShowFiltersClicked$1$1$1;

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/d;->h:Lkotlin/jvm/functions/Function1;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/d;->i:Lkotlin/jvm/functions/Function1;

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/d;->j:Landroidx/compose/runtime/MutableState;

    invoke-direct/range {v2 .. v7}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$onShowFiltersClicked$1$1$1;-><init>(Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    const/4 v0, 0x3

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/d;->e:Lkotlinx/coroutines/CoroutineScope;

    const/4 v1, 0x0

    invoke-static {p0, v1, v1, v2, v0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
