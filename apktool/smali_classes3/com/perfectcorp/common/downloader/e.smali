.class public final Lcom/perfectcorp/common/downloader/e;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/perfectcorp/common/downloader/s;

.field public b:Ljava/net/URI;

.field public c:Ljava/io/File;

.field public d:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

.field public e:Lcom/perfectcorp/common/downloader/o;

.field public f:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

.field public g:I


# direct methods
.method public constructor <init>(Lcom/perfectcorp/common/downloader/s;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/perfectcorp/common/downloader/o;->a:Lcom/perfectcorp/common/downloader/o;

    iput-object v0, p0, Lcom/perfectcorp/common/downloader/e;->e:Lcom/perfectcorp/common/downloader/o;

    const/4 v0, 0x0

    iput v0, p0, Lcom/perfectcorp/common/downloader/e;->g:I

    iput-object p1, p0, Lcom/perfectcorp/common/downloader/e;->a:Lcom/perfectcorp/common/downloader/s;

    return-void
.end method
