.class public final synthetic Lay0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/perfectcorp/perfectlib/SkuHandler$DownloadSkuSetsCallback;

.field public final synthetic d:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/SkuHandler$DownloadSkuSetsCallback;Ljava/util/concurrent/atomic/AtomicInteger;II)V
    .locals 0

    iput p4, p0, Lay0;->b:I

    iput-object p1, p0, Lay0;->c:Lcom/perfectcorp/perfectlib/SkuHandler$DownloadSkuSetsCallback;

    iput-object p2, p0, Lay0;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    iput p3, p0, Lay0;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lay0;->b:I

    iget v1, p0, Lay0;->e:I

    iget-object v2, p0, Lay0;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object p0, p0, Lay0;->c:Lcom/perfectcorp/perfectlib/SkuHandler$DownloadSkuSetsCallback;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    int-to-double v2, v0

    int-to-double v0, v1

    div-double/2addr v2, v0

    invoke-interface {p0, v2, v3}, Lcom/perfectcorp/perfectlib/SkuHandler$DownloadSkuSetsCallback;->progress(D)V

    return-void

    :pswitch_0
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    int-to-double v2, v0

    int-to-double v0, v1

    div-double/2addr v2, v0

    invoke-interface {p0, v2, v3}, Lcom/perfectcorp/perfectlib/SkuHandler$DownloadSkuSetsCallback;->progress(D)V

    return-void

    :pswitch_1
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    int-to-double v2, v0

    int-to-double v0, v1

    div-double/2addr v2, v0

    invoke-interface {p0, v2, v3}, Lcom/perfectcorp/perfectlib/SkuHandler$DownloadSkuSetsCallback;->progress(D)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
