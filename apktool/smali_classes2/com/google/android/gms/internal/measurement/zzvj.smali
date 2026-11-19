.class final synthetic Lcom/google/android/gms/internal/measurement/zzvj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/measurement/zzvm;

.field private final synthetic zzb:Lcom/google/common/util/concurrent/SettableFuture;

.field private final synthetic zzc:Lcom/google/android/gms/internal/measurement/zzvk;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzvm;Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/android/gms/internal/measurement/zzvk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvj;->zza:Lcom/google/android/gms/internal/measurement/zzvm;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzvj;->zzb:Lcom/google/common/util/concurrent/SettableFuture;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzvj;->zzc:Lcom/google/android/gms/internal/measurement/zzvk;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvj;->zza:Lcom/google/android/gms/internal/measurement/zzvm;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzvj;->zzb:Lcom/google/common/util/concurrent/SettableFuture;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzvj;->zzc:Lcom/google/android/gms/internal/measurement/zzvk;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-static {v1}, Lcom/google/common/util/concurrent/Futures;->d(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzvm;->f:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/AbstractFuture;->set(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture;->setFuture(Lcom/google/common/util/concurrent/ListenableFuture;)Z

    return-void

    :catchall_0
    invoke-virtual {p0, v1}, Lcom/google/common/util/concurrent/AbstractFuture;->setFuture(Lcom/google/common/util/concurrent/ListenableFuture;)Z

    return-void
.end method
