.class abstract Lcom/perfectcorp/common/network/i$a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/perfectcorp/common/downloader/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/perfectcorp/common/downloader/b;

    const-string v1, "MultipartDownloader"

    invoke-static {v1}, Lcom/perfectcorp/common/concurrent/NamedThreadFactory;->b(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    const/16 v2, 0x8

    invoke-direct {v0, v2, v1}, Lcom/perfectcorp/common/downloader/b;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/perfectcorp/common/network/i$a;->a:Lcom/perfectcorp/common/downloader/b;

    return-void
.end method
