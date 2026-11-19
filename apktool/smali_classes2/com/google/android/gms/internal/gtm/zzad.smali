.class final Lcom/google/android/gms/internal/gtm/zzad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/gtm/zzak;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/gtm/zzak;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzad;->zza:Lcom/google/android/gms/internal/gtm/zzak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzad;->zza:Lcom/google/android/gms/internal/gtm/zzak;

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzak;->g:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzah;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/gtm/zzah;-><init>(Lcom/google/android/gms/internal/gtm/zzak;Lcom/google/android/gms/internal/gtm/zzaj;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
