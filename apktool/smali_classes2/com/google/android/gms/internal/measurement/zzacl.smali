.class abstract Lcom/google/android/gms/internal/measurement/zzacl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzacn;


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 2

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzack;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzack;->b:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzack;->c:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzack;->b:I

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzack;->d:Lcom/google/android/gms/internal/measurement/zzacr;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzacr;->b(I)B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lb21;->x()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
