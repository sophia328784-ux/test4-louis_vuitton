.class final synthetic Lcom/google/android/gms/internal/measurement/zzur;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncFunction;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/measurement/zzus;

.field public final synthetic b:Lcom/google/android/gms/internal/measurement/zzwy;

.field public final synthetic c:Ljava/util/concurrent/Executor;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzus;Lcom/google/android/gms/internal/measurement/zzwy;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->a:Lcom/google/android/gms/internal/measurement/zzus;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzur;->b:Lcom/google/android/gms/internal/measurement/zzwy;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzur;->c:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    check-cast p1, Ljava/lang/Void;

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->a:Lcom/google/android/gms/internal/measurement/zzus;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzus;->a:Lcom/google/android/gms/internal/measurement/zzut;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzut;->c:Lcom/google/android/gms/internal/measurement/zzuv;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->b:Lcom/google/android/gms/internal/measurement/zzwy;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzur;->c:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v0, p0}, Lcom/google/android/gms/internal/measurement/zzuv;->a(Lcom/google/android/gms/internal/measurement/zzwy;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method
