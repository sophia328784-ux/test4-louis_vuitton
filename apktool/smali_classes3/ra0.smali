.class public final synthetic Lra0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/perfectcorp/perfectlib/LookHandler$DownloadLooksCallback;

.field public final synthetic c:Ljava/util/concurrent/ConcurrentHashMap;

.field public final synthetic d:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/LookHandler$DownloadLooksCallback;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lra0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lra0;->b:Lcom/perfectcorp/perfectlib/LookHandler$DownloadLooksCallback;

    iput-object p2, p0, Lra0;->c:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p3, p0, Lra0;->d:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/concurrent/ConcurrentHashMap;Lcom/perfectcorp/perfectlib/LookHandler$DownloadLooksCallback;Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 1

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lra0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lra0;->c:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p2, p0, Lra0;->b:Lcom/perfectcorp/perfectlib/LookHandler$DownloadLooksCallback;

    iput-object p3, p0, Lra0;->d:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, Lra0;->a:I

    const-string v1, "LookHandler"

    iget-object v2, p0, Lra0;->d:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, p0, Lra0;->c:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p0, p0, Lra0;->b:Lcom/perfectcorp/perfectlib/LookHandler$DownloadLooksCallback;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Throwable;

    instance-of v0, p1, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;

    if-eqz v0, :cond_0

    const-string p0, "[downloadLooks] canceled."

    invoke-static {v1, p0, p1}, Lcom/perfectcorp/common/utility/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const-string v0, "[downloadLooks] shouldn\'t failed!!!"

    invoke-static {v1, v0, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p0, v3, v2}, Lcom/perfectcorp/perfectlib/LookHandler$DownloadLooksCallback;->onComplete(Ljava/util/Map;Ljava/util/Map;)V

    :goto_0
    return-void

    :pswitch_0
    check-cast p1, Ljava/util/List;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[downloadLooks] success, lookInfos.size="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    invoke-static {v0, v1, p1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0, v3, v2}, Lcom/perfectcorp/perfectlib/LookHandler$DownloadLooksCallback;->onComplete(Ljava/util/Map;Ljava/util/Map;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
