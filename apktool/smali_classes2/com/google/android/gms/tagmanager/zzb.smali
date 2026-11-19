.class final Lcom/google/android/gms/tagmanager/zzb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/measurement/AppMeasurement$OnEventListener;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/tagmanager/zzk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tagmanager/zzk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzb;->a:Lcom/google/android/gms/tagmanager/zzk;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/tagmanager/zzb;->a:Lcom/google/android/gms/tagmanager/zzk;

    invoke-interface/range {p0 .. p5}, Lcom/google/android/gms/tagmanager/zzk;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-static {p0}, Lbm;->i(Ljava/lang/Throwable;)V

    return-void
.end method
