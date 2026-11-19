.class public Lcom/linkplay/lpmdpkit/okhttp/OkHttpDataUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ConnectTimeOut:I = 0xf

.field public static final ReadTimeOut:I = 0x1e

.field public static final WriteTimeOut:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHeaders()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;

    const-string v2, "http.protocol.allow-circular-redirects"

    const-string v3, "false"

    invoke-direct {v1, v2, v3}, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;

    const-string v2, "Accept"

    const-string v3, "application/json"

    invoke-direct {v1, v2, v3}, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;

    invoke-static {}, Lcom/linkplay/lpmdpkit/okhttp/HttpHeaderUtil;->makeAcceptLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Accept-Language"

    invoke-direct {v1, v3, v2}, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
