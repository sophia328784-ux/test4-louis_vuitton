.class final Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public volatile a:I

.field public volatile b:I

.field public volatile c:I

.field public final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final e:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final f:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic g:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$b;->g:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;

    const/4 p1, -0x1

    iput p1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$b;->a:I

    iput p1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$b;->b:I

    iput p1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$b;->c:I

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$b;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$b;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$b;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final a()D
    .locals 10

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$b;->g:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;

    iget-boolean v1, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->s:Z

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_6

    iget v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$b;->a:I

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    if-gez v0, :cond_0

    move-wide v0, v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$b;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$b;->a:I

    if-ne v0, v1, :cond_1

    move-wide v0, v4

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$b;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    int-to-double v0, v0

    iget v6, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$b;->a:I

    int-to-double v6, v6

    div-double/2addr v0, v6

    :goto_0
    const-wide v6, 0x3fd47ae147ae147cL    # 0.32000000000000006

    mul-double/2addr v0, v6

    const-wide v6, 0x3fc999999999999aL    # 0.2

    add-double/2addr v0, v6

    iget v6, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$b;->b:I

    if-gez v6, :cond_2

    move-wide v6, v2

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$b;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    iget v7, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$b;->b:I

    if-ne v6, v7, :cond_3

    move-wide v6, v4

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$b;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    int-to-double v6, v6

    iget v8, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$b;->b:I

    int-to-double v8, v8

    div-double/2addr v6, v8

    :goto_1
    const-wide v8, 0x3fceb851eb851eb8L    # 0.24

    mul-double/2addr v6, v8

    add-double/2addr v6, v0

    iget v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$b;->c:I

    if-gez v0, :cond_4

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$b;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$b;->c:I

    if-ne v0, v1, :cond_5

    move-wide v2, v4

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$b;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    int-to-double v0, v0

    iget p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$b;->c:I

    int-to-double v2, p0

    div-double v2, v0, v2

    :goto_2
    mul-double/2addr v2, v8

    add-double/2addr v2, v6

    return-wide v2

    :cond_6
    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->w:Lcom/perfectcorp/common/network/DownloadTask;

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$b;->g:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->w:Lcom/perfectcorp/common/network/DownloadTask;

    invoke-virtual {p0}, Lcom/perfectcorp/common/network/DownloadTask;->getProgress()D

    move-result-wide v0

    return-wide v0

    :cond_7
    return-wide v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sku progress="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$b;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$b;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", inner files progress="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$b;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$b;->b:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
