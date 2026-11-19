.class final Lcom/perfectcorp/thirdparty/com/google/gson/Gson$a;
.super Lcom/perfectcorp/thirdparty/com/google/gson/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/gson/Gson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
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
.field public a:Lcom/perfectcorp/thirdparty/com/google/gson/k;


# virtual methods
.method public final a(Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/Gson$a;->a:Lcom/perfectcorp/thirdparty/com/google/gson/k;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/gson/k;->a(Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lr81;->b()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final b(Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/Gson$a;->a:Lcom/perfectcorp/thirdparty/com/google/gson/k;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/perfectcorp/thirdparty/com/google/gson/k;->b(Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {}, Lr81;->b()V

    return-void
.end method
