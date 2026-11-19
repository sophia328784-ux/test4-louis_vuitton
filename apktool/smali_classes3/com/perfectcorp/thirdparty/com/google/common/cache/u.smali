.class final enum Lcom/perfectcorp/thirdparty/com/google/common/cache/u;
.super Lcom/perfectcorp/thirdparty/com/google/common/cache/d$p;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "WEAK"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/perfectcorp/thirdparty/com/google/common/base/e;
    .locals 0

    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/base/e;->d()Lcom/perfectcorp/thirdparty/com/google/common/base/e;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;Lcom/perfectcorp/thirdparty/com/google/common/cache/x;Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;
    .locals 0

    new-instance p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$ab;

    iget-object p1, p1, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->j:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p0, p1, p3, p2}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$ab;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/perfectcorp/thirdparty/com/google/common/cache/x;)V

    return-object p0
.end method
