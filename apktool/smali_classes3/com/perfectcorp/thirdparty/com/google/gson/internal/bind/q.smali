.class final Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/q;
.super Lcom/perfectcorp/thirdparty/com/google/gson/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/perfectcorp/thirdparty/com/google/gson/k<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# virtual methods
.method public final synthetic a(Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->w()Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    move-result-object p0

    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;->i:Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->C()V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->w()Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    move-result-object p0

    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;->f:Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    if-ne p0, v0, :cond_1

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->z()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->B()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic b(Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;->m(Ljava/lang/Boolean;)V

    return-void
.end method
