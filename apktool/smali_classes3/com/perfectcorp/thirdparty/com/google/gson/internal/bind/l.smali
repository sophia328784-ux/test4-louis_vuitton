.class public final Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/thirdparty/com/google/gson/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/l$a;,
        Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/l$b;
    }
.end annotation


# instance fields
.field public final a:Lcom/perfectcorp/thirdparty/com/google/gson/internal/b;

.field public final b:Lcom/perfectcorp/thirdparty/com/google/gson/c;

.field public final c:Lcom/perfectcorp/thirdparty/com/google/gson/internal/q;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/com/google/gson/internal/b;Lcom/perfectcorp/thirdparty/com/google/gson/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/l;->a:Lcom/perfectcorp/thirdparty/com/google/gson/internal/b;

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/l;->b:Lcom/perfectcorp/thirdparty/com/google/gson/c;

    sget-object p1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/q;->a:Lcom/perfectcorp/thirdparty/com/google/gson/internal/q;

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/l;->c:Lcom/perfectcorp/thirdparty/com/google/gson/internal/q;

    return-void
.end method


# virtual methods
.method public final a(Lcom/perfectcorp/thirdparty/com/google/gson/Gson;Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;)Lcom/perfectcorp/thirdparty/com/google/gson/k;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v1, Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;->a:Ljava/lang/Class;

    const-class v3, Ljava/lang/Object;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    return-object v5

    :cond_0
    iget-object v4, v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/l;->a:Lcom/perfectcorp/thirdparty/com/google/gson/internal/b;

    invoke-virtual {v4, v1}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/b;->a(Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;)Lcom/perfectcorp/thirdparty/com/google/gson/internal/x;

    move-result-object v4

    new-instance v6, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/l$a;

    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Class;->isInterface()Z

    move-result v8

    if-eqz v8, :cond_1

    goto/16 :goto_8

    :cond_1
    iget-object v8, v1, Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;->b:Ljava/lang/reflect/Type;

    :goto_0
    iget-object v1, v1, Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;->b:Ljava/lang/reflect/Type;

    if-eq v2, v3, :cond_c

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v9

    array-length v10, v9

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v10, :cond_b

    aget-object v13, v9, v12

    invoke-virtual {v0, v13}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/l;->b(Ljava/lang/reflect/Field;)Z

    move-result v14

    invoke-virtual {v0, v13}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/l;->b(Ljava/lang/reflect/Field;)Z

    move-result v16

    if-nez v14, :cond_3

    if-eqz v16, :cond_2

    goto :goto_2

    :cond_2
    move-object/from16 v23, v3

    move-object/from16 v22, v5

    move-object/from16 v26, v9

    goto/16 :goto_7

    :cond_3
    :goto_2
    const/4 v15, 0x1

    invoke-virtual {v13, v15}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v22, v5

    invoke-virtual {v13}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-static {v1, v2, v5}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/a;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v5

    const-class v11, Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;

    invoke-virtual {v13, v11}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v11

    check-cast v11, Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;

    if-nez v11, :cond_4

    iget-object v11, v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/l;->b:Lcom/perfectcorp/thirdparty/com/google/gson/c;

    invoke-interface {v11, v13}, Lcom/perfectcorp/thirdparty/com/google/gson/c;->a(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    :goto_3
    move-object/from16 v23, v3

    goto :goto_5

    :cond_4
    move/from16 v17, v15

    invoke-interface {v11}, Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;->value()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v11}, Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;->alternate()[Ljava/lang/String;

    move-result-object v11

    array-length v0, v11

    if-nez v0, :cond_5

    invoke-static {v15}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    goto :goto_3

    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    move-object/from16 v23, v3

    array-length v3, v11

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    array-length v3, v11

    const/4 v15, 0x0

    :goto_4
    if-ge v15, v3, :cond_6

    move/from16 v17, v3

    aget-object v3, v11, v15

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    move/from16 v3, v17

    goto :goto_4

    :cond_6
    move-object v11, v0

    :goto_5
    move-object/from16 v3, v22

    const/4 v0, 0x0

    :goto_6
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v15

    if-ge v0, v15, :cond_9

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    if-eqz v0, :cond_7

    const/4 v14, 0x0

    :cond_7
    move/from16 v24, v0

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;

    invoke-direct {v0, v5}, Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V

    move-object/from16 v25, v5

    iget-object v5, v0, Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;->a:Ljava/lang/Class;

    move-object/from16 v26, v9

    sget-object v9, Lcom/perfectcorp/thirdparty/com/google/gson/internal/y;->a:Ljava/util/Map;

    invoke-interface {v9, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    move-object/from16 v5, p1

    invoke-virtual {v5, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->a(Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;)Lcom/perfectcorp/thirdparty/com/google/gson/k;

    move-result-object v19

    move-object/from16 v17, v13

    new-instance v13, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/m;

    move-object/from16 v18, v15

    move v15, v14

    move-object/from16 v14, v18

    move-object/from16 v20, v0

    move-object/from16 v18, v5

    invoke-direct/range {v13 .. v21}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/m;-><init>(Ljava/lang/String;ZZLjava/lang/reflect/Field;Lcom/perfectcorp/thirdparty/com/google/gson/Gson;Lcom/perfectcorp/thirdparty/com/google/gson/k;Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;Z)V

    invoke-interface {v7, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/l$b;

    if-nez v3, :cond_8

    move-object v3, v0

    :cond_8
    add-int/lit8 v0, v24, 0x1

    move v14, v15

    move-object/from16 v13, v17

    move-object/from16 v5, v25

    move-object/from16 v9, v26

    goto :goto_6

    :cond_9
    move-object/from16 v26, v9

    if-nez v3, :cond_a

    :goto_7
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move-object/from16 v5, v22

    move-object/from16 v3, v23

    move-object/from16 v9, v26

    goto/16 :goto_1

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " declares multiple JSON fields named "

    iget-object v2, v3, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/l$b;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lb21;->w(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v22

    :cond_b
    move-object/from16 v23, v3

    move-object/from16 v22, v5

    invoke-virtual {v2}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/a;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    new-instance v1, Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;

    invoke-direct {v1, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V

    iget-object v2, v1, Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;->a:Ljava/lang/Class;

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_c
    :goto_8
    invoke-direct {v6, v4, v7}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/l$a;-><init>(Lcom/perfectcorp/thirdparty/com/google/gson/internal/x;Ljava/util/LinkedHashMap;)V

    return-object v6
.end method

.method public final b(Ljava/lang/reflect/Field;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/l;->c:Lcom/perfectcorp/thirdparty/com/google/gson/internal/q;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class p0, Ljava/lang/Enum;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Class;->isLocalClass()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    and-int/lit16 v0, v0, 0x88

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-nez p0, :cond_4

    invoke-virtual {p1}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {p1}, Ljava/lang/Class;->isLocalClass()Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method
