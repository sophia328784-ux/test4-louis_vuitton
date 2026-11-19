.class final Lcom/perfectcorp/common/network/BaseDownloadHandle$c;
.super Lcom/perfectcorp/common/network/DownloadReport$ProgressReport;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/common/network/BaseDownloadHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final c:Lcom/perfectcorp/common/network/BaseDownloadHandle$b;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/common/network/BaseDownloadHandle$b;)V
    .locals 3

    iget-object v0, p1, Lcom/perfectcorp/common/network/BaseDownloadHandle$b;->a:Lcom/perfectcorp/common/network/DownloadTask$Key;

    iget-wide v1, p1, Lcom/perfectcorp/common/network/BaseDownloadHandle$b;->b:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/perfectcorp/common/network/DownloadReport$ProgressReport;-><init>(Lcom/perfectcorp/common/network/DownloadTask$Key;Ljava/lang/Double;)V

    iput-object p1, p0, Lcom/perfectcorp/common/network/BaseDownloadHandle$c;->c:Lcom/perfectcorp/common/network/BaseDownloadHandle$b;

    return-void
.end method
