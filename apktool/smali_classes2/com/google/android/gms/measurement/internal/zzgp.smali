.class final synthetic Lcom/google/android/gms/measurement/internal/zzgp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/measurement/internal/zzgq;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzgq;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgp;->b:Lcom/google/android/gms/measurement/internal/zzgq;

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/zzgp;->c:J

    return-void
.end method


# virtual methods
.method public final synthetic onFailure(Ljava/lang/Exception;)V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzgp;->c:J

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzgp;->b:Lcom/google/android/gms/measurement/internal/zzgq;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzgq;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method
