.class final Lcom/google/android/gms/internal/measurement/zzack;
.super Lcom/google/android/gms/internal/measurement/zzacl;
.source "SourceFile"


# instance fields
.field public b:I

.field public final c:I

.field public final synthetic d:Lcom/google/android/gms/internal/measurement/zzacr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzacr;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzack;->d:Lcom/google/android/gms/internal/measurement/zzacr;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzack;->b:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzacr;->f()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzack;->c:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzack;->b:I

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzack;->c:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
