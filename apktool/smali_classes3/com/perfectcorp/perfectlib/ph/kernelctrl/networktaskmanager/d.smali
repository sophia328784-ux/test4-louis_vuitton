.class final Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer<",
        "Lcom/perfectcorp/common/network/DownloadReport$ProgressReport;",
        ">;"
    }
.end annotation


# instance fields
.field public synthetic a:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$a;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 10

    check-cast p1, Lcom/perfectcorp/common/network/DownloadReport$ProgressReport;

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move-wide v4, v0

    move v3, v2

    :goto_0
    iget-object v6, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/d;->a:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$a;

    iget-object v6, v6, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$a;->B:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget-object v7, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/d;->a:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$a;

    if-ge v2, v6, :cond_1

    iget-object v6, v7, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$a;->B:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$d;

    iget-object v6, v6, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$d;->a:Ljava/lang/String;

    new-instance v7, Lcom/perfectcorp/common/network/DownloadKey$Guid;

    invoke-direct {v7, v6}, Lcom/perfectcorp/common/network/DownloadKey$Guid;-><init>(Ljava/lang/String;)V

    iget-object v6, p1, Lcom/perfectcorp/common/network/DownloadReport;->a:Ljava/lang/Object;

    invoke-virtual {v7, v6}, Lcom/perfectcorp/common/network/DownloadKey$Guid;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/d;->a:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$a;

    iget-object v6, v6, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$a;->B:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$d;

    iget-object v7, p1, Lcom/perfectcorp/common/network/DownloadReport;->b:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    iput-wide v7, v6, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$d;->c:D

    :cond_0
    iget-object v6, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/d;->a:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$a;

    iget-object v6, v6, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$a;->B:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$d;

    iget-wide v6, v6, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$d;->c:D

    iget-object v8, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/d;->a:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$a;

    iget-object v8, v8, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$a;->B:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$d;

    iget-wide v8, v8, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$d;->b:J

    long-to-double v8, v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    int-to-long v6, v3

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/d;->a:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$a;

    iget-object v3, v3, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$a;->B:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$d;

    iget-wide v8, v3, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$d;->b:J

    add-long/2addr v6, v8

    long-to-int v3, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-lez v3, :cond_2

    int-to-double v0, v3

    div-double v0, v4, v0

    :cond_2
    iput-wide v0, v7, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$a;->C:D

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/d;->a:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$a;

    iget-wide v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$a;->C:D

    invoke-virtual {p0, v0, v1}, Lcom/perfectcorp/common/network/BaseDownloadHandle;->a(D)V

    return-void
.end method
