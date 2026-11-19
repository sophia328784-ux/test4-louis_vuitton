.class final Lcom/google/android/gms/internal/measurement/zzabb;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field public final b:I

.field public final synthetic c:Lcom/google/android/gms/internal/measurement/zzabc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzabc;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzabb;->c:Lcom/google/android/gms/internal/measurement/zzabc;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/measurement/zzabb;->b:I

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzabb;->f()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzabb;->h()I

    move-result v1

    const/4 v2, -0x1

    iget v3, p0, Lcom/google/android/gms/internal/measurement/zzabb;->b:I

    if-ne v3, v2, :cond_0

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzabc;->g:Ljava/util/Comparator;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzabe;->b:Ljava/util/Comparator;

    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzabb;->c:Lcom/google/android/gms/internal/measurement/zzabc;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzabc;->b:[Ljava/lang/Object;

    invoke-static {p0, v0, v1, p1, v2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result p0

    if-ltz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final f()I
    .locals 2

    const/4 v0, -0x1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzabb;->b:I

    if-ne v1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzabb;->c:Lcom/google/android/gms/internal/measurement/zzabc;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzabc;->c:[I

    aget p0, p0, v1

    return p0
.end method

.method public final h()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzabb;->c:Lcom/google/android/gms/internal/measurement/zzabc;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzabc;->c:[I

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzabb;->b:I

    add-int/lit8 p0, p0, 0x1

    aget p0, v0, p0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzaba;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzaba;-><init>(Lcom/google/android/gms/internal/measurement/zzabb;)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzabb;->h()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzabb;->f()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method
