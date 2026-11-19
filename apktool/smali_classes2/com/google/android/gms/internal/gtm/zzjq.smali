.class public final Lcom/google/android/gms/internal/gtm/zzjq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/gtm/zziw;

.field private final zzc:Lcom/google/android/gms/internal/gtm/zzjf;

.field private final zzd:Lcom/google/android/gms/internal/gtm/zzjn;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/gtm/zzjf;Lcom/google/android/gms/internal/gtm/zziw;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzjn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzjn;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->h(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzjq;->zza:Landroid/content/Context;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->h(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/gtm/zzjq;->zzb:Lcom/google/android/gms/internal/gtm/zziw;

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzjq;->zzc:Lcom/google/android/gms/internal/gtm/zzjf;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzjq;->zzd:Lcom/google/android/gms/internal/gtm/zzjn;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const-string v0, "NetworkLoader: No data was retrieved from the given url: "

    const-string v1, "NetworkLoader: Error when loading resource for url: "

    const-string v2, "android.permission.INTERNET"

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/gtm/zzjq;->zza(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbg;->a()V

    goto/16 :goto_4

    :cond_0
    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/gtm/zzjq;->zza(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbg;->a()V

    goto/16 :goto_4

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzjq;->zza:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_3

    :cond_2
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    new-instance v4, Lcom/google/android/gms/internal/gtm/zzjo;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/google/android/gms/internal/gtm/zzjo;->b:Ljava/io/InputStream;

    :try_start_0
    iget-object v6, p0, Lcom/google/android/gms/internal/gtm/zzjq;->zzd:Lcom/google/android/gms/internal/gtm/zzjn;

    iget-object v7, p0, Lcom/google/android/gms/internal/gtm/zzjq;->zzc:Lcom/google/android/gms/internal/gtm/zzjf;

    iget-object v7, v7, Lcom/google/android/gms/internal/gtm/zzjf;->a:Lcom/google/android/gms/internal/gtm/zzit;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/gtm/zzjn;->a(Lcom/google/android/gms/internal/gtm/zzit;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/gtm/zzjo;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/google/android/gms/internal/gtm/zzjs; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbg;->b()V

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzjq;->zzb:Lcom/google/android/gms/internal/gtm/zziw;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/google/android/gms/internal/gtm/zziw;->b(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v4}, Lcom/google/android/gms/internal/gtm/zzjo;->b()V

    return-void

    :catch_1
    :try_start_3
    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbg;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzjq;->zzb:Lcom/google/android/gms/internal/gtm/zziw;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/gtm/zziw;->b(II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    :try_start_4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v6, v1, [B

    :goto_1
    invoke-virtual {v5, v6, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    invoke-virtual {v0, v6, v3, v7}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzjq;->zzb:Lcom/google/android/gms/internal/gtm/zziw;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/gtm/zziw;->c([B)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {v4}, Lcom/google/android/gms/internal/gtm/zzjo;->b()V

    return-void

    :catch_2
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbg;->b()V

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzjq;->zzb:Lcom/google/android/gms/internal/gtm/zziw;

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/internal/gtm/zziw;->b(II)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual {v4}, Lcom/google/android/gms/internal/gtm/zzjo;->b()V

    return-void

    :catch_3
    :try_start_6
    invoke-virtual {v0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbg;->a()V

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzjq;->zzb:Lcom/google/android/gms/internal/gtm/zziw;

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/internal/gtm/zziw;->b(II)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-virtual {v4}, Lcom/google/android/gms/internal/gtm/zzjo;->b()V

    return-void

    :goto_2
    invoke-virtual {v4}, Lcom/google/android/gms/internal/gtm/zzjo;->b()V

    throw p0

    :cond_4
    :goto_3
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    :goto_4
    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzjq;->zzb:Lcom/google/android/gms/internal/gtm/zziw;

    invoke-virtual {p0, v3, v3}, Lcom/google/android/gms/internal/gtm/zziw;->b(II)V

    return-void
.end method

.method public final zza(Ljava/lang/String;)Z
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzjq;->zza:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
