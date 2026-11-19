.class abstract Lcom/google/android/gms/internal/fido/zzfp;
.super Lcom/google/android/gms/internal/fido/zzfr;
.source "SourceFile"


# virtual methods
.method public final a([B)Lcom/google/android/gms/internal/fido/zzfv;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v0, p1

    move-object v1, p0

    check-cast v1, Lcom/google/android/gms/internal/fido/zzfz;

    iget-boolean v2, v1, Lcom/google/android/gms/internal/fido/zzfz;->c:Z

    if-nez v2, :cond_0

    iget-object v1, v1, Lcom/google/android/gms/internal/fido/zzfz;->a:Ljava/security/MessageDigest;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Ljava/security/MessageDigest;->update([BII)V

    return-object p0

    :cond_0
    const-string p0, "Cannot re-use a Hasher after calling hash() on it"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
