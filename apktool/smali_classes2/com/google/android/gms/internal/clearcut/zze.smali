.class public final Lcom/google/android/gms/internal/clearcut/zze;
.super Lcom/google/android/gms/common/api/GoogleApi;

# interfaces
.implements Lcom/google/android/gms/clearcut/zzb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/GoogleApi<",
        "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
        ">;",
        "Lcom/google/android/gms/clearcut/zzb;"
    }
.end annotation


# virtual methods
.method public final j(Lcom/google/android/gms/clearcut/zze;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/clearcut/zzh;

    iget-object v1, p0, Lcom/google/android/gms/common/api/GoogleApi;->i:Lcom/google/android/gms/common/api/internal/zabq;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/clearcut/zzh;-><init>(Lcom/google/android/gms/clearcut/zze;Lcom/google/android/gms/common/api/internal/zabq;)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/api/GoogleApi;->h(ILcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)V

    return-object v0
.end method
