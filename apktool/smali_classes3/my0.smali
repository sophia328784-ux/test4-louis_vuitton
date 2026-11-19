.class public final synthetic Lmy0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/perfectcorp/common/network/ProgressCallback;

.field public final synthetic c:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic d:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic e:D


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/common/network/ProgressCallback;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmy0;->b:Lcom/perfectcorp/common/network/ProgressCallback;

    iput-object p2, p0, Lmy0;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p3, p0, Lmy0;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-wide p4, p0, Lmy0;->e:D

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lmy0;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    int-to-double v0, v0

    iget-object v2, p0, Lmy0;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    iget-wide v2, p0, Lmy0;->e:D

    mul-double/2addr v0, v2

    iget-object p0, p0, Lmy0;->b:Lcom/perfectcorp/common/network/ProgressCallback;

    invoke-interface {p0, v0, v1}, Lcom/perfectcorp/common/network/ProgressCallback;->a(D)V

    return-void
.end method
