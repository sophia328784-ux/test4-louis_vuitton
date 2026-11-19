.class final synthetic Lcom/google/android/gms/internal/measurement/zztn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncFunction;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/measurement/zzto;

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(ILcom/google/android/gms/internal/measurement/zzto;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zztn;->a:Lcom/google/android/gms/internal/measurement/zzto;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zztn;->b:Ljava/util/ArrayList;

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zztn;->c:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzafc;

    new-instance v0, Lcom/google/common/util/concurrent/Futures$FutureCombiner;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zztn;->b:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->s(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/google/common/util/concurrent/Futures$FutureCombiner;-><init>(ZLcom/google/common/collect/ImmutableList;)V

    new-instance v1, Lcom/google/android/gms/internal/measurement/zztl;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zztn;->a:Lcom/google/android/gms/internal/measurement/zzto;

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zztn;->c:I

    invoke-direct {v1, v3, p1, p0, v2}, Lcom/google/android/gms/internal/measurement/zztl;-><init>(Lcom/google/android/gms/internal/measurement/zzto;Lcom/google/android/gms/internal/measurement/zzafc;ILjava/util/ArrayList;)V

    sget p0, Lcom/google/android/gms/internal/measurement/zzxa;->a:I

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvy;->a()Lcom/google/android/gms/internal/measurement/zzws;

    move-result-object p0

    new-instance p1, Lcom/google/android/gms/internal/measurement/zzwx;

    invoke-direct {p1, p0, v1}, Lcom/google/android/gms/internal/measurement/zzwx;-><init>(Lcom/google/android/gms/internal/measurement/zzws;Lcom/google/common/util/concurrent/AsyncCallable;)V

    iget-object p0, v3, Lcom/google/android/gms/internal/measurement/zzto;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, p1, p0}, Lcom/google/common/util/concurrent/Futures$FutureCombiner;->b(Lcom/google/android/gms/internal/measurement/zzwx;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method
