.class final Lcom/perfectcorp/thirdparty/com/google/common/cache/d$y;
.super Lcom/perfectcorp/thirdparty/com/google/common/cache/d$aa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/common/cache/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "y"
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
.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$y;->e:J

    return-void
.end method

.method public final a(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$y;->f:Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    return-void
.end method

.method public final e()J
    .locals 2

    .line 3
    iget-wide v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$y;->e:J

    return-wide v0
.end method

.method public final e(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$y;->g:Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    return-void
.end method

.method public final f()Lcom/perfectcorp/thirdparty/com/google/common/cache/x;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$y;->f:Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    return-object p0
.end method

.method public final g()Lcom/perfectcorp/thirdparty/com/google/common/cache/x;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$y;->g:Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    return-object p0
.end method
