.class final Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/u;
.super Lcom/perfectcorp/thirdparty/com/google/gson/k;


# instance fields
.field public final synthetic a:Ljava/lang/Class;

.field public final synthetic b:Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/t;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/t;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/u;->b:Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/t;

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/u;->a:Ljava/lang/Class;

    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/k;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;)Ljava/lang/Object;
    .locals 3

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/ab;->d(Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;)Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/u;->a:Ljava/lang/Class;

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/gson/j;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " but was "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/com/google/gson/j;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-object p1
.end method

.method public final b(Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/u;->b:Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/t;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/t;->a:Lcom/perfectcorp/thirdparty/com/google/gson/k;

    invoke-virtual {p0, p1, p2}, Lcom/perfectcorp/thirdparty/com/google/gson/k;->b(Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;Ljava/lang/Object;)V

    return-void
.end method
