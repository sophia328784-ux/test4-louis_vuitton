.class final synthetic Lcom/google/android/gms/internal/measurement/zzuk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/measurement/zzul;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzul;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzuk;->zza:Lcom/google/android/gms/internal/measurement/zzul;

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzuk;->zza:Lcom/google/android/gms/internal/measurement/zzul;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzul;->b:Lcom/google/android/gms/internal/measurement/zztp;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzut;->g:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzul;->a:Ljava/util/List;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
