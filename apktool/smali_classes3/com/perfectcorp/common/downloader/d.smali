.class final Lcom/perfectcorp/common/downloader/d;
.super Lcom/perfectcorp/common/downloader/c;


# instance fields
.field private synthetic a:Lcom/perfectcorp/common/downloader/c;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/common/downloader/p$f;IILcom/perfectcorp/common/downloader/c;)V
    .locals 0

    iput-object p4, p0, Lcom/perfectcorp/common/downloader/d;->a:Lcom/perfectcorp/common/downloader/c;

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3, p3}, Lcom/perfectcorp/common/downloader/c;-><init>(Lcom/perfectcorp/common/downloader/p$f;IIB)V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/perfectcorp/common/downloader/d;->a:Lcom/perfectcorp/common/downloader/c;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/common/downloader/c;->a(Lcom/perfectcorp/common/downloader/c;)V

    return-void
.end method
