.class final Lcom/google/android/gms/auth/api/zza;
.super Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;
.source "SourceFile"


# virtual methods
.method public final synthetic b(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/lang/Object;Lcom/google/android/gms/common/api/internal/zabk;Lcom/google/android/gms/common/api/internal/zabk;)Lcom/google/android/gms/common/api/Api$Client;
    .locals 0

    if-nez p4, :cond_0

    new-instance p0, Lcom/google/android/gms/internal/auth/zzbe;

    const/4 p4, 0x0

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/internal/auth/zzbe;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/auth/api/AuthProxyOptions;Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;Lcom/google/android/gms/common/api/internal/OnConnectionFailedListener;)V

    return-object p0

    :cond_0
    invoke-static {}, Lr81;->h()V

    const/4 p0, 0x0

    return-object p0
.end method
