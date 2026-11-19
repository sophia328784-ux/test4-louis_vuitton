.class final Lcom/google/android/gms/internal/measurement/zztx;
.super Lcom/google/android/gms/internal/measurement/zzuw;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/internal/measurement/zzuw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zztx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzuw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zztx;->a:Lcom/google/android/gms/internal/measurement/zzuw;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/measurement/zzti;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/measurement/zztr;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/measurement/zzru;Lcom/google/android/gms/internal/measurement/zzti;)Lcom/google/android/gms/internal/measurement/zzui;
    .locals 8

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzte;

    iget-boolean p0, p1, Lcom/google/android/gms/internal/measurement/zzte;->f:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzadf;->a()Lcom/google/android/gms/internal/measurement/zzadf;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzadf;->b:Lcom/google/android/gms/internal/measurement/zzadf;

    sget p0, Lcom/google/android/gms/internal/measurement/zzacf;->a:I

    sget-object p0, Lcom/google/android/gms/internal/measurement/zzadf;->c:Lcom/google/android/gms/internal/measurement/zzadf;

    :goto_0
    iget-object p5, p1, Lcom/google/android/gms/internal/measurement/zzte;->b:Lcom/google/android/gms/internal/measurement/zzafc;

    new-instance v3, Lcom/google/android/gms/internal/measurement/zzvd;

    invoke-direct {v3, p5, p0}, Lcom/google/android/gms/internal/measurement/zzvd;-><init>(Lcom/google/android/gms/internal/measurement/zzafc;Lcom/google/android/gms/internal/measurement/zzadf;)V

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzui;

    iget-object p0, p1, Lcom/google/android/gms/internal/measurement/zzte;->a:Landroid/net/Uri;

    invoke-static {p0}, Lcom/google/common/util/concurrent/Futures;->g(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    iget-object v6, p1, Lcom/google/android/gms/internal/measurement/zzte;->c:Lcom/google/common/base/Optional;

    new-instance v7, Lcom/google/android/gms/internal/measurement/zzwa;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    move-object v1, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/measurement/zzui;-><init>(Ljava/lang/String;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/measurement/zztv;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/measurement/zzru;Lcom/google/common/base/Optional;Lcom/google/android/gms/internal/measurement/zzwb;)V

    return-object v0
.end method
