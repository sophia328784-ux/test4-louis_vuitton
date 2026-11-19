.class final Lcom/google/android/gms/internal/gtm/zzce;
.super Lcom/google/android/gms/internal/gtm/zzbx;
.source "SourceFile"


# static fields
.field public static final l:Ljava/lang/Object;

.field public static m:Lcom/google/android/gms/internal/gtm/zzce;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/google/android/gms/internal/gtm/zzbk;

.field public volatile c:Lcom/google/android/gms/internal/gtm/zzav;

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Lcom/google/android/gms/internal/gtm/zzca;

.field public i:Lcom/google/android/gms/internal/gtm/zzbh;

.field public j:Z

.field public final k:Lcom/google/android/gms/internal/gtm/zzby;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzce;->l:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbx;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzce;->d:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/gtm/zzce;->e:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/gtm/zzce;->f:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzce;->g:Z

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzby;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gtm/zzby;-><init>(Lcom/google/android/gms/internal/gtm/zzce;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzce;->k:Lcom/google/android/gms/internal/gtm/zzby;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/gtm/zzce;->j:Z

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzce;->e:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/gtm/zzce;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzce;->f:Z

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/gtm/zzce;->f:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzce;->c:Lcom/google/android/gms/internal/gtm/zzav;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzbz;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/gtm/zzbz;-><init>(Lcom/google/android/gms/internal/gtm/zzce;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/gtm/zzav;->zza(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final declared-synchronized b(ZZ)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzce;->c()Z

    move-result v0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/gtm/zzce;->j:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/gtm/zzce;->g:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzce;->c()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzce;->c()Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p2, p0, Lcom/google/android/gms/internal/gtm/zzce;->h:Lcom/google/android/gms/internal/gtm/zzca;

    const/4 v0, 0x2

    if-eqz p1, :cond_1

    :try_start_2
    check-cast p2, Lcom/google/android/gms/internal/gtm/zzcc;

    iget-object p1, p2, Lcom/google/android/gms/internal/gtm/zzcc;->a:Lcom/google/android/gms/internal/gtm/zzw;

    sget-object p2, Lcom/google/android/gms/internal/gtm/zzce;->l:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    :try_start_3
    check-cast p2, Lcom/google/android/gms/internal/gtm/zzcc;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/gtm/zzcc;->a()V

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzce;->j:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/gtm/zzce;->g:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
