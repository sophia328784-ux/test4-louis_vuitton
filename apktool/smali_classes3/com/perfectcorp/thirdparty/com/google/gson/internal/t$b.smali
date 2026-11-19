.class final Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$b;
.super Ljava/util/AbstractSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$b;->b:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$b;->b:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$b;->b:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/w;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$b;->b:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$c;-><init>(Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$b;->b:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;->a(Ljava/lang/Object;Z)Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 p1, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1, p1}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;->e(Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$d;Z)V

    :cond_1
    if-eqz v1, :cond_2

    return p1

    :cond_2
    return v0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t$b;->b:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;

    iget p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;->d:I

    return p0
.end method
