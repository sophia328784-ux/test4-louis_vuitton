.class public abstract Landroidx/navigation3/scene/SceneStateKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0003\u00b2\u0006\u0012\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00008\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lkotlin/Function0;",
        "",
        "currentOnBack",
        "navigation3-ui"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Landroidx/navigation3/scene/SceneDecoratorStrategyScope;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Landroidx/navigation3/scene/Scene;
    .locals 3

    move-object p0, p2

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-lez p0, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/navigation3/scene/SceneStrategy;

    invoke-interface {p0, p1}, Landroidx/navigation3/scene/SceneStrategy;->a(Ljava/util/List;)Landroidx/navigation3/scene/SinglePaneScene;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-nez p0, :cond_1

    new-instance p0, Landroidx/navigation3/scene/SinglePaneSceneStrategy;

    invoke-direct {p0}, Landroidx/navigation3/scene/SinglePaneSceneStrategy;-><init>()V

    invoke-virtual {p0, p1}, Landroidx/navigation3/scene/SinglePaneSceneStrategy;->a(Ljava/util/List;)Landroidx/navigation3/scene/SinglePaneScene;

    move-result-object p0

    :cond_1
    move-object p1, p3

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    :goto_1
    if-ge v1, p1, :cond_4

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/navigation3/scene/SceneDecoratorStrategy;

    instance-of v2, p0, Landroidx/navigation3/scene/OverlayScene;

    if-eqz v2, :cond_2

    check-cast p0, Landroidx/navigation3/scene/OverlayScene;

    goto :goto_2

    :cond_2
    move-object p0, v0

    :goto_2
    if-eqz p0, :cond_3

    goto :goto_3

    :cond_3
    invoke-interface {p2}, Landroidx/navigation3/scene/SceneDecoratorStrategy;->a()Landroidx/navigation3/scene/Scene;

    move-result-object p0

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-object p0
.end method
