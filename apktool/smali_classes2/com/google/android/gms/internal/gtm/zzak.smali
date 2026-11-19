.class public final Lcom/google/android/gms/internal/gtm/zzak;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Lcom/google/android/gms/internal/gtm/zzbu;

.field public final f:Lcom/google/android/gms/internal/gtm/zzja;

.field public final g:Ljava/util/concurrent/ExecutorService;

.field public final h:Ljava/util/concurrent/ScheduledExecutorService;

.field public final i:Lcom/google/android/gms/tagmanager/zzq;

.field public final j:Lcom/google/android/gms/common/util/DefaultClock;

.field public final k:Lcom/google/android/gms/internal/gtm/zzam;

.field public l:Lcom/google/android/gms/internal/gtm/zzbt;

.field public volatile m:I

.field public n:Ljava/util/ArrayList;

.field public o:Ljava/util/concurrent/ScheduledFuture;

.field public p:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/gtm/zzbu;Lcom/google/android/gms/internal/gtm/zzja;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/tagmanager/zzq;Lcom/google/android/gms/internal/gtm/zzam;)V
    .locals 10

    move-object/from16 v0, p7

    sget-object v1, Lcom/google/android/gms/common/util/DefaultClock;->a:Lcom/google/android/gms/common/util/DefaultClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/gtm/zzak;->m:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/gtm/zzak;->n:Ljava/util/ArrayList;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/gtm/zzak;->o:Ljava/util/concurrent/ScheduledFuture;

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/android/gms/internal/gtm/zzak;->p:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzak;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->h(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzak;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/gtm/zzak;->e:Lcom/google/android/gms/internal/gtm/zzbu;

    invoke-static/range {p6 .. p6}, Lcom/google/android/gms/common/internal/Preconditions;->h(Ljava/lang/Object;)V

    move-object/from16 p1, p6

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzak;->f:Lcom/google/android/gms/internal/gtm/zzja;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->h(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzak;->g:Ljava/util/concurrent/ExecutorService;

    invoke-static/range {p8 .. p8}, Lcom/google/android/gms/common/internal/Preconditions;->h(Ljava/lang/Object;)V

    move-object/from16 p1, p8

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzak;->h:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static/range {p9 .. p9}, Lcom/google/android/gms/common/internal/Preconditions;->h(Ljava/lang/Object;)V

    move-object/from16 v9, p9

    iput-object v9, p0, Lcom/google/android/gms/internal/gtm/zzak;->i:Lcom/google/android/gms/tagmanager/zzq;

    iput-object v1, p0, Lcom/google/android/gms/internal/gtm/zzak;->j:Lcom/google/android/gms/common/util/DefaultClock;

    move-object/from16 p1, p10

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzak;->k:Lcom/google/android/gms/internal/gtm/zzam;

    iput-object p4, p0, Lcom/google/android/gms/internal/gtm/zzak;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/gtm/zzak;->d:Ljava/lang/String;

    new-instance v3, Lcom/google/android/gms/internal/gtm/zzar;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    const-string v4, "gtm.load"

    const/4 v8, 0x0

    const-string v6, "gtm"

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/gtm/zzar;-><init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;ZLcom/google/android/gms/tagmanager/zzq;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzak;->n:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x2

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    new-instance p1, Lcom/google/android/gms/internal/gtm/zzaf;

    invoke-direct {p1, p0, v2}, Lcom/google/android/gms/internal/gtm/zzaf;-><init>(Lcom/google/android/gms/internal/gtm/zzak;Lcom/google/android/gms/internal/gtm/zzaj;)V

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/gtm/zzak;J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzak;->o:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzak;->h:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzad;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/gtm/zzad;-><init>(Lcom/google/android/gms/internal/gtm/zzak;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, p1, p2, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzak;->o:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method
