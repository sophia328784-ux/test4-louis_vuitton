.class final Lcom/google/android/gms/internal/gtm/zzcp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/internal/gtm/zzcv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/gtm/zzcv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzcp;->b:Lcom/google/android/gms/internal/gtm/zzcv;

    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public final onLowMemory()V
    .locals 0

    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 1

    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzcp;->b:Lcom/google/android/gms/internal/gtm/zzcv;

    iget-object p1, p1, Lcom/google/android/gms/internal/gtm/zzcv;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzco;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gtm/zzco;-><init>(Lcom/google/android/gms/internal/gtm/zzcp;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
