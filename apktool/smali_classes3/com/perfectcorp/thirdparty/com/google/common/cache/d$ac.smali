.class final Lcom/perfectcorp/thirdparty/com/google/common/cache/d$ac;
.super Lcom/perfectcorp/thirdparty/com/google/common/cache/d$aa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/common/cache/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ac"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/com/google/common/cache/d$aa<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public volatile e:J

.field public f:Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

.field public g:Lcom/perfectcorp/thirdparty/com/google/common/cache/x;


# virtual methods
.method public final c(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$ac;->g:Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    return-void
.end method

.method public final d(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$ac;->f:Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    return-void
.end method

.method public final f(J)V
    .locals 0

    iput-wide p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$ac;->e:J

    return-void
.end method

.method public final h()J
    .locals 2

    iget-wide v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$ac;->e:J

    return-wide v0
.end method

.method public final i()Lcom/perfectcorp/thirdparty/com/google/common/cache/x;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$ac;->f:Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    return-object p0
.end method

.method public final j()Lcom/perfectcorp/thirdparty/com/google/common/cache/x;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$ac;->g:Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    return-object p0
.end method
