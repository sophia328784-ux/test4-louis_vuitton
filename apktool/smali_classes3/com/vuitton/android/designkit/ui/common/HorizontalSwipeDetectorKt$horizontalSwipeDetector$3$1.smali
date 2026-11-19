.class final Lcom/vuitton/android/designkit/ui/common/HorizontalSwipeDetectorKt$horizontalSwipeDetector$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/input/pointer/PointerInputEventHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/designkit/ui/common/HorizontalSwipeDetectorKt$horizontalSwipeDetector$3$1$WhenMappings;
    }
.end annotation

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
.field public final synthetic a:Lkotlin/jvm/functions/Function0;

.field public final synthetic b:Lkotlin/jvm/functions/Function0;

.field public final synthetic c:J

.field public final synthetic d:Landroidx/compose/ui/unit/LayoutDirection;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;JLandroidx/compose/ui/unit/LayoutDirection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/designkit/ui/common/HorizontalSwipeDetectorKt$horizontalSwipeDetector$3$1;->a:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lcom/vuitton/android/designkit/ui/common/HorizontalSwipeDetectorKt$horizontalSwipeDetector$3$1;->b:Lkotlin/jvm/functions/Function0;

    iput-wide p3, p0, Lcom/vuitton/android/designkit/ui/common/HorizontalSwipeDetectorKt$horizontalSwipeDetector$3$1;->c:J

    iput-object p5, p0, Lcom/vuitton/android/designkit/ui/common/HorizontalSwipeDetectorKt$horizontalSwipeDetector$3$1;->d:Landroidx/compose/ui/unit/LayoutDirection;

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11

    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v6, Lnz;

    const/4 v0, 0x2

    invoke-direct {v6, v0, v4}, Lnz;-><init>(ILkotlin/jvm/internal/Ref$ObjectRef;)V

    new-instance v7, Lcom/vuitton/android/designkit/ui/common/a;

    iget-object v0, p0, Lcom/vuitton/android/designkit/ui/common/HorizontalSwipeDetectorKt$horizontalSwipeDetector$3$1;->a:Lkotlin/jvm/functions/Function0;

    iget-object v1, p0, Lcom/vuitton/android/designkit/ui/common/HorizontalSwipeDetectorKt$horizontalSwipeDetector$3$1;->b:Lkotlin/jvm/functions/Function0;

    invoke-direct {v7, v3, v0, v1}, Lcom/vuitton/android/designkit/ui/common/a;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    new-instance v0, Lcom/vuitton/android/designkit/ui/common/b;

    iget-wide v1, p0, Lcom/vuitton/android/designkit/ui/common/HorizontalSwipeDetectorKt$horizontalSwipeDetector$3$1;->c:J

    iget-object v5, p0, Lcom/vuitton/android/designkit/ui/common/HorizontalSwipeDetectorKt$horizontalSwipeDetector$3$1;->d:Landroidx/compose/ui/unit/LayoutDirection;

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/designkit/ui/common/b;-><init>(JLkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/compose/ui/unit/LayoutDirection;)V

    const/4 v10, 0x4

    move-object v5, p1

    move-object v9, p2

    move-object v8, v0

    invoke-static/range {v5 .. v10}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->g(Landroidx/compose/ui/input/pointer/PointerInputScope;Lnz;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
