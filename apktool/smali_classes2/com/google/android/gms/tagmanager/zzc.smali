.class final Lcom/google/android/gms/tagmanager/zzc;
.super Lcom/google/android/gms/tagmanager/zzp;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/gms/measurement/AppMeasurement;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/AppMeasurement;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzc;->a:Lcom/google/android/gms/measurement/AppMeasurement;

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzp;-><init>()V

    return-void
.end method


# virtual methods
.method public final J(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 6

    iget-object p0, p0, Lcom/google/android/gms/tagmanager/zzc;->a:Lcom/google/android/gms/measurement/AppMeasurement;

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->a:Lcom/google/android/gms/measurement/zzc;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzlk;->f(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    return-void
.end method

.method public final K1(Lcom/google/android/gms/tagmanager/zzn;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/tagmanager/zza;

    invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/zza;-><init>(Lcom/google/android/gms/tagmanager/zzn;)V

    iget-object p0, p0, Lcom/google/android/gms/tagmanager/zzc;->a:Lcom/google/android/gms/measurement/AppMeasurement;

    iget-object p0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->a:Lcom/google/android/gms/measurement/zzc;

    invoke-interface {p0, v0}, Lcom/google/android/gms/measurement/internal/zzlk;->j(Lcom/google/android/gms/measurement/internal/zzjp;)V

    return-void
.end method

.method public final e0()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/tagmanager/zzc;->a:Lcom/google/android/gms/measurement/AppMeasurement;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurement;->a()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final k2(Lcom/google/android/gms/tagmanager/zzk;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/tagmanager/zzb;

    invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/zzb;-><init>(Lcom/google/android/gms/tagmanager/zzk;)V

    iget-object p0, p0, Lcom/google/android/gms/tagmanager/zzc;->a:Lcom/google/android/gms/measurement/AppMeasurement;

    iget-object p0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->a:Lcom/google/android/gms/measurement/zzc;

    invoke-interface {p0, v0}, Lcom/google/android/gms/measurement/internal/zzlk;->m(Lcom/google/android/gms/measurement/internal/zzjq;)V

    return-void
.end method
