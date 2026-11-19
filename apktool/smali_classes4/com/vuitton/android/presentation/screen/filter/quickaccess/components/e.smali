.class public final synthetic Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

.field public final synthetic c:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic d:Lkotlin/jvm/functions/Function1;

.field public final synthetic e:Z

.field public final synthetic f:Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;

.field public final synthetic g:Lkotlin/jvm/functions/Function0;

.field public final synthetic h:Landroidx/compose/runtime/MutableState;

.field public final synthetic i:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/hapticfeedback/HapticFeedback;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function1;ZLcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/e;->b:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/e;->c:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/e;->d:Lkotlin/jvm/functions/Function1;

    iput-boolean p4, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/e;->e:Z

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/e;->f:Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/e;->g:Lkotlin/jvm/functions/Function0;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/e;->h:Landroidx/compose/runtime/MutableState;

    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/e;->i:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 10

    sget-object v0, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;->b:Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedbackType;->a:I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/e;->b:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    invoke-interface {v1, v0}, Landroidx/compose/ui/hapticfeedback/HapticFeedback;->a(I)V

    new-instance v2, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$onHideFiltersClicked$1$1$1;

    const/4 v9, 0x0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/e;->d:Lkotlin/jvm/functions/Function1;

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/e;->e:Z

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/e;->f:Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/e;->g:Lkotlin/jvm/functions/Function0;

    iget-object v7, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/e;->h:Landroidx/compose/runtime/MutableState;

    iget-object v8, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/e;->i:Landroidx/compose/runtime/MutableState;

    invoke-direct/range {v2 .. v9}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$onHideFiltersClicked$1$1$1;-><init>(Lkotlin/jvm/functions/Function1;ZLcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    const/4 v0, 0x3

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/e;->c:Lkotlinx/coroutines/CoroutineScope;

    const/4 v1, 0x0

    invoke-static {p0, v1, v1, v2, v0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
