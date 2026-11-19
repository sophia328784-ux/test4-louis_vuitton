.class final Lcom/google/android/gms/internal/location/zzdu;
.super Lcom/google/android/gms/location/zzu;
.source "SourceFile"


# instance fields
.field public final b:Lcom/google/android/gms/internal/location/zzdq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/location/zzdq;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/location/zzu;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/location/zzdu;->b:Lcom/google/android/gms/internal/location/zzdq;

    return-void
.end method


# virtual methods
.method public final H(Lcom/google/android/gms/location/LocationAvailability;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzdu;->b:Lcom/google/android/gms/internal/location/zzdq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/location/zzdq;->d0()Lcom/google/android/gms/common/api/internal/ListenerHolder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/location/zzds;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/location/zzds;-><init>(Lcom/google/android/gms/internal/location/zzdu;Lcom/google/android/gms/location/LocationAvailability;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->a(Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;)V

    return-void
.end method

.method public final I()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzdu;->b:Lcom/google/android/gms/internal/location/zzdq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/location/zzdq;->d0()Lcom/google/android/gms/common/api/internal/ListenerHolder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/location/zzdt;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/location/zzdt;-><init>(Lcom/google/android/gms/internal/location/zzdu;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->a(Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;)V

    return-void
.end method

.method public final b1(Lcom/google/android/gms/location/LocationResult;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzdu;->b:Lcom/google/android/gms/internal/location/zzdq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/location/zzdq;->d0()Lcom/google/android/gms/common/api/internal/ListenerHolder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/location/zzdr;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/location/zzdr;-><init>(Lcom/google/android/gms/internal/location/zzdu;Lcom/google/android/gms/location/LocationResult;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->a(Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;)V

    return-void
.end method
