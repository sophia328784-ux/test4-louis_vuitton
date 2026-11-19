.class final Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/z;
.super Lcom/perfectcorp/thirdparty/com/google/gson/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/perfectcorp/thirdparty/com/google/gson/k<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# virtual methods
.method public final synthetic a(Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->w()Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    move-result-object p0

    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/v;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    new-instance p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/s;

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->z()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/s;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance p1, Lcom/perfectcorp/thirdparty/com/google/gson/j;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expecting number, got: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/perfectcorp/thirdparty/com/google/gson/j;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->C()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final bridge synthetic b(Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p1, p2}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;->n(Ljava/lang/Number;)V

    return-void
.end method
