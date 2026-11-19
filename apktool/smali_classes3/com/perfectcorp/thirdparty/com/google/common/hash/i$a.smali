.class final Lcom/perfectcorp/thirdparty/com/google/common/hash/i$a;
.super Lcom/perfectcorp/thirdparty/com/google/common/hash/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/common/hash/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/security/MessageDigest;

.field public final b:I

.field public c:Z


# direct methods
.method public constructor <init>(Ljava/security/MessageDigest;I)V
    .locals 0

    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/com/google/common/hash/a;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/hash/i$a;->a:Ljava/security/MessageDigest;

    iput p2, p0, Lcom/perfectcorp/thirdparty/com/google/common/hash/i$a;->b:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/perfectcorp/thirdparty/com/google/common/hash/HashCode;
    .locals 3

    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/hash/i$a;->c:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Cannot re-use a Hasher after calling hash() on it"

    invoke-static {v2, v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->h(Ljava/lang/String;Z)V

    iput-boolean v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/hash/i$a;->c:Z

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/hash/i$a;->a:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v1

    iget p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/hash/i$a;->b:I

    if-ne p0, v1, :cond_0

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/hash/HashCode$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p0, v0, Lcom/perfectcorp/thirdparty/com/google/common/hash/HashCode$a;->c:[B

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/hash/HashCode$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Lcom/perfectcorp/thirdparty/com/google/common/hash/HashCode$a;->c:[B

    return-object v0
.end method

.method public final e(B)V
    .locals 2

    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/hash/i$a;->c:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot re-use a Hasher after calling hash() on it"

    invoke-static {v1, v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->h(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/hash/i$a;->a:Ljava/security/MessageDigest;

    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->update(B)V

    return-void
.end method

.method public final f([BII)V
    .locals 2

    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/hash/i$a;->c:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot re-use a Hasher after calling hash() on it"

    invoke-static {v1, v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->h(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/hash/i$a;->a:Ljava/security/MessageDigest;

    invoke-virtual {p0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    return-void
.end method
