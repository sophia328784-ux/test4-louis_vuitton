.class public final synthetic Landroidx/navigation3/runtime/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Landroidx/navigation3/runtime/EntryProviderScope;


# direct methods
.method public synthetic constructor <init>(Landroidx/navigation3/runtime/EntryProviderScope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/navigation3/runtime/a;->b:Landroidx/navigation3/runtime/EntryProviderScope;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object p0, p0, Landroidx/navigation3/runtime/a;->b:Landroidx/navigation3/runtime/EntryProviderScope;

    iget-object v0, p0, Landroidx/navigation3/runtime/EntryProviderScope;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v2, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroidx/navigation3/runtime/EntryClassProvider;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/navigation3/runtime/EntryClassProvider;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    iget-object v1, p0, Landroidx/navigation3/runtime/EntryProviderScope;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Landroidx/navigation3/runtime/EntryProvider;

    if-eqz v3, :cond_1

    move-object v2, v1

    check-cast v2, Landroidx/navigation3/runtime/EntryProvider;

    :cond_1
    if-eqz v0, :cond_2

    new-instance p0, Landroidx/navigation3/runtime/NavEntry;

    iget-object v1, v0, Landroidx/navigation3/runtime/EntryClassProvider;->b:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v0, Landroidx/navigation3/runtime/EntryClassProvider;->c:Lkotlin/jvm/functions/Function1;

    invoke-interface {v2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    iget-object v0, v0, Landroidx/navigation3/runtime/EntryClassProvider;->d:Lkotlin/jvm/functions/Function3;

    invoke-direct {p0, p1, v1, v2, v0}, Landroidx/navigation3/runtime/NavEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;Lkotlin/jvm/functions/Function3;)V

    return-object p0

    :cond_2
    if-eqz v2, :cond_3

    new-instance p0, Landroidx/navigation3/runtime/NavEntry;

    iget-object v0, v2, Landroidx/navigation3/runtime/EntryProvider;->b:Ljava/lang/Object;

    iget-object v1, v2, Landroidx/navigation3/runtime/EntryProvider;->c:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iget-object v2, v2, Landroidx/navigation3/runtime/EntryProvider;->d:Lkotlin/jvm/functions/Function3;

    invoke-direct {p0, p1, v0, v1, v2}, Landroidx/navigation3/runtime/NavEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;Lkotlin/jvm/functions/Function3;)V

    return-object p0

    :cond_3
    iget-object p0, p0, Landroidx/navigation3/runtime/EntryProviderScope;->a:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/navigation3/runtime/NavEntry;

    return-object p0
.end method
