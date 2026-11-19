.class final Lcom/google/android/gms/internal/measurement/zzqd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzpm;


# instance fields
.field public final a:Lcom/google/android/gms/internal/measurement/zzqm;

.field public final synthetic b:Lcom/google/android/gms/internal/measurement/zzqe;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzqe;Lcom/google/android/gms/internal/measurement/zzqm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzqd;->b:Lcom/google/android/gms/internal/measurement/zzqe;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzqd;->a:Lcom/google/android/gms/internal/measurement/zzqm;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/measurement/zzpl;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzqd;->b:Lcom/google/android/gms/internal/measurement/zzqe;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzqe;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzqc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzpl;->A()Ljava/util/List;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzaef;

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/measurement/zzqc;->a(Lcom/google/android/gms/internal/measurement/zzaef;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzqd;->a:Lcom/google/android/gms/internal/measurement/zzqm;

    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzqm;->d0()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
