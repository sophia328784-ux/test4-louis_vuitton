.class public final synthetic Lcom/perfectcorp/perfectlib/f1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# instance fields
.field public final synthetic b:Lcom/perfectcorp/perfectlib/LookHandler;

.field public final synthetic c:Ljava/util/concurrent/ConcurrentHashMap;

.field public final synthetic d:Lcom/perfectcorp/perfectlib/LookHandler$DownloadLooksCallback;

.field public final synthetic e:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic f:I

.field public final synthetic g:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/LookHandler;Ljava/util/concurrent/ConcurrentHashMap;Lcom/perfectcorp/perfectlib/LookHandler$DownloadLooksCallback;Ljava/util/concurrent/atomic/AtomicInteger;ILjava/util/concurrent/ConcurrentHashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/f1;->b:Lcom/perfectcorp/perfectlib/LookHandler;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/f1;->c:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/f1;->d:Lcom/perfectcorp/perfectlib/LookHandler$DownloadLooksCallback;

    iput-object p4, p0, Lcom/perfectcorp/perfectlib/f1;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    iput p5, p0, Lcom/perfectcorp/perfectlib/f1;->f:I

    iput-object p6, p0, Lcom/perfectcorp/perfectlib/f1;->g:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/f1;->d:Lcom/perfectcorp/perfectlib/LookHandler$DownloadLooksCallback;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/f1;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v2, p0, Lcom/perfectcorp/perfectlib/f1;->f:I

    check-cast p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/f1;->b:Lcom/perfectcorp/perfectlib/LookHandler;

    iget-object v4, v3, Lcom/perfectcorp/perfectlib/LookHandler;->e:Lcom/perfectcorp/perfectlib/NailLookHandler;

    iget-object v5, v3, Lcom/perfectcorp/perfectlib/LookHandler;->f:Lcom/perfectcorp/perfectlib/JewelryLookHandler;

    iget-object v6, v3, Lcom/perfectcorp/perfectlib/LookHandler;->c:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, v3, Lcom/perfectcorp/perfectlib/LookHandler;->b:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    iget-object v7, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->d:Ljava/lang/String;

    :try_start_0
    invoke-static {v7}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->F(Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v8

    invoke-virtual {v8}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v8}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

    iget-object v9, v9, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;->g:Ljava/lang/String;

    sget-object v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;->a:Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;

    iget-object v10, v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;->d:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v10, p0, Lcom/perfectcorp/perfectlib/f1;->c:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v9, :cond_0

    :try_start_1
    invoke-virtual {v8}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

    invoke-virtual {v6, v7, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/perfectcorp/perfectlib/LookInfo;

    invoke-virtual {v8}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->g()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

    invoke-direct {v4, v6, p1, v5, v3}, Lcom/perfectcorp/perfectlib/LookInfo;-><init>(Ljava/util/Map;Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;)V

    :goto_0
    invoke-virtual {v10, v7, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_2

    :cond_0
    invoke-virtual {v8}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

    iget-object v6, v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;->g:Ljava/lang/String;

    sget-object v9, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;->c:Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;

    iget-object v9, v9, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;->d:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v4, v5, Lcom/perfectcorp/perfectlib/JewelryLookHandler;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

    invoke-virtual {v4, v7, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/perfectcorp/perfectlib/LookInfo;

    iget-object v5, v5, Lcom/perfectcorp/perfectlib/JewelryLookHandler;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->g()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

    invoke-direct {v4, v5, p1, v6, v3}, Lcom/perfectcorp/perfectlib/LookInfo;-><init>(Ljava/util/Map;Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;)V

    goto :goto_0

    :cond_1
    iget-object v5, v4, Lcom/perfectcorp/perfectlib/NailLookHandler;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

    invoke-virtual {v5, v7, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/perfectcorp/perfectlib/LookInfo;

    iget-object v4, v4, Lcom/perfectcorp/perfectlib/NailLookHandler;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->g()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

    invoke-direct {v5, v4, p1, v6, v3}, Lcom/perfectcorp/perfectlib/LookInfo;-><init>(Ljava/util/Map;Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;)V

    invoke-virtual {v10, v7, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    invoke-static {v0, v1, v2}, Lcom/perfectcorp/perfectlib/LookHandler;->b(Lcom/perfectcorp/perfectlib/LookHandler$DownloadLooksCallback;Ljava/util/concurrent/atomic/AtomicInteger;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p1

    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Create LookInfo failed. guid="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "LookHandler"

    invoke-static {v5, v4, v3}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/f1;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v7, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/perfectcorp/perfectlib/LookHandler;->b(Lcom/perfectcorp/perfectlib/LookHandler$DownloadLooksCallback;Ljava/util/concurrent/atomic/AtomicInteger;I)V

    return-object p1
.end method
