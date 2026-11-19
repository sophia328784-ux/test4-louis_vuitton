.class public final Lcom/perfectcorp/perfectlib/rh/utility/networkcache/d$c;
.super Lcom/perfectcorp/perfectlib/ymk/utility/networkcache/Factory$Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/perfectcorp/perfectlib/ymk/utility/networkcache/Factory$Builder<",
        "Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/shadefinder/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/perfectcorp/perfectlib/ymk/utility/networkcache/Factory$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Lcom/perfectcorp/thirdparty/io/reactivex/Single;
    .locals 6

    new-instance v0, Lcom/perfectcorp/perfectlib/rh/utility/networkcache/a$a;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/rh/utility/networkcache/a$a;-><init>()V

    new-instance v1, Lcom/perfectcorp/common/network/RequestTask$Builder;

    new-instance v2, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/HttpRequestProviderAppender;

    new-instance v3, Lg81;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Lg81;-><init>(I)V

    invoke-direct {v2, v3}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/HttpRequestProviderAppender;-><init>(Lcom/perfectcorp/common/network/HttpRequestProvider;)V

    new-instance v3, Lcom/perfectcorp/common/network/ResponseConverter$GsonConverter;

    sget-object v4, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/GsonBaseResponse;->a:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    new-instance v5, Lcom/perfectcorp/perfectlib/rh/utility/networkcache/g;

    invoke-direct {v5}, Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;-><init>()V

    invoke-direct {v3, v4, v5}, Lcom/perfectcorp/common/network/ResponseConverter$GsonConverter;-><init>(Lcom/perfectcorp/thirdparty/com/google/gson/Gson;Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;)V

    invoke-direct {v1, v2, v3}, Lcom/perfectcorp/common/network/RequestTask$Builder;-><init>(Lcom/perfectcorp/common/network/HttpRequestProvider;Lcom/perfectcorp/common/network/ResponseConverter;)V

    invoke-virtual {p0, v1}, Lcom/perfectcorp/perfectlib/ymk/utility/networkcache/Factory$Builder;->a(Lcom/perfectcorp/common/network/RequestTask$Builder;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/perfectcorp/common/utility/CacheStrategies;->a(Lcom/perfectcorp/common/utility/CacheStrategies$CacheHandler;Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object p0

    return-object p0
.end method
