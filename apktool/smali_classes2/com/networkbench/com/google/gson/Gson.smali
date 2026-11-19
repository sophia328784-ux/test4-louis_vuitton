.class public final Lcom/networkbench/com/google/gson/Gson;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/networkbench/com/google/gson/Gson$$$Internal;,
        Lcom/networkbench/com/google/gson/Gson$a;
    }
.end annotation


# static fields
.field private static final JSON_NON_EXECUTABLE_PREFIX:Ljava/lang/String; = ")]}\'\n"

.field static final a:Z = false


# instance fields
.field final b:Lcom/networkbench/com/google/gson/JsonDeserializationContext;

.field final c:Lcom/networkbench/com/google/gson/JsonSerializationContext;

.field private final calls:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Lcom/networkbench/com/google/gson/reflect/TypeToken<",
            "*>;",
            "Lcom/networkbench/com/google/gson/Gson$a<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private final constructorConstructor:Lcom/networkbench/com/google/gson/internal/ConstructorConstructor;

.field private final factories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/networkbench/com/google/gson/TypeAdapterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final generateNonExecutableJson:Z

.field private final htmlSafe:Z

.field private inConstructorPhase:Z

.field private preconfiguredGeneratedTypeAdapters:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/networkbench/com/google/gson/TypeAdapter<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final prettyPrinting:Z

.field private final runtimeGeneratedTypeAdapters:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Set<",
            "Lcom/networkbench/com/google/gson/TypeAdapter<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private final serializeNulls:Z

.field private final typeTokenCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/networkbench/com/google/gson/reflect/TypeToken<",
            "*>;",
            "Lcom/networkbench/com/google/gson/TypeAdapter<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 12

    .line 320
    sget-object v1, Lcom/networkbench/com/google/gson/internal/Excluder;->DEFAULT:Lcom/networkbench/com/google/gson/internal/Excluder;

    sget-object v2, Lcom/networkbench/com/google/gson/FieldNamingPolicy;->IDENTITY:Lcom/networkbench/com/google/gson/FieldNamingPolicy;

    .line 321
    sget-object v3, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    sget-object v10, Lcom/networkbench/com/google/gson/LongSerializationPolicy;->DEFAULT:Lcom/networkbench/com/google/gson/LongSerializationPolicy;

    .line 322
    sget-object v11, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    .line 323
    invoke-direct/range {v0 .. v11}, Lcom/networkbench/com/google/gson/Gson;-><init>(Lcom/networkbench/com/google/gson/internal/Excluder;Lcom/networkbench/com/google/gson/FieldNamingStrategy;Ljava/util/Map;ZZZZZZLcom/networkbench/com/google/gson/LongSerializationPolicy;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lcom/networkbench/com/google/gson/internal/Excluder;Lcom/networkbench/com/google/gson/FieldNamingStrategy;Ljava/util/Map;ZZZZZZLcom/networkbench/com/google/gson/LongSerializationPolicy;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/networkbench/com/google/gson/internal/Excluder;",
            "Lcom/networkbench/com/google/gson/FieldNamingStrategy;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/networkbench/com/google/gson/InstanceCreator<",
            "*>;>;ZZZZZZ",
            "Lcom/networkbench/com/google/gson/LongSerializationPolicy;",
            "Ljava/util/List<",
            "Lcom/networkbench/com/google/gson/TypeAdapterFactory;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/networkbench/com/google/gson/Gson;->calls:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/com/google/gson/Gson;->typeTokenCache:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/networkbench/com/google/gson/Gson;->inConstructorPhase:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/networkbench/com/google/gson/Gson;->preconfiguredGeneratedTypeAdapters:Ljava/util/Set;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/networkbench/com/google/gson/Gson;->runtimeGeneratedTypeAdapters:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/networkbench/com/google/gson/Gson$1;

    invoke-direct {v0, p0}, Lcom/networkbench/com/google/gson/Gson$1;-><init>(Lcom/networkbench/com/google/gson/Gson;)V

    iput-object v0, p0, Lcom/networkbench/com/google/gson/Gson;->b:Lcom/networkbench/com/google/gson/JsonDeserializationContext;

    new-instance v0, Lcom/networkbench/com/google/gson/Gson$2;

    invoke-direct {v0, p0}, Lcom/networkbench/com/google/gson/Gson$2;-><init>(Lcom/networkbench/com/google/gson/Gson;)V

    iput-object v0, p0, Lcom/networkbench/com/google/gson/Gson;->c:Lcom/networkbench/com/google/gson/JsonSerializationContext;

    new-instance v0, Lcom/networkbench/com/google/gson/internal/ConstructorConstructor;

    invoke-direct {v0, p3}, Lcom/networkbench/com/google/gson/internal/ConstructorConstructor;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/networkbench/com/google/gson/Gson;->constructorConstructor:Lcom/networkbench/com/google/gson/internal/ConstructorConstructor;

    iput-boolean p4, p0, Lcom/networkbench/com/google/gson/Gson;->serializeNulls:Z

    iput-boolean p6, p0, Lcom/networkbench/com/google/gson/Gson;->generateNonExecutableJson:Z

    iput-boolean p7, p0, Lcom/networkbench/com/google/gson/Gson;->htmlSafe:Z

    iput-boolean p8, p0, Lcom/networkbench/com/google/gson/Gson;->prettyPrinting:Z

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    sget-object p4, Lcom/networkbench/com/google/gson/internal/a/m;->Q:Lcom/networkbench/com/google/gson/TypeAdapterFactory;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/networkbench/com/google/gson/internal/a/h;->a:Lcom/networkbench/com/google/gson/TypeAdapterFactory;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3, p11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object p4, Lcom/networkbench/com/google/gson/internal/a/m;->x:Lcom/networkbench/com/google/gson/TypeAdapterFactory;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/networkbench/com/google/gson/internal/a/m;->m:Lcom/networkbench/com/google/gson/TypeAdapterFactory;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/networkbench/com/google/gson/internal/a/m;->g:Lcom/networkbench/com/google/gson/TypeAdapterFactory;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/networkbench/com/google/gson/internal/a/m;->i:Lcom/networkbench/com/google/gson/TypeAdapterFactory;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/networkbench/com/google/gson/internal/a/m;->k:Lcom/networkbench/com/google/gson/TypeAdapterFactory;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class p4, Ljava/lang/Long;

    invoke-direct {p0, p10}, Lcom/networkbench/com/google/gson/Gson;->longAdapter(Lcom/networkbench/com/google/gson/LongSerializationPolicy;)Lcom/networkbench/com/google/gson/TypeAdapter;

    move-result-object p6

    sget-object p7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {p7, p4, p6}, Lcom/networkbench/com/google/gson/internal/a/m;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/networkbench/com/google/gson/TypeAdapter;)Lcom/networkbench/com/google/gson/TypeAdapterFactory;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class p4, Ljava/lang/Double;

    invoke-direct {p0, p9}, Lcom/networkbench/com/google/gson/Gson;->doubleAdapter(Z)Lcom/networkbench/com/google/gson/TypeAdapter;

    move-result-object p6

    sget-object p7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p7, p4, p6}, Lcom/networkbench/com/google/gson/internal/a/m;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/networkbench/com/google/gson/TypeAdapter;)Lcom/networkbench/com/google/gson/TypeAdapterFactory;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class p4, Ljava/lang/Float;

    invoke-direct {p0, p9}, Lcom/networkbench/com/google/gson/Gson;->floatAdapter(Z)Lcom/networkbench/com/google/gson/TypeAdapter;

    move-result-object p6

    sget-object p7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p7, p4, p6}, Lcom/networkbench/com/google/gson/internal/a/m;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/networkbench/com/google/gson/TypeAdapter;)Lcom/networkbench/com/google/gson/TypeAdapterFactory;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/networkbench/com/google/gson/internal/a/m;->r:Lcom/networkbench/com/google/gson/TypeAdapterFactory;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/networkbench/com/google/gson/internal/a/m;->t:Lcom/networkbench/com/google/gson/TypeAdapterFactory;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/networkbench/com/google/gson/internal/a/m;->z:Lcom/networkbench/com/google/gson/TypeAdapterFactory;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/networkbench/com/google/gson/internal/a/m;->B:Lcom/networkbench/com/google/gson/TypeAdapterFactory;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class p4, Ljava/math/BigDecimal;

    sget-object p6, Lcom/networkbench/com/google/gson/internal/a/m;->v:Lcom/networkbench/com/google/gson/TypeAdapter;

    invoke-static {p4, p6}, Lcom/networkbench/com/google/gson/internal/a/m;->a(Ljava/lang/Class;Lcom/networkbench/com/google/gson/TypeAdapter;)Lcom/networkbench/com/google/gson/TypeAdapterFactory;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class p4, Ljava/math/BigInteger;

    sget-object p6, Lcom/networkbench/com/google/gson/internal/a/m;->w:Lcom/networkbench/com/google/gson/TypeAdapter;

    invoke-static {p4, p6}, Lcom/networkbench/com/google/gson/internal/a/m;->a(Ljava/lang/Class;Lcom/networkbench/com/google/gson/TypeAdapter;)Lcom/networkbench/com/google/gson/TypeAdapterFactory;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/networkbench/com/google/gson/internal/a/m;->D:Lcom/networkbench/com/google/gson/TypeAdapterFactory;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/networkbench/com/google/gson/internal/a/m;->F:Lcom/networkbench/com/google/gson/TypeAdapterFactory;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/networkbench/com/google/gson/internal/a/m;->J:Lcom/networkbench/com/google/gson/TypeAdapterFactory;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/networkbench/com/google/gson/internal/a/m;->O:Lcom/networkbench/com/google/gson/TypeAdapterFactory;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/networkbench/com/google/gson/internal/a/m;->H:Lcom/networkbench/com/google/gson/TypeAdapterFactory;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/networkbench/com/google/gson/internal/a/m;->d:Lcom/networkbench/com/google/gson/TypeAdapterFactory;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/networkbench/com/google/gson/internal/a/d;->a:Lcom/networkbench/com/google/gson/TypeAdapterFactory;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/networkbench/com/google/gson/internal/a/m;->M:Lcom/networkbench/com/google/gson/TypeAdapterFactory;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/networkbench/com/google/gson/internal/a/k;->a:Lcom/networkbench/com/google/gson/TypeAdapterFactory;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/networkbench/com/google/gson/internal/a/j;->a:Lcom/networkbench/com/google/gson/TypeAdapterFactory;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/networkbench/com/google/gson/internal/a/m;->K:Lcom/networkbench/com/google/gson/TypeAdapterFactory;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/networkbench/com/google/gson/internal/a/b;->a:Lcom/networkbench/com/google/gson/TypeAdapterFactory;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/networkbench/com/google/gson/internal/a/m;->R:Lcom/networkbench/com/google/gson/TypeAdapterFactory;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/networkbench/com/google/gson/internal/a/m;->b:Lcom/networkbench/com/google/gson/TypeAdapterFactory;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p4, Lcom/networkbench/com/google/gson/internal/a/c;

    invoke-direct {p4, v0}, Lcom/networkbench/com/google/gson/internal/a/c;-><init>(Lcom/networkbench/com/google/gson/internal/ConstructorConstructor;)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p4, Lcom/networkbench/com/google/gson/internal/a/g;

    invoke-direct {p4, v0, p5}, Lcom/networkbench/com/google/gson/internal/a/g;-><init>(Lcom/networkbench/com/google/gson/internal/ConstructorConstructor;Z)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p4, Lcom/networkbench/com/google/gson/internal/a/a;

    invoke-direct {p4, v0}, Lcom/networkbench/com/google/gson/internal/a/a;-><init>(Lcom/networkbench/com/google/gson/internal/ConstructorConstructor;)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p4, Lcom/networkbench/com/google/gson/internal/a/i;

    invoke-direct {p4, v0, p2, p1}, Lcom/networkbench/com/google/gson/internal/a/i;-><init>(Lcom/networkbench/com/google/gson/internal/ConstructorConstructor;Lcom/networkbench/com/google/gson/FieldNamingStrategy;Lcom/networkbench/com/google/gson/internal/Excluder;)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/com/google/gson/Gson;->factories:Ljava/util/List;

    iget-object p1, p0, Lcom/networkbench/com/google/gson/Gson;->preconfiguredGeneratedTypeAdapters:Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/com/google/gson/Gson;->preconfiguredGeneratedTypeAdapters:Ljava/util/Set;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/networkbench/com/google/gson/Gson;->inConstructorPhase:Z

    return-void
.end method

.method public static synthetic a(Lcom/networkbench/com/google/gson/Gson;D)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/networkbench/com/google/gson/Gson;->checkValidFloatingPoint(D)V

    return-void
.end method

.method public static synthetic a(Lcom/networkbench/com/google/gson/Gson;)Z
    .locals 0

    .line 4
    iget-boolean p0, p0, Lcom/networkbench/com/google/gson/Gson;->inConstructorPhase:Z

    return p0
.end method

.method private static assertFullConsumption(Ljava/lang/Object;Lcom/networkbench/com/google/gson/stream/JsonReader;)V
    .locals 0

    if-eqz p0, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/stream/JsonReader;->peek()Lcom/networkbench/com/google/gson/stream/JsonToken;

    move-result-object p0

    sget-object p1, Lcom/networkbench/com/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/networkbench/com/google/gson/stream/JsonToken;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/networkbench/com/google/gson/JsonIOException;

    const-string p1, "JSON document was not fully consumed."

    invoke-direct {p0, p1}, Lcom/networkbench/com/google/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/networkbench/com/google/gson/stream/MalformedJsonException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/networkbench/com/google/gson/JsonIOException;

    invoke-direct {p1, p0}, Lcom/networkbench/com/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lcom/networkbench/com/google/gson/JsonSyntaxException;

    invoke-direct {p1, p0}, Lcom/networkbench/com/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic b(Lcom/networkbench/com/google/gson/Gson;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/com/google/gson/Gson;->preconfiguredGeneratedTypeAdapters:Ljava/util/Set;

    return-object p0
.end method

.method public static synthetic c(Lcom/networkbench/com/google/gson/Gson;)Ljava/lang/ThreadLocal;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/com/google/gson/Gson;->runtimeGeneratedTypeAdapters:Ljava/lang/ThreadLocal;

    return-object p0
.end method

.method private checkValidFloatingPoint(D)V
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private doubleAdapter(Z)Lcom/networkbench/com/google/gson/TypeAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/networkbench/com/google/gson/TypeAdapter<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    sget-object p0, Lcom/networkbench/com/google/gson/internal/a/m;->p:Lcom/networkbench/com/google/gson/TypeAdapter;

    return-object p0

    :cond_0
    new-instance p1, Lcom/networkbench/com/google/gson/Gson$3;

    invoke-direct {p1, p0}, Lcom/networkbench/com/google/gson/Gson$3;-><init>(Lcom/networkbench/com/google/gson/Gson;)V

    return-object p1
.end method

.method private floatAdapter(Z)Lcom/networkbench/com/google/gson/TypeAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/networkbench/com/google/gson/TypeAdapter<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    sget-object p0, Lcom/networkbench/com/google/gson/internal/a/m;->o:Lcom/networkbench/com/google/gson/TypeAdapter;

    return-object p0

    :cond_0
    new-instance p1, Lcom/networkbench/com/google/gson/Gson$4;

    invoke-direct {p1, p0}, Lcom/networkbench/com/google/gson/Gson$4;-><init>(Lcom/networkbench/com/google/gson/Gson;)V

    return-object p1
.end method

.method private longAdapter(Lcom/networkbench/com/google/gson/LongSerializationPolicy;)Lcom/networkbench/com/google/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/networkbench/com/google/gson/LongSerializationPolicy;",
            ")",
            "Lcom/networkbench/com/google/gson/TypeAdapter<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/networkbench/com/google/gson/LongSerializationPolicy;->DEFAULT:Lcom/networkbench/com/google/gson/LongSerializationPolicy;

    if-ne p1, v0, :cond_0

    sget-object p0, Lcom/networkbench/com/google/gson/internal/a/m;->n:Lcom/networkbench/com/google/gson/TypeAdapter;

    return-object p0

    :cond_0
    new-instance p1, Lcom/networkbench/com/google/gson/Gson$5;

    invoke-direct {p1, p0}, Lcom/networkbench/com/google/gson/Gson$5;-><init>(Lcom/networkbench/com/google/gson/Gson;)V

    return-object p1
.end method

.method private newJsonWriter(Ljava/io/Writer;)Lcom/networkbench/com/google/gson/stream/JsonWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/networkbench/com/google/gson/Gson;->generateNonExecutableJson:Z

    if-eqz v0, :cond_0

    const-string v0, ")]}\'\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/networkbench/com/google/gson/stream/JsonWriter;

    invoke-direct {v0, p1}, Lcom/networkbench/com/google/gson/stream/JsonWriter;-><init>(Ljava/io/Writer;)V

    iget-boolean p1, p0, Lcom/networkbench/com/google/gson/Gson;->prettyPrinting:Z

    if-eqz p1, :cond_1

    const-string p1, "  "

    invoke-virtual {v0, p1}, Lcom/networkbench/com/google/gson/stream/JsonWriter;->setIndent(Ljava/lang/String;)V

    :cond_1
    iget-boolean p0, p0, Lcom/networkbench/com/google/gson/Gson;->serializeNulls:Z

    invoke-virtual {v0, p0}, Lcom/networkbench/com/google/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    return-object v0
.end method


# virtual methods
.method public fromJson(Lcom/networkbench/com/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/networkbench/com/google/gson/JsonElement;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/networkbench/com/google/gson/JsonSyntaxException;
        }
    .end annotation

    .line 76
    invoke-virtual {p0, p1, p2}, Lcom/networkbench/com/google/gson/Gson;->fromJson(Lcom/networkbench/com/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    .line 77
    invoke-static {p2}, Lcom/networkbench/com/google/gson/internal/Primitives;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public fromJson(Lcom/networkbench/com/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/networkbench/com/google/gson/JsonElement;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/networkbench/com/google/gson/JsonSyntaxException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 78
    :cond_0
    new-instance v0, Lcom/networkbench/com/google/gson/internal/a/e;

    invoke-direct {v0, p1}, Lcom/networkbench/com/google/gson/internal/a/e;-><init>(Lcom/networkbench/com/google/gson/JsonElement;)V

    invoke-virtual {p0, v0, p2}, Lcom/networkbench/com/google/gson/Gson;->fromJson(Lcom/networkbench/com/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public fromJson(Lcom/networkbench/com/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/networkbench/com/google/gson/stream/JsonReader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/networkbench/com/google/gson/JsonIOException;,
            Lcom/networkbench/com/google/gson/JsonSyntaxException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/stream/JsonReader;->isLenient()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/networkbench/com/google/gson/stream/JsonReader;->setLenient(Z)V

    :try_start_0
    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/stream/JsonReader;->peek()Lcom/networkbench/com/google/gson/stream/JsonToken;

    const/4 v1, 0x0

    invoke-static {p2}, Lcom/networkbench/com/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/networkbench/com/google/gson/reflect/TypeToken;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/networkbench/com/google/gson/Gson;->getAdapter(Lcom/networkbench/com/google/gson/reflect/TypeToken;)Lcom/networkbench/com/google/gson/TypeAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/networkbench/com/google/gson/TypeAdapter;->read(Lcom/networkbench/com/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v0}, Lcom/networkbench/com/google/gson/stream/JsonReader;->setLenient(Z)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_2

    :goto_0
    :try_start_1
    new-instance p2, Lcom/networkbench/com/google/gson/JsonSyntaxException;

    invoke-direct {p2, p0}, Lcom/networkbench/com/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :goto_1
    new-instance p2, Lcom/networkbench/com/google/gson/JsonSyntaxException;

    invoke-direct {p2, p0}, Lcom/networkbench/com/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lcom/networkbench/com/google/gson/stream/JsonReader;->setLenient(Z)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_2
    new-instance p2, Lcom/networkbench/com/google/gson/JsonSyntaxException;

    invoke-direct {p2, p0}, Lcom/networkbench/com/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    invoke-virtual {p1, v0}, Lcom/networkbench/com/google/gson/stream/JsonReader;->setLenient(Z)V

    throw p0
.end method

.method public fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/networkbench/com/google/gson/JsonSyntaxException;,
            Lcom/networkbench/com/google/gson/JsonIOException;
        }
    .end annotation

    .line 67
    new-instance v0, Lcom/networkbench/com/google/gson/stream/JsonReader;

    invoke-direct {v0, p1}, Lcom/networkbench/com/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 68
    invoke-virtual {p0, v0, p2}, Lcom/networkbench/com/google/gson/Gson;->fromJson(Lcom/networkbench/com/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    .line 69
    invoke-static {p0, v0}, Lcom/networkbench/com/google/gson/Gson;->assertFullConsumption(Ljava/lang/Object;Lcom/networkbench/com/google/gson/stream/JsonReader;)V

    .line 70
    invoke-static {p2}, Lcom/networkbench/com/google/gson/internal/Primitives;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/networkbench/com/google/gson/JsonIOException;,
            Lcom/networkbench/com/google/gson/JsonSyntaxException;
        }
    .end annotation

    .line 71
    new-instance v0, Lcom/networkbench/com/google/gson/stream/JsonReader;

    invoke-direct {v0, p1}, Lcom/networkbench/com/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 72
    invoke-virtual {p0, v0, p2}, Lcom/networkbench/com/google/gson/Gson;->fromJson(Lcom/networkbench/com/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    .line 73
    invoke-static {p0, v0}, Lcom/networkbench/com/google/gson/Gson;->assertFullConsumption(Ljava/lang/Object;Lcom/networkbench/com/google/gson/stream/JsonReader;)V

    return-object p0
.end method

.method public fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/networkbench/com/google/gson/JsonSyntaxException;
        }
    .end annotation

    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/networkbench/com/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    .line 75
    invoke-static {p2}, Lcom/networkbench/com/google/gson/internal/Primitives;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/networkbench/com/google/gson/JsonSyntaxException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 65
    :cond_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0, v0, p2}, Lcom/networkbench/com/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getAdapter(Lcom/networkbench/com/google/gson/reflect/TypeToken;)Lcom/networkbench/com/google/gson/TypeAdapter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/networkbench/com/google/gson/reflect/TypeToken<",
            "TT;>;)",
            "Lcom/networkbench/com/google/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/networkbench/com/google/gson/Gson;->typeTokenCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/networkbench/com/google/gson/TypeAdapter;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/networkbench/com/google/gson/Gson;->calls:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/networkbench/com/google/gson/Gson;->calls:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/networkbench/com/google/gson/Gson$a;

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    :try_start_0
    new-instance v2, Lcom/networkbench/com/google/gson/Gson$a;

    invoke-direct {v2}, Lcom/networkbench/com/google/gson/Gson$a;-><init>()V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/networkbench/com/google/gson/Gson;->factories:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/networkbench/com/google/gson/TypeAdapterFactory;

    invoke-interface {v4, p0, p1}, Lcom/networkbench/com/google/gson/TypeAdapterFactory;->create(Lcom/networkbench/com/google/gson/Gson;Lcom/networkbench/com/google/gson/reflect/TypeToken;)Lcom/networkbench/com/google/gson/TypeAdapter;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v2, v4}, Lcom/networkbench/com/google/gson/Gson$a;->a(Lcom/networkbench/com/google/gson/TypeAdapter;)V

    iget-object v2, p0, Lcom/networkbench/com/google/gson/Gson;->typeTokenCache:Ljava/util/Map;

    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_4

    iget-object p0, p0, Lcom/networkbench/com/google/gson/Gson;->calls:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    :cond_4
    return-object v4

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_5
    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GSON cannot handle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_6

    iget-object p0, p0, Lcom/networkbench/com/google/gson/Gson;->calls:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    :cond_6
    throw v2
.end method

.method public getAdapter(Ljava/lang/Class;)Lcom/networkbench/com/google/gson/TypeAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/networkbench/com/google/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 130
    invoke-static {p1}, Lcom/networkbench/com/google/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/networkbench/com/google/gson/reflect/TypeToken;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/networkbench/com/google/gson/Gson;->getAdapter(Lcom/networkbench/com/google/gson/reflect/TypeToken;)Lcom/networkbench/com/google/gson/TypeAdapter;

    move-result-object p0

    return-object p0
.end method

.method public getDelegateAdapter(Lcom/networkbench/com/google/gson/TypeAdapterFactory;Lcom/networkbench/com/google/gson/reflect/TypeToken;)Lcom/networkbench/com/google/gson/TypeAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/networkbench/com/google/gson/TypeAdapterFactory;",
            "Lcom/networkbench/com/google/gson/reflect/TypeToken<",
            "TT;>;)",
            "Lcom/networkbench/com/google/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/networkbench/com/google/gson/Gson;->factories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/networkbench/com/google/gson/TypeAdapterFactory;

    if-nez v1, :cond_1

    if-ne v2, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v2, p0, p2}, Lcom/networkbench/com/google/gson/TypeAdapterFactory;->create(Lcom/networkbench/com/google/gson/Gson;Lcom/networkbench/com/google/gson/reflect/TypeToken;)Lcom/networkbench/com/google/gson/TypeAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    :cond_2
    const-string p0, "GSON cannot serialize "

    invoke-static {p2, p0}, Laz;->m(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public toJson(Lcom/networkbench/com/google/gson/JsonElement;)Ljava/lang/String;
    .locals 1

    .line 76
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 77
    invoke-virtual {p0, p1, v0}, Lcom/networkbench/com/google/gson/Gson;->toJson(Lcom/networkbench/com/google/gson/JsonElement;Ljava/lang/Appendable;)V

    .line 78
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toJson(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    .line 74
    sget-object p1, Lcom/networkbench/com/google/gson/JsonNull;->INSTANCE:Lcom/networkbench/com/google/gson/JsonNull;

    invoke-virtual {p0, p1}, Lcom/networkbench/com/google/gson/Gson;->toJson(Lcom/networkbench/com/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 75
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/networkbench/com/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 1

    .line 66
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 67
    invoke-virtual {p0, p1, p2, v0}, Lcom/networkbench/com/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    .line 68
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toJson(Lcom/networkbench/com/google/gson/JsonElement;Lcom/networkbench/com/google/gson/stream/JsonWriter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/networkbench/com/google/gson/JsonIOException;
        }
    .end annotation

    .line 82
    invoke-virtual {p2}, Lcom/networkbench/com/google/gson/stream/JsonWriter;->isLenient()Z

    move-result v0

    const/4 v1, 0x1

    .line 83
    invoke-virtual {p2, v1}, Lcom/networkbench/com/google/gson/stream/JsonWriter;->setLenient(Z)V

    .line 84
    invoke-virtual {p2}, Lcom/networkbench/com/google/gson/stream/JsonWriter;->isHtmlSafe()Z

    move-result v1

    .line 85
    iget-boolean v2, p0, Lcom/networkbench/com/google/gson/Gson;->htmlSafe:Z

    invoke-virtual {p2, v2}, Lcom/networkbench/com/google/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 86
    invoke-virtual {p2}, Lcom/networkbench/com/google/gson/stream/JsonWriter;->getSerializeNulls()Z

    move-result v2

    .line 87
    iget-boolean p0, p0, Lcom/networkbench/com/google/gson/Gson;->serializeNulls:Z

    invoke-virtual {p2, p0}, Lcom/networkbench/com/google/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    .line 88
    :try_start_0
    invoke-static {p1, p2}, Lcom/networkbench/com/google/gson/internal/Streams;->write(Lcom/networkbench/com/google/gson/JsonElement;Lcom/networkbench/com/google/gson/stream/JsonWriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    invoke-virtual {p2, v0}, Lcom/networkbench/com/google/gson/stream/JsonWriter;->setLenient(Z)V

    .line 90
    invoke-virtual {p2, v1}, Lcom/networkbench/com/google/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 91
    invoke-virtual {p2, v2}, Lcom/networkbench/com/google/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 92
    :try_start_1
    new-instance p1, Lcom/networkbench/com/google/gson/JsonIOException;

    invoke-direct {p1, p0}, Lcom/networkbench/com/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    :goto_0
    invoke-virtual {p2, v0}, Lcom/networkbench/com/google/gson/stream/JsonWriter;->setLenient(Z)V

    .line 94
    invoke-virtual {p2, v1}, Lcom/networkbench/com/google/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 95
    invoke-virtual {p2, v2}, Lcom/networkbench/com/google/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    .line 96
    throw p0
.end method

.method public toJson(Lcom/networkbench/com/google/gson/JsonElement;Ljava/lang/Appendable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/networkbench/com/google/gson/JsonIOException;
        }
    .end annotation

    .line 79
    :try_start_0
    invoke-static {p2}, Lcom/networkbench/com/google/gson/internal/Streams;->writerForAppendable(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/networkbench/com/google/gson/Gson;->newJsonWriter(Ljava/io/Writer;)Lcom/networkbench/com/google/gson/stream/JsonWriter;

    move-result-object p2

    .line 80
    invoke-virtual {p0, p1, p2}, Lcom/networkbench/com/google/gson/Gson;->toJson(Lcom/networkbench/com/google/gson/JsonElement;Lcom/networkbench/com/google/gson/stream/JsonWriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 81
    invoke-static {p0}, Lx1;->m(Ljava/lang/Throwable;)V

    return-void
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/Appendable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/networkbench/com/google/gson/JsonIOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/networkbench/com/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    return-void

    .line 70
    :cond_0
    sget-object p1, Lcom/networkbench/com/google/gson/JsonNull;->INSTANCE:Lcom/networkbench/com/google/gson/JsonNull;

    invoke-virtual {p0, p1, p2}, Lcom/networkbench/com/google/gson/Gson;->toJson(Lcom/networkbench/com/google/gson/JsonElement;Ljava/lang/Appendable;)V

    return-void
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/networkbench/com/google/gson/stream/JsonWriter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/networkbench/com/google/gson/JsonIOException;
        }
    .end annotation

    invoke-static {p2}, Lcom/networkbench/com/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/networkbench/com/google/gson/reflect/TypeToken;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/networkbench/com/google/gson/Gson;->getAdapter(Lcom/networkbench/com/google/gson/reflect/TypeToken;)Lcom/networkbench/com/google/gson/TypeAdapter;

    move-result-object p2

    invoke-virtual {p3}, Lcom/networkbench/com/google/gson/stream/JsonWriter;->isLenient()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Lcom/networkbench/com/google/gson/stream/JsonWriter;->setLenient(Z)V

    invoke-virtual {p3}, Lcom/networkbench/com/google/gson/stream/JsonWriter;->isHtmlSafe()Z

    move-result v1

    iget-boolean v2, p0, Lcom/networkbench/com/google/gson/Gson;->htmlSafe:Z

    invoke-virtual {p3, v2}, Lcom/networkbench/com/google/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    invoke-virtual {p3}, Lcom/networkbench/com/google/gson/stream/JsonWriter;->getSerializeNulls()Z

    move-result v2

    iget-boolean p0, p0, Lcom/networkbench/com/google/gson/Gson;->serializeNulls:Z

    invoke-virtual {p3, p0}, Lcom/networkbench/com/google/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    :try_start_0
    invoke-virtual {p2, p3, p1}, Lcom/networkbench/com/google/gson/TypeAdapter;->write(Lcom/networkbench/com/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p3, v0}, Lcom/networkbench/com/google/gson/stream/JsonWriter;->setLenient(Z)V

    invoke-virtual {p3, v1}, Lcom/networkbench/com/google/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    invoke-virtual {p3, v2}, Lcom/networkbench/com/google/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    new-instance p1, Lcom/networkbench/com/google/gson/JsonIOException;

    invoke-direct {p1, p0}, Lcom/networkbench/com/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {p3, v0}, Lcom/networkbench/com/google/gson/stream/JsonWriter;->setLenient(Z)V

    invoke-virtual {p3, v1}, Lcom/networkbench/com/google/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    invoke-virtual {p3, v2}, Lcom/networkbench/com/google/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    throw p0
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/networkbench/com/google/gson/JsonIOException;
        }
    .end annotation

    .line 71
    :try_start_0
    invoke-static {p3}, Lcom/networkbench/com/google/gson/internal/Streams;->writerForAppendable(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/networkbench/com/google/gson/Gson;->newJsonWriter(Ljava/io/Writer;)Lcom/networkbench/com/google/gson/stream/JsonWriter;

    move-result-object p3

    .line 72
    invoke-virtual {p0, p1, p2, p3}, Lcom/networkbench/com/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/networkbench/com/google/gson/stream/JsonWriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 73
    new-instance p1, Lcom/networkbench/com/google/gson/JsonIOException;

    invoke-direct {p1, p0}, Lcom/networkbench/com/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public toJsonTree(Ljava/lang/Object;)Lcom/networkbench/com/google/gson/JsonElement;
    .locals 1

    if-nez p1, :cond_0

    sget-object p0, Lcom/networkbench/com/google/gson/JsonNull;->INSTANCE:Lcom/networkbench/com/google/gson/JsonNull;

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/networkbench/com/google/gson/Gson;->toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/networkbench/com/google/gson/JsonElement;

    move-result-object p0

    return-object p0
.end method

.method public toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/networkbench/com/google/gson/JsonElement;
    .locals 1

    .line 14
    new-instance v0, Lcom/networkbench/com/google/gson/internal/a/f;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/internal/a/f;-><init>()V

    .line 15
    invoke-virtual {p0, p1, p2, v0}, Lcom/networkbench/com/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/networkbench/com/google/gson/stream/JsonWriter;)V

    .line 16
    invoke-virtual {v0}, Lcom/networkbench/com/google/gson/internal/a/f;->a()Lcom/networkbench/com/google/gson/JsonElement;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{serializeNulls:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/networkbench/com/google/gson/Gson;->serializeNulls:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "factories:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/networkbench/com/google/gson/Gson;->factories:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",instanceCreators:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/networkbench/com/google/gson/Gson;->constructorConstructor:Lcom/networkbench/com/google/gson/internal/ConstructorConstructor;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
