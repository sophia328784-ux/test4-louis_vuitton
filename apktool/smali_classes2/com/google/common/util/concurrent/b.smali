.class public final synthetic Lcom/google/common/util/concurrent/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/google/common/util/concurrent/CombinedFuture;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/CombinedFuture;ILcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    const/4 p2, 0x0

    iput p2, p0, Lcom/google/common/util/concurrent/b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/b;->c:Lcom/google/common/util/concurrent/CombinedFuture;

    iput-object p3, p0, Lcom/google/common/util/concurrent/b;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/CombinedFuture;Lcom/google/common/collect/ImmutableCollection;)V
    .locals 1

    .line 11
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/common/util/concurrent/b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/b;->c:Lcom/google/common/util/concurrent/CombinedFuture;

    iput-object p2, p0, Lcom/google/common/util/concurrent/b;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/google/common/util/concurrent/b;->b:I

    iget-object v1, p0, Lcom/google/common/util/concurrent/b;->d:Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/common/util/concurrent/b;->c:Lcom/google/common/util/concurrent/CombinedFuture;

    packed-switch v0, :pswitch_data_0

    check-cast v1, Lcom/google/common/collect/ImmutableCollection;

    sget-object v0, Lcom/google/common/util/concurrent/AggregateFuture;->h:Lcom/google/common/util/concurrent/LazyLogger;

    invoke-virtual {p0, v1}, Lcom/google/common/util/concurrent/AggregateFuture;->g(Lcom/google/common/collect/ImmutableCollection;)V

    return-void

    :pswitch_0
    check-cast v1, Lcom/google/common/util/concurrent/ListenableFuture;

    sget-object v0, Lcom/google/common/util/concurrent/AggregateFuture;->h:Lcom/google/common/util/concurrent/LazyLogger;

    invoke-virtual {p0, v1}, Lcom/google/common/util/concurrent/AggregateFuture;->j(Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
