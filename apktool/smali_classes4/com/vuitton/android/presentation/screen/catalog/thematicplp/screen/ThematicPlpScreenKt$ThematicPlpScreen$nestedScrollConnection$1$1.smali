.class public final Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt$ThematicPlpScreen$nestedScrollConnection$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt$ThematicPlpScreen$nestedScrollConnection$1$1",
        "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public b:Z

.field public final synthetic c:Landroidx/compose/runtime/MutableFloatState;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewstate/ThematicPlpViewState;

.field public final synthetic e:Lkotlin/jvm/functions/Function0;

.field public final synthetic f:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic g:F

.field public final synthetic h:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

.field public final synthetic i:Landroidx/compose/runtime/MutableState;

.field public final synthetic j:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/MutableFloatState;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewstate/ThematicPlpViewState;Lkotlin/jvm/functions/Function0;Lkotlinx/coroutines/CoroutineScope;FLandroidx/compose/ui/hapticfeedback/HapticFeedback;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt$ThematicPlpScreen$nestedScrollConnection$1$1;->c:Landroidx/compose/runtime/MutableFloatState;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt$ThematicPlpScreen$nestedScrollConnection$1$1;->d:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewstate/ThematicPlpViewState;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt$ThematicPlpScreen$nestedScrollConnection$1$1;->e:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt$ThematicPlpScreen$nestedScrollConnection$1$1;->f:Lkotlinx/coroutines/CoroutineScope;

    iput p5, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt$ThematicPlpScreen$nestedScrollConnection$1$1;->g:F

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt$ThematicPlpScreen$nestedScrollConnection$1$1;->h:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt$ThematicPlpScreen$nestedScrollConnection$1$1;->i:Landroidx/compose/runtime/MutableState;

    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt$ThematicPlpScreen$nestedScrollConnection$1$1;->j:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final A0(IJJ)J
    .locals 0

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt$ThematicPlpScreen$nestedScrollConnection$1$1;->i:Landroidx/compose/runtime/MutableState;

    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt$ThematicPlpScreen$nestedScrollConnection$1$1;->c:Landroidx/compose/runtime/MutableFloatState;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Landroidx/compose/runtime/MutableFloatState;->w(F)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt$ThematicPlpScreen$nestedScrollConnection$1$1;->b:Z

    :cond_0
    sget-object p0, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public final P(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt$ThematicPlpScreen$nestedScrollConnection$1$1;->c:Landroidx/compose/runtime/MutableFloatState;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroidx/compose/runtime/MutableFloatState;->w(F)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt$ThematicPlpScreen$nestedScrollConnection$1$1;->b:Z

    invoke-super/range {p0 .. p5}, Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;->P(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final l0(IJ)J
    .locals 6

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt$ThematicPlpScreen$nestedScrollConnection$1$1;->i:Landroidx/compose/runtime/MutableState;

    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt$ThematicPlpScreen$nestedScrollConnection$1$1;->f:Lkotlinx/coroutines/CoroutineScope;

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt$ThematicPlpScreen$nestedScrollConnection$1$1;->d:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewstate/ThematicPlpViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewstate/ThematicPlpViewState;->e:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;->b:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt$ThematicPlpScreen$nestedScrollConnection$1$1;->e:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt$ThematicPlpScreen$nestedScrollConnection$1$1$onPreScroll$1;

    invoke-direct {v0, p0, v3}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt$ThematicPlpScreen$nestedScrollConnection$1$1$onPreScroll$1;-><init>(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt$ThematicPlpScreen$nestedScrollConnection$1$1;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, v3, v3, v0, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_2
    :goto_1
    const-wide v4, 0xffffffffL

    and-long/2addr p2, v4

    long-to-int p2, p2

    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p3

    const/4 v0, 0x0

    cmpg-float p3, p3, v0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt$ThematicPlpScreen$nestedScrollConnection$1$1;->c:Landroidx/compose/runtime/MutableFloatState;

    if-gez p3, :cond_4

    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt$ThematicPlpScreen$nestedScrollConnection$1$1;->b:Z

    if-eqz p1, :cond_4

    invoke-interface {v5}, Landroidx/compose/runtime/FloatState;->a()F

    move-result p1

    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    sub-float/2addr p1, p2

    invoke-interface {v5, p1}, Landroidx/compose/runtime/MutableFloatState;->w(F)V

    invoke-interface {v5}, Landroidx/compose/runtime/FloatState;->a()F

    move-result p1

    iget p2, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt$ThematicPlpScreen$nestedScrollConnection$1$1;->g:F

    cmpl-float p1, p1, p2

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt$ThematicPlpScreen$nestedScrollConnection$1$1;->h:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    if-lez p1, :cond_3

    invoke-interface {v5, v0}, Landroidx/compose/runtime/MutableFloatState;->w(F)V

    iput-boolean v4, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt$ThematicPlpScreen$nestedScrollConnection$1$1;->b:Z

    new-instance p1, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt$ThematicPlpScreen$nestedScrollConnection$1$1$onPreScroll$2;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt$ThematicPlpScreen$nestedScrollConnection$1$1;->j:Lkotlin/jvm/functions/Function0;

    invoke-direct {p1, p2, p0, v3}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt$ThematicPlpScreen$nestedScrollConnection$1$1$onPreScroll$2;-><init>(Landroidx/compose/ui/hapticfeedback/HapticFeedback;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, v3, v3, p1, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    goto :goto_2

    :cond_3
    sget-object p0, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;->b:Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p0, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedbackType;->d:I

    invoke-interface {p2, p0}, Landroidx/compose/ui/hapticfeedback/HapticFeedback;->a(I)V

    goto :goto_2

    :cond_4
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    cmpl-float p1, p1, v0

    if-lez p1, :cond_5

    invoke-interface {v5, v0}, Landroidx/compose/runtime/MutableFloatState;->w(F)V

    iput-boolean v4, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt$ThematicPlpScreen$nestedScrollConnection$1$1;->b:Z

    :cond_5
    :goto_2
    sget-object p0, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 p0, 0x0

    return-wide p0
.end method
