.class public final Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/n;
.super Lcom/perfectcorp/thirdparty/com/google/gson/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/n$a;,
        Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/n$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/com/google/gson/k<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/perfectcorp/thirdparty/com/google/gson/i;

.field public final b:Lcom/perfectcorp/thirdparty/com/google/gson/JsonDeserializer;

.field public final c:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

.field public final d:Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;

.field public final e:Lcom/perfectcorp/thirdparty/com/google/gson/l;

.field public final f:Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/n$a;

.field public g:Lcom/perfectcorp/thirdparty/com/google/gson/k;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/com/google/gson/i;Lcom/perfectcorp/thirdparty/com/google/gson/JsonDeserializer;Lcom/perfectcorp/thirdparty/com/google/gson/Gson;Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;Lcom/perfectcorp/thirdparty/com/google/gson/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/thirdparty/com/google/gson/i<",
            "TT;>;",
            "Lcom/perfectcorp/thirdparty/com/google/gson/JsonDeserializer<",
            "TT;>;",
            "Lcom/perfectcorp/thirdparty/com/google/gson/Gson;",
            "Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken<",
            "TT;>;",
            "Lcom/perfectcorp/thirdparty/com/google/gson/l;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/k;-><init>()V

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/n$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/n;->f:Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/n$a;

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/n;->a:Lcom/perfectcorp/thirdparty/com/google/gson/i;

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/n;->b:Lcom/perfectcorp/thirdparty/com/google/gson/JsonDeserializer;

    iput-object p3, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/n;->c:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    iput-object p4, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/n;->d:Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;

    iput-object p5, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/n;->e:Lcom/perfectcorp/thirdparty/com/google/gson/l;

    return-void
.end method

.method public static d(Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/gson/l;
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;->b:Ljava/lang/reflect/Type;

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;->a:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/n$b;

    invoke-direct {v1, p1, p0, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/n$b;-><init>(Ljava/lang/Object;Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;Z)V

    return-object v1
.end method


# virtual methods
.method public final a(Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/n;->b:Lcom/perfectcorp/thirdparty/com/google/gson/JsonDeserializer;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/n;->c()Lcom/perfectcorp/thirdparty/com/google/gson/k;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/gson/k;->a(Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/z;->a(Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;)Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;

    move-result-object p1

    instance-of v1, p1, Lcom/perfectcorp/thirdparty/com/google/gson/JsonNull;

    if-eqz v1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/n;->d:Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;

    iget-object v1, v1, Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;->b:Ljava/lang/reflect/Type;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/n;->f:Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/n$a;

    invoke-interface {v0, p1, p0}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonDeserializer;->a(Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;Lcom/perfectcorp/thirdparty/com/google/gson/JsonDeserializationContext;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/n;->a:Lcom/perfectcorp/thirdparty/com/google/gson/i;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/n;->c()Lcom/perfectcorp/thirdparty/com/google/gson/k;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/perfectcorp/thirdparty/com/google/gson/k;->b(Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;Ljava/lang/Object;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;->y()Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;

    return-void

    :cond_1
    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/n;->d:Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;->b:Ljava/lang/reflect/Type;

    invoke-interface {v0, p2}, Lcom/perfectcorp/thirdparty/com/google/gson/i;->a(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/z;->b(Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;)V

    return-void
.end method

.method public final c()Lcom/perfectcorp/thirdparty/com/google/gson/k;
    .locals 5

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/n;->g:Lcom/perfectcorp/thirdparty/com/google/gson/k;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/n;->c:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    iget-object v1, v0, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    iget-object v4, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/n;->d:Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/thirdparty/com/google/gson/l;

    if-nez v2, :cond_2

    iget-object v4, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/n;->e:Lcom/perfectcorp/thirdparty/com/google/gson/l;

    if-ne v3, v4, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v3, v0, v4}, Lcom/perfectcorp/thirdparty/com/google/gson/l;->a(Lcom/perfectcorp/thirdparty/com/google/gson/Gson;Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;)Lcom/perfectcorp/thirdparty/com/google/gson/k;

    move-result-object v3

    if-eqz v3, :cond_1

    iput-object v3, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/n;->g:Lcom/perfectcorp/thirdparty/com/google/gson/k;

    return-object v3

    :cond_3
    const-string p0, "GSON cannot serialize "

    invoke-static {v4, p0}, Laz;->m(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
