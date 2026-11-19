.class public final Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$h;
.super Lcom/perfectcorp/perfectlib/ymk/utility/networkcache/Factory$Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/perfectcorp/perfectlib/ymk/utility/networkcache/Factory$Builder<",
        "Lcom/perfectcorp/common/network/RequestTask$Response<",
        "Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/nailLook/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/perfectcorp/perfectlib/ymk/utility/networkcache/Factory$Builder;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$h;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final c()Lcom/perfectcorp/thirdparty/io/reactivex/Single;
    .locals 5

    new-instance v0, Lcom/perfectcorp/common/network/RequestTask$Builder;

    new-instance v1, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/HttpRequestProviderAppender;

    new-instance v2, Lzw;

    const/16 v3, 0x8

    invoke-direct {v2, p0, v3}, Lzw;-><init>(Lcom/perfectcorp/perfectlib/ymk/utility/networkcache/Factory$Builder;I)V

    invoke-direct {v1, v2}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/HttpRequestProviderAppender;-><init>(Lcom/perfectcorp/common/network/HttpRequestProvider;)V

    new-instance v2, Lcom/perfectcorp/common/network/ResponseConverter$GsonConverter;

    sget-object v3, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/GsonBaseResponse;->a:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    new-instance v4, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/i;

    invoke-direct {v4}, Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;-><init>()V

    invoke-direct {v2, v3, v4}, Lcom/perfectcorp/common/network/ResponseConverter$GsonConverter;-><init>(Lcom/perfectcorp/thirdparty/com/google/gson/Gson;Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;)V

    invoke-direct {v0, v1, v2}, Lcom/perfectcorp/common/network/RequestTask$Builder;-><init>(Lcom/perfectcorp/common/network/HttpRequestProvider;Lcom/perfectcorp/common/network/ResponseConverter;)V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/perfectlib/ymk/utility/networkcache/Factory$Builder;->b(Lcom/perfectcorp/common/network/RequestTask$Builder;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;

    move-result-object p0

    return-object p0
.end method
