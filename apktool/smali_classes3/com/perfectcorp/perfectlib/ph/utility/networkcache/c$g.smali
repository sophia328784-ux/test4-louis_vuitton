.class public final Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$g;
.super Lcom/perfectcorp/perfectlib/ymk/utility/networkcache/Factory$Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/perfectcorp/perfectlib/ymk/utility/networkcache/Factory$Builder<",
        "Ljava/util/List<",
        "Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final b:Ljava/util/Collection;

.field public final c:Z


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 13
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$g;-><init>(Ljava/util/Collection;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/perfectcorp/perfectlib/ymk/utility/networkcache/Factory$Builder;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/util/Collection;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$g;->b:Ljava/util/Collection;

    iput-boolean p2, p0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$g;->c:Z

    return-void
.end method


# virtual methods
.method public final c()Lcom/perfectcorp/thirdparty/io/reactivex/Single;
    .locals 5

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/b$b;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$g;->b:Ljava/util/Collection;

    iget-boolean v2, p0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$g;->c:Z

    invoke-direct {v0, v1, v2}, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/b$b;-><init>(Ljava/util/Collection;Z)V

    new-instance v1, Lcom/perfectcorp/common/network/RequestTask$Builder;

    new-instance v2, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/HttpRequestProviderAppender;

    new-instance v3, Lzw;

    const/4 v4, 0x7

    invoke-direct {v3, p0, v4}, Lzw;-><init>(Lcom/perfectcorp/perfectlib/ymk/utility/networkcache/Factory$Builder;I)V

    invoke-direct {v2, v3}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/HttpRequestProviderAppender;-><init>(Lcom/perfectcorp/common/network/HttpRequestProvider;)V

    new-instance v3, Ly71;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Ly71;-><init>(I)V

    invoke-direct {v1, v2, v3}, Lcom/perfectcorp/common/network/RequestTask$Builder;-><init>(Lcom/perfectcorp/common/network/HttpRequestProvider;Lcom/perfectcorp/common/network/ResponseConverter;)V

    invoke-virtual {p0, v1}, Lcom/perfectcorp/perfectlib/ymk/utility/networkcache/Factory$Builder;->a(Lcom/perfectcorp/common/network/RequestTask$Builder;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/perfectcorp/common/utility/CacheStrategies;->a(Lcom/perfectcorp/common/utility/CacheStrategies$CacheHandler;Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object p0

    return-object p0
.end method
