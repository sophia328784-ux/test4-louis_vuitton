.class final Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/h$a;
.super Lcom/perfectcorp/thirdparty/com/google/gson/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/com/google/gson/k<",
        "Ljava/util/Map<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/perfectcorp/thirdparty/com/google/gson/k;

.field public final b:Lcom/perfectcorp/thirdparty/com/google/gson/k;

.field public final c:Lcom/perfectcorp/thirdparty/com/google/gson/internal/x;

.field public final synthetic d:Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/h;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/h;Lcom/perfectcorp/thirdparty/com/google/gson/Gson;Ljava/lang/reflect/Type;Lcom/perfectcorp/thirdparty/com/google/gson/k;Ljava/lang/reflect/Type;Lcom/perfectcorp/thirdparty/com/google/gson/k;Lcom/perfectcorp/thirdparty/com/google/gson/internal/x;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/thirdparty/com/google/gson/Gson;",
            "Ljava/lang/reflect/Type;",
            "Lcom/perfectcorp/thirdparty/com/google/gson/k<",
            "TK;>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/perfectcorp/thirdparty/com/google/gson/k<",
            "TV;>;",
            "Lcom/perfectcorp/thirdparty/com/google/gson/internal/x<",
            "+",
            "Ljava/util/Map<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/h$a;->d:Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/h;

    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/k;-><init>()V

    new-instance p1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/o;

    invoke-direct {p1, p2, p4, p3}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/o;-><init>(Lcom/perfectcorp/thirdparty/com/google/gson/Gson;Lcom/perfectcorp/thirdparty/com/google/gson/k;Ljava/lang/reflect/Type;)V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/h$a;->a:Lcom/perfectcorp/thirdparty/com/google/gson/k;

    new-instance p1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/o;

    invoke-direct {p1, p2, p6, p5}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/o;-><init>(Lcom/perfectcorp/thirdparty/com/google/gson/Gson;Lcom/perfectcorp/thirdparty/com/google/gson/k;Ljava/lang/reflect/Type;)V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/h$a;->b:Lcom/perfectcorp/thirdparty/com/google/gson/k;

    iput-object p7, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/h$a;->c:Lcom/perfectcorp/thirdparty/com/google/gson/internal/x;

    return-void
.end method


# virtual methods
.method public final a(Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;)Ljava/lang/Object;
    .locals 5

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->w()Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    move-result-object v0

    sget-object v1, Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;->i:Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->C()V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/h$a;->c:Lcom/perfectcorp/thirdparty/com/google/gson/internal/x;

    invoke-interface {v1}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/x;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    sget-object v2, Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;->a:Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    const-string v3, "duplicate key: "

    iget-object v4, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/h$a;->b:Lcom/perfectcorp/thirdparty/com/google/gson/k;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/h$a;->a:Lcom/perfectcorp/thirdparty/com/google/gson/k;

    if-ne v0, v2, :cond_3

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->h()V

    :goto_0
    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->u()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->h()V

    move-object v0, p0

    check-cast v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/o;

    iget-object v0, v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/o;->b:Lcom/perfectcorp/thirdparty/com/google/gson/k;

    invoke-virtual {v0, p1}, Lcom/perfectcorp/thirdparty/com/google/gson/k;->a(Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v4

    check-cast v2, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/o;

    iget-object v2, v2, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/o;->b:Lcom/perfectcorp/thirdparty/com/google/gson/k;

    invoke-virtual {v2, p1}, Lcom/perfectcorp/thirdparty/com/google/gson/k;->a(Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->o()V

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/perfectcorp/thirdparty/com/google/gson/j;

    invoke-static {v0, v3}, Lcj;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/gson/j;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->o()V

    return-object v1

    :cond_3
    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->r()V

    :goto_1
    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->u()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/r;->a:Lcom/perfectcorp/thirdparty/com/google/gson/internal/r;

    invoke-virtual {v0, p1}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/r;->a(Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;)V

    move-object v0, p0

    check-cast v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/o;

    iget-object v0, v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/o;->b:Lcom/perfectcorp/thirdparty/com/google/gson/k;

    invoke-virtual {v0, p1}, Lcom/perfectcorp/thirdparty/com/google/gson/k;->a(Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v4

    check-cast v2, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/o;

    iget-object v2, v2, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/o;->b:Lcom/perfectcorp/thirdparty/com/google/gson/k;

    invoke-virtual {v2, p1}, Lcom/perfectcorp/thirdparty/com/google/gson/k;->a(Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    new-instance p0, Lcom/perfectcorp/thirdparty/com/google/gson/j;

    invoke-static {v0, v3}, Lcj;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/gson/j;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->t()V

    return-object v1
.end method

.method public final b(Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;Ljava/lang/Object;)V
    .locals 9

    check-cast p2, Ljava/util/Map;

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;->y()Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/h$a;->d:Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/h;

    iget-boolean v0, v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/h;->b:Z

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/h$a;->b:Lcom/perfectcorp/thirdparty/com/google/gson/k;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;->t()V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;->o(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lcom/perfectcorp/thirdparty/com/google/gson/k;->b(Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;->w()V

    return-void

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    iget-object v7, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/h$a;->a:Lcom/perfectcorp/thirdparty/com/google/gson/k;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    new-instance v8, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/f;

    invoke-direct {v8}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/f;-><init>()V

    invoke-virtual {v7, v8, v6}, Lcom/perfectcorp/thirdparty/com/google/gson/k;->b(Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;Ljava/lang/Object;)V

    invoke-virtual {v8}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/f;->E()Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;

    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v5, v6, Lcom/perfectcorp/thirdparty/com/google/gson/JsonArray;

    if-nez v5, :cond_4

    instance-of v5, v6, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    move v5, v3

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v5, 0x1

    :goto_3
    or-int/2addr v4, v5

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance p1, Lcom/perfectcorp/thirdparty/com/google/gson/h;

    invoke-direct {p1, p0}, Lcom/perfectcorp/thirdparty/com/google/gson/h;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_5
    if-eqz v4, :cond_7

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;->q()V

    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ge v3, p0, :cond_6

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;->q()V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;

    invoke-static {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/z;->b(Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p1, p0}, Lcom/perfectcorp/thirdparty/com/google/gson/k;->b(Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;->s()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;->s()V

    return-void

    :cond_7
    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;->t()V

    :goto_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ge v3, p0, :cond_d

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p2, p0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;

    if-eqz p2, :cond_b

    check-cast p0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;

    iget-object p2, p0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;->b:Ljava/lang/Object;

    instance-of v4, p2, Ljava/lang/Number;

    if-eqz v4, :cond_8

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;->o()Ljava/lang/Number;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_6

    :cond_8
    instance-of v4, p2, Ljava/lang/Boolean;

    if-eqz v4, :cond_9

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;->r()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    goto :goto_6

    :cond_9
    instance-of p2, p2, Ljava/lang/String;

    if-eqz p2, :cond_a

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;->n()Ljava/lang/String;

    move-result-object p0

    goto :goto_6

    :cond_a
    invoke-static {}, La61;->h()V

    return-void

    :cond_b
    instance-of p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonNull;

    if-eqz p0, :cond_c

    const-string p0, "null"

    :goto_6
    invoke-virtual {p1, p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;->o(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p1, p0}, Lcom/perfectcorp/thirdparty/com/google/gson/k;->b(Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_c
    invoke-static {}, La61;->h()V

    return-void

    :cond_d
    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;->w()V

    return-void
.end method
