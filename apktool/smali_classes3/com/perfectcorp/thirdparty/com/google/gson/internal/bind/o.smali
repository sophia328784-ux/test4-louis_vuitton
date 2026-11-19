.class final Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/o;
.super Lcom/perfectcorp/thirdparty/com/google/gson/k;


# annotations
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
.field public final a:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

.field public final b:Lcom/perfectcorp/thirdparty/com/google/gson/k;

.field public final c:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/com/google/gson/Gson;Lcom/perfectcorp/thirdparty/com/google/gson/k;Ljava/lang/reflect/Type;)V
    .locals 0

    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/k;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/o;->a:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/o;->b:Lcom/perfectcorp/thirdparty/com/google/gson/k;

    iput-object p3, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/o;->c:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public final a(Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/o;->b:Lcom/perfectcorp/thirdparty/com/google/gson/k;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/gson/k;->a(Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/o;->c:Ljava/lang/reflect/Type;

    if-eqz p2, :cond_1

    const-class v1, Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    instance-of v1, v0, Ljava/lang/reflect/TypeVariable;

    if-nez v1, :cond_0

    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    iget-object v2, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/o;->b:Lcom/perfectcorp/thirdparty/com/google/gson/k;

    if-eq v1, v0, :cond_3

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;

    invoke-direct {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/o;->a:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->a(Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;)Lcom/perfectcorp/thirdparty/com/google/gson/k;

    move-result-object p0

    instance-of v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/l$a;

    if-eqz v0, :cond_2

    instance-of v0, v2, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/l$a;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, p0

    :cond_3
    :goto_1
    invoke-virtual {v2, p1, p2}, Lcom/perfectcorp/thirdparty/com/google/gson/k;->b(Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;Ljava/lang/Object;)V

    return-void
.end method
