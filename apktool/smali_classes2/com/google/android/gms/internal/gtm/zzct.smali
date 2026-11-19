.class final Lcom/google/android/gms/internal/gtm/zzct;
.super Lcom/google/android/gms/internal/gtm/zzba;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/gtm/zzcv;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/gtm/zzcv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzct;->a:Lcom/google/android/gms/internal/gtm/zzcv;

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzba;-><init>()V

    return-void
.end method


# virtual methods
.method public final I1(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzct;->a:Lcom/google/android/gms/internal/gtm/zzcv;

    iget-object v0, v0, Lcom/google/android/gms/internal/gtm/zzcv;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzcs;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/gms/internal/gtm/zzcs;-><init>(Lcom/google/android/gms/internal/gtm/zzct;ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
