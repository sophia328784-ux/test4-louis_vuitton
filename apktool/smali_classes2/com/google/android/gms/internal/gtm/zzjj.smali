.class final Lcom/google/android/gms/internal/gtm/zzjj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Ljava/lang/String;

.field final synthetic zzb:Lcom/google/android/gms/internal/gtm/zziw;

.field final synthetic zzc:Lcom/google/android/gms/internal/gtm/zzjm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/gtm/zzjm;Ljava/lang/String;Lcom/google/android/gms/internal/gtm/zziw;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzjj;->zza:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/gtm/zzjj;->zzb:Lcom/google/android/gms/internal/gtm/zziw;

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzjj;->zzc:Lcom/google/android/gms/internal/gtm/zzjm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzjj;->zzc:Lcom/google/android/gms/internal/gtm/zzjm;

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzjj;->zza:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzjj;->zzb:Lcom/google/android/gms/internal/gtm/zziw;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gtm/zzjm;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzjm;->b(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zziw;->c([B)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string v0, "resource_"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Saved resource not found: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbg;->a()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/gtm/zziw;->b(II)V

    return-void
.end method
