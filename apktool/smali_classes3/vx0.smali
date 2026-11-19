.class public final synthetic Lvx0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Z

.field public final synthetic c:Ljava/util/concurrent/ConcurrentHashMap;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/util/concurrent/ConcurrentHashMap;

.field public final synthetic f:Lcom/perfectcorp/perfectlib/SkuHandler$DownloadSkuSetsCallback;

.field public final synthetic g:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic h:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ZLjava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;Lcom/perfectcorp/perfectlib/SkuHandler$DownloadSkuSetsCallback;Ljava/util/concurrent/atomic/AtomicInteger;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvx0;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lvx0;->b:Z

    iput-object p3, p0, Lvx0;->c:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p4, p0, Lvx0;->d:Ljava/lang/String;

    iput-object p5, p0, Lvx0;->e:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p6, p0, Lvx0;->f:Lcom/perfectcorp/perfectlib/SkuHandler$DownloadSkuSetsCallback;

    iput-object p7, p0, Lvx0;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    iput p8, p0, Lvx0;->h:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lvx0;->a:Ljava/lang/String;

    iget-boolean v1, p0, Lvx0;->b:Z

    iget-object v2, p0, Lvx0;->c:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, p0, Lvx0;->d:Ljava/lang/String;

    check-cast p1, Ljava/util/List;

    :try_start_0
    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ph/template/e$e;->e(Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p1

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;

    invoke-static {v0, v1}, Lcom/perfectcorp/perfectlib/SkuSetInfo;->b(Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;Z)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;->a:Ljava/lang/String;

    new-instance v0, Lcom/perfectcorp/perfectlib/exceptions/ContentIssueException;

    const-string v4, "SKU set item info is empty."

    invoke-direct {v0, v4}, Lcom/perfectcorp/perfectlib/exceptions/ContentIssueException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    new-instance v6, Lcom/perfectcorp/perfectlib/SkuSetInfo;

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-direct {v6, v7, v4, v5}, Lcom/perfectcorp/perfectlib/SkuSetInfo;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/SkuSetInfo;

    invoke-virtual {v4}, Lcom/perfectcorp/perfectlib/SkuSetInfo;->getGuid()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_2

    move-object v0, v4

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lvx0;->e:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_4

    :try_start_1
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_4
    invoke-virtual {p1, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_3
    const-string v0, "SkuHandler"

    const-string v1, "[downloadSkuSets] get downloaded SkuSetInfo failed"

    invoke-static {v0, v1, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_4
    new-instance p1, Lay0;

    const/4 v0, 0x0

    iget-object v1, p0, Lvx0;->f:Lcom/perfectcorp/perfectlib/SkuHandler$DownloadSkuSetsCallback;

    iget-object v2, p0, Lvx0;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    iget p0, p0, Lvx0;->h:I

    invoke-direct {p1, v1, v2, p0, v0}, Lay0;-><init>(Lcom/perfectcorp/perfectlib/SkuHandler$DownloadSkuSetsCallback;Ljava/util/concurrent/atomic/AtomicInteger;II)V

    invoke-static {p1}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void
.end method
