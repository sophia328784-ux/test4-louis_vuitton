.class final Lcom/vuitton/android/presentation/screen/aicompanion/components/history/AICompanionHistoryScreenKt$AICompanionHistoryScreen$3$1$1$1$1$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/input/pointer/PointerInputEventHandler;


# annotations
.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

.field public final synthetic b:Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatHistoryUiModel;

.field public final synthetic c:Landroidx/compose/runtime/MutableState;

.field public final synthetic d:Z

.field public final synthetic e:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/hapticfeedback/HapticFeedback;Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatHistoryUiModel;Landroidx/compose/runtime/MutableState;ZLkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/aicompanion/components/history/AICompanionHistoryScreenKt$AICompanionHistoryScreen$3$1$1$1$1$1$1$1;->a:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/aicompanion/components/history/AICompanionHistoryScreenKt$AICompanionHistoryScreen$3$1$1$1$1$1$1$1;->b:Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatHistoryUiModel;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/aicompanion/components/history/AICompanionHistoryScreenKt$AICompanionHistoryScreen$3$1$1$1$1$1$1$1;->c:Landroidx/compose/runtime/MutableState;

    iput-boolean p4, p0, Lcom/vuitton/android/presentation/screen/aicompanion/components/history/AICompanionHistoryScreenKt$AICompanionHistoryScreen$3$1$1$1$1$1$1$1;->d:Z

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/aicompanion/components/history/AICompanionHistoryScreenKt$AICompanionHistoryScreen$3$1$1$1$1$1$1$1;->e:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    new-instance v2, Ln0;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/aicompanion/components/history/AICompanionHistoryScreenKt$AICompanionHistoryScreen$3$1$1$1$1$1$1$1;->a:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/aicompanion/components/history/AICompanionHistoryScreenKt$AICompanionHistoryScreen$3$1$1$1$1$1$1$1;->b:Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatHistoryUiModel;

    iget-object v7, p0, Lcom/vuitton/android/presentation/screen/aicompanion/components/history/AICompanionHistoryScreenKt$AICompanionHistoryScreen$3$1$1$1$1$1$1$1;->c:Landroidx/compose/runtime/MutableState;

    invoke-direct {v2, v1, v6, v7, v0}, Ln0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v3, Ls0;

    const/4 v8, 0x0

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/aicompanion/components/history/AICompanionHistoryScreenKt$AICompanionHistoryScreen$3$1$1$1$1$1$1$1;->d:Z

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/aicompanion/components/history/AICompanionHistoryScreenKt$AICompanionHistoryScreen$3$1$1$1$1$1$1$1;->e:Lkotlin/jvm/functions/Function1;

    invoke-direct/range {v3 .. v8}, Ls0;-><init>(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    const/4 v6, 0x5

    const/4 v1, 0x0

    move-object v4, v3

    const/4 v3, 0x0

    move-object v0, p1

    move-object v5, p2

    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->e(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
