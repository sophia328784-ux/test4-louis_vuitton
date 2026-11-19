.class public final Lcom/dynatrace/agent/userinteraction/model/TouchUserInteractionGeneratorImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynatrace/agent/userinteraction/model/TouchUserInteractionGenerator;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/dynatrace/agent/userinteraction/model/TouchUserInteractionGeneratorImpl;",
        "Lcom/dynatrace/agent/userinteraction/model/TouchUserInteractionGenerator;",
        "Lcom/dynatrace/agent/userinteraction/model/TouchUserInteractionNativeGenerator;",
        "nativeGenerator",
        "Lcom/dynatrace/agent/userinteraction/model/TouchUserInteractionComposeGenerator;",
        "composeGenerator",
        "<init>",
        "(Lcom/dynatrace/agent/userinteraction/model/TouchUserInteractionNativeGenerator;Lcom/dynatrace/agent/userinteraction/model/TouchUserInteractionComposeGenerator;)V",
        "com.dynatrace.agent_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lcom/dynatrace/agent/userinteraction/model/TouchUserInteractionNativeGenerator;

.field public final b:Lcom/dynatrace/agent/userinteraction/model/TouchUserInteractionComposeGenerator;


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/userinteraction/model/TouchUserInteractionNativeGenerator;Lcom/dynatrace/agent/userinteraction/model/TouchUserInteractionComposeGenerator;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/userinteraction/model/TouchUserInteractionGeneratorImpl;->a:Lcom/dynatrace/agent/userinteraction/model/TouchUserInteractionNativeGenerator;

    iput-object p2, p0, Lcom/dynatrace/agent/userinteraction/model/TouchUserInteractionGeneratorImpl;->b:Lcom/dynatrace/agent/userinteraction/model/TouchUserInteractionComposeGenerator;

    return-void
.end method


# virtual methods
.method public final a(Lcom/dynatrace/agent/userinteraction/model/TouchEvent;Lcom/dynatrace/agent/compose/userinteraction/model/ComposeTouchEvent;)Lcom/dynatrace/agent/userinteraction/model/TouchUserInteraction;
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/dynatrace/agent/userinteraction/model/TouchUserInteractionGeneratorImpl;->b:Lcom/dynatrace/agent/userinteraction/model/TouchUserInteractionComposeGenerator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p2, Lcom/dynatrace/agent/compose/userinteraction/model/ComposeTouchEvent;->b:Ljava/util/List;

    iget-object p0, p0, Lcom/dynatrace/agent/userinteraction/model/TouchUserInteractionComposeGenerator;->a:Lcom/dynatrace/agent/userinteraction/util/RectHelper;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/dynatrace/agent/compose/userinteraction/model/ComposeElementInfo;

    iget-object v3, v3, Lcom/dynatrace/agent/compose/userinteraction/model/ComposeElementInfo;->a:Landroid/graphics/Rect;

    iget v4, p1, Lcom/dynatrace/agent/userinteraction/model/TouchEvent;->b:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iget v5, p1, Lcom/dynatrace/agent/userinteraction/model/TouchEvent;->c:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {p0, v3, v4, v5}, Lcom/dynatrace/agent/userinteraction/util/RectHelper;->a(Landroid/graphics/Rect;Ljava/lang/Float;Ljava/lang/Float;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    move-object v0, v2

    goto/16 :goto_6

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/dynatrace/agent/compose/userinteraction/model/ComposeElementInfo;

    iget-object v5, v5, Lcom/dynatrace/agent/compose/userinteraction/model/ComposeElementInfo;->e:Ljava/lang/String;

    const-string v6, "no-info"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    move-object v1, v0

    :goto_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dynatrace/agent/compose/userinteraction/model/ComposeElementInfo;

    iget-object v3, v3, Lcom/dynatrace/agent/compose/userinteraction/model/ComposeElementInfo;->a:Landroid/graphics/Rect;

    invoke-interface {p0, v3}, Lcom/dynatrace/agent/userinteraction/util/RectHelper;->b(Landroid/graphics/Rect;)I

    move-result v3

    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dynatrace/agent/compose/userinteraction/model/ComposeElementInfo;

    iget-object v4, v4, Lcom/dynatrace/agent/compose/userinteraction/model/ComposeElementInfo;->a:Landroid/graphics/Rect;

    invoke-interface {p0, v4}, Lcom/dynatrace/agent/userinteraction/util/RectHelper;->b(Landroid/graphics/Rect;)I

    move-result v4

    if-le v3, v4, :cond_6

    move v3, v4

    goto :goto_3

    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/dynatrace/agent/compose/userinteraction/model/ComposeElementInfo;

    iget-object v5, v5, Lcom/dynatrace/agent/compose/userinteraction/model/ComposeElementInfo;->a:Landroid/graphics/Rect;

    invoke-interface {p0, v5}, Lcom/dynatrace/agent/userinteraction/util/RectHelper;->b(Landroid/graphics/Rect;)I

    move-result v5

    if-ne v5, v3, :cond_8

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_a

    move-object v0, v2

    goto :goto_5

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_5

    :cond_b
    move-object v1, v0

    check-cast v1, Lcom/dynatrace/agent/compose/userinteraction/model/ComposeElementInfo;

    iget-object v1, v1, Lcom/dynatrace/agent/compose/userinteraction/model/ComposeElementInfo;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    :cond_c
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/dynatrace/agent/compose/userinteraction/model/ComposeElementInfo;

    iget-object v4, v4, Lcom/dynatrace/agent/compose/userinteraction/model/ComposeElementInfo;->b:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_d

    move-object v0, v3

    move v1, v4

    :cond_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_c

    :goto_5
    check-cast v0, Lcom/dynatrace/agent/compose/userinteraction/model/ComposeElementInfo;

    :goto_6
    if-nez v0, :cond_e

    return-object v2

    :cond_e
    invoke-static {v0}, Lcom/dynatrace/agent/userinteraction/mapper/ComposeTouchEventMapper;->a(Lcom/dynatrace/agent/compose/userinteraction/model/ComposeElementInfo;)Lcom/dynatrace/agent/userinteraction/model/UiElement;

    move-result-object p0

    iget-object p2, p2, Lcom/dynatrace/agent/compose/userinteraction/model/ComposeTouchEvent;->c:Lcom/dynatrace/agent/compose/userinteraction/model/ComposeElementInfo;

    if-eqz p2, :cond_f

    invoke-static {p2}, Lcom/dynatrace/agent/userinteraction/mapper/ComposeTouchEventMapper;->a(Lcom/dynatrace/agent/compose/userinteraction/model/ComposeElementInfo;)Lcom/dynatrace/agent/userinteraction/model/UiElement;

    move-result-object v2

    :cond_f
    new-instance p2, Lcom/dynatrace/agent/userinteraction/model/TouchUserInteraction;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p2, p1, p0, v2}, Lcom/dynatrace/agent/userinteraction/model/TouchUserInteraction;-><init>(Ljava/util/List;Lcom/dynatrace/agent/userinteraction/model/UiElement;Lcom/dynatrace/agent/userinteraction/model/UiElement;)V

    return-object p2

    :cond_10
    invoke-static {}, Lb21;->x()V

    return-object v2
.end method

.method public final b(Ljava/util/List;Landroid/view/ViewGroup;Landroid/view/View;)Lcom/dynatrace/agent/userinteraction/model/TouchUserInteraction;
    .locals 11

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/dynatrace/agent/userinteraction/model/TouchUserInteractionGeneratorImpl;->a:Lcom/dynatrace/agent/userinteraction/model/TouchUserInteractionNativeGenerator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->N(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dynatrace/agent/userinteraction/model/TouchEvent;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget v2, v0, Lcom/dynatrace/agent/userinteraction/model/TouchEvent;->b:F

    float-to-int v2, v2

    iget v0, v0, Lcom/dynatrace/agent/userinteraction/model/TouchEvent;->c:F

    float-to-int v0, v0

    invoke-static {p2, v2, v0}, Lcom/dynatrace/agent/userinteraction/util/UserInteractionUtilKt;->a(Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object p2

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/dynatrace/agent/userinteraction/model/TouchEvent;

    iget-object v4, v4, Lcom/dynatrace/agent/userinteraction/model/TouchEvent;->a:Lcom/dynatrace/agent/userinteraction/model/TouchAction;

    sget-object v5, Lcom/dynatrace/agent/userinteraction/model/TouchAction;->MOVE:Lcom/dynatrace/agent/userinteraction/model/TouchAction;

    if-ne v4, v5, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    goto :goto_3

    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->w(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-ltz v4, :cond_5

    check-cast v5, Lcom/dynatrace/agent/userinteraction/model/TouchEvent;

    move-object v4, v3

    check-cast v4, Lcom/dynatrace/agent/userinteraction/model/TouchEvent;

    iget v7, v4, Lcom/dynatrace/agent/userinteraction/model/TouchEvent;->b:F

    iget v8, v5, Lcom/dynatrace/agent/userinteraction/model/TouchEvent;->b:F

    sub-float/2addr v7, v8

    float-to-double v7, v7

    iget v4, v4, Lcom/dynatrace/agent/userinteraction/model/TouchEvent;->c:F

    iget v9, v5, Lcom/dynatrace/agent/userinteraction/model/TouchEvent;->c:F

    sub-float/2addr v4, v9

    float-to-double v9, v4

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v7

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    cmpl-double v4, v7, v9

    if-ltz v4, :cond_4

    move-object v3, v5

    goto :goto_2

    :cond_4
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_2
    move v4, v6

    goto :goto_1

    :cond_5
    invoke-static {}, Lkotlin/collections/CollectionsKt;->t0()V

    throw v1

    :cond_6
    move-object v0, v2

    :goto_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/dynatrace/agent/userinteraction/model/TouchEvent;

    iget-object v5, v4, Lcom/dynatrace/agent/userinteraction/model/TouchEvent;->a:Lcom/dynatrace/agent/userinteraction/model/TouchAction;

    sget-object v6, Lcom/dynatrace/agent/userinteraction/model/TouchAction;->MOVE:Lcom/dynatrace/agent/userinteraction/model/TouchAction;

    if-ne v5, v6, :cond_8

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_8
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    invoke-virtual {p0, p2}, Lcom/dynatrace/agent/userinteraction/model/TouchUserInteractionNativeGenerator;->b(Landroid/view/View;)Lcom/dynatrace/agent/userinteraction/model/UiElement;

    move-result-object p1

    if-eqz p3, :cond_a

    invoke-virtual {p0, p3}, Lcom/dynatrace/agent/userinteraction/model/TouchUserInteractionNativeGenerator;->b(Landroid/view/View;)Lcom/dynatrace/agent/userinteraction/model/UiElement;

    move-result-object v1

    :cond_a
    new-instance p0, Lcom/dynatrace/agent/userinteraction/model/TouchUserInteraction;

    invoke-direct {p0, v2, p1, v1}, Lcom/dynatrace/agent/userinteraction/model/TouchUserInteraction;-><init>(Ljava/util/List;Lcom/dynatrace/agent/userinteraction/model/UiElement;Lcom/dynatrace/agent/userinteraction/model/UiElement;)V

    return-object p0
.end method
