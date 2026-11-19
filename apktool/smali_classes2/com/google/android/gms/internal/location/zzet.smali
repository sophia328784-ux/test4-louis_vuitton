.class final Lcom/google/android/gms/internal/location/zzet;
.super Lcom/google/android/gms/internal/location/zzeu;
.source "SourceFile"


# instance fields
.field public final transient d:I

.field public final transient e:I

.field public final synthetic f:Lcom/google/android/gms/internal/location/zzeu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/location/zzeu;II)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/location/zzet;->f:Lcom/google/android/gms/internal/location/zzeu;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/location/zzet;->d:I

    iput p3, p0, Lcom/google/android/gms/internal/location/zzet;->e:I

    return-void
.end method


# virtual methods
.method public final f()[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/location/zzet;->f:Lcom/google/android/gms/internal/location/zzeu;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/location/zzer;->f()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/location/zzet;->e:I

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/location/zzeo;->a(II)V

    iget v0, p0, Lcom/google/android/gms/internal/location/zzet;->d:I

    add-int/2addr p1, v0

    iget-object p0, p0, Lcom/google/android/gms/internal/location/zzet;->f:Lcom/google/android/gms/internal/location/zzeu;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final h()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzet;->f:Lcom/google/android/gms/internal/location/zzeu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/location/zzer;->h()I

    move-result v0

    iget p0, p0, Lcom/google/android/gms/internal/location/zzet;->d:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final i()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzet;->f:Lcom/google/android/gms/internal/location/zzeu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/location/zzer;->h()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/location/zzet;->d:I

    add-int/2addr v0, v1

    iget p0, p0, Lcom/google/android/gms/internal/location/zzet;->e:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final m()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final o(II)Lcom/google/android/gms/internal/location/zzeu;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/location/zzet;->e:I

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/location/zzeo;->b(III)V

    iget v0, p0, Lcom/google/android/gms/internal/location/zzet;->d:I

    add-int/2addr p1, v0

    add-int/2addr p2, v0

    iget-object p0, p0, Lcom/google/android/gms/internal/location/zzet;->f:Lcom/google/android/gms/internal/location/zzeu;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/location/zzeu;->o(II)Lcom/google/android/gms/internal/location/zzeu;

    move-result-object p0

    return-object p0
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/location/zzet;->e:I

    return p0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/location/zzet;->o(II)Lcom/google/android/gms/internal/location/zzeu;

    move-result-object p0

    return-object p0
.end method
