.class public final synthetic Lhy0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/common/network/ProgressCallback;Ljava/util/concurrent/atomic/AtomicInteger;I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lhy0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhy0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lhy0;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    iput p3, p0, Lhy0;->d:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;ILjava/lang/Object;I)V
    .locals 0

    .line 13
    iput p4, p0, Lhy0;->a:I

    iput-object p1, p0, Lhy0;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    iput p2, p0, Lhy0;->d:I

    iput-object p3, p0, Lhy0;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    iget v0, p0, Lhy0;->a:I

    iget-object v1, p0, Lhy0;->b:Ljava/lang/Object;

    iget v2, p0, Lhy0;->d:I

    iget-object p0, p0, Lhy0;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    packed-switch v0, :pswitch_data_0

    check-cast v1, Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;

    check-cast p1, Ljava/io/File;

    new-instance p1, Lcom/perfectcorp/perfectlib/r;

    invoke-direct {p1, p0, v2, v1}, Lcom/perfectcorp/perfectlib/r;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;ILcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;)V

    invoke-static {p1}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void

    :pswitch_0
    check-cast v1, Lcom/perfectcorp/common/network/ProgressCallback;

    check-cast p1, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo$Builder;

    new-instance p1, Lrx0;

    const/16 v0, 0x9

    invoke-direct {p1, v1, p0, v2, v0}, Lrx0;-><init>(Lcom/perfectcorp/common/network/ProgressCallback;Ljava/util/concurrent/atomic/AtomicInteger;II)V

    invoke-static {p1}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void

    :pswitch_1
    check-cast v1, Lcom/perfectcorp/common/network/ProgressCallback;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p0

    const-wide v3, 0x3fe6666666666666L    # 0.7

    int-to-double p0, p0

    mul-double/2addr p0, v3

    int-to-double v2, v2

    div-double/2addr p0, v2

    const-wide v2, 0x3fc999999999999aL    # 0.2

    add-double/2addr p0, v2

    new-instance v0, Lly0;

    invoke-direct {v0, v1, p0, p1}, Lly0;-><init>(Lcom/perfectcorp/common/network/ProgressCallback;D)V

    invoke-static {v0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
