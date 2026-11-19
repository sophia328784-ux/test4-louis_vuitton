.class final Lcom/google/android/gms/internal/location/zzdt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/location/zzdu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/location/zzdu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/location/zzdt;->a:Lcom/google/android/gms/internal/location/zzdu;

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/location/LocationCallback;

    iget-object p0, p0, Lcom/google/android/gms/internal/location/zzdt;->a:Lcom/google/android/gms/internal/location/zzdu;

    iget-object p0, p0, Lcom/google/android/gms/internal/location/zzdu;->b:Lcom/google/android/gms/internal/location/zzdq;

    invoke-interface {p0}, Lcom/google/android/gms/internal/location/zzdq;->f0()V

    return-void
.end method
