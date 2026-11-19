.class public Landroidx/navigation/NavGraphBuilder;
.super Landroidx/navigation/NavDestinationBuilder;
.source "SourceFile"


# annotations
.annotation runtime Landroidx/navigation/NavDestinationDsl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/navigation/NavDestinationBuilder<",
        "Landroidx/navigation/NavGraph;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008\u0017\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B%\u0008\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0008\u0010\tB#\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\n\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\u0008\u0010\u000cBH\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\u0010\u0007\u001a\u0006\u0012\u0002\u0008\u00030\r\u0012\u000c\u0010\u000b\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\r\u0012\u001b\u0010\u0012\u001a\u0017\u0012\u0004\u0012\u00020\u000f\u0012\r\u0012\u000b\u0012\u0002\u0008\u00030\u0010\u00a2\u0006\u0002\u0008\u00110\u000e\u00a2\u0006\u0004\u0008\u0008\u0010\u0013BD\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0014\u0012\u000c\u0010\u000b\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\r\u0012\u001b\u0010\u0012\u001a\u0017\u0012\u0004\u0012\u00020\u000f\u0012\r\u0012\u000b\u0012\u0002\u0008\u00030\u0010\u00a2\u0006\u0002\u0008\u00110\u000e\u00a2\u0006\u0004\u0008\u0008\u0010\u0015\u00a8\u0006\u0016"
    }
    d2 = {
        "Landroidx/navigation/NavGraphBuilder;",
        "Landroidx/navigation/NavDestinationBuilder;",
        "Landroidx/navigation/NavGraph;",
        "Landroidx/navigation/NavigatorProvider;",
        "provider",
        "",
        "id",
        "startDestination",
        "<init>",
        "(Landroidx/navigation/NavigatorProvider;II)V",
        "",
        "route",
        "(Landroidx/navigation/NavigatorProvider;Ljava/lang/String;Ljava/lang/String;)V",
        "Lkotlin/reflect/KClass;",
        "",
        "Lkotlin/reflect/KType;",
        "Landroidx/navigation/NavType;",
        "Lkotlin/jvm/JvmSuppressWildcards;",
        "typeMap",
        "(Landroidx/navigation/NavigatorProvider;Lkotlin/reflect/KClass;Lkotlin/reflect/KClass;Ljava/util/Map;)V",
        "",
        "(Landroidx/navigation/NavigatorProvider;Ljava/lang/Object;Lkotlin/reflect/KClass;Ljava/util/Map;)V",
        "navigation-common_release"
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
.field public final h:Landroidx/navigation/NavigatorProvider;

.field public final i:I

.field public final j:Ljava/lang/String;

.field public final k:Lkotlin/reflect/KClass;

.field public final l:Ljava/lang/Object;

.field public final m:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroidx/navigation/NavigatorProvider;II)V
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    const-class v0, Landroidx/navigation/NavGraphNavigator;

    .line 37
    invoke-virtual {p1, v0}, Landroidx/navigation/NavigatorProvider;->b(Ljava/lang/Class;)Landroidx/navigation/Navigator;

    move-result-object v0

    .line 38
    invoke-direct {p0, v0, p2}, Landroidx/navigation/NavDestinationBuilder;-><init>(Landroidx/navigation/Navigator;I)V

    .line 39
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroidx/navigation/NavGraphBuilder;->m:Ljava/util/ArrayList;

    .line 40
    iput-object p1, p0, Landroidx/navigation/NavGraphBuilder;->h:Landroidx/navigation/NavigatorProvider;

    .line 41
    iput p3, p0, Landroidx/navigation/NavGraphBuilder;->i:I

    return-void
.end method

.method public constructor <init>(Landroidx/navigation/NavigatorProvider;Ljava/lang/Object;Lkotlin/reflect/KClass;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/NavigatorProvider;",
            "Ljava/lang/Object;",
            "Lkotlin/reflect/KClass<",
            "*>;",
            "Ljava/util/Map<",
            "Lkotlin/reflect/KType;",
            "Landroidx/navigation/NavType<",
            "*>;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    const-class v0, Landroidx/navigation/NavGraphNavigator;

    .line 43
    invoke-virtual {p1, v0}, Landroidx/navigation/NavigatorProvider;->b(Ljava/lang/Class;)Landroidx/navigation/Navigator;

    move-result-object v0

    .line 44
    invoke-direct {p0, v0, p3, p4}, Landroidx/navigation/NavDestinationBuilder;-><init>(Landroidx/navigation/Navigator;Lkotlin/reflect/KClass;Ljava/util/Map;)V

    .line 45
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Landroidx/navigation/NavGraphBuilder;->m:Ljava/util/ArrayList;

    .line 46
    iput-object p1, p0, Landroidx/navigation/NavGraphBuilder;->h:Landroidx/navigation/NavigatorProvider;

    .line 47
    iput-object p2, p0, Landroidx/navigation/NavGraphBuilder;->l:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/navigation/NavigatorProvider;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    const-class v0, Landroidx/navigation/NavGraphNavigator;

    .line 31
    invoke-virtual {p1, v0}, Landroidx/navigation/NavigatorProvider;->b(Ljava/lang/Class;)Landroidx/navigation/Navigator;

    move-result-object v0

    .line 32
    invoke-direct {p0, v0, p3}, Landroidx/navigation/NavDestinationBuilder;-><init>(Landroidx/navigation/Navigator;Ljava/lang/String;)V

    .line 33
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Landroidx/navigation/NavGraphBuilder;->m:Ljava/util/ArrayList;

    .line 34
    iput-object p1, p0, Landroidx/navigation/NavGraphBuilder;->h:Landroidx/navigation/NavigatorProvider;

    .line 35
    iput-object p2, p0, Landroidx/navigation/NavGraphBuilder;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/navigation/NavigatorProvider;Lkotlin/reflect/KClass;Lkotlin/reflect/KClass;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/NavigatorProvider;",
            "Lkotlin/reflect/KClass<",
            "*>;",
            "Lkotlin/reflect/KClass<",
            "*>;",
            "Ljava/util/Map<",
            "Lkotlin/reflect/KType;",
            "Landroidx/navigation/NavType<",
            "*>;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v0, Landroidx/navigation/NavGraphNavigator;

    invoke-virtual {p1, v0}, Landroidx/navigation/NavigatorProvider;->b(Ljava/lang/Class;)Landroidx/navigation/Navigator;

    move-result-object v0

    invoke-direct {p0, v0, p3, p4}, Landroidx/navigation/NavDestinationBuilder;-><init>(Landroidx/navigation/Navigator;Lkotlin/reflect/KClass;Ljava/util/Map;)V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Landroidx/navigation/NavGraphBuilder;->m:Ljava/util/ArrayList;

    iput-object p1, p0, Landroidx/navigation/NavGraphBuilder;->h:Landroidx/navigation/NavigatorProvider;

    iput-object p2, p0, Landroidx/navigation/NavGraphBuilder;->k:Lkotlin/reflect/KClass;

    return-void
.end method


# virtual methods
.method public final c()Landroidx/navigation/NavGraph;
    .locals 7

    invoke-super {p0}, Landroidx/navigation/NavDestinationBuilder;->a()Landroidx/navigation/NavDestination;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavGraph;

    iget-object v1, p0, Landroidx/navigation/NavGraphBuilder;->m:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Landroidx/navigation/NavGraph;->h:Landroidx/navigation/internal/NavGraphImpl;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/navigation/NavDestination;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v3}, Landroidx/navigation/internal/NavGraphImpl;->a(Landroidx/navigation/NavDestination;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iget-object v3, p0, Landroidx/navigation/NavGraphBuilder;->l:Ljava/lang/Object;

    iget-object v4, p0, Landroidx/navigation/NavGraphBuilder;->k:Lkotlin/reflect/KClass;

    iget-object v5, p0, Landroidx/navigation/NavGraphBuilder;->j:Ljava/lang/String;

    iget v6, p0, Landroidx/navigation/NavGraphBuilder;->i:I

    if-nez v6, :cond_3

    if-nez v5, :cond_3

    if-nez v4, :cond_3

    if-nez v3, :cond_3

    iget-object p0, p0, Landroidx/navigation/NavDestinationBuilder;->c:Ljava/lang/String;

    if-eqz p0, :cond_2

    const-string p0, "You must set a start destination route"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v1

    :cond_2
    const-string p0, "You must set a start destination id"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v1

    :cond_3
    if-eqz v5, :cond_4

    invoke-virtual {v2, v5}, Landroidx/navigation/internal/NavGraphImpl;->g(Ljava/lang/String;)V

    return-object v0

    :cond_4
    const-string p0, " from NavGraph. Ensure the starting NavDestination was added with route from KClass."

    const-string v5, "Cannot find startDestination "

    if-eqz v4, :cond_6

    invoke-static {v4}, Lkotlinx/serialization/SerializersKt;->b(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    invoke-static {v3}, Landroidx/navigation/serialization/RouteSerializerKt;->b(Lkotlinx/serialization/KSerializer;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroidx/navigation/internal/NavGraphImpl;->b(I)Landroidx/navigation/NavDestination;

    move-result-object v6

    if-eqz v6, :cond_5

    iget-object p0, v6, Landroidx/navigation/NavDestination;->c:Landroidx/navigation/internal/NavDestinationImpl;

    iget-object p0, p0, Landroidx/navigation/internal/NavDestinationImpl;->f:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, p0}, Landroidx/navigation/internal/NavGraphImpl;->g(Ljava/lang/String;)V

    iput v4, v2, Landroidx/navigation/internal/NavGraphImpl;->c:I

    return-object v0

    :cond_5
    invoke-interface {v3}, Lkotlinx/serialization/SerializationStrategy;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0, p0}, Lwp;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_6
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v4, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v4, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/serialization/SerializersKt;->b(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    new-instance v4, Lc90;

    const/4 v6, 0x2

    invoke-direct {v4, v3, v6}, Lc90;-><init>(Ljava/lang/Object;I)V

    invoke-static {v1}, Landroidx/navigation/serialization/RouteSerializerKt;->b(Lkotlinx/serialization/KSerializer;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/navigation/internal/NavGraphImpl;->b(I)Landroidx/navigation/NavDestination;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-interface {v4, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v2, p0}, Landroidx/navigation/internal/NavGraphImpl;->g(Ljava/lang/String;)V

    iput v3, v2, Landroidx/navigation/internal/NavGraphImpl;->c:I

    goto :goto_1

    :cond_7
    invoke-interface {v1}, Lkotlinx/serialization/SerializationStrategy;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v1

    invoke-interface {v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1, p0}, Lwp;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    return-object v0

    :cond_8
    invoke-virtual {v2, v6}, Landroidx/navigation/internal/NavGraphImpl;->f(I)V

    return-object v0
.end method
