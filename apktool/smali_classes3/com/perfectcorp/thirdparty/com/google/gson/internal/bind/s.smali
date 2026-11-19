.class final Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/thirdparty/com/google/gson/l;


# instance fields
.field public synthetic a:Ljava/lang/Class;

.field public synthetic b:Ljava/lang/Class;

.field public synthetic c:Lcom/perfectcorp/thirdparty/com/google/gson/k;


# virtual methods
.method public final a(Lcom/perfectcorp/thirdparty/com/google/gson/Gson;Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;)Lcom/perfectcorp/thirdparty/com/google/gson/k;
    .locals 0

    iget-object p1, p2, Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;->a:Ljava/lang/Class;

    iget-object p2, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/s;->a:Ljava/lang/Class;

    if-eq p1, p2, :cond_1

    iget-object p2, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/s;->b:Ljava/lang/Class;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/s;->c:Lcom/perfectcorp/thirdparty/com/google/gson/k;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Factory[type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/s;->b:Ljava/lang/Class;

    const-string v2, "+"

    invoke-static {v1, v0, v2}, Lo60;->z(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/s;->a:Ljava/lang/Class;

    const-string v2, ",adapter="

    invoke-static {v1, v0, v2}, Lo60;->z(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/s;->c:Lcom/perfectcorp/thirdparty/com/google/gson/k;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
