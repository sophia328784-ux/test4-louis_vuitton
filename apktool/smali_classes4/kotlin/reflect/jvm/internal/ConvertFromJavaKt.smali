.class public abstract Lkotlin/reflect/jvm/internal/ConvertFromJavaKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/ConvertFromJavaKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "kotlin-reflection"
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
.method public static final a(Ljava/lang/Class;)Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt$$Lambda$5;->b:Lkotlin/reflect/jvm/internal/ConvertFromJavaKt$$Lambda$5;

    invoke-static {p0, v0}, Lkotlin/sequences/SequencesKt;->n(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p0

    sget-object v0, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt$$Lambda$6;->b:Lkotlin/reflect/jvm/internal/ConvertFromJavaKt$$Lambda$6;

    invoke-static {p0, v0}, Lkotlin/sequences/SequencesKt;->i(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FlatteningSequence;

    move-result-object p0

    invoke-static {p0}, Lkotlin/sequences/SequencesKt;->x(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/reflect/Type;Lkotlin/reflect/KClassifier;Ljava/util/List;Z)Lkotlin/reflect/jvm/internal/types/SimpleKType;
    .locals 11

    new-instance v0, Lkotlin/reflect/jvm/internal/types/SimpleKType;

    sget-object v4, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    new-instance v10, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt$$Lambda$2;

    invoke-direct {v10, p0}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt$$Lambda$2;-><init>(Ljava/lang/reflect/Type;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v10}, Lkotlin/reflect/jvm/internal/types/SimpleKType;-><init>(Lkotlin/reflect/KClassifier;Ljava/util/List;ZLjava/util/List;Lkotlin/reflect/KType;ZZZLkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method

.method public static final c(Ljava/lang/reflect/TypeVariable;)Lkotlin/reflect/jvm/internal/KClassImpl;
    .locals 3

    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Class;

    sget-object p0, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {p0, v0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/KClassImpl;

    return-object p0

    :cond_0
    const-string v1, "Non-class container of a type parameter is not supported: "

    const-string v2, " ("

    invoke-static {v1, v0, v2, p0}, Lwp;->f(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static final d(Lkotlin/reflect/jvm/internal/types/SimpleKType;Ljava/lang/reflect/Type;)Lkotlin/reflect/jvm/internal/types/FlexibleKType;
    .locals 7

    sget-object v0, Lkotlin/reflect/jvm/internal/types/FlexibleKType;->f:Lkotlin/reflect/jvm/internal/types/FlexibleKType$Companion;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/types/SimpleKType;->c:Lkotlin/reflect/KClassifier;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/types/SimpleKType;->d:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/KTypeProjection;

    iget-object v5, v4, Lkotlin/reflect/KTypeProjection;->b:Lkotlin/reflect/KType;

    if-eqz v5, :cond_0

    sget-object v4, Lkotlin/reflect/KTypeProjection;->c:Lkotlin/reflect/KTypeProjection$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lkotlin/reflect/KTypeProjection;

    sget-object v6, Lkotlin/reflect/KVariance;->OUT:Lkotlin/reflect/KVariance;

    invoke-direct {v4, v6, v5}, Lkotlin/reflect/KTypeProjection;-><init>(Lkotlin/reflect/KVariance;Lkotlin/reflect/KType;)V

    :cond_0
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    invoke-static {p1, v1, v3, v2}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt;->b(Ljava/lang/reflect/Type;Lkotlin/reflect/KClassifier;Ljava/util/List;Z)Lkotlin/reflect/jvm/internal/types/SimpleKType;

    move-result-object v1

    new-instance v2, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt$$Lambda$9;

    invoke-direct {v2, p1}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt$$Lambda$9;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    invoke-static {p0, v1, p1, v2}, Lkotlin/reflect/jvm/internal/types/FlexibleKType$Companion;->a(Lkotlin/reflect/jvm/internal/types/AbstractKType;Lkotlin/reflect/jvm/internal/types/AbstractKType;ZLkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/types/AbstractKType;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/types/FlexibleKType;

    return-object p0
.end method

.method public static e(Ljava/lang/reflect/Type;Ljava/util/Map;Lkotlin/reflect/jvm/internal/TypeNullability;ZI)Lkotlin/reflect/KType;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    and-int/lit8 v2, p4, 0x2

    if-eqz v2, :cond_0

    sget-object v2, Lkotlin/reflect/jvm/internal/TypeNullability;->FLEXIBLE:Lkotlin/reflect/jvm/internal/TypeNullability;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p2

    :goto_0
    and-int/lit8 v3, p4, 0x4

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    move/from16 v3, p3

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v5, v0, Ljava/lang/Class;

    const/4 v6, 0x1

    const/16 v7, 0xa

    const/4 v8, 0x0

    const/4 v9, 0x2

    if-eqz v5, :cond_7

    move-object v5, v0

    check-cast v5, Ljava/lang/Class;

    invoke-static {v5}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v10

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_4

    if-nez v3, :cond_4

    sget-object v0, Lkotlin/reflect/jvm/internal/types/FlexibleKType;->f:Lkotlin/reflect/jvm/internal/types/FlexibleKType$Companion;

    invoke-static {v5}, Lkotlin/jvm/JvmClassMappingKt;->e(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-static {v5}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    new-instance v10, Ljava/util/ArrayList;

    invoke-static {v3, v7}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/reflect/TypeVariable;

    sget-object v12, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt$$Lambda$3;->b:Lkotlin/reflect/jvm/internal/ConvertFromJavaKt$$Lambda$3;

    invoke-static {v11, v12}, Lkotlin/sequences/SequencesKt;->n(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v11

    invoke-static {v11}, Lkotlin/sequences/SequencesKt;->q(Lkotlin/sequences/Sequence;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/reflect/TypeVariable;

    invoke-interface {v11}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11}, Lkotlin/collections/ArraysKt;->w([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/reflect/Type;

    sget-object v12, Lkotlin/reflect/KTypeProjection;->c:Lkotlin/reflect/KTypeProjection$Companion;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11, v1, v8, v6, v9}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt;->e(Ljava/lang/reflect/Type;Ljava/util/Map;Lkotlin/reflect/jvm/internal/TypeNullability;ZI)Lkotlin/reflect/KType;

    move-result-object v11

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11}, Lkotlin/reflect/KTypeProjection$Companion;->a(Lkotlin/reflect/KType;)Lkotlin/reflect/KTypeProjection;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-static {v5, v2, v10, v4}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt;->b(Ljava/lang/reflect/Type;Lkotlin/reflect/KClassifier;Ljava/util/List;Z)Lkotlin/reflect/jvm/internal/types/SimpleKType;

    move-result-object v1

    sget-object v2, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v2, v5}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-static {v5}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v3, v7}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/reflect/TypeVariable;

    sget-object v7, Lkotlin/reflect/KTypeProjection;->c:Lkotlin/reflect/KTypeProjection$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Lkotlin/reflect/KTypeProjection;->d:Lkotlin/reflect/KTypeProjection;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    invoke-static {v5, v2, v4, v6}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt;->b(Ljava/lang/reflect/Type;Lkotlin/reflect/KClassifier;Ljava/util/List;Z)Lkotlin/reflect/jvm/internal/types/SimpleKType;

    move-result-object v2

    new-instance v3, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt$$Lambda$4;

    invoke-direct {v3, v5}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt$$Lambda$4;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2, v6, v3}, Lkotlin/reflect/jvm/internal/types/FlexibleKType$Companion;->a(Lkotlin/reflect/jvm/internal/types/AbstractKType;Lkotlin/reflect/jvm/internal/types/AbstractKType;ZLkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/types/AbstractKType;

    move-result-object v0

    return-object v0

    :cond_4
    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v2, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v2, v5}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v1}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt;->f(Ljava/lang/reflect/Type;Ljava/util/Map;)Lkotlin/reflect/KTypeProjection;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v2, v1, v4}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt;->b(Ljava/lang/reflect/Type;Lkotlin/reflect/KClassifier;Ljava/util/List;Z)Lkotlin/reflect/jvm/internal/types/SimpleKType;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt;->d(Lkotlin/reflect/jvm/internal/types/SimpleKType;Ljava/lang/reflect/Type;)Lkotlin/reflect/jvm/internal/types/FlexibleKType;

    move-result-object v0

    return-object v0

    :cond_5
    sget-object v1, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v5}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-static {v5}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v3, v7}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/reflect/TypeVariable;

    sget-object v7, Lkotlin/reflect/KTypeProjection;->c:Lkotlin/reflect/KTypeProjection$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Lkotlin/reflect/KTypeProjection;->d:Lkotlin/reflect/KTypeProjection;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    invoke-static {v0, v1, v5, v4}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt;->b(Ljava/lang/reflect/Type;Lkotlin/reflect/KClassifier;Ljava/util/List;Z)Lkotlin/reflect/jvm/internal/types/SimpleKType;

    move-result-object v1

    goto/16 :goto_b

    :cond_7
    instance-of v5, v0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v5, :cond_8

    move-object v2, v0

    check-cast v2, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {v2}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v1}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt;->f(Ljava/lang/reflect/Type;Ljava/util/Map;)Lkotlin/reflect/KTypeProjection;

    move-result-object v1

    iget-object v2, v1, Lkotlin/reflect/KTypeProjection;->b:Lkotlin/reflect/KType;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lkotlin/reflect/jvm/KTypesJvm;->b(Lkotlin/reflect/KType;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/JvmClassMappingKt;->b(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/UtilKt;->c(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v3, v2}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v2, v1, v4}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt;->b(Ljava/lang/reflect/Type;Lkotlin/reflect/KClassifier;Ljava/util/List;Z)Lkotlin/reflect/jvm/internal/types/SimpleKType;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt;->d(Lkotlin/reflect/jvm/internal/types/SimpleKType;Ljava/lang/reflect/Type;)Lkotlin/reflect/jvm/internal/types/FlexibleKType;

    move-result-object v0

    return-object v0

    :cond_8
    instance-of v5, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v5, :cond_c

    move-object v5, v0

    check-cast v5, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v5}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v10, Ljava/lang/Class;

    sget-object v11, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v11, v10}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    if-eqz v3, :cond_9

    sget-object v1, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt$$Lambda$7;->b:Lkotlin/reflect/jvm/internal/ConvertFromJavaKt$$Lambda$7;

    invoke-static {v5, v1}, Lkotlin/sequences/SequencesKt;->n(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v1

    sget-object v3, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt$$Lambda$8;->b:Lkotlin/reflect/jvm/internal/ConvertFromJavaKt$$Lambda$8;

    invoke-static {v1, v3}, Lkotlin/sequences/SequencesKt;->j(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FlatteningSequence;

    move-result-object v1

    invoke-static {v1}, Lkotlin/sequences/SequencesKt;->x(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v1, v7}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/Type;

    sget-object v5, Lkotlin/reflect/KTypeProjection;->c:Lkotlin/reflect/KTypeProjection$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lkotlin/reflect/KTypeProjection;->d:Lkotlin/reflect/KTypeProjection;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    sget-object v3, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt$$Lambda$7;->b:Lkotlin/reflect/jvm/internal/ConvertFromJavaKt$$Lambda$7;

    invoke-static {v5, v3}, Lkotlin/sequences/SequencesKt;->n(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v3

    sget-object v5, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt$$Lambda$8;->b:Lkotlin/reflect/jvm/internal/ConvertFromJavaKt$$Lambda$8;

    invoke-static {v3, v5}, Lkotlin/sequences/SequencesKt;->j(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FlatteningSequence;

    move-result-object v3

    invoke-static {v3}, Lkotlin/sequences/SequencesKt;->x(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v3, v7}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/reflect/Type;

    invoke-static {v7, v1}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt;->f(Ljava/lang/reflect/Type;Ljava/util/Map;)Lkotlin/reflect/KTypeProjection;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_a
    move-object v3, v5

    :cond_b
    invoke-static {v0, v10, v3, v4}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt;->b(Ljava/lang/reflect/Type;Lkotlin/reflect/KClassifier;Ljava/util/List;Z)Lkotlin/reflect/jvm/internal/types/SimpleKType;

    move-result-object v1

    goto/16 :goto_b

    :cond_c
    instance-of v3, v0, Ljava/lang/reflect/TypeVariable;

    if-eqz v3, :cond_1a

    move-object v3, v0

    check-cast v3, Ljava/lang/reflect/TypeVariable;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KTypeParameter;

    if-nez v1, :cond_12

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt;->c(Ljava/lang/reflect/TypeVariable;)Lkotlin/reflect/jvm/internal/KClassImpl;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/KClassImpl;->getTypeParameters()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v5, v4

    move-object v7, v8

    :cond_d
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Lkotlin/reflect/KTypeParameter;

    invoke-interface {v11}, Lkotlin/reflect/KTypeParameter;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    if-eqz v5, :cond_e

    :goto_8
    move-object v7, v8

    goto :goto_9

    :cond_e
    move v5, v6

    move-object v7, v10

    goto :goto_7

    :cond_f
    if-nez v5, :cond_10

    goto :goto_8

    :cond_10
    :goto_9
    move-object v1, v7

    check-cast v1, Lkotlin/reflect/KTypeParameter;

    if-eqz v1, :cond_11

    goto :goto_a

    :cond_11
    new-instance v0, Lkotlin/reflect/jvm/internal/KotlinReflectionInternalError;

    invoke-interface {v3}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt;->c(Ljava/lang/reflect/TypeVariable;)Lkotlin/reflect/jvm/internal/KClassImpl;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Type parameter "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not found in "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/KotlinReflectionInternalError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    :goto_a
    sget-object v3, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    invoke-static {v0, v1, v3, v4}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt;->b(Ljava/lang/reflect/Type;Lkotlin/reflect/KClassifier;Ljava/util/List;Z)Lkotlin/reflect/jvm/internal/types/SimpleKType;

    move-result-object v1

    :goto_b
    iget-object v11, v1, Lkotlin/reflect/jvm/internal/types/SimpleKType;->c:Lkotlin/reflect/KClassifier;

    instance-of v3, v11, Lkotlin/reflect/KClass;

    if-eqz v3, :cond_13

    move-object v3, v11

    check-cast v3, Lkotlin/reflect/KClass;

    goto :goto_c

    :cond_13
    move-object v3, v8

    :goto_c
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMap;->a:Ljava/lang/String;

    if-eqz v3, :cond_14

    invoke-interface {v3}, Lkotlin/reflect/KClass;->w()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_14

    new-instance v8, Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    invoke-direct {v8, v5}, Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;-><init>(Ljava/lang/String;)V

    :cond_14
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMap;->k:Ljava/util/HashMap;

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    if-eqz v5, :cond_15

    if-eqz v3, :cond_15

    iget-object v12, v1, Lkotlin/reflect/jvm/internal/types/SimpleKType;->d:Ljava/util/List;

    iget-boolean v13, v1, Lkotlin/reflect/jvm/internal/types/SimpleKType;->e:Z

    invoke-static {v5, v3}, Lkotlin/reflect/jvm/internal/types/MutableCollectionKClassKt;->a(Lkotlin/reflect/jvm/internal/impl/name/FqName;Lkotlin/reflect/KClass;)Lkotlin/reflect/jvm/internal/types/MutableCollectionKClass;

    move-result-object v19

    new-instance v10, Lkotlin/reflect/jvm/internal/types/SimpleKType;

    sget-object v14, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    new-instance v3, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt$$Lambda$2;

    invoke-direct {v3, v0}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt$$Lambda$2;-><init>(Ljava/lang/reflect/Type;)V

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v20, v3

    invoke-direct/range {v10 .. v20}, Lkotlin/reflect/jvm/internal/types/SimpleKType;-><init>(Lkotlin/reflect/KClassifier;Ljava/util/List;ZLjava/util/List;Lkotlin/reflect/KType;ZZZLkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;)V

    sget-object v3, Lkotlin/reflect/jvm/internal/types/FlexibleKType;->f:Lkotlin/reflect/jvm/internal/types/FlexibleKType$Companion;

    new-instance v5, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt$$Lambda$0;

    invoke-direct {v5, v0}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt$$Lambda$0;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10, v1, v4, v5}, Lkotlin/reflect/jvm/internal/types/FlexibleKType$Companion;->a(Lkotlin/reflect/jvm/internal/types/AbstractKType;Lkotlin/reflect/jvm/internal/types/AbstractKType;ZLkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/types/AbstractKType;

    move-result-object v1

    :cond_15
    sget-object v3, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt$WhenMappings;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    if-eq v2, v6, :cond_19

    if-eq v2, v9, :cond_18

    sget-object v2, Lkotlin/reflect/jvm/internal/types/FlexibleKType;->f:Lkotlin/reflect/jvm/internal/types/FlexibleKType$Companion;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/types/AbstractKType;->A()Lkotlin/reflect/jvm/internal/types/AbstractKType;

    move-result-object v3

    if-nez v3, :cond_16

    move-object v3, v1

    :cond_16
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/types/AbstractKType;->H()Lkotlin/reflect/jvm/internal/types/AbstractKType;

    move-result-object v5

    if-nez v5, :cond_17

    goto :goto_d

    :cond_17
    move-object v1, v5

    :goto_d
    invoke-virtual {v1, v6}, Lkotlin/reflect/jvm/internal/types/AbstractKType;->G(Z)Lkotlin/reflect/jvm/internal/types/AbstractKType;

    move-result-object v1

    new-instance v5, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt$$Lambda$1;

    invoke-direct {v5, v0}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt$$Lambda$1;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v1, v4, v5}, Lkotlin/reflect/jvm/internal/types/FlexibleKType$Companion;->a(Lkotlin/reflect/jvm/internal/types/AbstractKType;Lkotlin/reflect/jvm/internal/types/AbstractKType;ZLkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/types/AbstractKType;

    move-result-object v0

    return-object v0

    :cond_18
    invoke-virtual {v1, v6}, Lkotlin/reflect/jvm/internal/types/AbstractKType;->G(Z)Lkotlin/reflect/jvm/internal/types/AbstractKType;

    move-result-object v0

    return-object v0

    :cond_19
    return-object v1

    :cond_1a
    instance-of v1, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_1b

    const-string v1, "Wildcard type is not possible here: "

    invoke-static {v0, v1}, Ld20;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v8

    :cond_1b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Type is not supported: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v1, v2, v0}, Ld20;->o(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v8
.end method

.method public static final f(Ljava/lang/reflect/Type;Ljava/util/Map;)Lkotlin/reflect/KTypeProjection;
    .locals 7

    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lkotlin/reflect/KTypeProjection;->c:Lkotlin/reflect/KTypeProjection$Companion;

    invoke-static {p0, p1, v3, v2, v1}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt;->e(Ljava/lang/reflect/Type;Ljava/util/Map;Lkotlin/reflect/jvm/internal/TypeNullability;ZI)Lkotlin/reflect/KType;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lkotlin/reflect/KTypeProjection$Companion;->a(Lkotlin/reflect/KType;)Lkotlin/reflect/KTypeProjection;

    move-result-object p0

    return-object p0

    :cond_0
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    array-length v5, v4

    const/4 v6, 0x1

    if-gt v5, v6, :cond_3

    array-length v5, v0

    if-gt v5, v6, :cond_3

    array-length p0, v0

    if-ne p0, v6, :cond_1

    sget-object p0, Lkotlin/reflect/KTypeProjection;->c:Lkotlin/reflect/KTypeProjection$Companion;

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->Q([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ljava/lang/reflect/Type;

    invoke-static {v0, p1, v3, v2, v1}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt;->e(Ljava/lang/reflect/Type;Ljava/util/Map;Lkotlin/reflect/jvm/internal/TypeNullability;ZI)Lkotlin/reflect/KType;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lkotlin/reflect/KTypeProjection;

    sget-object v0, Lkotlin/reflect/KVariance;->IN:Lkotlin/reflect/KVariance;

    invoke-direct {p0, v0, p1}, Lkotlin/reflect/KTypeProjection;-><init>(Lkotlin/reflect/KVariance;Lkotlin/reflect/KType;)V

    return-object p0

    :cond_1
    array-length p0, v4

    if-ne p0, v6, :cond_2

    sget-object p0, Lkotlin/reflect/KTypeProjection;->c:Lkotlin/reflect/KTypeProjection$Companion;

    invoke-static {v4}, Lkotlin/collections/ArraysKt;->Q([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ljava/lang/reflect/Type;

    invoke-static {v0, p1, v3, v2, v1}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt;->e(Ljava/lang/reflect/Type;Ljava/util/Map;Lkotlin/reflect/jvm/internal/TypeNullability;ZI)Lkotlin/reflect/KType;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lkotlin/reflect/KTypeProjection;

    sget-object v0, Lkotlin/reflect/KVariance;->OUT:Lkotlin/reflect/KVariance;

    invoke-direct {p0, v0, p1}, Lkotlin/reflect/KTypeProjection;-><init>(Lkotlin/reflect/KVariance;Lkotlin/reflect/KType;)V

    return-object p0

    :cond_2
    sget-object p0, Lkotlin/reflect/KTypeProjection;->c:Lkotlin/reflect/KTypeProjection$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lkotlin/reflect/KTypeProjection;->d:Lkotlin/reflect/KTypeProjection;

    return-object p0

    :cond_3
    const-string p1, "Wildcard types with many bounds are not supported: "

    invoke-static {p0, p1}, Ld20;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v3
.end method
