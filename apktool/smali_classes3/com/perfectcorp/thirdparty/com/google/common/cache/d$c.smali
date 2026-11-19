.class final Lcom/perfectcorp/thirdparty/com/google/common/cache/d$c;
.super Ljava/util/AbstractQueue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/common/cache/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue<",
        "Lcom/perfectcorp/thirdparty/com/google/common/cache/x<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final b:Lcom/perfectcorp/thirdparty/com/google/common/cache/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/cache/g;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v0, Lcom/perfectcorp/thirdparty/com/google/common/cache/g;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    iput-object v0, v0, Lcom/perfectcorp/thirdparty/com/google/common/cache/g;->c:Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$c;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/g;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 3

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$c;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/g;

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/g;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    :goto_0
    if-eq v0, p0, :cond_0

    invoke-interface {v0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->f()Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    move-result-object v1

    sget-object v2, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->u:Lcom/perfectcorp/thirdparty/com/google/common/cache/e;

    sget-object v2, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$m;->a:Lcom/perfectcorp/thirdparty/com/google/common/cache/d$m;

    invoke-interface {v0, v2}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->a(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;)V

    invoke-interface {v0, v2}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->e(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;)V

    move-object v0, v1

    goto :goto_0

    :cond_0
    iput-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/g;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    iput-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/g;->c:Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    invoke-interface {p1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->f()Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    move-result-object p0

    sget-object p1, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$m;->a:Lcom/perfectcorp/thirdparty/com/google/common/cache/d$m;

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isEmpty()Z
    .locals 1

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$c;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/g;

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/g;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 3

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/cache/h;

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$c;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/g;

    iget-object v2, v1, Lcom/perfectcorp/thirdparty/com/google/common/cache/g;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    if-ne v2, v1, :cond_0

    const/4 v2, 0x0

    :cond_0
    invoke-direct {v0, p0, v2}, Lcom/perfectcorp/thirdparty/com/google/common/cache/h;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/cache/d$c;Lcom/perfectcorp/thirdparty/com/google/common/cache/x;)V

    return-object v0
.end method

.method public final offer(Ljava/lang/Object;)Z
    .locals 3

    check-cast p1, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    invoke-interface {p1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->g()Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    move-result-object v0

    invoke-interface {p1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->f()Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    move-result-object v1

    sget-object v2, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->u:Lcom/perfectcorp/thirdparty/com/google/common/cache/e;

    invoke-interface {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->a(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;)V

    invoke-interface {v1, v0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->e(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;)V

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$c;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/g;

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/g;->c:Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    invoke-interface {v0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->a(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;)V

    invoke-interface {p1, v0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->e(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;)V

    invoke-interface {p1, p0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->a(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;)V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/g;->c:Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    const/4 p0, 0x1

    return p0
.end method

.method public final peek()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$c;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/g;

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/g;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public final poll()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$c;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/g;

    iget-object v1, v0, Lcom/perfectcorp/thirdparty/com/google/common/cache/g;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    if-ne v1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$c;->remove(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    invoke-interface {p1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->g()Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    move-result-object p0

    invoke-interface {p1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->f()Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    move-result-object v0

    sget-object v1, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->u:Lcom/perfectcorp/thirdparty/com/google/common/cache/e;

    invoke-interface {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->a(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;)V

    invoke-interface {v0, p0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->e(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;)V

    sget-object p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$m;->a:Lcom/perfectcorp/thirdparty/com/google/common/cache/d$m;

    invoke-interface {p1, p0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->a(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;)V

    invoke-interface {p1, p0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->e(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;)V

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final size()I
    .locals 2

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$c;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/g;

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/g;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    const/4 v1, 0x0

    :goto_0
    if-eq v0, p0, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->f()Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    move-result-object v0

    goto :goto_0

    :cond_0
    return v1
.end method
