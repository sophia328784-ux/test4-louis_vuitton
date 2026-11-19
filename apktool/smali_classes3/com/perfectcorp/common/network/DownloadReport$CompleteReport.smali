.class public Lcom/perfectcorp/common/network/DownloadReport$CompleteReport;
.super Lcom/perfectcorp/common/network/DownloadReport;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/common/network/DownloadReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompleteReport"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/perfectcorp/common/network/DownloadReport<",
        "Lcom/perfectcorp/common/network/DownloadTask$Key;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/perfectcorp/common/network/DownloadTask$Key;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/perfectcorp/common/network/DownloadReport;-><init>(Lcom/perfectcorp/common/network/DownloadTask$Key;Ljava/lang/Object;)V

    return-void
.end method
