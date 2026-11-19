.class final Landroidx/compose/material/ripple/RippleNode$onAttach$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:Landroidx/compose/material/ripple/RippleNode;

.field public final synthetic c:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method public constructor <init>(Landroidx/compose/material/ripple/RippleNode;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1$1;->b:Landroidx/compose/material/ripple/RippleNode;

    iput-object p2, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1$1;->c:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11

    check-cast p1, Landroidx/compose/foundation/interaction/Interaction;

    instance-of p2, p1, Landroidx/compose/foundation/interaction/PressInteraction;

    iget-object v0, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1$1;->b:Landroidx/compose/material/ripple/RippleNode;

    if-eqz p2, :cond_1

    iget-boolean p0, v0, Landroidx/compose/material/ripple/RippleNode;->x:Z

    if-eqz p0, :cond_0

    check-cast p1, Landroidx/compose/foundation/interaction/PressInteraction;

    invoke-virtual {v0, p1}, Landroidx/compose/material/ripple/RippleNode;->j2(Landroidx/compose/foundation/interaction/PressInteraction;)V

    goto/16 :goto_6

    :cond_0
    iget-object p0, v0, Landroidx/compose/material/ripple/RippleNode;->y:Landroidx/collection/MutableObjectList;

    invoke-virtual {p0, p1}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_1
    iget-object p2, v0, Landroidx/compose/material/ripple/RippleNode;->u:Landroidx/compose/material/ripple/StateLayer;

    if-nez p2, :cond_2

    new-instance p2, Landroidx/compose/material/ripple/StateLayer;

    iget-boolean v1, v0, Landroidx/compose/material/ripple/RippleNode;->q:Z

    iget-object v2, v0, Landroidx/compose/material/ripple/RippleNode;->t:Lkotlin/jvm/functions/Function0;

    invoke-direct {p2, v1, v2}, Landroidx/compose/material/ripple/StateLayer;-><init>(ZLkotlin/jvm/functions/Function0;)V

    invoke-static {v0}, Landroidx/compose/ui/node/DrawModifierNodeKt;->a(Landroidx/compose/ui/node/DrawModifierNode;)V

    iput-object p2, v0, Landroidx/compose/material/ripple/RippleNode;->u:Landroidx/compose/material/ripple/StateLayer;

    :cond_2
    iget-object v0, p2, Landroidx/compose/material/ripple/StateLayer;->d:Ljava/util/ArrayList;

    instance-of v1, p1, Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    if-eqz v1, :cond_3

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    instance-of v1, p1, Landroidx/compose/foundation/interaction/HoverInteraction$Exit;

    if-eqz v1, :cond_4

    check-cast p1, Landroidx/compose/foundation/interaction/HoverInteraction$Exit;

    iget-object p1, p1, Landroidx/compose/foundation/interaction/HoverInteraction$Exit;->a:Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    instance-of v1, p1, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    if-eqz v1, :cond_5

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    instance-of v1, p1, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;

    if-eqz v1, :cond_6

    check-cast p1, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;

    iget-object p1, p1, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;->a:Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    instance-of v1, p1, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    if-eqz v1, :cond_7

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    instance-of v1, p1, Landroidx/compose/foundation/interaction/DragInteraction$Stop;

    if-eqz v1, :cond_8

    check-cast p1, Landroidx/compose/foundation/interaction/DragInteraction$Stop;

    iget-object p1, p1, Landroidx/compose/foundation/interaction/DragInteraction$Stop;->a:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    instance-of v1, p1, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;

    if-eqz v1, :cond_13

    check-cast p1, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;

    iget-object p1, p1, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;->a:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->N(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/interaction/Interaction;

    iget-object v0, p2, Landroidx/compose/material/ripple/StateLayer;->e:Landroidx/compose/foundation/interaction/Interaction;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x3

    const/4 v1, 0x0

    iget-object p0, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1$1;->c:Lkotlinx/coroutines/CoroutineScope;

    if-eqz p1, :cond_f

    iget-object v2, p2, Landroidx/compose/material/ripple/StateLayer;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/material/ripple/RippleAlpha;

    instance-of v3, p1, Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    if-eqz v3, :cond_9

    iget v2, v2, Landroidx/compose/material/ripple/RippleAlpha;->c:F

    goto :goto_1

    :cond_9
    instance-of v4, p1, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    if-eqz v4, :cond_a

    iget v2, v2, Landroidx/compose/material/ripple/RippleAlpha;->b:F

    goto :goto_1

    :cond_a
    instance-of v4, p1, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    if-eqz v4, :cond_b

    iget v2, v2, Landroidx/compose/material/ripple/RippleAlpha;->a:F

    goto :goto_1

    :cond_b
    const/4 v2, 0x0

    :goto_1
    sget-object v4, Landroidx/compose/material/ripple/RippleKt;->a:Landroidx/compose/animation/core/TweenSpec;

    if-eqz v3, :cond_c

    goto :goto_3

    :cond_c
    instance-of v3, p1, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    if-eqz v3, :cond_d

    new-instance v5, Landroidx/compose/animation/core/TweenSpec;

    sget-object v8, Landroidx/compose/animation/core/EasingKt;->d:Lov;

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/16 v6, 0x2d

    const/4 v7, 0x0

    invoke-direct/range {v5 .. v10}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_2
    move-object v4, v5

    goto :goto_3

    :cond_d
    instance-of v3, p1, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    if-eqz v3, :cond_e

    new-instance v5, Landroidx/compose/animation/core/TweenSpec;

    sget-object v8, Landroidx/compose/animation/core/EasingKt;->d:Lov;

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/16 v6, 0x2d

    const/4 v7, 0x0

    invoke-direct/range {v5 .. v10}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_2

    :cond_e
    :goto_3
    new-instance v3, Landroidx/compose/material/ripple/StateLayer$handleInteraction$1;

    invoke-direct {v3, p2, v2, v4, v1}, Landroidx/compose/material/ripple/StateLayer$handleInteraction$1;-><init>(Landroidx/compose/material/ripple/StateLayer;FLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)V

    invoke-static {p0, v1, v1, v3, v0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    goto :goto_5

    :cond_f
    iget-object v2, p2, Landroidx/compose/material/ripple/StateLayer;->e:Landroidx/compose/foundation/interaction/Interaction;

    sget-object v3, Landroidx/compose/material/ripple/RippleKt;->a:Landroidx/compose/animation/core/TweenSpec;

    instance-of v4, v2, Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    if-eqz v4, :cond_10

    goto :goto_4

    :cond_10
    instance-of v4, v2, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    if-eqz v4, :cond_11

    goto :goto_4

    :cond_11
    instance-of v2, v2, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    if-eqz v2, :cond_12

    new-instance v4, Landroidx/compose/animation/core/TweenSpec;

    sget-object v7, Landroidx/compose/animation/core/EasingKt;->d:Lov;

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/16 v5, 0x96

    const/4 v6, 0x0

    invoke-direct/range {v4 .. v9}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v3, v4

    :cond_12
    :goto_4
    new-instance v2, Landroidx/compose/material/ripple/StateLayer$handleInteraction$2;

    invoke-direct {v2, p2, v3, v1}, Landroidx/compose/material/ripple/StateLayer$handleInteraction$2;-><init>(Landroidx/compose/material/ripple/StateLayer;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)V

    invoke-static {p0, v1, v1, v2, v0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :goto_5
    iput-object p1, p2, Landroidx/compose/material/ripple/StateLayer;->e:Landroidx/compose/foundation/interaction/Interaction;

    :cond_13
    :goto_6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
