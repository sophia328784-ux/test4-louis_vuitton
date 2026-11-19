.class final Lcom/google/android/gms/internal/gtm/zzbq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzgt;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/gtm/zzbt;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/gtm/zzbt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzbq;->a:Lcom/google/android/gms/internal/gtm/zzbt;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/Object;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzbq;->a:Lcom/google/android/gms/internal/gtm/zzbt;

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzbt;->d:Lcom/google/android/gms/tagmanager/zzh;

    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/tagmanager/zzh;->f2(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Error calling customEvaluator proxy:"

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbg;->a()V

    const/4 p0, 0x0

    return-object p0
.end method
