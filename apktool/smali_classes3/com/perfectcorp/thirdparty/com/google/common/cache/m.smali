.class final enum Lcom/perfectcorp/thirdparty/com/google/common/cache/m;
.super Lcom/perfectcorp/thirdparty/com/google/common/cache/d$d;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "WEAK"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final c(Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;Ljava/lang/Object;ILcom/perfectcorp/thirdparty/com/google/common/cache/x;)Lcom/perfectcorp/thirdparty/com/google/common/cache/x;
    .locals 0

    new-instance p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$aa;

    iget-object p1, p1, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$aa;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/perfectcorp/thirdparty/com/google/common/cache/x;)V

    return-object p0
.end method
