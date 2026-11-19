.class public Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/makeup/b;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/util/List;

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;

    invoke-direct {v0, p1, p2}, Lcom/cyberlink/clgpuimage/GPUImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/cyberlink/clgpuimage/GPUImageFilter;

    invoke-direct {p1, p3, p4}, Lcom/cyberlink/clgpuimage/GPUImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->A(Ljava/lang/Object;Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/makeup/b;->a:Ljava/util/List;

    return-void
.end method

.method public static a()Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;
    .locals 6

    new-instance v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/makeup/c;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/ymk/utility/networkcache/Factory$Builder;-><init>()V

    new-instance v1, Lcom/perfectcorp/common/network/RequestTask$Builder;

    new-instance v2, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/HttpRequestProviderAppender;

    new-instance v3, Lg81;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lg81;-><init>(I)V

    invoke-direct {v2, v3}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/HttpRequestProviderAppender;-><init>(Lcom/perfectcorp/common/network/HttpRequestProvider;)V

    new-instance v3, Lcom/perfectcorp/common/network/ResponseConverter$GsonConverter;

    sget-object v4, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/GsonBaseResponse;->a:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    new-instance v5, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/makeup/d;

    invoke-direct {v5}, Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;-><init>()V

    invoke-direct {v3, v4, v5}, Lcom/perfectcorp/common/network/ResponseConverter$GsonConverter;-><init>(Lcom/perfectcorp/thirdparty/com/google/gson/Gson;Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;)V

    invoke-direct {v1, v2, v3}, Lcom/perfectcorp/common/network/RequestTask$Builder;-><init>(Lcom/perfectcorp/common/network/HttpRequestProvider;Lcom/perfectcorp/common/network/ResponseConverter;)V

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/ymk/utility/networkcache/Factory$Builder;->b(Lcom/perfectcorp/common/network/RequestTask$Builder;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;

    move-result-object v0

    return-object v0
.end method
