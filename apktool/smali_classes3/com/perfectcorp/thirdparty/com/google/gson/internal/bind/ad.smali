.class final Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/ad;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/thirdparty/com/google/gson/l;


# instance fields
.field public synthetic a:Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;

.field public synthetic b:Lcom/perfectcorp/thirdparty/com/google/gson/k;


# virtual methods
.method public final a(Lcom/perfectcorp/thirdparty/com/google/gson/Gson;Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;)Lcom/perfectcorp/thirdparty/com/google/gson/k;
    .locals 0

    iget-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/ad;->a:Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;

    invoke-virtual {p2, p1}, Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/ad;->b:Lcom/perfectcorp/thirdparty/com/google/gson/k;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
