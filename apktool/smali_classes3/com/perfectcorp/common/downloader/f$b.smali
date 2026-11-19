.class public final Lcom/perfectcorp/common/downloader/f$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/common/downloader/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/common/downloader/c;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/perfectcorp/common/downloader/c;->b()Lcom/perfectcorp/common/downloader/c$c;

    move-result-object v0

    iget v1, v0, Lcom/perfectcorp/common/downloader/c$c;->a:I

    iget-object v1, v0, Lcom/perfectcorp/common/downloader/c$c;->b:Ljava/util/List;

    iput-object v1, p0, Lcom/perfectcorp/common/downloader/f$b;->a:Ljava/util/List;

    iget-object v0, v0, Lcom/perfectcorp/common/downloader/c$c;->c:Ljava/util/List;

    iput-object v0, p0, Lcom/perfectcorp/common/downloader/f$b;->b:Ljava/util/List;

    :try_start_0
    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Uninterruptibles;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    :catchall_0
    return-void
.end method
