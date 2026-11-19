.class public final synthetic Lcom/vuitton/android/designkit/components/components/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:F


# direct methods
.method public synthetic constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/vuitton/android/designkit/components/components/a;->b:F

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroidx/compose/foundation/gestures/DraggableAnchorsConfig;

    sget v0, Lcom/vuitton/android/designkit/components/components/LVSwipeToRevealKt;->a:F

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/designkit/components/components/SwipeDragAnchors;->Start:Lcom/vuitton/android/designkit/components/components/SwipeDragAnchors;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/compose/foundation/gestures/DraggableAnchorsConfig;->a(Ljava/lang/Enum;F)V

    sget-object v0, Lcom/vuitton/android/designkit/components/components/SwipeDragAnchors;->End:Lcom/vuitton/android/designkit/components/components/SwipeDragAnchors;

    iget p0, p0, Lcom/vuitton/android/designkit/components/components/a;->b:F

    invoke-virtual {p1, v0, p0}, Landroidx/compose/foundation/gestures/DraggableAnchorsConfig;->a(Ljava/lang/Enum;F)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
