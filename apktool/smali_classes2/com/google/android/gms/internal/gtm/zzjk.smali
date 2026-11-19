.class final Lcom/google/android/gms/internal/gtm/zzjk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Ljava/lang/String;

.field final synthetic zzb:Ljava/lang/String;

.field final synthetic zzc:Lcom/google/android/gms/internal/gtm/zziw;

.field final synthetic zzd:Lcom/google/android/gms/internal/gtm/zzjm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/gtm/zzjm;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/gtm/zziw;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzjk;->zza:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/gtm/zzjk;->zzb:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/gtm/zzjk;->zzc:Lcom/google/android/gms/internal/gtm/zziw;

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzjk;->zzd:Lcom/google/android/gms/internal/gtm/zzjm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzjk;->zzd:Lcom/google/android/gms/internal/gtm/zzjm;

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzjk;->zzb:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzjk;->zzc:Lcom/google/android/gms/internal/gtm/zziw;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    invoke-virtual {p0, v3, v2}, Lcom/google/android/gms/internal/gtm/zziw;->b(II)V

    return-void

    :cond_0
    :try_start_0
    iget-object v0, v0, Lcom/google/android/gms/internal/gtm/zzjm;->c:Lcom/google/android/gms/internal/gtm/zzji;

    iget-object v0, v0, Lcom/google/android/gms/internal/gtm/zzji;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzjm;->b(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zziw;->c([B)V

    return-void

    :cond_1
    invoke-virtual {p0, v3, v2}, Lcom/google/android/gms/internal/gtm/zziw;->b(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbg;->a()V

    invoke-virtual {p0, v3, v2}, Lcom/google/android/gms/internal/gtm/zziw;->b(II)V

    return-void
.end method
