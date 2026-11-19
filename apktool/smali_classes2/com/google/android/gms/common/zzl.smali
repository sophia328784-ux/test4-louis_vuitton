.class final synthetic Lcom/google/android/gms/common/zzl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic zza:Z

.field private final synthetic zzb:Ljava/lang/String;

.field private final synthetic zzc:Lcom/google/android/gms/common/zzj;


# direct methods
.method public synthetic constructor <init>(ZLjava/lang/String;Lcom/google/android/gms/common/zzj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/common/zzl;->zza:Z

    iput-object p2, p0, Lcom/google/android/gms/common/zzl;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/common/zzl;->zzc:Lcom/google/android/gms/common/zzj;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 11

    iget-boolean v0, p0, Lcom/google/android/gms/common/zzl;->zza:Z

    iget-object v1, p0, Lcom/google/android/gms/common/zzl;->zzb:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/gms/common/zzl;->zzc:Lcom/google/android/gms/common/zzj;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    invoke-static {v1, p0, v3, v2}, Lcom/google/android/gms/common/zzo;->b(Ljava/lang/String;Lcom/google/android/gms/common/zzj;ZZ)Lcom/google/android/gms/common/zzy;

    move-result-object v3

    iget-boolean v3, v3, Lcom/google/android/gms/common/zzy;->a:Z

    if-eqz v3, :cond_1

    const-string v3, "debug cert rejected"

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/google/android/gms/common/zzo;->a:Lcom/google/android/gms/common/zzh;

    :cond_1
    const-string v3, "not allowed"

    :goto_0
    const-string v4, "SHA-256"

    move v5, v2

    :goto_1
    const/4 v6, 0x2

    if-ge v5, v6, :cond_2

    :try_start_0
    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v7, :cond_3

    :catch_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :cond_3
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->h(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/zzj;->F2()[B

    move-result-object p0

    invoke-virtual {v7, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    array-length v4, p0

    add-int/2addr v4, v4

    new-array v4, v4, [C

    move v5, v2

    :goto_2
    array-length v7, p0

    if-ge v2, v7, :cond_4

    aget-byte v7, p0, v2

    and-int/lit16 v8, v7, 0xff

    add-int/lit8 v9, v5, 0x1

    ushr-int/lit8 v8, v8, 0x4

    sget-object v10, Lcom/google/android/gms/common/util/Hex;->b:[C

    aget-char v8, v10, v8

    aput-char v8, v4, v5

    and-int/lit8 v7, v7, 0xf

    aget-char v7, v10, v7

    aput-char v7, v4, v9

    add-int/2addr v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v4}, Ljava/lang/String;-><init>([C)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sha256="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", atk="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", ver=12451000.false"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
