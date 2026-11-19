.class abstract Lcom/perfectcorp/thirdparty/com/google/common/cache/d$g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/common/cache/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public b:I

.field public c:I

.field public d:Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;

.field public e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

.field public f:Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

.field public g:Lcom/perfectcorp/thirdparty/com/google/common/cache/d$ah;

.field public h:Lcom/perfectcorp/thirdparty/com/google/common/cache/d$ah;

.field public final synthetic i:Lcom/perfectcorp/thirdparty/com/google/common/cache/d;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/com/google/common/cache/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$g;->i:Lcom/perfectcorp/thirdparty/com/google/common/cache/d;

    iget-object p1, p1, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->d:[Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$g;->b:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$g;->c:I

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$g;->c()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/perfectcorp/thirdparty/com/google/common/cache/d$ah;
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$g;->g:Lcom/perfectcorp/thirdparty/com/google/common/cache/d$ah;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$g;->h:Lcom/perfectcorp/thirdparty/com/google/common/cache/d$ah;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$g;->c()V

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$g;->h:Lcom/perfectcorp/thirdparty/com/google/common/cache/d$ah;

    return-object p0

    :cond_0
    invoke-static {}, Lb21;->x()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final b(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;)Z
    .locals 4

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$g;->i:Lcom/perfectcorp/thirdparty/com/google/common/cache/d;

    :try_start_0
    iget-object v1, v0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->n:Lcom/perfectcorp/thirdparty/com/google/common/base/t;

    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/t;->a()J

    invoke-interface {p1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->d()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->a()Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;

    move-result-object p1

    invoke-interface {p1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, p1

    :goto_0
    if-eqz v3, :cond_2

    new-instance p1, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$ah;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object v0, p1, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$ah;->d:Lcom/perfectcorp/thirdparty/com/google/common/cache/d;

    iput-object v1, p1, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$ah;->b:Ljava/lang/Object;

    iput-object v3, p1, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$ah;->c:Ljava/lang/Object;

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$g;->g:Lcom/perfectcorp/thirdparty/com/google/common/cache/d$ah;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$g;->d:Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->g()V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$g;->d:Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->g()V

    const/4 p0, 0x0

    return p0

    :goto_1
    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$g;->d:Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->g()V

    throw p1
.end method

.method public final c()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$g;->g:Lcom/perfectcorp/thirdparty/com/google/common/cache/d$ah;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$g;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$g;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$g;->b:I

    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$g;->i:Lcom/perfectcorp/thirdparty/com/google/common/cache/d;

    iget-object v1, v1, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->d:[Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$g;->b:I

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$g;->d:Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;

    iget v0, v0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->c:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$g;->d:Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;

    iget-object v0, v0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$g;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$g;->c:I

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$g;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_2
    :goto_0
    return-void
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$g;->f:Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    if-eqz v0, :cond_1

    :goto_0
    invoke-interface {v0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->b()Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$g;->f:Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$g;->f:Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$g;->b(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$g;->f:Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final e()Z
    .locals 3

    :cond_0
    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$g;->c:I

    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$g;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$g;->c:I

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$g;->f:Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$g;->b(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$g;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final hasNext()Z
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$g;->g:Lcom/perfectcorp/thirdparty/com/google/common/cache/d$ah;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$g;->a()Lcom/perfectcorp/thirdparty/com/google/common/cache/d$ah;

    move-result-object p0

    return-object p0
.end method

.method public final remove()V
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$g;->h:Lcom/perfectcorp/thirdparty/com/google/common/cache/d$ah;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->i(Z)V

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$g;->h:Lcom/perfectcorp/thirdparty/com/google/common/cache/d$ah;

    iget-object v0, v0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$ah;->b:Ljava/lang/Object;

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$g;->i:Lcom/perfectcorp/thirdparty/com/google/common/cache/d;

    invoke-virtual {v1, v0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$g;->h:Lcom/perfectcorp/thirdparty/com/google/common/cache/d$ah;

    return-void
.end method
