.class public abstract Landroidx/navigation/serialization/RouteSerializerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "navigation-common_release"
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
.method public static final a(Lkotlinx/serialization/descriptors/SerialDescriptor;Ljava/util/Map;)Landroidx/navigation/NavType;
    .locals 7

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lkotlin/reflect/KType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->b()Z

    move-result v5

    invoke-interface {v4}, Lkotlin/reflect/KType;->d()Z

    move-result v6

    if-eq v5, v6, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    sget-object v5, Lkotlinx/serialization/modules/SerializersModuleKt;->a:Lkotlinx/serialization/modules/SerialModuleImpl;

    invoke-static {v5, v4}, Lkotlinx/serialization/SerializersKt;->e(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v4}, Lkotlinx/serialization/SerializationStrategy;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    :goto_0
    if-eqz v4, :cond_0

    goto :goto_1

    :cond_2
    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->i()Ljava/lang/String;

    move-result-object p0

    const-string p1, "]. If applicable, custom KSerializers for custom and third-party KType is currently not supported when declared directly on a class field via @Serializable(with = ...). Please use @Serializable or @Serializable(with = ...) on the class or object declaration."

    const-string v0, "Cannot find KSerializer for ["

    invoke-static {v0, p0, p1}, Lwp;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    :cond_3
    move-object v1, v3

    :goto_1
    check-cast v1, Lkotlin/reflect/KType;

    if-eqz v1, :cond_4

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/navigation/NavType;

    goto :goto_2

    :cond_4
    move-object p1, v3

    :goto_2
    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    move-object p1, v3

    :goto_3
    if-nez p1, :cond_a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/navigation/serialization/NavTypeConverterKt;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Landroidx/navigation/serialization/InternalType;

    move-result-object p1

    sget-object v0, Landroidx/navigation/serialization/NavTypeConverterKt$WhenMappings;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    sget-object p0, Landroidx/navigation/serialization/UNKNOWN;->s:Landroidx/navigation/serialization/UNKNOWN;

    :cond_6
    :goto_4
    move-object p1, p0

    goto/16 :goto_5

    :pswitch_0
    invoke-static {p0}, Landroidx/navigation/serialization/NavTypeConverter_androidKt;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ljava/lang/Class;

    move-result-object p0

    const-class p1, Ljava/lang/Enum;

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_7

    new-instance p1, Landroidx/navigation/serialization/InternalAndroidNavType$EnumNullableType;

    invoke-direct {p1, p0}, Landroidx/navigation/serialization/InternalAndroidNavType$EnumNullableType;-><init>(Ljava/lang/Class;)V

    goto/16 :goto_5

    :cond_7
    sget-object p0, Landroidx/navigation/serialization/UNKNOWN;->s:Landroidx/navigation/serialization/UNKNOWN;

    goto :goto_4

    :pswitch_1
    invoke-interface {p0, v2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->h(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p1

    invoke-static {p1}, Landroidx/navigation/serialization/NavTypeConverterKt;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Landroidx/navigation/serialization/InternalType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_1

    sget-object p0, Landroidx/navigation/serialization/UNKNOWN;->s:Landroidx/navigation/serialization/UNKNOWN;

    goto :goto_4

    :pswitch_2
    new-instance p1, Landroidx/navigation/serialization/InternalAndroidNavType$EnumListType;

    invoke-interface {p0, v2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->h(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p0}, Landroidx/navigation/serialization/NavTypeConverter_androidKt;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ljava/lang/Class;

    move-result-object p0

    invoke-direct {p1, p0}, Landroidx/navigation/serialization/InternalAndroidNavType$EnumListType;-><init>(Ljava/lang/Class;)V

    goto/16 :goto_5

    :pswitch_3
    sget-object p0, Landroidx/navigation/NavType;->i:Landroidx/navigation/LongListNavType;

    goto :goto_4

    :pswitch_4
    sget-object p0, Landroidx/navigation/NavType;->l:Landroidx/navigation/FloatListNavType;

    goto :goto_4

    :pswitch_5
    sget-object p0, Landroidx/navigation/serialization/InternalNavType;->k:Landroidx/navigation/serialization/InternalNavType$DoubleListType$1;

    goto :goto_4

    :pswitch_6
    sget-object p0, Landroidx/navigation/NavType;->o:Landroidx/navigation/BoolListNavType;

    goto :goto_4

    :pswitch_7
    sget-object p0, Landroidx/navigation/NavType;->f:Landroidx/navigation/IntListNavType;

    goto :goto_4

    :pswitch_8
    sget-object p0, Landroidx/navigation/serialization/InternalNavType;->i:Landroidx/navigation/serialization/InternalNavType$StringNullableListType$1;

    goto :goto_4

    :pswitch_9
    sget-object p0, Landroidx/navigation/NavType;->r:Landroidx/navigation/StringListNavType;

    goto :goto_4

    :pswitch_a
    invoke-interface {p0, v2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->h(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p0}, Landroidx/navigation/serialization/NavTypeConverterKt;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Landroidx/navigation/serialization/InternalType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_9

    const/4 p1, 0x2

    if-eq p0, p1, :cond_8

    sget-object p0, Landroidx/navigation/serialization/UNKNOWN;->s:Landroidx/navigation/serialization/UNKNOWN;

    goto :goto_4

    :cond_8
    sget-object p0, Landroidx/navigation/serialization/InternalNavType;->h:Landroidx/navigation/serialization/InternalNavType$StringNullableArrayType$1;

    goto :goto_4

    :cond_9
    sget-object p0, Landroidx/navigation/NavType;->q:Landroidx/navigation/StringArrayNavType;

    goto :goto_4

    :pswitch_b
    sget-object p0, Landroidx/navigation/NavType;->h:Landroidx/navigation/LongArrayNavType;

    goto :goto_4

    :pswitch_c
    sget-object p0, Landroidx/navigation/NavType;->k:Landroidx/navigation/FloatArrayNavType;

    goto :goto_4

    :pswitch_d
    sget-object p0, Landroidx/navigation/serialization/InternalNavType;->j:Landroidx/navigation/serialization/InternalNavType$DoubleArrayType$1;

    goto :goto_4

    :pswitch_e
    sget-object p0, Landroidx/navigation/NavType;->n:Landroidx/navigation/BoolArrayNavType;

    goto :goto_4

    :pswitch_f
    sget-object p0, Landroidx/navigation/NavType;->e:Landroidx/navigation/IntArrayNavType;

    goto :goto_4

    :pswitch_10
    sget-object p0, Landroidx/navigation/serialization/InternalNavType;->f:Landroidx/navigation/serialization/InternalNavType$LongNullableType$1;

    goto :goto_4

    :pswitch_11
    sget-object p0, Landroidx/navigation/serialization/InternalNavType;->e:Landroidx/navigation/serialization/InternalNavType$FloatNullableType$1;

    goto/16 :goto_4

    :pswitch_12
    sget-object p0, Landroidx/navigation/serialization/InternalNavType;->d:Landroidx/navigation/serialization/InternalNavType$DoubleNullableType$1;

    goto/16 :goto_4

    :pswitch_13
    sget-object p0, Landroidx/navigation/serialization/InternalNavType;->b:Landroidx/navigation/serialization/InternalNavType$BoolNullableType$1;

    goto/16 :goto_4

    :pswitch_14
    sget-object p0, Landroidx/navigation/serialization/InternalNavType;->a:Landroidx/navigation/serialization/InternalNavType$IntNullableType$1;

    goto/16 :goto_4

    :pswitch_15
    sget-object p1, Landroidx/navigation/NavType;->b:Landroidx/navigation/NavType$Companion;

    invoke-static {p0}, Landroidx/navigation/serialization/NavTypeConverter_androidKt;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v2}, Landroidx/navigation/NavType$Companion;->b(Ljava/lang/Class;Z)Landroidx/navigation/NavType;

    move-result-object p0

    if-nez p0, :cond_6

    sget-object p0, Landroidx/navigation/serialization/UNKNOWN;->s:Landroidx/navigation/serialization/UNKNOWN;

    goto/16 :goto_4

    :pswitch_16
    sget-object p0, Landroidx/navigation/NavType;->g:Landroidx/navigation/LongNavType;

    goto/16 :goto_4

    :pswitch_17
    sget-object p0, Landroidx/navigation/NavType;->j:Landroidx/navigation/FloatNavType;

    goto/16 :goto_4

    :pswitch_18
    sget-object p0, Landroidx/navigation/serialization/InternalNavType;->c:Landroidx/navigation/serialization/InternalNavType$DoubleType$1;

    goto/16 :goto_4

    :pswitch_19
    sget-object p0, Landroidx/navigation/NavType;->m:Landroidx/navigation/BoolNavType;

    goto/16 :goto_4

    :pswitch_1a
    sget-object p0, Landroidx/navigation/NavType;->c:Landroidx/navigation/IntNavType;

    goto/16 :goto_4

    :pswitch_1b
    sget-object p0, Landroidx/navigation/NavType;->p:Landroidx/navigation/StringNavType;

    goto/16 :goto_4

    :pswitch_1c
    sget-object p0, Landroidx/navigation/serialization/InternalNavType;->g:Landroidx/navigation/serialization/InternalNavType$StringNonNullableType$1;

    goto/16 :goto_4

    :cond_a
    :goto_5
    sget-object p0, Landroidx/navigation/serialization/UNKNOWN;->s:Landroidx/navigation/serialization/UNKNOWN;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    return-object v3

    :cond_b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public static final b(Lkotlinx/serialization/KSerializer;)I
    .locals 4

    invoke-interface {p0}, Lkotlinx/serialization/SerializationStrategy;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-interface {p0}, Lkotlinx/serialization/SerializationStrategy;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v1

    invoke-interface {v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->d()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    invoke-interface {p0}, Lkotlinx/serialization/SerializationStrategy;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v3

    invoke-interface {v3, v2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->f(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static final c(Lkotlinx/serialization/KSerializer;Ljava/util/Map;)Ljava/util/ArrayList;
    .locals 10

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p0, Lkotlinx/serialization/PolymorphicSerializer;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-interface {p0}, Lkotlinx/serialization/SerializationStrategy;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->d()I

    move-result v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    invoke-interface {p0}, Lkotlinx/serialization/SerializationStrategy;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v4

    invoke-interface {v4, v3}, Lkotlinx/serialization/descriptors/SerialDescriptor;->f(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Landroidx/navigation/NamedNavArgument;

    new-instance v6, Landroidx/navigation/NavArgumentBuilder;

    invoke-direct {v6}, Landroidx/navigation/NavArgumentBuilder;-><init>()V

    invoke-interface {p0}, Lkotlinx/serialization/SerializationStrategy;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v7

    invoke-interface {v7, v3}, Lkotlinx/serialization/descriptors/SerialDescriptor;->h(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v7

    invoke-interface {v7}, Lkotlinx/serialization/descriptors/SerialDescriptor;->b()Z

    move-result v8

    invoke-static {v7, p1}, Landroidx/navigation/serialization/RouteSerializerKt;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;Ljava/util/Map;)Landroidx/navigation/NavType;

    move-result-object v9

    if-eqz v9, :cond_1

    iget-object v6, v6, Landroidx/navigation/NavArgumentBuilder;->a:Landroidx/navigation/NavArgument$Builder;

    iput-object v9, v6, Landroidx/navigation/NavArgument$Builder;->a:Landroidx/navigation/NavType;

    iput-boolean v8, v6, Landroidx/navigation/NavArgument$Builder;->b:Z

    invoke-interface {p0}, Lkotlinx/serialization/SerializationStrategy;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v7

    invoke-interface {v7, v3}, Lkotlinx/serialization/descriptors/SerialDescriptor;->j(I)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroidx/navigation/NavArgument$Builder;->e:Z

    :cond_0
    invoke-virtual {v6}, Landroidx/navigation/NavArgument$Builder;->a()Landroidx/navigation/NavArgument;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Landroidx/navigation/NamedNavArgument;-><init>(Ljava/lang/String;Landroidx/navigation/NavArgument;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v7}, Lkotlinx/serialization/descriptors/SerialDescriptor;->i()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lkotlinx/serialization/SerializationStrategy;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->i()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, v0, p0, p1}, Landroidx/navigation/serialization/RouteSerializerKt;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v1

    :cond_2
    return-object v2

    :cond_3
    const-string p1, "Cannot generate NavArguments for polymorphic serializer "

    const-string v0, ". Arguments can only be generated from concrete classes or objects."

    invoke-static {p1, p0, v0}, Llc0;->n(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public static final d(Ljava/lang/Object;Ljava/util/LinkedHashMap;)Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/serialization/SerializersKt;->b(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    new-instance v1, Landroidx/navigation/serialization/RouteEncoder;

    invoke-direct {v1, v0, p1}, Landroidx/navigation/serialization/RouteEncoder;-><init>(Lkotlinx/serialization/KSerializer;Ljava/util/Map;)V

    invoke-virtual {v1, p0}, Landroidx/navigation/serialization/RouteEncoder;->H(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    new-instance v1, Landroidx/navigation/serialization/RouteBuilder;

    invoke-direct {v1, v0}, Landroidx/navigation/serialization/RouteBuilder;-><init>(Lkotlinx/serialization/KSerializer;)V

    new-instance v2, Landroidx/navigation/serialization/b;

    invoke-direct {v2, p0, v1}, Landroidx/navigation/serialization/b;-><init>(Ljava/util/Map;Landroidx/navigation/serialization/RouteBuilder;)V

    invoke-interface {v0}, Lkotlinx/serialization/SerializationStrategy;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->d()I

    move-result p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p0, :cond_1

    invoke-interface {v0}, Lkotlinx/serialization/SerializationStrategy;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v4

    invoke-interface {v4, v3}, Lkotlinx/serialization/descriptors/SerialDescriptor;->f(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/navigation/NavType;

    if-eqz v5, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6, v4, v5}, Landroidx/navigation/serialization/b;->A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "Cannot locate NavType for argument ["

    const/16 p1, 0x5d

    invoke-static {p1, p0, v4}, Ld21;->d(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ltg0;->c(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, v1, Landroidx/navigation/serialization/RouteBuilder;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v1, Landroidx/navigation/serialization/RouteBuilder;->c:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v1, Landroidx/navigation/serialization/RouteBuilder;->d:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final e(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->e()Lkotlinx/serialization/descriptors/SerialKind;

    move-result-object v0

    sget-object v1, Lkotlinx/serialization/descriptors/StructureKind$CLASS;->a:Lkotlinx/serialization/descriptors/StructureKind$CLASS;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->isInline()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->d()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, " could not find any NavType for argument "

    const-string v1, " of type "

    const-string v2, "Route "

    invoke-static {v2, p2, v0, p0, v1}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " - typeMap received was "

    invoke-static {p0, p1, p2, p3}, Ld21;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
