.class final synthetic Lcom/google/android/gms/internal/measurement/zzqa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncFunction;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/measurement/zzqe;

.field public final synthetic b:Lcom/google/android/gms/internal/measurement/zzqm;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzqe;Lcom/google/android/gms/internal/measurement/zzqm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzqa;->a:Lcom/google/android/gms/internal/measurement/zzqe;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzqa;->b:Lcom/google/android/gms/internal/measurement/zzqm;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    check-cast p1, Ljava/lang/Void;

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzqa;->a:Lcom/google/android/gms/internal/measurement/zzqe;

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzqe;->d:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzmj;

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzqd;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzqa;->b:Lcom/google/android/gms/internal/measurement/zzqm;

    invoke-direct {v1, p1, p0}, Lcom/google/android/gms/internal/measurement/zzqd;-><init>(Lcom/google/android/gms/internal/measurement/zzqe;Lcom/google/android/gms/internal/measurement/zzqm;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/zzmj;->c(Lcom/google/android/gms/internal/measurement/zzpm;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method
