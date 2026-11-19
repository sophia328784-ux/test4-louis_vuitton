.class final Lcom/google/android/gms/internal/measurement/zzzw;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/google/android/gms/internal/measurement/zzzy;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzzy;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzzw;->b:Lcom/google/android/gms/internal/measurement/zzzy;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzzv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzzv;-><init>(Lcom/google/android/gms/internal/measurement/zzzw;)V

    return-object v0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzzw;->b:Lcom/google/android/gms/internal/measurement/zzzy;

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzzy;->e:I

    return p0
.end method
