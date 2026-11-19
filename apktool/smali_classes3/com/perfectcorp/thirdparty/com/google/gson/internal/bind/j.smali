.class final Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/thirdparty/com/google/gson/l;


# virtual methods
.method public final a(Lcom/perfectcorp/thirdparty/com/google/gson/Gson;Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;)Lcom/perfectcorp/thirdparty/com/google/gson/k;
    .locals 0

    iget-object p0, p2, Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;->a:Ljava/lang/Class;

    const-class p2, Ljava/lang/Object;

    if-ne p0, p2, :cond_0

    new-instance p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/i;

    invoke-direct {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/i;-><init>(Lcom/perfectcorp/thirdparty/com/google/gson/Gson;)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
