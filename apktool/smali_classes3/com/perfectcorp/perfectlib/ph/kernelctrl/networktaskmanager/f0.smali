.class public final synthetic Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/i;


# virtual methods
.method public final apply(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;
    .locals 1

    check-cast p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    sget-object p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->z:Ljava/util/concurrent/ExecutorService;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    iget-object p0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->n:Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;

    sget-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;->DOWNLOAD:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;

    invoke-virtual {p0, p1, v0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->a(Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;

    invoke-direct {p1, p0}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;-><init>(Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;)V

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Futures;->g(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/zip/DataFormatException;

    const-string p1, "[getProcessResult] parse zip info failed."

    invoke-direct {p0, p1}, Ljava/util/zip/DataFormatException;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Futures;->f(Ljava/lang/Throwable;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method
