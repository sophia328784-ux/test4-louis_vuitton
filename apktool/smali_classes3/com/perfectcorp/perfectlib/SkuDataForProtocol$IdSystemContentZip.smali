.class public Lcom/perfectcorp/perfectlib/SkuDataForProtocol$IdSystemContentZip;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/SkuDataForProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IdSystemContentZip"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;

.field public final c:Lcom/perfectcorp/perfectlib/ph/template/idc/e;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 11
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$IdSystemContentZip;-><init>(Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;Lcom/perfectcorp/perfectlib/ph/template/idc/e;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;)V
    .locals 1

    .line 10
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$IdSystemContentZip;-><init>(Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;Lcom/perfectcorp/perfectlib/ph/template/idc/e;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;Lcom/perfectcorp/perfectlib/ph/template/idc/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$IdSystemContentZip;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$IdSystemContentZip;->c:Lcom/perfectcorp/perfectlib/ph/template/idc/e;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$IdSystemContentZip;->b:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)Lcom/perfectcorp/thirdparty/io/reactivex/Completable;
    .locals 5

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$d;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$IdSystemContentZip;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$d;-><init>(Ljava/util/List;)V

    new-instance v1, Lcom/perfectcorp/common/network/RequestTask$Builder;

    new-instance v2, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/HttpRequestProviderAppender;

    new-instance v3, Lzw;

    const/4 v4, 0x4

    invoke-direct {v3, v0, v4}, Lzw;-><init>(Lcom/perfectcorp/perfectlib/ymk/utility/networkcache/Factory$Builder;I)V

    invoke-direct {v2, v3}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/HttpRequestProviderAppender;-><init>(Lcom/perfectcorp/common/network/HttpRequestProvider;)V

    new-instance v3, Ly71;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ly71;-><init>(I)V

    invoke-direct {v1, v2, v3}, Lcom/perfectcorp/common/network/RequestTask$Builder;-><init>(Lcom/perfectcorp/common/network/HttpRequestProvider;Lcom/perfectcorp/common/network/ResponseConverter;)V

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/ymk/utility/networkcache/Factory$Builder;->a(Lcom/perfectcorp/common/network/RequestTask$Builder;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;

    move-result-object v0

    new-instance v1, Lex0;

    invoke-direct {v1, p0, p2, p3, p1}, Lex0;-><init>(Lcom/perfectcorp/perfectlib/SkuDataForProtocol$IdSystemContentZip;Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Ljava/lang/String;)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/n;

    invoke-direct {p0, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/n;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    return-object p0
.end method

.method public final a()Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$IdSystemContentZip;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    const-string p0, "IDC_CONTENT_ZIP"

    return-object p0
.end method

.method public final c()Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadType;
    .locals 0

    sget-object p0, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadType;->a:Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadType;

    return-object p0
.end method
