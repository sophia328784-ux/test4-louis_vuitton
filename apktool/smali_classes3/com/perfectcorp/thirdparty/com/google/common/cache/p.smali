.class final enum Lcom/perfectcorp/thirdparty/com/google/common/cache/p;
.super Lcom/perfectcorp/thirdparty/com/google/common/cache/d$d;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "WEAK_ACCESS_WRITE"

    const/4 v1, 0x7

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final b(Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;Lcom/perfectcorp/thirdparty/com/google/common/cache/x;Lcom/perfectcorp/thirdparty/com/google/common/cache/x;)Lcom/perfectcorp/thirdparty/com/google/common/cache/x;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$d;->b(Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;Lcom/perfectcorp/thirdparty/com/google/common/cache/x;Lcom/perfectcorp/thirdparty/com/google/common/cache/x;)Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$d;->d(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;Lcom/perfectcorp/thirdparty/com/google/common/cache/x;)V

    invoke-static {p2, p0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$d;->e(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;Lcom/perfectcorp/thirdparty/com/google/common/cache/x;)V

    return-object p0
.end method

.method public final c(Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;Ljava/lang/Object;ILcom/perfectcorp/thirdparty/com/google/common/cache/x;)Lcom/perfectcorp/thirdparty/com/google/common/cache/x;
    .locals 0

    new-instance p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$z;

    iget-object p1, p1, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$aa;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/perfectcorp/thirdparty/com/google/common/cache/x;)V

    const-wide p1, 0x7fffffffffffffffL

    iput-wide p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$z;->e:J

    sget-object p3, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$m;->a:Lcom/perfectcorp/thirdparty/com/google/common/cache/d$m;

    iput-object p3, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$z;->f:Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    iput-object p3, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$z;->g:Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    iput-wide p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$z;->h:J

    iput-object p3, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$z;->i:Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    iput-object p3, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$z;->j:Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    return-object p0
.end method
