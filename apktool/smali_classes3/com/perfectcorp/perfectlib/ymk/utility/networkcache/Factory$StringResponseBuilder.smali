.class public Lcom/perfectcorp/perfectlib/ymk/utility/networkcache/Factory$StringResponseBuilder;
.super Lcom/perfectcorp/perfectlib/ymk/utility/networkcache/Factory$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ymk/utility/networkcache/Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringResponseBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/perfectcorp/perfectlib/ymk/utility/networkcache/Factory$Builder<",
        "Lcom/perfectcorp/common/network/RequestTask$Response<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Lcom/perfectcorp/common/network/RequestTask$RequestMethod;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/perfectcorp/common/network/RequestTask$RequestMethod;)V
    .locals 0

    invoke-direct {p0}, Lcom/perfectcorp/perfectlib/ymk/utility/networkcache/Factory$Builder;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ymk/utility/networkcache/Factory$StringResponseBuilder;->b:Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/ymk/utility/networkcache/Factory$StringResponseBuilder;->c:Lcom/perfectcorp/common/network/RequestTask$RequestMethod;

    return-void
.end method


# virtual methods
.method public final c()Lcom/perfectcorp/thirdparty/io/reactivex/Single;
    .locals 4

    new-instance v0, Lcom/perfectcorp/common/network/RequestTask$Builder;

    new-instance v1, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/HttpRequestProviderAppender;

    new-instance v2, Lzw;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lzw;-><init>(Lcom/perfectcorp/perfectlib/ymk/utility/networkcache/Factory$Builder;I)V

    invoke-direct {v1, v2}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/HttpRequestProviderAppender;-><init>(Lcom/perfectcorp/common/network/HttpRequestProvider;)V

    new-instance v2, Lcom/perfectcorp/common/network/ResponseConverter$StringConverter;

    invoke-direct {v2}, Lcom/perfectcorp/common/network/ResponseConverter$StringConverter;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/perfectcorp/common/network/RequestTask$Builder;-><init>(Lcom/perfectcorp/common/network/HttpRequestProvider;Lcom/perfectcorp/common/network/ResponseConverter;)V

    const-string v1, "requestMethod can\'t be null"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/ymk/utility/networkcache/Factory$StringResponseBuilder;->c:Lcom/perfectcorp/common/network/RequestTask$RequestMethod;

    invoke-static {v2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object v2, v0, Lcom/perfectcorp/common/network/RequestTask$Builder;->d:Lcom/perfectcorp/common/network/RequestTask$RequestMethod;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/perfectlib/ymk/utility/networkcache/Factory$Builder;->b(Lcom/perfectcorp/common/network/RequestTask$Builder;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;

    move-result-object p0

    return-object p0
.end method
