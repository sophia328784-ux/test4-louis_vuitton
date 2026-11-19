.class final Lcom/perfectcorp/thirdparty/com/google/common/cache/d$r;
.super Lcom/perfectcorp/thirdparty/com/google/common/cache/d$s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/common/cache/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "r"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/com/google/common/cache/d$s<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public volatile f:J

.field public g:Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

.field public h:Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

.field public volatile i:J

.field public j:Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

.field public k:Lcom/perfectcorp/thirdparty/com/google/common/cache/x;


# virtual methods
.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$r;->f:J

    return-void
.end method

.method public final a(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$r;->g:Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    return-void
.end method

.method public final c(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$r;->k:Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    return-void
.end method

.method public final d(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$r;->j:Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    return-void
.end method

.method public final e()J
    .locals 2

    .line 3
    iget-wide v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$r;->f:J

    return-wide v0
.end method

.method public final e(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$r;->h:Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    return-void
.end method

.method public final f()Lcom/perfectcorp/thirdparty/com/google/common/cache/x;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$r;->g:Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    return-object p0
.end method

.method public final f(J)V
    .locals 0

    iput-wide p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$r;->i:J

    return-void
.end method

.method public final g()Lcom/perfectcorp/thirdparty/com/google/common/cache/x;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$r;->h:Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    return-object p0
.end method

.method public final h()J
    .locals 2

    iget-wide v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$r;->i:J

    return-wide v0
.end method

.method public final i()Lcom/perfectcorp/thirdparty/com/google/common/cache/x;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$r;->j:Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    return-object p0
.end method

.method public final j()Lcom/perfectcorp/thirdparty/com/google/common/cache/x;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$r;->k:Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    return-object p0
.end method
