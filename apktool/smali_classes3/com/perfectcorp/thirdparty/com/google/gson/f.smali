.class final Lcom/perfectcorp/thirdparty/com/google/gson/f;
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
    .locals 1

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->w()Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    move-result-object p0

    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;->i:Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->C()V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->E()D

    move-result-wide p0

    double-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic b(Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;Ljava/lang/Object;)V
    .locals 2

    check-cast p2, Ljava/lang/Number;

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;->y()Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p0

    float-to-double v0, p0

    invoke-static {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->d(D)V

    invoke-virtual {p1, p2}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;->n(Ljava/lang/Number;)V

    return-void
.end method
