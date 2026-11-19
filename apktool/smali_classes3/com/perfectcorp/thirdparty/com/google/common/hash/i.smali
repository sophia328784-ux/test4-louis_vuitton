.class final Lcom/perfectcorp/thirdparty/com/google/common/hash/i;
.super Lcom/perfectcorp/thirdparty/com/google/common/hash/b;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/com/google/common/hash/i$a;
    }
.end annotation


# instance fields
.field public final b:Ljava/security/MessageDigest;

.field public final c:I

.field public final d:Z

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "MD5"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/hash/i;->b:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v1

    iput v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/hash/i;->c:I

    const-string v1, "Hashing.md5()"

    iput-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/hash/i;->e:Ljava/lang/String;

    :try_start_1
    invoke-virtual {v0}, Ljava/security/MessageDigest;->clone()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/hash/i;->d:Z

    return-void

    :catch_1
    move-exception p0

    invoke-static {p0}, Lmd;->h(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final a()Lcom/perfectcorp/thirdparty/com/google/common/hash/j;
    .locals 3

    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/hash/i;->d:Z

    iget v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/hash/i;->c:I

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/hash/i;->b:Ljava/security/MessageDigest;

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/hash/i$a;

    invoke-virtual {p0}, Ljava/security/MessageDigest;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/MessageDigest;

    invoke-direct {v0, v2, v1}, Lcom/perfectcorp/thirdparty/com/google/common/hash/i$a;-><init>(Ljava/security/MessageDigest;I)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/hash/i$a;

    invoke-virtual {p0}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object p0

    :try_start_1
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-direct {v0, p0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/hash/i$a;-><init>(Ljava/security/MessageDigest;I)V

    return-object v0

    :catch_1
    move-exception p0

    invoke-static {p0}, Lmd;->h(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/hash/i;->e:Ljava/lang/String;

    return-object p0
.end method
