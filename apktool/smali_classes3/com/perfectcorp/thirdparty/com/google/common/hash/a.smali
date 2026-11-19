.class abstract Lcom/perfectcorp/thirdparty/com/google/common/hash/a;
.super Lcom/perfectcorp/thirdparty/com/google/common/hash/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p0, 0x8

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public final a(II[B)Lcom/perfectcorp/thirdparty/com/google/common/hash/j;
    .locals 2

    add-int v0, p1, p2

    array-length v1, p3

    invoke-static {p1, v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->c(III)V

    invoke-virtual {p0, p3, p1, p2}, Lcom/perfectcorp/thirdparty/com/google/common/hash/a;->f([BII)V

    return-object p0
.end method

.method public final a([B)Lcom/perfectcorp/thirdparty/com/google/common/hash/j;
    .locals 2

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 11
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/hash/a;->f([BII)V

    return-object p0
.end method

.method public final c(B)Lcom/perfectcorp/thirdparty/com/google/common/hash/j;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/hash/a;->e(B)V

    return-object p0
.end method

.method public final synthetic d(B)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/hash/a;->e(B)V

    return-void
.end method

.method public abstract e(B)V
.end method

.method public abstract f([BII)V
.end method
