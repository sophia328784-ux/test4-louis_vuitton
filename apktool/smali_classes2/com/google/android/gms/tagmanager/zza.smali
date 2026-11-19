.class final Lcom/google/android/gms/tagmanager/zza;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/measurement/AppMeasurement$EventInterceptor;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/tagmanager/zzn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tagmanager/zzn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zza;->a:Lcom/google/android/gms/tagmanager/zzn;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/tagmanager/zza;->a:Lcom/google/android/gms/tagmanager/zzn;

    invoke-interface/range {p0 .. p5}, Lcom/google/android/gms/tagmanager/zzn;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-static {p0}, Lbm;->i(Ljava/lang/Throwable;)V

    return-void
.end method
