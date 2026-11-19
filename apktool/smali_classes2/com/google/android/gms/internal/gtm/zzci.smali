.class final Lcom/google/android/gms/internal/gtm/zzci;
.super Lcom/google/android/gms/tagmanager/zzm;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/gtm/zzcv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/gtm/zzcv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzci;->a:Lcom/google/android/gms/internal/gtm/zzcv;

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzm;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 10

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzci;->a:Lcom/google/android/gms/internal/gtm/zzcv;

    iget-object v1, v1, Lcom/google/android/gms/internal/gtm/zzcv;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/google/android/gms/internal/gtm/zzch;

    const-string v3, "+gtm"

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v3, p0

    move-object v9, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v7, p4

    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/internal/gtm/zzch;-><init>(Lcom/google/android/gms/internal/gtm/zzci;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JLjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
