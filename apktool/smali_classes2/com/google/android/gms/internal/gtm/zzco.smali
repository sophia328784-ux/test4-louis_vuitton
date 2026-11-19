.class final Lcom/google/android/gms/internal/gtm/zzco;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/gtm/zzcp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/gtm/zzcp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzco;->zza:Lcom/google/android/gms/internal/gtm/zzcp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzco;->zza:Lcom/google/android/gms/internal/gtm/zzcp;

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzcp;->b:Lcom/google/android/gms/internal/gtm/zzcv;

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzcv;->c:Lcom/google/android/gms/internal/gtm/zzde;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzde;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzde;->f:Lcom/google/android/gms/internal/gtm/zzbe;

    invoke-interface {p0}, Lcom/google/android/gms/internal/gtm/zzbe;->h0()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 p0, 0x5

    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    :cond_0
    return-void
.end method
