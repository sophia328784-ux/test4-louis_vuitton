.class public final synthetic Ljy0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic e:Lcom/perfectcorp/common/network/ProgressCallback;

.field public final synthetic f:D

.field public final synthetic g:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;IILjava/util/concurrent/atomic/AtomicInteger;Lcom/perfectcorp/common/network/ProgressCallback;DLjava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljy0;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    iput p2, p0, Ljy0;->b:I

    iput p3, p0, Ljy0;->c:I

    iput-object p4, p0, Ljy0;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p5, p0, Ljy0;->e:Lcom/perfectcorp/common/network/ProgressCallback;

    iput-wide p6, p0, Ljy0;->f:D

    iput-object p8, p0, Ljy0;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 11

    check-cast p1, Ljava/lang/String;

    iget-object p1, p0, Ljy0;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    int-to-double v0, p1

    iget p1, p0, Ljy0;->b:I

    int-to-double v2, p1

    mul-double/2addr v0, v2

    iget p1, p0, Ljy0;->c:I

    int-to-double v2, p1

    div-double/2addr v0, v2

    iget-object p1, p0, Ljy0;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    int-to-double v2, p1

    add-double v6, v0, v2

    new-instance v4, Lqy0;

    iget-object v5, p0, Ljy0;->e:Lcom/perfectcorp/common/network/ProgressCallback;

    iget-wide v8, p0, Ljy0;->f:D

    iget-object v10, p0, Ljy0;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct/range {v4 .. v10}, Lqy0;-><init>(Lcom/perfectcorp/common/network/ProgressCallback;DDLjava/util/concurrent/atomic/AtomicInteger;)V

    invoke-static {v4}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void
.end method
