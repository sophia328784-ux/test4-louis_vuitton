.class public final Lcom/squareup/moshi/Moshi$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/moshi/Moshi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/moshi/Moshi$Builder;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/squareup/moshi/Moshi$Builder;->b:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/sightcall/universal/agent/Usecase$MultipleFormatsMultipartyAdapter;)V
    .locals 25

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-class v2, Lcom/sightcall/universal/agent/Usecase$MultipleFormatsMultipartyAdapter;

    move-object v3, v2

    :goto_0
    const-class v4, Ljava/lang/Object;

    if-eq v3, v4, :cond_13

    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    array-length v5, v4

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v5, :cond_12

    aget-object v12, v4, v7

    const-class v8, Lcom/squareup/moshi/ToJson;

    invoke-virtual {v12, v8}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v8

    const-string v9, "Nullable"

    const-class v10, Lcom/squareup/moshi/JsonAdapter;

    const-string v11, "\n    "

    const-string v13, "Unexpected signature for "

    sget-object v14, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x1

    if-eqz v8, :cond_8

    invoke-virtual {v12, v15}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v8

    move/from16 v16, v15

    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v15

    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v17

    const/16 v19, 0x0

    array-length v6, v15

    move-object/from16 v20, v2

    const/4 v2, 0x2

    if-lt v6, v2, :cond_3

    aget-object v6, v15, v19

    const-class v2, Lcom/squareup/moshi/JsonWriter;

    if-ne v6, v2, :cond_3

    if-ne v8, v14, :cond_3

    array-length v2, v15

    const/4 v6, 0x2

    :goto_2
    if-ge v6, v2, :cond_2

    move/from16 v18, v2

    aget-object v2, v15, v6

    move-object/from16 v21, v3

    instance-of v3, v2, Ljava/lang/reflect/ParameterizedType;

    if-nez v3, :cond_0

    goto :goto_3

    :cond_0
    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v2

    if-eq v2, v10, :cond_1

    :goto_3
    move-object v3, v9

    move-object v6, v10

    move-object/from16 v22, v11

    move-object/from16 v23, v13

    move-object/from16 v24, v14

    move/from16 v2, v16

    goto :goto_4

    :cond_1
    add-int/lit8 v6, v6, 0x1

    move/from16 v2, v18

    move-object/from16 v3, v21

    goto :goto_2

    :cond_2
    move-object/from16 v21, v3

    aget-object v2, v17, v16

    invoke-static {v2}, Lcom/squareup/moshi/internal/Util;->f([Ljava/lang/annotation/Annotation;)Ljava/util/Set;

    move-result-object v2

    new-instance v8, Lcom/squareup/moshi/AdapterMethodsFactory$2;

    move-object v3, v9

    aget-object v9, v15, v16

    move-object v6, v13

    array-length v13, v15

    move-object v15, v14

    const/4 v14, 0x2

    move-object/from16 v17, v15

    const/4 v15, 0x1

    move-object/from16 v23, v6

    move-object v6, v10

    move-object/from16 v22, v11

    move-object/from16 v24, v17

    move-object/from16 v11, p1

    move-object v10, v2

    move/from16 v2, v16

    invoke-direct/range {v8 .. v15}, Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;-><init>(Ljava/lang/reflect/Type;Ljava/util/Set;Lcom/sightcall/universal/agent/Usecase$MultipleFormatsMultipartyAdapter;Ljava/lang/reflect/Method;IIZ)V

    move-object/from16 v2, v24

    goto :goto_8

    :cond_3
    move-object/from16 v21, v3

    goto :goto_3

    :goto_4
    array-length v9, v15

    if-ne v9, v2, :cond_7

    move-object/from16 v9, v24

    if-eq v8, v9, :cond_7

    sget-object v10, Lcom/squareup/moshi/internal/Util;->a:Ljava/util/Set;

    invoke-interface {v12}, Ljava/lang/reflect/AnnotatedElement;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v10

    invoke-static {v10}, Lcom/squareup/moshi/internal/Util;->f([Ljava/lang/annotation/Annotation;)Ljava/util/Set;

    move-result-object v18

    aget-object v10, v17, v19

    invoke-static {v10}, Lcom/squareup/moshi/internal/Util;->f([Ljava/lang/annotation/Annotation;)Ljava/util/Set;

    move-result-object v10

    aget-object v11, v17, v19

    array-length v13, v11

    move/from16 v14, v19

    :goto_5
    if-ge v14, v13, :cond_5

    aget-object v16, v11, v14

    invoke-interface/range {v16 .. v16}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v14, 0x1

    :goto_6
    move-object/from16 v16, v8

    goto :goto_7

    :cond_4
    add-int/lit8 v14, v14, 0x1

    const/4 v2, 0x1

    goto :goto_5

    :cond_5
    move/from16 v14, v19

    goto :goto_6

    :goto_7
    new-instance v8, Lcom/squareup/moshi/AdapterMethodsFactory$3;

    move-object/from16 v17, v9

    aget-object v9, v15, v19

    array-length v13, v15

    move-object/from16 v2, v17

    move-object/from16 v17, v10

    move-object/from16 v11, p1

    invoke-direct/range {v8 .. v18}, Lcom/squareup/moshi/AdapterMethodsFactory$3;-><init>(Ljava/lang/reflect/Type;Ljava/util/Set;Lcom/sightcall/universal/agent/Usecase$MultipleFormatsMultipartyAdapter;Ljava/lang/reflect/Method;IZ[Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/util/Set;)V

    :goto_8
    iget-object v9, v8, Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;->a:Ljava/lang/reflect/Type;

    iget-object v10, v8, Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;->b:Ljava/util/Set;

    invoke-static {v0, v9, v10}, Lcom/squareup/moshi/AdapterMethodsFactory;->a(Ljava/util/ArrayList;Ljava/lang/reflect/Type;Ljava/util/Set;)Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;

    move-result-object v9

    if-nez v9, :cond_6

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v8, v22

    move-object/from16 v9, v23

    goto :goto_9

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Conflicting @ToJson methods:\n    "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v9, Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;->d:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;->d:Ljava/lang/reflect/Method;

    move-object/from16 v8, v22

    invoke-static {v0, v8, v1}, Lb21;->w(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_7
    const-string v0, ".\n@ToJson method signatures may have one of the following structures:\n    <any access modifier> void toJson(JsonWriter writer, T value) throws <any>;\n    <any access modifier> void toJson(JsonWriter writer, T value, JsonAdapter<any> delegate, <any more delegates>) throws <any>;\n    <any access modifier> R toJson(T value) throws <any>;\n"

    move-object/from16 v9, v23

    invoke-static {v9, v12, v0}, Llc0;->n(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_8
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object v3, v9

    move-object v6, v10

    move-object v8, v11

    move-object v9, v13

    move-object v2, v14

    const/16 v19, 0x0

    :goto_9
    const-class v10, Lcom/squareup/moshi/FromJson;

    invoke-virtual {v12, v10}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_11

    const/4 v10, 0x1

    invoke-virtual {v12, v10}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object v11, v9

    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v9

    sget-object v13, Lcom/squareup/moshi/internal/Util;->a:Ljava/util/Set;

    invoke-interface {v12}, Ljava/lang/reflect/AnnotatedElement;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v13

    invoke-static {v13}, Lcom/squareup/moshi/internal/Util;->f([Ljava/lang/annotation/Annotation;)Ljava/util/Set;

    move-result-object v13

    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v15

    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v14

    move-object/from16 v22, v4

    array-length v4, v15

    if-lt v4, v10, :cond_c

    aget-object v4, v15, v19

    const-class v10, Lcom/squareup/moshi/JsonReader;

    if-ne v4, v10, :cond_c

    if-eq v9, v2, :cond_c

    array-length v4, v15

    const/4 v10, 0x1

    :goto_a
    if-ge v10, v4, :cond_b

    move/from16 v16, v4

    aget-object v4, v15, v10

    move/from16 v23, v5

    instance-of v5, v4, Ljava/lang/reflect/ParameterizedType;

    if-nez v5, :cond_9

    goto :goto_b

    :cond_9
    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v4

    if-eq v4, v6, :cond_a

    :goto_b
    move-object v4, v8

    move-object v10, v13

    goto :goto_c

    :cond_a
    add-int/lit8 v10, v10, 0x1

    move/from16 v4, v16

    move/from16 v5, v23

    goto :goto_a

    :cond_b
    move/from16 v23, v5

    new-instance v2, Lcom/squareup/moshi/AdapterMethodsFactory$4;

    move-object v10, v13

    array-length v13, v15

    const/4 v14, 0x1

    const/4 v15, 0x1

    move-object/from16 v11, p1

    move-object v4, v8

    move-object v8, v2

    invoke-direct/range {v8 .. v15}, Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;-><init>(Ljava/lang/reflect/Type;Ljava/util/Set;Lcom/sightcall/universal/agent/Usecase$MultipleFormatsMultipartyAdapter;Ljava/lang/reflect/Method;IIZ)V

    goto :goto_f

    :cond_c
    move/from16 v23, v5

    goto :goto_b

    :goto_c
    array-length v5, v15

    const/4 v6, 0x1

    if-ne v5, v6, :cond_10

    if-eq v9, v2, :cond_10

    aget-object v2, v14, v19

    invoke-static {v2}, Lcom/squareup/moshi/internal/Util;->f([Ljava/lang/annotation/Annotation;)Ljava/util/Set;

    move-result-object v17

    aget-object v2, v14, v19

    array-length v5, v2

    move/from16 v8, v19

    :goto_d
    if-ge v8, v5, :cond_e

    aget-object v11, v2, v8

    invoke-interface {v11}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    move v14, v6

    goto :goto_e

    :cond_d
    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    :cond_e
    move/from16 v14, v19

    :goto_e
    new-instance v8, Lcom/squareup/moshi/AdapterMethodsFactory$5;

    array-length v13, v15

    move-object/from16 v16, v9

    move-object/from16 v18, v10

    move-object/from16 v11, p1

    invoke-direct/range {v8 .. v18}, Lcom/squareup/moshi/AdapterMethodsFactory$5;-><init>(Ljava/lang/reflect/Type;Ljava/util/Set;Lcom/sightcall/universal/agent/Usecase$MultipleFormatsMultipartyAdapter;Ljava/lang/reflect/Method;IZ[Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/util/Set;)V

    move-object v2, v8

    :goto_f
    iget-object v3, v2, Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;->a:Ljava/lang/reflect/Type;

    iget-object v5, v2, Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;->b:Ljava/util/Set;

    invoke-static {v1, v3, v5}, Lcom/squareup/moshi/AdapterMethodsFactory;->a(Ljava/util/ArrayList;Ljava/lang/reflect/Type;Ljava/util/Set;)Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;

    move-result-object v3

    if-nez v3, :cond_f

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Conflicting @FromJson methods:\n    "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v3, Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;->d:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lcom/squareup/moshi/AdapterMethodsFactory$AdapterMethod;->d:Ljava/lang/reflect/Method;

    invoke-static {v0, v4, v1}, Lb21;->w(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_10
    const-string v0, ".\n@FromJson method signatures may have one of the following structures:\n    <any access modifier> R fromJson(JsonReader jsonReader) throws <any>;\n    <any access modifier> R fromJson(JsonReader jsonReader, JsonAdapter<any> delegate, <any more delegates>) throws <any>;\n    <any access modifier> R fromJson(T value) throws <any>;\n"

    invoke-static {v11, v12, v0}, Llc0;->n(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_11
    move-object/from16 v22, v4

    move/from16 v23, v5

    :goto_10
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    move/from16 v5, v23

    goto/16 :goto_1

    :cond_12
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    goto/16 :goto_0

    :cond_13
    move-object/from16 v20, v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_11

    :cond_14
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Expected at least one @ToJson or @FromJson method on "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_15
    :goto_11
    new-instance v2, Lcom/squareup/moshi/AdapterMethodsFactory;

    invoke-direct {v2, v0, v1}, Lcom/squareup/moshi/AdapterMethodsFactory;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/squareup/moshi/Moshi$Builder;->b(Lcom/squareup/moshi/JsonAdapter$Factory;)V

    return-void
.end method

.method public final b(Lcom/squareup/moshi/JsonAdapter$Factory;)V
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/squareup/moshi/Moshi$Builder;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/squareup/moshi/Moshi$Builder;->b:I

    iget-object p0, p0, Lcom/squareup/moshi/Moshi$Builder;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void

    :cond_0
    const-string p0, "factory == null"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method

.method public final c(Lcom/squareup/moshi/JsonAdapter;)V
    .locals 1

    sget-object v0, Lcom/squareup/moshi/Moshi;->d:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/squareup/moshi/Moshi$1;

    invoke-direct {v0, p1}, Lcom/squareup/moshi/Moshi$1;-><init>(Lcom/squareup/moshi/JsonAdapter;)V

    invoke-virtual {p0, v0}, Lcom/squareup/moshi/Moshi$Builder;->b(Lcom/squareup/moshi/JsonAdapter$Factory;)V

    return-void

    :cond_0
    const-string p0, "jsonAdapter == null"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method
