.class public final Lcom/perfectcorp/thirdparty/com/google/gson/internal/b;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/perfectcorp/thirdparty/com/google/gson/g<",
            "*>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/b;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;)Lcom/perfectcorp/thirdparty/com/google/gson/internal/x;
    .locals 3

    iget-object v0, p1, Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;->b:Ljava/lang/reflect/Type;

    iget-object p1, p1, Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;->a:Ljava/lang/Class;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/b;->a:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/thirdparty/com/google/gson/g;

    if-eqz v1, :cond_0

    new-instance p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/c;->a:Lcom/perfectcorp/thirdparty/com/google/gson/g;

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/c;->b:Ljava/lang/reflect/Type;

    return-object p0

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/thirdparty/com/google/gson/g;

    if-eqz p0, :cond_1

    new-instance p1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/i;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p0, p1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/i;->a:Lcom/perfectcorp/thirdparty/com/google/gson/g;

    iput-object v0, p1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/i;->b:Ljava/lang/reflect/Type;

    return-object p1

    :cond_1
    const/4 p0, 0x0

    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :cond_2
    new-instance v2, Lcom/perfectcorp/thirdparty/com/google/gson/internal/j;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v1, v2, Lcom/perfectcorp/thirdparty/com/google/gson/internal/j;->a:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v2, p0

    :goto_0
    if-eqz v2, :cond_3

    return-object v2

    :cond_3
    const-class v1, Ljava/util/Collection;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-class p0, Ljava/util/SortedSet;

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_4

    new-instance p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/16 :goto_1

    :cond_4
    const-class p0, Ljava/util/EnumSet;

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_5

    new-instance p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/l;->a:Ljava/lang/reflect/Type;

    goto/16 :goto_1

    :cond_5
    const-class p0, Ljava/util/Set;

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_6

    new-instance p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/16 :goto_1

    :cond_6
    const-class p0, Ljava/util/Queue;

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_7

    new-instance p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto :goto_1

    :cond_7
    new-instance p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto :goto_1

    :cond_8
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-class p0, Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_9

    new-instance p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto :goto_1

    :cond_9
    const-class p0, Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_a

    new-instance p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto :goto_1

    :cond_a
    const-class p0, Ljava/util/SortedMap;

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_b

    new-instance p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto :goto_1

    :cond_b
    instance-of p0, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz p0, :cond_c

    move-object p0, v0

    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    const/4 v1, 0x0

    aget-object p0, p0, v1

    new-instance v1, Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;

    invoke-direct {v1, p0}, Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V

    iget-object p0, v1, Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;->a:Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-nez p0, :cond_c

    new-instance p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto :goto_1

    :cond_c
    new-instance p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :cond_d
    :goto_1
    if-eqz p0, :cond_e

    return-object p0

    :cond_e
    new-instance p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/h;

    invoke-direct {p0, v0, p1}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/h;-><init>(Ljava/lang/reflect/Type;Ljava/lang/Class;)V

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/b;->a:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
