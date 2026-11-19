.class public abstract Lcom/vuitton/android/designkit/ui/common/HorizontalSwipeDetectorKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "system"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Landroidx/compose/ui/Modifier;ZJLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/Modifier;
    .locals 7

    if-eqz p0, :cond_0

    const-string v0, "horizontalSwipeDetector-JQ-Ljw8"

    invoke-static {p0, v0}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->n:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {p6, v0}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroidx/compose/ui/unit/LayoutDirection;

    if-eqz p1, :cond_3

    const p1, 0x3c13fdfe

    invoke-interface {p6, p1}, Landroidx/compose/runtime/Composer;->L(I)V

    new-instance p1, Landroidx/compose/ui/unit/IntSize;

    invoke-direct {p1, p2, p3}, Landroidx/compose/ui/unit/IntSize;-><init>(J)V

    invoke-interface {p6, p4}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p6, p5}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p6, p2, p3}, Landroidx/compose/runtime/Composer;->e(J)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-interface {p6, v1}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_1

    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v1, v0, :cond_2

    :cond_1
    new-instance v1, Lcom/vuitton/android/designkit/ui/common/HorizontalSwipeDetectorKt$horizontalSwipeDetector$3$1;

    move-wide v4, p2

    move-object v2, p4

    move-object v3, p5

    invoke-direct/range {v1 .. v6}, Lcom/vuitton/android/designkit/ui/common/HorizontalSwipeDetectorKt$horizontalSwipeDetector$3$1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;JLandroidx/compose/ui/unit/LayoutDirection;)V

    invoke-interface {p6, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    invoke-static {p0, p1, v1}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    invoke-interface {p6}, Landroidx/compose/runtime/Composer;->F()V

    return-object p0

    :cond_3
    const p1, 0x3c2ef4d2

    invoke-interface {p6, p1}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {p6}, Landroidx/compose/runtime/Composer;->F()V

    return-object p0
.end method
