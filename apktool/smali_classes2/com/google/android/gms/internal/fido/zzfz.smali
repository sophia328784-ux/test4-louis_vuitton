.class final Lcom/google/android/gms/internal/fido/zzfz;
.super Lcom/google/android/gms/internal/fido/zzfp;
.source "SourceFile"


# instance fields
.field public final a:Ljava/security/MessageDigest;

.field public final b:I

.field public c:Z


# direct methods
.method public constructor <init>(Ljava/security/MessageDigest;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/google/android/gms/internal/fido/zzfz;->a:Ljava/security/MessageDigest;

    iput p2, p0, Lcom/google/android/gms/internal/fido/zzfz;->b:I

    return-void
.end method


# virtual methods
.method public final f0()Lcom/google/android/gms/internal/fido/zzft;
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/fido/zzfz;->c:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fido/zzfz;->c:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzfz;->a:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v1

    iget p0, p0, Lcom/google/android/gms/internal/fido/zzfz;->b:I

    if-ne p0, v1, :cond_0

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    new-instance v0, Lcom/google/android/gms/internal/fido/zzfs;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/fido/zzfs;-><init>([B)V

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    new-instance v0, Lcom/google/android/gms/internal/fido/zzfs;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/fido/zzfs;-><init>([B)V

    return-object v0

    :cond_1
    const-string p0, "Cannot re-use a Hasher after calling hash() on it"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
