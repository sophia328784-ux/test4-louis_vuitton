.class public final Lcom/perfectcorp/common/network/DownloadTask$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/common/network/DownloadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public final a:Ljava/net/URI;

.field public final b:Ljava/io/File;

.field public c:I

.field public d:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

.field public e:Lcom/perfectcorp/common/network/DownloadTask$Key;

.field public f:Lcom/perfectcorp/common/network/DownloadStateMonitor;


# direct methods
.method public constructor <init>(Ljava/net/URI;Ljava/io/File;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/perfectcorp/common/network/DownloadTask$Builder;->c:I

    sget-object v0, Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;->NORMAL:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    iput-object v0, p0, Lcom/perfectcorp/common/network/DownloadTask$Builder;->d:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    sget-object v0, Lcom/perfectcorp/common/network/DownloadKey;->a:Lcom/perfectcorp/common/network/DownloadTask$Key;

    iput-object v0, p0, Lcom/perfectcorp/common/network/DownloadTask$Builder;->e:Lcom/perfectcorp/common/network/DownloadTask$Key;

    sget-object v0, Lcom/perfectcorp/common/network/DownloadStateMonitor;->a:Lcom/perfectcorp/common/network/DownloadStateMonitor;

    iput-object v0, p0, Lcom/perfectcorp/common/network/DownloadTask$Builder;->f:Lcom/perfectcorp/common/network/DownloadStateMonitor;

    const-string v0, "uri can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/perfectcorp/common/network/DownloadTask$Builder;->a:Ljava/net/URI;

    const-string p1, "file can\'t be null"

    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/perfectcorp/common/network/DownloadTask$Builder;->b:Ljava/io/File;

    return-void
.end method
