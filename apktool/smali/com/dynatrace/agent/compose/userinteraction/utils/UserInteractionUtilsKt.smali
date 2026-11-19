.class public abstract Lcom/dynatrace/agent/compose/userinteraction/utils/UserInteractionUtilsKt;
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


# static fields
.field public static final a:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "androidx.compose.foundation.ClickableElement"

    const-string v1, "androidx.compose.foundation.CombinedClickableElement"

    const-string v2, "androidx.compose.foundation.ClickableKt"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->Z([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/dynatrace/agent/compose/userinteraction/utils/UserInteractionUtilsKt;->a:Ljava/util/Set;

    return-void
.end method

.method public static final a(Landroidx/compose/ui/layout/LayoutInfo;)Landroid/graphics/Rect;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/dynatrace/agent/compose/userinteraction/utils/UserInteractionUtilsKt;->d(Landroidx/compose/ui/layout/LayoutInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0

    :cond_0
    invoke-interface {p0}, Landroidx/compose/ui/layout/LayoutInfo;->w()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->b(Landroidx/compose/ui/layout/LayoutCoordinates;Z)Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Landroidx/compose/ui/geometry/Rect;->a:F

    float-to-int v1, v1

    iget v2, p0, Landroidx/compose/ui/geometry/Rect;->b:F

    float-to-int v2, v2

    iget v3, p0, Landroidx/compose/ui/geometry/Rect;->c:F

    float-to-int v3, v3

    iget p0, p0, Landroidx/compose/ui/geometry/Rect;->d:F

    float-to-int p0, p0

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public static final b(Landroidx/compose/ui/layout/LayoutInfo;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Landroidx/compose/ui/layout/LayoutInfo;->z()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {p0}, Landroidx/compose/ui/layout/LayoutInfo;->z()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/compose/ui/layout/ModifierInfo;

    iget-object v2, v2, Landroidx/compose/ui/layout/ModifierInfo;->a:Landroidx/compose/ui/Modifier;

    instance-of v2, v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTBasicTextModifier;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    check-cast v0, Landroidx/compose/ui/layout/ModifierInfo;

    if-eqz v0, :cond_3

    iget-object p0, v0, Landroidx/compose/ui/layout/ModifierInfo;->a:Landroidx/compose/ui/Modifier;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTBasicTextModifier;

    iget-object p0, p0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTBasicTextModifier;->b:Ljava/lang/String;

    return-object p0

    :cond_3
    return-object v1
.end method

.method public static final c(Landroidx/compose/ui/layout/LayoutInfo;)Z
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Landroidx/compose/ui/layout/LayoutInfo;->z()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    instance-of v0, p0, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :catch_0
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/layout/ModifierInfo;

    :try_start_0
    iget-object v0, v0, Landroidx/compose/ui/layout/ModifierInfo;->a:Landroidx/compose/ui/Modifier;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/dynatrace/agent/compose/userinteraction/utils/UserInteractionUtilsKt;->a:Ljava/util/Set;

    check-cast v2, Ljava/lang/Iterable;

    instance-of v3, v2, Ljava/util/Collection;

    if-eqz v3, :cond_2

    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v0, v3, v1}, Lkotlin/text/StringsKt;->k(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public static final d(Landroidx/compose/ui/layout/LayoutInfo;)Z
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Landroidx/compose/ui/layout/LayoutInfo;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Landroidx/compose/ui/layout/LayoutInfo;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Landroidx/compose/ui/layout/LayoutInfo;->w()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/node/NodeCoordinator;

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->p1()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    iget-boolean v0, v0, Landroidx/compose/ui/Modifier$Node;->o:Z

    if-eqz v0, :cond_0

    invoke-interface {p0}, Landroidx/compose/ui/layout/LayoutInfo;->w()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/node/NodeCoordinator;

    iget-wide v0, v0, Landroidx/compose/ui/layout/Placeable;->d:J

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    if-lez v0, :cond_0

    check-cast p0, Landroidx/compose/ui/node/NodeCoordinator;

    iget-wide v0, p0, Landroidx/compose/ui/layout/Placeable;->d:J

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
