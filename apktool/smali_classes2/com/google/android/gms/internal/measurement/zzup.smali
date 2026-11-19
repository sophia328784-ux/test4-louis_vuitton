.class final synthetic Lcom/google/android/gms/internal/measurement/zzup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncFunction;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/measurement/zzut;

.field public final synthetic b:Lcom/google/android/gms/internal/measurement/zzwy;

.field public final synthetic c:Ljava/util/concurrent/Executor;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzut;Lcom/google/android/gms/internal/measurement/zzwy;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzup;->a:Lcom/google/android/gms/internal/measurement/zzut;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzup;->b:Lcom/google/android/gms/internal/measurement/zzwy;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzup;->c:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzup;->c:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzup;->a:Lcom/google/android/gms/internal/measurement/zzut;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzut;->c:Lcom/google/android/gms/internal/measurement/zzuv;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzup;->b:Lcom/google/android/gms/internal/measurement/zzwy;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzuv;->a(Lcom/google/android/gms/internal/measurement/zzwy;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method
