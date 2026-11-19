.class public abstract Landroidx/navigation/compose/NavGraphBuilderKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "navigation-compose_release"
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
.method public static final a(Landroidx/navigation/NavGraphBuilder;Lkotlin/reflect/KClass;Ljava/util/Map;Lkotlin/collections/EmptyList;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V
    .locals 3

    new-instance v0, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;

    iget-object v1, p0, Landroidx/navigation/NavGraphBuilder;->h:Landroidx/navigation/NavigatorProvider;

    const-class v2, Landroidx/navigation/compose/ComposeNavigator;

    invoke-virtual {v1, v2}, Landroidx/navigation/NavigatorProvider;->b(Ljava/lang/Class;)Landroidx/navigation/Navigator;

    move-result-object v1

    check-cast v1, Landroidx/navigation/compose/ComposeNavigator;

    invoke-direct {v0, v1, p1, p2, p8}, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;-><init>(Landroidx/navigation/compose/ComposeNavigator;Lkotlin/reflect/KClass;Ljava/util/Map;Lkotlin/jvm/functions/Function4;)V

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/navigation/NavDeepLink;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p3, v0, Landroidx/navigation/NavDestinationBuilder;->f:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iput-object p4, v0, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;->j:Lkotlin/jvm/functions/Function1;

    iput-object p5, v0, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;->k:Lkotlin/jvm/functions/Function1;

    iput-object p6, v0, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;->l:Lkotlin/jvm/functions/Function1;

    iput-object p7, v0, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;->m:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Landroidx/navigation/NavGraphBuilder;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;->a()Landroidx/navigation/NavDestination;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static b(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V
    .locals 4

    sget-object v0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    new-instance v1, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;

    iget-object v2, p0, Landroidx/navigation/NavGraphBuilder;->h:Landroidx/navigation/NavigatorProvider;

    const-class v3, Landroidx/navigation/compose/ComposeNavigator;

    invoke-virtual {v2, v3}, Landroidx/navigation/NavigatorProvider;->b(Ljava/lang/Class;)Landroidx/navigation/Navigator;

    move-result-object v2

    check-cast v2, Landroidx/navigation/compose/ComposeNavigator;

    invoke-direct {v1, v2, p1, p2}, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;-><init>(Landroidx/navigation/compose/ComposeNavigator;Ljava/lang/String;Lkotlin/jvm/functions/Function4;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/navigation/NamedNavArgument;

    iget-object v2, p2, Landroidx/navigation/NamedNavArgument;->a:Ljava/lang/String;

    iget-object p2, p2, Landroidx/navigation/NamedNavArgument;->b:Landroidx/navigation/NavArgument;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v1, Landroidx/navigation/NavDestinationBuilder;->e:Ljava/util/LinkedHashMap;

    invoke-interface {v3, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/navigation/NavDeepLink;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, Landroidx/navigation/NavDestinationBuilder;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    iput-object p1, v1, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;->j:Lkotlin/jvm/functions/Function1;

    iput-object p1, v1, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;->k:Lkotlin/jvm/functions/Function1;

    iput-object p1, v1, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;->l:Lkotlin/jvm/functions/Function1;

    iput-object p1, v1, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;->m:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Landroidx/navigation/NavGraphBuilder;->m:Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;->a()Landroidx/navigation/NavDestination;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
