.class final synthetic Lcom/google/android/gms/internal/measurement/zztl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncCallable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/measurement/zzto;

.field public final synthetic b:Lcom/google/android/gms/internal/measurement/zzafc;

.field public final synthetic c:I

.field public final synthetic d:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzto;Lcom/google/android/gms/internal/measurement/zzafc;ILjava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zztl;->a:Lcom/google/android/gms/internal/measurement/zzto;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zztl;->b:Lcom/google/android/gms/internal/measurement/zzafc;

    iput p3, p0, Lcom/google/android/gms/internal/measurement/zztl;->c:I

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/zztl;->d:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final call()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zztl;->b:Lcom/google/android/gms/internal/measurement/zzafc;

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->g(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/measurement/zztl;->c:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zztl;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    invoke-static {v2}, Lcom/google/common/util/concurrent/Futures;->d(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zztl;->a:Lcom/google/android/gms/internal/measurement/zzto;

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzto;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zztj;

    new-instance v3, Lcom/google/android/gms/internal/measurement/zztm;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/measurement/zztm;-><init>(Lcom/google/android/gms/internal/measurement/zztj;)V

    sget v2, Lcom/google/android/gms/internal/measurement/zzxa;->a:I

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvy;->a()Lcom/google/android/gms/internal/measurement/zzws;

    move-result-object v2

    new-instance v4, Lcom/google/android/gms/internal/measurement/zzwy;

    invoke-direct {v4, v2, v3}, Lcom/google/android/gms/internal/measurement/zzwy;-><init>(Lcom/google/android/gms/internal/measurement/zzws;Lcom/google/common/util/concurrent/AsyncFunction;)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->b()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-static {v0, v4, v2}, Lcom/google/common/util/concurrent/Futures;->m(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
