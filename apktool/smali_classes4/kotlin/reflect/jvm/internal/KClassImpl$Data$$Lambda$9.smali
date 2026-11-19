.class Lkotlin/reflect/jvm/internal/KClassImpl$Data$$Lambda$9;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final b:Lkotlin/reflect/jvm/internal/KClassImpl$Data;

.field public final c:Lkotlin/reflect/jvm/internal/KClassImpl;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/KClassImpl$Data;Lkotlin/reflect/jvm/internal/KClassImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$Lambda$9;->b:Lkotlin/reflect/jvm/internal/KClassImpl$Data;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$Lambda$9;->c:Lkotlin/reflect/jvm/internal/KClassImpl;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 14

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$Lambda$9;->b:Lkotlin/reflect/jvm/internal/KClassImpl$Data;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$Lambda$9;->c:Lkotlin/reflect/jvm/internal/KClassImpl;

    sget-object v1, Lkotlin/reflect/jvm/internal/KClassImpl$Data;->u:[Lkotlin/reflect/KProperty;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KClassImpl$Data;->b()Lkotlin/reflect/jvm/internal/impl/km/KmClass;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object p0, Lkotlin/reflect/jvm/internal/TypeParameterTable;->e:Lkotlin/reflect/jvm/internal/TypeParameterTable;

    return-object p0

    :cond_0
    sget-object v1, Lkotlin/reflect/jvm/internal/TypeParameterTable;->d:Lkotlin/reflect/jvm/internal/TypeParameterTable$Companion;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KClassImpl$Data;->b()Lkotlin/reflect/jvm/internal/impl/km/KmClass;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/km/KmClass;->c:Ljava/util/ArrayList;

    iget-object v3, p0, Lkotlin/reflect/jvm/internal/KClassImpl;->e:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v3

    const/16 v4, 0xa

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KClassImpl$Data;->b()Lkotlin/reflect/jvm/internal/impl/km/KmClass;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/km/Attributes;->e:Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;

    sget-object v7, Lkotlin/reflect/jvm/internal/impl/km/Attributes;->a:[Lkotlin/reflect/KProperty;

    aget-object v7, v7, v4

    invoke-virtual {v6, v0, v7}, Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;->a(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, v5

    :goto_0
    if-eqz v3, :cond_2

    sget-object v0, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v0, v3}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v5

    :goto_1
    instance-of v3, v0, Lkotlin/reflect/jvm/internal/KClassImpl;

    if-eqz v3, :cond_3

    check-cast v0, Lkotlin/reflect/jvm/internal/KClassImpl;

    goto :goto_2

    :cond_3
    move-object v0, v5

    :goto_2
    if-eqz v0, :cond_4

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/KClassImpl;->f:Lkotlin/Lazy;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/KClassImpl$Data;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KClassImpl$Data;->c()Lkotlin/reflect/jvm/internal/TypeParameterTable;

    move-result-object v0

    goto :goto_3

    :cond_4
    move-object v0, v5

    :goto_3
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/KClassImpl;->e:Ljava/lang/Class;

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectClassUtilKt;->d(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/km/KmTypeParameter;

    new-instance v8, Lkotlin/reflect/jvm/internal/KTypeParameterImpl;

    iget-object v9, v7, Lkotlin/reflect/jvm/internal/impl/km/KmTypeParameter;->b:Ljava/lang/String;

    iget-object v10, v7, Lkotlin/reflect/jvm/internal/impl/km/KmTypeParameter;->d:Lkotlin/reflect/jvm/internal/impl/km/KmVariance;

    invoke-static {v10}, Lkotlin/reflect/jvm/internal/ConvertFromMetadataKt;->g(Lkotlin/reflect/jvm/internal/impl/km/KmVariance;)Lkotlin/reflect/KVariance;

    move-result-object v10

    sget-object v11, Lkotlin/reflect/jvm/internal/impl/km/Attributes;->j:Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;

    sget-object v12, Lkotlin/reflect/jvm/internal/impl/km/Attributes;->a:[Lkotlin/reflect/KProperty;

    const/16 v13, 0x31

    aget-object v12, v12, v13

    invoke-virtual {v11, v7, v12}, Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;->a(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Z

    move-result v7

    invoke-direct {v8, p0, v9, v10, v7}, Lkotlin/reflect/jvm/internal/KTypeParameterImpl;-><init>(Lkotlin/reflect/jvm/internal/KTypeParameterOwnerImpl;Ljava/lang/String;Lkotlin/reflect/KVariance;Z)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->D0(Ljava/lang/Iterable;)Lkotlin/collections/IndexingIterable;

    move-result-object p0

    invoke-static {p0, v4}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-static {v6}, Lkotlin/collections/MapsKt;->g(I)I

    move-result v6

    const/16 v7, 0x10

    if-ge v6, v7, :cond_6

    move v6, v7

    :cond_6
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7, v6}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-virtual {p0}, Lkotlin/collections/IndexingIterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    move-object v6, p0

    check-cast v6, Lkotlin/collections/IndexingIterator;

    iget-object v8, v6, Lkotlin/collections/IndexingIterator;->b:Ljava/util/Iterator;

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v6}, Lkotlin/collections/IndexingIterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/collections/IndexedValue;

    iget v8, v6, Lkotlin/collections/IndexedValue;->a:I

    iget-object v6, v6, Lkotlin/collections/IndexedValue;->b:Ljava/lang/Object;

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/km/KmTypeParameter;

    iget v6, v6, Lkotlin/reflect/jvm/internal/impl/km/KmTypeParameter;->c:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    new-instance v9, Lkotlin/Pair;

    invoke-direct {v9, v6, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v6, v9, Lkotlin/Pair;->b:Ljava/lang/Object;

    iget-object v8, v9, Lkotlin/Pair;->c:Ljava/lang/Object;

    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_7
    new-instance p0, Lkotlin/reflect/jvm/internal/TypeParameterTable;

    invoke-direct {p0, v1, v7, v0, v5}, Lkotlin/reflect/jvm/internal/TypeParameterTable;-><init>(Ljava/util/List;Ljava/util/Map;Lkotlin/reflect/jvm/internal/TypeParameterTable;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    add-int/lit8 v6, v1, 0x1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlin/reflect/jvm/internal/KTypeParameterImpl;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/km/KmTypeParameter;

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/km/KmTypeParameter;->e:Ljava/util/ArrayList;

    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lkotlin/reflect/jvm/internal/impl/km/KmType;

    invoke-static {v9, v3, p0, v5}, Lkotlin/reflect/jvm/internal/ConvertFromMetadataKt;->f(Lkotlin/reflect/jvm/internal/impl/km/KmType;Ljava/lang/ClassLoader;Lkotlin/reflect/jvm/internal/TypeParameterTable;Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/types/SimpleKType;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_8
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Lkotlin/reflect/jvm/internal/StandardKTypes;->b:Lkotlin/reflect/KType;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    :cond_9
    check-cast v8, Ljava/util/List;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v8, v7, Lkotlin/reflect/jvm/internal/KTypeParameterImpl;->g:Ljava/util/List;

    move v1, v6

    goto :goto_6

    :cond_a
    return-object p0
.end method
