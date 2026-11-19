.class final Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/a;
.super Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b;


# virtual methods
.method public final b(Ljava/util/List;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;
    .locals 3

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$m;

    invoke-direct {v0, p1}, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$m;-><init>(Ljava/util/List;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b;->a:Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b$a;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b$a;->a:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    iput-object p0, v0, Lcom/perfectcorp/perfectlib/ymk/utility/networkcache/Factory$Builder;->a:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    new-instance p0, Lcom/perfectcorp/common/network/RequestTask$Builder;

    new-instance p1, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/HttpRequestProviderAppender;

    new-instance v1, Lzw;

    const/16 v2, 0xd

    invoke-direct {v1, v0, v2}, Lzw;-><init>(Lcom/perfectcorp/perfectlib/ymk/utility/networkcache/Factory$Builder;I)V

    invoke-direct {p1, v1}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/HttpRequestProviderAppender;-><init>(Lcom/perfectcorp/common/network/HttpRequestProvider;)V

    new-instance v1, Ly71;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ly71;-><init>(I)V

    invoke-direct {p0, p1, v1}, Lcom/perfectcorp/common/network/RequestTask$Builder;-><init>(Lcom/perfectcorp/common/network/HttpRequestProvider;Lcom/perfectcorp/common/network/ResponseConverter;)V

    invoke-virtual {v0, p0}, Lcom/perfectcorp/perfectlib/ymk/utility/networkcache/Factory$Builder;->a(Lcom/perfectcorp/common/network/RequestTask$Builder;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;

    move-result-object p0

    return-object p0
.end method
