.class public final Lcom/google/android/gms/internal/gtm/zzcz;
.super Lcom/google/android/gms/internal/gtm/zzbd;
.source "SourceFile"


# instance fields
.field public final b:Ljava/util/HashMap;

.field public final j:Ljava/util/concurrent/ExecutorService;

.field public final k:Lcom/google/android/gms/internal/gtm/zzal;

.field public final l:Lcom/google/android/gms/tagmanager/zzq;

.field public final m:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzq;Lcom/google/android/gms/tagmanager/zzh;)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzal;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/gtm/zzal;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzq;Lcom/google/android/gms/tagmanager/zzh;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzdb;->a(Landroid/content/Context;)Ljava/util/concurrent/ExecutorService;

    move-result-object p3

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbd;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/internal/gtm/zzcz;->b:Ljava/util/HashMap;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->h(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzcz;->l:Lcom/google/android/gms/tagmanager/zzq;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcz;->k:Lcom/google/android/gms/internal/gtm/zzal;

    iput-object p3, p0, Lcom/google/android/gms/internal/gtm/zzcz;->j:Ljava/util/concurrent/ExecutorService;

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzcz;->m:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final S(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZ)V
    .locals 7

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzar;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p4, p5}, Ljava/util/Date;-><init>(J)V

    iget-object v6, p0, Lcom/google/android/gms/internal/gtm/zzcz;->l:Lcom/google/android/gms/tagmanager/zzq;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/gtm/zzar;-><init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;ZLcom/google/android/gms/tagmanager/zzq;)V

    new-instance p1, Lcom/google/android/gms/internal/gtm/zzcx;

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/internal/gtm/zzcx;-><init>(Lcom/google/android/gms/internal/gtm/zzcz;Lcom/google/android/gms/internal/gtm/zzar;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzcz;->j:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzcz;->b:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public final c0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/gtm/zzbb;)V
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzcw;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/gtm/zzcw;-><init>(Lcom/google/android/gms/internal/gtm/zzcz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/gtm/zzbb;)V

    iget-object p0, v1, Lcom/google/android/gms/internal/gtm/zzcz;->j:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final h0()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzcy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gtm/zzcy;-><init>(Lcom/google/android/gms/internal/gtm/zzcz;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzcz;->j:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
