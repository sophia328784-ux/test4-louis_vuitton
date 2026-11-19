.class public abstract Lcom/dynatrace/agent/userinteraction/util/UserInteractionUtilKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "com.dynatrace.agent_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Landroid/view/ViewGroup;II)Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1, p2}, Lcom/dynatrace/agent/userinteraction/util/UserInteractionUtilKt;->c(Landroid/view/View;II)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    const/4 v1, -0x1

    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p1, p2}, Lcom/dynatrace/agent/userinteraction/util/UserInteractionUtilKt;->c(Landroid/view/View;II)Z

    move-result v2

    if-eqz v2, :cond_1

    instance-of v0, v1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v1, p1, p2}, Lcom/dynatrace/agent/userinteraction/util/UserInteractionUtilKt;->a(Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_1
    if-nez v1, :cond_4

    return-object p0

    :cond_4
    return-object v1
.end method

.method public static final b(Landroid/view/MotionEvent;)Lcom/dynatrace/agent/userinteraction/model/TouchAction;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    sget-object p0, Lcom/dynatrace/agent/userinteraction/model/TouchAction;->UNKNOWN:Lcom/dynatrace/agent/userinteraction/model/TouchAction;

    return-object p0

    :cond_0
    sget-object p0, Lcom/dynatrace/agent/userinteraction/model/TouchAction;->POINTER_UP:Lcom/dynatrace/agent/userinteraction/model/TouchAction;

    return-object p0

    :cond_1
    sget-object p0, Lcom/dynatrace/agent/userinteraction/model/TouchAction;->POINTER_DOWN:Lcom/dynatrace/agent/userinteraction/model/TouchAction;

    return-object p0

    :cond_2
    sget-object p0, Lcom/dynatrace/agent/userinteraction/model/TouchAction;->MOVE:Lcom/dynatrace/agent/userinteraction/model/TouchAction;

    return-object p0

    :cond_3
    sget-object p0, Lcom/dynatrace/agent/userinteraction/model/TouchAction;->UP:Lcom/dynatrace/agent/userinteraction/model/TouchAction;

    return-object p0

    :cond_4
    sget-object p0, Lcom/dynatrace/agent/userinteraction/model/TouchAction;->DOWN:Lcom/dynatrace/agent/userinteraction/model/TouchAction;

    return-object p0
.end method

.method public static final c(Landroid/view/View;II)Z
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v0, v0, v3

    if-lt p1, v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v2

    if-gt p1, v4, :cond_0

    if-lt p2, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr p0, v0

    if-gt p2, p0, :cond_0

    return v3

    :cond_0
    return v1
.end method
