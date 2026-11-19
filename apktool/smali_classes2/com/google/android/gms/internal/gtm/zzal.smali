.class public final Lcom/google/android/gms/internal/gtm/zzal;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/google/android/gms/internal/gtm/zzja;

.field public final c:Ljava/util/concurrent/ExecutorService;

.field public final d:Ljava/util/concurrent/ScheduledExecutorService;

.field public final e:Lcom/google/android/gms/tagmanager/zzq;

.field public final f:Lcom/google/android/gms/tagmanager/zzh;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzq;Lcom/google/android/gms/tagmanager/zzh;)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzja;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/gtm/zzja;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzdb;->a(Landroid/content/Context;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/gtm/zzdd;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->h(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzal;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->h(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzal;->e:Lcom/google/android/gms/tagmanager/zzq;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->h(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/gtm/zzal;->f:Lcom/google/android/gms/tagmanager/zzh;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzal;->b:Lcom/google/android/gms/internal/gtm/zzja;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->h(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/gtm/zzal;->c:Ljava/util/concurrent/ExecutorService;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->h(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/gtm/zzal;->d:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method
