.class final Lcom/google/android/gms/internal/gtm/zzjl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Ljava/lang/String;

.field final synthetic zzb:[B

.field final synthetic zzc:Lcom/google/android/gms/internal/gtm/zzjm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/gtm/zzjm;Ljava/lang/String;[B)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzjl;->zza:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/gtm/zzjl;->zzb:[B

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzjl;->zzc:Lcom/google/android/gms/internal/gtm/zzjm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzjl;->zzc:Lcom/google/android/gms/internal/gtm/zzjm;

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzjl;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gtm/zzjm;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzjl;->zzb:[B

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    const/4 v2, 0x2

    :try_start_1
    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbg;->a()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_1
    :try_start_3
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbg;->a()V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    return-void

    :catch_2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbg;->a()V

    return-void

    :goto_0
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    :catch_3
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbg;->a()V

    :goto_1
    throw p0

    :catch_4
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbg;->a()V

    return-void
.end method
