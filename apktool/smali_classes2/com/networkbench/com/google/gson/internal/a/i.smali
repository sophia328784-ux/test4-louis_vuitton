.class public final Lcom/networkbench/com/google/gson/internal/a/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/com/google/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/networkbench/com/google/gson/internal/a/i$a;,
        Lcom/networkbench/com/google/gson/internal/a/i$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/networkbench/com/google/gson/internal/ConstructorConstructor;

.field private final b:Lcom/networkbench/com/google/gson/FieldNamingStrategy;

.field private final c:Lcom/networkbench/com/google/gson/internal/Excluder;


# direct methods
.method public constructor <init>(Lcom/networkbench/com/google/gson/internal/ConstructorConstructor;Lcom/networkbench/com/google/gson/FieldNamingStrategy;Lcom/networkbench/com/google/gson/internal/Excluder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/networkbench/com/google/gson/internal/a/i;->a:Lcom/networkbench/com/google/gson/internal/ConstructorConstructor;

    iput-object p2, p0, Lcom/networkbench/com/google/gson/internal/a/i;->b:Lcom/networkbench/com/google/gson/FieldNamingStrategy;

    iput-object p3, p0, Lcom/networkbench/com/google/gson/internal/a/i;->c:Lcom/networkbench/com/google/gson/internal/Excluder;

    return-void
.end method

.method private a(Lcom/networkbench/com/google/gson/Gson;Ljava/lang/reflect/Field;Lcom/networkbench/com/google/gson/reflect/TypeToken;)Lcom/networkbench/com/google/gson/TypeAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/networkbench/com/google/gson/Gson;",
            "Ljava/lang/reflect/Field;",
            "Lcom/networkbench/com/google/gson/reflect/TypeToken<",
            "*>;)",
            "Lcom/networkbench/com/google/gson/TypeAdapter<",
            "*>;"
        }
    .end annotation

    .line 137
    invoke-virtual {p1, p3}, Lcom/networkbench/com/google/gson/Gson;->getAdapter(Lcom/networkbench/com/google/gson/reflect/TypeToken;)Lcom/networkbench/com/google/gson/TypeAdapter;

    move-result-object p3

    .line 138
    invoke-static {p1, p3}, Lcom/networkbench/com/google/gson/Gson$$$Internal;->isGeneratedTypeAdapter(Lcom/networkbench/com/google/gson/Gson;Lcom/networkbench/com/google/gson/TypeAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    const-class v0, Lcom/networkbench/com/google/gson/annotations/Adapt;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p2

    check-cast p2, Lcom/networkbench/com/google/gson/annotations/Adapt;

    .line 141
    iget-object p0, p0, Lcom/networkbench/com/google/gson/internal/a/i;->a:Lcom/networkbench/com/google/gson/internal/ConstructorConstructor;

    invoke-static {p1, p0, p2}, Lcom/networkbench/com/google/gson/internal/a/a;->a(Lcom/networkbench/com/google/gson/Gson;Lcom/networkbench/com/google/gson/internal/ConstructorConstructor;Lcom/networkbench/com/google/gson/annotations/Adapt;)Lcom/networkbench/com/google/gson/TypeAdapter;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p3
.end method

.method public static synthetic a(Lcom/networkbench/com/google/gson/internal/a/i;Lcom/networkbench/com/google/gson/Gson;Ljava/lang/reflect/Field;Lcom/networkbench/com/google/gson/reflect/TypeToken;)Lcom/networkbench/com/google/gson/TypeAdapter;
    .locals 0

    .line 142
    invoke-direct {p0, p1, p2, p3}, Lcom/networkbench/com/google/gson/internal/a/i;->a(Lcom/networkbench/com/google/gson/Gson;Ljava/lang/reflect/Field;Lcom/networkbench/com/google/gson/reflect/TypeToken;)Lcom/networkbench/com/google/gson/TypeAdapter;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/networkbench/com/google/gson/Gson;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/networkbench/com/google/gson/reflect/TypeToken;ZZ)Lcom/networkbench/com/google/gson/internal/a/i$b;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/networkbench/com/google/gson/Gson;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/String;",
            "Lcom/networkbench/com/google/gson/reflect/TypeToken<",
            "*>;ZZ)",
            "Lcom/networkbench/com/google/gson/internal/a/i$b;"
        }
    .end annotation

    .line 135
    invoke-virtual {p4}, Lcom/networkbench/com/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/com/google/gson/internal/Primitives;->isPrimitive(Ljava/lang/reflect/Type;)Z

    move-result v9

    .line 136
    new-instance v1, Lcom/networkbench/com/google/gson/internal/a/i$1;

    move-object v2, p0

    move-object v6, p1

    move-object v7, p2

    move-object v3, p3

    move-object v8, p4

    move v4, p5

    move/from16 v5, p6

    invoke-direct/range {v1 .. v9}, Lcom/networkbench/com/google/gson/internal/a/i$1;-><init>(Lcom/networkbench/com/google/gson/internal/a/i;Ljava/lang/String;ZZLcom/networkbench/com/google/gson/Gson;Ljava/lang/reflect/Field;Lcom/networkbench/com/google/gson/reflect/TypeToken;Z)V

    return-object v1
.end method

.method private a(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 1

    .line 133
    const-class v0, Lcom/networkbench/com/google/gson/annotations/SerializedName;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/networkbench/com/google/gson/annotations/SerializedName;

    if-nez v0, :cond_0

    .line 134
    iget-object p0, p0, Lcom/networkbench/com/google/gson/internal/a/i;->b:Lcom/networkbench/com/google/gson/FieldNamingStrategy;

    invoke-interface {p0, p1}, Lcom/networkbench/com/google/gson/FieldNamingStrategy;->translateName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {v0}, Lcom/networkbench/com/google/gson/annotations/SerializedName;->value()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/networkbench/com/google/gson/Gson;Lcom/networkbench/com/google/gson/reflect/TypeToken;Ljava/lang/Class;)Ljava/util/Map;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/networkbench/com/google/gson/Gson;",
            "Lcom/networkbench/com/google/gson/reflect/TypeToken<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/networkbench/com/google/gson/internal/a/i$b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/networkbench/com/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    :goto_0
    const-class v4, Ljava/lang/Object;

    if-eq v3, v4, :cond_4

    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    if-ge v7, v5, :cond_3

    aget-object v10, v4, v7

    const/4 v8, 0x1

    invoke-virtual {p0, v10, v8}, Lcom/networkbench/com/google/gson/internal/a/i;->a(Ljava/lang/reflect/Field;Z)Z

    move-result v13

    invoke-virtual {p0, v10, v6}, Lcom/networkbench/com/google/gson/internal/a/i;->a(Ljava/lang/reflect/Field;Z)Z

    move-result v14

    if-nez v13, :cond_1

    if-nez v14, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v10, v8}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v2}, Lcom/networkbench/com/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v8

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v9

    invoke-static {v8, v3, v9}, Lcom/networkbench/com/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v8

    invoke-direct {p0, v10}, Lcom/networkbench/com/google/gson/internal/a/i;->a(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v8}, Lcom/networkbench/com/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/networkbench/com/google/gson/reflect/TypeToken;

    move-result-object v12

    move-object v8, p0

    move-object/from16 v9, p1

    invoke-direct/range {v8 .. v14}, Lcom/networkbench/com/google/gson/internal/a/i;->a(Lcom/networkbench/com/google/gson/Gson;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/networkbench/com/google/gson/reflect/TypeToken;ZZ)Lcom/networkbench/com/google/gson/internal/a/i$b;

    move-result-object v10

    iget-object v8, v10, Lcom/networkbench/com/google/gson/internal/a/i$b;->g:Ljava/lang/String;

    invoke-interface {v0, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/networkbench/com/google/gson/internal/a/i$b;

    if-nez v8, :cond_2

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " declares multiple JSON fields named "

    iget-object v1, v8, Lcom/networkbench/com/google/gson/internal/a/i$b;->g:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lb21;->w(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    :cond_3
    invoke-virtual {v2}, Lcom/networkbench/com/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/networkbench/com/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v2}, Lcom/networkbench/com/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/networkbench/com/google/gson/reflect/TypeToken;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/com/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v3

    goto :goto_0

    :cond_4
    :goto_3
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/reflect/Field;Z)Z
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/networkbench/com/google/gson/internal/a/i;->c:Lcom/networkbench/com/google/gson/internal/Excluder;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/networkbench/com/google/gson/internal/Excluder;->excludeClass(Ljava/lang/Class;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/networkbench/com/google/gson/internal/a/i;->c:Lcom/networkbench/com/google/gson/internal/Excluder;

    invoke-virtual {p0, p1, p2}, Lcom/networkbench/com/google/gson/internal/Excluder;->excludeField(Ljava/lang/reflect/Field;Z)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public create(Lcom/networkbench/com/google/gson/Gson;Lcom/networkbench/com/google/gson/reflect/TypeToken;)Lcom/networkbench/com/google/gson/TypeAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/networkbench/com/google/gson/Gson;",
            "Lcom/networkbench/com/google/gson/reflect/TypeToken<",
            "TT;>;)",
            "Lcom/networkbench/com/google/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/networkbench/com/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    iget-object v1, p0, Lcom/networkbench/com/google/gson/internal/a/i;->a:Lcom/networkbench/com/google/gson/internal/ConstructorConstructor;

    invoke-virtual {v1, p2}, Lcom/networkbench/com/google/gson/internal/ConstructorConstructor;->get(Lcom/networkbench/com/google/gson/reflect/TypeToken;)Lcom/networkbench/com/google/gson/internal/ObjectConstructor;

    move-result-object v1

    new-instance v3, Lcom/networkbench/com/google/gson/internal/a/i$a;

    invoke-direct {p0, p1, p2, v0}, Lcom/networkbench/com/google/gson/internal/a/i;->a(Lcom/networkbench/com/google/gson/Gson;Lcom/networkbench/com/google/gson/reflect/TypeToken;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object p0

    invoke-direct {v3, v1, p0, v2}, Lcom/networkbench/com/google/gson/internal/a/i$a;-><init>(Lcom/networkbench/com/google/gson/internal/ObjectConstructor;Ljava/util/Map;Lcom/networkbench/com/google/gson/internal/a/i$1;)V

    invoke-static {p1, v3}, Lcom/networkbench/com/google/gson/Gson$$$Internal;->addGeneratedTypeAdapter(Lcom/networkbench/com/google/gson/Gson;Lcom/networkbench/com/google/gson/TypeAdapter;)V

    return-object v3
.end method
