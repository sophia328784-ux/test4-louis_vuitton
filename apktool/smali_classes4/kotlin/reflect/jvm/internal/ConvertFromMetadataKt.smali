.class public abstract Lkotlin/reflect/jvm/internal/ConvertFromMetadataKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/ConvertFromMetadataKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0003\u00b2\u0006\u0012\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00008\nX\u008a\u0084\u0002"
    }
    d2 = {
        "",
        "Ljava/lang/reflect/Type;",
        "javaParameterizedTypeArguments",
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
.method public static final a(ILkotlin/jvm/functions/Function0;)Lkotlin/jvm/functions/Function0;
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/ConvertFromMetadataKt$$Lambda$3;

    invoke-direct {v0, p1, p0}, Lkotlin/reflect/jvm/internal/ConvertFromMetadataKt$$Lambda$3;-><init>(Lkotlin/jvm/functions/Function0;I)V

    return-object v0
.end method

.method public static final b(Ljava/lang/ClassLoader;Ljava/lang/String;)Lkotlin/reflect/KClass;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/ConvertFromMetadataKt;->e(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lkotlin/reflect/jvm/internal/UtilKt;->g(Ljava/lang/ClassLoader;Lkotlin/reflect/jvm/internal/impl/name/ClassId;I)Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p1, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {p1, p0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final c(Lkotlin/reflect/jvm/internal/impl/km/KmAnnotation;Ljava/lang/ClassLoader;)Ljava/lang/annotation/Annotation;
    .locals 6

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotation;->a:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/ConvertFromMetadataKt;->e(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lkotlin/reflect/jvm/internal/UtilKt;->g(Ljava/lang/ClassLoader;Lkotlin/reflect/jvm/internal/impl/name/ClassId;I)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotation;->b:Ljava/util/Map;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {v3}, Lkotlin/collections/MapsKt;->g(I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument;

    invoke-static {v3, v0, v5, p1}, Lkotlin/reflect/jvm/internal/ConvertFromMetadataKt;->d(Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {v1, v2}, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCallerKt;->b(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/annotation/Annotation;

    return-object p0

    :cond_1
    new-instance p0, Lkotlin/reflect/jvm/internal/KotlinReflectionInternalError;

    const-string p1, "Annotation class not found: "

    invoke-static {p1, v0}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/KotlinReflectionInternalError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final d(Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$AnnotationValue;

    if-eqz v0, :cond_0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$AnnotationValue;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$AnnotationValue;->a:Lkotlin/reflect/jvm/internal/impl/km/KmAnnotation;

    invoke-static {p0, p3}, Lkotlin/reflect/jvm/internal/ConvertFromMetadataKt;->c(Lkotlin/reflect/jvm/internal/impl/km/KmAnnotation;Ljava/lang/ClassLoader;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ArrayKClassValue;

    const-string v1, "Unresolved class: "

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ArrayKClassValue;

    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ArrayKClassValue;->a:Ljava/lang/String;

    invoke-static {p3, p1}, Lkotlin/reflect/jvm/internal/ConvertFromMetadataKt;->b(Ljava/lang/ClassLoader;Ljava/lang/String;)Lkotlin/reflect/KClass;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-static {p2}, Lkotlin/jvm/JvmClassMappingKt;->b(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object p1

    iget p0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ArrayKClassValue;->b:I

    :goto_0
    if-ge v2, p0, :cond_1

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/UtilKt;->c(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p1

    :cond_2
    new-instance p0, Lkotlin/reflect/jvm/internal/KotlinReflectionInternalError;

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/KotlinReflectionInternalError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ArrayValue;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_f

    invoke-static {p3, p1}, Lkotlin/reflect/jvm/internal/ConvertFromMetadataKt;->b(Ljava/lang/ClassLoader;Ljava/lang/String;)Lkotlin/reflect/KClass;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->b(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isAnnotation()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    move-object v0, v4

    :goto_1
    if-eqz v0, :cond_e

    invoke-interface {v0}, Lkotlin/reflect/KClass;->f()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->i0(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KFunction;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Lkotlin/reflect/KCallable;->getParameters()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_d

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v2

    move-object v5, v4

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lkotlin/reflect/KParameter;

    invoke-interface {v7}, Lkotlin/reflect/KParameter;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    if-eqz v1, :cond_6

    :goto_3
    move-object v5, v4

    goto :goto_4

    :cond_6
    move v1, v3

    move-object v5, v6

    goto :goto_2

    :cond_7
    if-nez v1, :cond_8

    goto :goto_3

    :cond_8
    :goto_4
    check-cast v5, Lkotlin/reflect/KParameter;

    if-eqz v5, :cond_d

    invoke-interface {v5}, Lkotlin/reflect/KParameter;->getType()Lkotlin/reflect/jvm/internal/types/DescriptorKType;

    move-result-object p2

    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/types/DescriptorKType;->a()Lkotlin/reflect/KClassifier;

    move-result-object v0

    instance-of v1, v0, Lkotlin/reflect/KClass;

    if-eqz v1, :cond_9

    check-cast v0, Lkotlin/reflect/KClass;

    goto :goto_5

    :cond_9
    move-object v0, v4

    :goto_5
    if-eqz v0, :cond_c

    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->b(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lkotlin/reflect/KClass;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-class p2, Ljava/lang/Class;

    goto :goto_6

    :cond_a
    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p2

    :goto_6
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ArrayValue;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ArrayValue;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    add-int/lit8 v0, v2, 0x1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument;

    invoke-static {v1, p1, v4, p3}, Lkotlin/reflect/jvm/internal/ConvertFromMetadataKt;->d(Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2, v2, v1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    move v2, v0

    goto :goto_7

    :cond_b
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p2

    :cond_c
    const-string p0, "Array parameter type is not a class: "

    invoke-static {p2, p0}, Ld20;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v4

    :cond_d
    new-instance p0, Lkotlin/reflect/jvm/internal/KotlinReflectionInternalError;

    const-string p3, "No parameter "

    const-string v0, " found in annotation constructor of "

    invoke-static {p3, p2, v0, p1}, Lfc;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/KotlinReflectionInternalError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    new-instance p0, Lkotlin/reflect/jvm/internal/KotlinReflectionInternalError;

    const-string p2, "Not an annotation class: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/KotlinReflectionInternalError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    instance-of p1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$EnumValue;

    if-eqz p1, :cond_16

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$EnumValue;

    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$EnumValue;->b:Ljava/lang/String;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$EnumValue;->a:Ljava/lang/String;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/ConvertFromMetadataKt;->e(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object p2

    invoke-static {p3, p2, v2}, Lkotlin/reflect/jvm/internal/UtilKt;->g(Ljava/lang/ClassLoader;Lkotlin/reflect/jvm/internal/impl/name/ClassId;I)Ljava/lang/Class;

    move-result-object p2

    if-eqz p2, :cond_15

    invoke-virtual {p2}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length p3, p2

    move v0, v2

    move-object v1, v4

    :goto_8
    if-ge v2, p3, :cond_12

    aget-object v5, p2, v2

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v6, v5

    check-cast v6, Ljava/lang/Enum;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    if-eqz v0, :cond_10

    goto :goto_9

    :cond_10
    move v0, v3

    move-object v1, v5

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_12
    if-nez v0, :cond_13

    goto :goto_9

    :cond_13
    move-object v4, v1

    :goto_9
    if-eqz v4, :cond_14

    return-object v4

    :cond_14
    new-instance p2, Lkotlin/reflect/jvm/internal/KotlinReflectionInternalError;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Unresolved enum entry: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2e

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lkotlin/reflect/jvm/internal/KotlinReflectionInternalError;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_15
    new-instance p1, Lkotlin/reflect/jvm/internal/KotlinReflectionInternalError;

    const-string p2, "Unresolved enum class: "

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/KotlinReflectionInternalError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_16
    instance-of p1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$KClassValue;

    if-eqz p1, :cond_18

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$KClassValue;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$KClassValue;->a:Ljava/lang/String;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/ConvertFromMetadataKt;->e(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object p1

    invoke-static {p3, p1, v2}, Lkotlin/reflect/jvm/internal/UtilKt;->g(Ljava/lang/ClassLoader;Lkotlin/reflect/jvm/internal/impl/name/ClassId;I)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_17

    return-object p1

    :cond_17
    new-instance p1, Lkotlin/reflect/jvm/internal/KotlinReflectionInternalError;

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/KotlinReflectionInternalError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_18
    instance-of p1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$LiteralValue;

    if-eqz p1, :cond_19

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$LiteralValue;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$LiteralValue;->a()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_19
    invoke-static {}, Lv40;->g()V

    return-object v4
.end method

.method public static final e(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "."

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    new-instance v3, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const/4 v4, 0x6

    const/16 v5, 0x2f

    invoke-static {p0, v5, v1, v4}, Lkotlin/text/StringsKt;->z(Ljava/lang/CharSequence;CII)I

    move-result v4

    const/4 v6, -0x1

    if-ne v4, v6, :cond_1

    const-string v1, ""

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/16 v4, 0x2e

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v1}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-static {v5, p0, p0}, Lkotlin/text/StringsKt;->R(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v1, v0}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;-><init>(Lkotlin/reflect/jvm/internal/impl/name/FqName;Lkotlin/reflect/jvm/internal/impl/name/FqName;Z)V

    return-object v2
.end method

.method public static final f(Lkotlin/reflect/jvm/internal/impl/km/KmType;Ljava/lang/ClassLoader;Lkotlin/reflect/jvm/internal/TypeParameterTable;Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/types/SimpleKType;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    sget-object v4, Lkotlin/reflect/jvm/internal/ConvertFromMetadataKt$$Lambda$0;->b:Lkotlin/reflect/jvm/internal/ConvertFromMetadataKt$$Lambda$0;

    invoke-static {v0, v4}, Lkotlin/sequences/SequencesKt;->n(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v4

    sget-object v5, Lkotlin/reflect/jvm/internal/ConvertFromMetadataKt$$Lambda$1;->b:Lkotlin/reflect/jvm/internal/ConvertFromMetadataKt$$Lambda$1;

    invoke-static {v4, v5}, Lkotlin/sequences/SequencesKt;->j(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FlatteningSequence;

    move-result-object v4

    new-instance v5, Lkotlin/reflect/jvm/internal/ConvertFromMetadataKt$$Lambda$2;

    move-object/from16 v6, p3

    invoke-direct {v5, v1, v2, v6, v3}, Lkotlin/reflect/jvm/internal/ConvertFromMetadataKt$$Lambda$2;-><init>(Ljava/lang/ClassLoader;Lkotlin/reflect/jvm/internal/TypeParameterTable;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    new-instance v7, Lkotlin/sequences/TransformingIndexedSequence;

    invoke-direct {v7, v4, v5}, Lkotlin/sequences/TransformingIndexedSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v7}, Lkotlin/sequences/SequencesKt;->x(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/km/KmType;->a()Lkotlin/reflect/jvm/internal/impl/km/KmClassifier;

    move-result-object v4

    instance-of v5, v4, Lkotlin/reflect/jvm/internal/impl/km/KmClassifier$Class;

    const/4 v7, 0x0

    if-eqz v5, :cond_3

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/km/KmClassifier$Class;

    iget-object v4, v4, Lkotlin/reflect/jvm/internal/impl/km/KmClassifier$Class;->a:Ljava/lang/String;

    const-string v5, "kotlin/Array"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->h0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/KTypeProjection;

    iget-object v4, v4, Lkotlin/reflect/KTypeProjection;->b:Lkotlin/reflect/KType;

    if-nez v4, :cond_0

    sget-object v4, Lkotlin/reflect/jvm/internal/StandardKTypes;->a:Lkotlin/reflect/KType;

    :cond_0
    invoke-static {v4}, Lkotlin/reflect/jvm/KTypesJvm;->b(Lkotlin/reflect/KType;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/JvmClassMappingKt;->b(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lkotlin/reflect/jvm/internal/UtilKt;->c(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v5, v4}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    goto :goto_1

    :cond_1
    invoke-static {v1, v4}, Lkotlin/reflect/jvm/internal/ConvertFromMetadataKt;->b(Ljava/lang/ClassLoader;Ljava/lang/String;)Lkotlin/reflect/KClass;

    move-result-object v5

    if-eqz v5, :cond_2

    :goto_0
    move-object v4, v5

    goto :goto_1

    :cond_2
    new-instance v0, Lkotlin/reflect/jvm/internal/KotlinReflectionInternalError;

    const-string v1, "Class not found: "

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/KotlinReflectionInternalError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    instance-of v5, v4, Lkotlin/reflect/jvm/internal/impl/km/KmClassifier$TypeAlias;

    if-eqz v5, :cond_4

    new-instance v5, Lkotlin/reflect/jvm/internal/KTypeAliasImpl;

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/km/KmClassifier$TypeAlias;

    iget-object v4, v4, Lkotlin/reflect/jvm/internal/impl/km/KmClassifier$TypeAlias;->a:Ljava/lang/String;

    invoke-static {v4}, Lkotlin/reflect/jvm/internal/ConvertFromMetadataKt;->e(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v4

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->a()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v4

    invoke-direct {v5, v4}, Lkotlin/reflect/jvm/internal/KTypeAliasImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/name/FqName;)V

    goto :goto_0

    :cond_4
    instance-of v5, v4, Lkotlin/reflect/jvm/internal/impl/km/KmClassifier$TypeParameter;

    if-eqz v5, :cond_d

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/km/KmClassifier$TypeParameter;

    iget v4, v4, Lkotlin/reflect/jvm/internal/impl/km/KmClassifier$TypeParameter;->a:I

    invoke-virtual {v2, v4}, Lkotlin/reflect/jvm/internal/TypeParameterTable;->a(I)Lkotlin/reflect/KTypeParameter;

    move-result-object v5

    if-eqz v5, :cond_c

    goto :goto_0

    :goto_1
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/km/Attributes;->g:Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;

    sget-object v9, Lkotlin/reflect/jvm/internal/impl/km/Attributes;->a:[Lkotlin/reflect/KProperty;

    const/16 v10, 0x2e

    aget-object v9, v9, v10

    invoke-virtual {v5, v0, v9}, Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;->a(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Z

    move-result v9

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/km/jvm/internal/JvmTypeExtension;->c:Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmExtensionType;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v0, Lkotlin/reflect/jvm/internal/impl/km/KmType;->g:Ljava/util/ArrayList;

    invoke-static {v10, v5}, Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/ExtensionNodesKt;->a(Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmExtensionType;)Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmExtension;

    move-result-object v5

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/km/internal/extensions/KmTypeExtension;

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/km/jvm/internal/JvmTypeExtension;

    iget-object v5, v5, Lkotlin/reflect/jvm/internal/impl/km/jvm/internal/JvmTypeExtension;->b:Ljava/util/ArrayList;

    new-instance v10, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-static {v5, v11}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotation;

    invoke-static {v11, v1}, Lkotlin/reflect/jvm/internal/ConvertFromMetadataKt;->c(Lkotlin/reflect/jvm/internal/impl/km/KmAnnotation;Ljava/lang/ClassLoader;)Ljava/lang/annotation/Annotation;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    iget-object v5, v0, Lkotlin/reflect/jvm/internal/impl/km/KmType;->d:Lkotlin/reflect/jvm/internal/impl/km/KmType;

    if-eqz v5, :cond_6

    invoke-static {v5, v1, v2, v7}, Lkotlin/reflect/jvm/internal/ConvertFromMetadataKt;->f(Lkotlin/reflect/jvm/internal/impl/km/KmType;Ljava/lang/ClassLoader;Lkotlin/reflect/jvm/internal/TypeParameterTable;Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/types/SimpleKType;

    move-result-object v1

    move-object v11, v1

    goto :goto_3

    :cond_6
    move-object v11, v7

    :goto_3
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/km/Attributes;->i:Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/km/Attributes;->a:[Lkotlin/reflect/KProperty;

    const/16 v5, 0x30

    aget-object v5, v2, v5

    invoke-virtual {v1, v0, v5}, Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;->a(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Z

    move-result v12

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/km/KmType;->a()Lkotlin/reflect/jvm/internal/impl/km/KmClassifier;

    move-result-object v1

    instance-of v5, v1, Lkotlin/reflect/jvm/internal/impl/km/KmClassifier$Class;

    if-eqz v5, :cond_7

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/km/KmClassifier$Class;

    goto :goto_4

    :cond_7
    move-object v1, v7

    :goto_4
    if-eqz v1, :cond_8

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/km/KmClassifier$Class;->a:Ljava/lang/String;

    goto :goto_5

    :cond_8
    move-object v1, v7

    :goto_5
    const-string v5, "kotlin/Nothing"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/km/Attributes;->h:Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;

    const/16 v5, 0x2f

    aget-object v2, v2, v5

    invoke-virtual {v1, v0, v2}, Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;->a(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Z

    move-result v14

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/km/KmType;->a()Lkotlin/reflect/jvm/internal/impl/km/KmClassifier;

    move-result-object v0

    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/km/KmClassifier$Class;

    if-eqz v1, :cond_9

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/km/KmClassifier$Class;

    goto :goto_6

    :cond_9
    move-object v0, v7

    :goto_6
    if-eqz v0, :cond_a

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/km/KmClassifier$Class;->a:Ljava/lang/String;

    if-eqz v0, :cond_a

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/ConvertFromMetadataKt;->e(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMap;->l:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    :cond_a
    :goto_7
    move-object v15, v7

    goto :goto_8

    :cond_b
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->a()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v0

    move-object v1, v4

    check-cast v1, Lkotlin/reflect/KClass;

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/types/MutableCollectionKClassKt;->a(Lkotlin/reflect/jvm/internal/impl/name/FqName;Lkotlin/reflect/KClass;)Lkotlin/reflect/jvm/internal/types/MutableCollectionKClass;

    move-result-object v7

    goto :goto_7

    :goto_8
    new-instance v6, Lkotlin/reflect/jvm/internal/types/SimpleKType;

    move-object/from16 v16, p3

    move-object v7, v4

    invoke-direct/range {v6 .. v16}, Lkotlin/reflect/jvm/internal/types/SimpleKType;-><init>(Lkotlin/reflect/KClassifier;Ljava/util/List;ZLjava/util/List;Lkotlin/reflect/KType;ZZZLkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;)V

    iput-object v6, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    return-object v6

    :cond_c
    new-instance v0, Lkotlin/reflect/jvm/internal/KotlinReflectionInternalError;

    const-string v1, "Type parameter not found: "

    invoke-static {v4, v1}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/KotlinReflectionInternalError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    invoke-static {}, Lv40;->g()V

    return-object v7
.end method

.method public static final g(Lkotlin/reflect/jvm/internal/impl/km/KmVariance;)Lkotlin/reflect/KVariance;
    .locals 1

    sget-object v0, Lkotlin/reflect/jvm/internal/ConvertFromMetadataKt$WhenMappings;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    sget-object p0, Lkotlin/reflect/KVariance;->INVARIANT:Lkotlin/reflect/KVariance;

    return-object p0

    :cond_0
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    sget-object p0, Lkotlin/reflect/KVariance;->OUT:Lkotlin/reflect/KVariance;

    return-object p0

    :cond_2
    sget-object p0, Lkotlin/reflect/KVariance;->IN:Lkotlin/reflect/KVariance;

    return-object p0
.end method
