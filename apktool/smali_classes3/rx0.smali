.class public final synthetic Lrx0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/perfectcorp/common/network/ProgressCallback;

.field public final synthetic d:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/common/network/ProgressCallback;Ljava/util/concurrent/atomic/AtomicInteger;II)V
    .locals 0

    iput p4, p0, Lrx0;->b:I

    iput-object p1, p0, Lrx0;->c:Lcom/perfectcorp/common/network/ProgressCallback;

    iput-object p2, p0, Lrx0;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    iput p3, p0, Lrx0;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Lrx0;->b:I

    const-wide v1, 0x3fe2e147ae147ae1L    # 0.59

    const-wide v3, 0x3fc999999999999aL    # 0.2

    iget v5, p0, Lrx0;->e:I

    iget-object v6, p0, Lrx0;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object p0, p0, Lrx0;->c:Lcom/perfectcorp/common/network/ProgressCallback;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    int-to-double v6, v0

    mul-double/2addr v6, v1

    int-to-double v0, v5

    div-double/2addr v6, v0

    add-double/2addr v6, v3

    invoke-interface {p0, v6, v7}, Lcom/perfectcorp/common/network/ProgressCallback;->a(D)V

    return-void

    :pswitch_0
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    int-to-double v6, v0

    mul-double/2addr v6, v1

    int-to-double v0, v5

    div-double/2addr v6, v0

    add-double/2addr v6, v3

    invoke-interface {p0, v6, v7}, Lcom/perfectcorp/common/network/ProgressCallback;->a(D)V

    return-void

    :pswitch_1
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    int-to-double v0, v0

    int-to-double v2, v5

    div-double/2addr v0, v2

    invoke-interface {p0, v0, v1}, Lcom/perfectcorp/common/network/ProgressCallback;->a(D)V

    return-void

    :pswitch_2
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    int-to-double v0, v0

    int-to-double v2, v5

    div-double/2addr v0, v2

    invoke-interface {p0, v0, v1}, Lcom/perfectcorp/common/network/ProgressCallback;->a(D)V

    return-void

    :pswitch_3
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    int-to-double v0, v0

    int-to-double v2, v5

    div-double/2addr v0, v2

    invoke-interface {p0, v0, v1}, Lcom/perfectcorp/common/network/ProgressCallback;->a(D)V

    return-void

    :pswitch_4
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    int-to-double v0, v0

    int-to-double v2, v5

    div-double/2addr v0, v2

    invoke-interface {p0, v0, v1}, Lcom/perfectcorp/common/network/ProgressCallback;->a(D)V

    return-void

    :pswitch_5
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    int-to-double v0, v0

    int-to-double v2, v5

    div-double/2addr v0, v2

    invoke-interface {p0, v0, v1}, Lcom/perfectcorp/common/network/ProgressCallback;->a(D)V

    return-void

    :pswitch_6
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    int-to-double v0, v0

    int-to-double v2, v5

    div-double/2addr v0, v2

    invoke-interface {p0, v0, v1}, Lcom/perfectcorp/common/network/ProgressCallback;->a(D)V

    return-void

    :pswitch_7
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    int-to-double v0, v0

    int-to-double v2, v5

    div-double/2addr v0, v2

    invoke-interface {p0, v0, v1}, Lcom/perfectcorp/common/network/ProgressCallback;->a(D)V

    return-void

    :pswitch_8
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    int-to-double v0, v0

    int-to-double v2, v5

    div-double/2addr v0, v2

    invoke-interface {p0, v0, v1}, Lcom/perfectcorp/common/network/ProgressCallback;->a(D)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
