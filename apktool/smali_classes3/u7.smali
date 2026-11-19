.class public final synthetic Lu7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

.field public final synthetic d:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

.field public final synthetic e:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

.field public final synthetic f:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu7;->b:Ljava/lang/String;

    iput-object p2, p0, Lu7;->c:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    iput-object p3, p0, Lu7;->d:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    iput-object p4, p0, Lu7;->e:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iput-object p5, p0, Lu7;->f:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lu7;->b:Ljava/lang/String;

    iget-object v1, p0, Lu7;->c:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    iget-object v2, p0, Lu7;->d:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    iget-object v3, p0, Lu7;->e:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iget-object v4, p0, Lu7;->f:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    invoke-static/range {v0 .. v6}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->h(Ljava/lang/String;Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;ZLcom/perfectcorp/common/network/ProgressCallback;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->k()Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method
