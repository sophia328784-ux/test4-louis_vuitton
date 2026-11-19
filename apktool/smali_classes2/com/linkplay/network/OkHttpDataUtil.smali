.class public Lcom/linkplay/network/OkHttpDataUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static ConnectTimeOut:I = 0xf

.field private static ReadTimeOut:I = 0x1e

.field private static WriteTimeOut:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConnectTimeOut()I
    .locals 1

    sget v0, Lcom/linkplay/network/OkHttpDataUtil;->ConnectTimeOut:I

    return v0
.end method

.method public static getHeaders()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/linkplay/network/HttpRequestUtils$Param;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/linkplay/network/HttpRequestUtils$Param;

    const-string v2, "Content-Type"

    const-string v3, "application/json"

    invoke-direct {v1, v2, v3}, Lcom/linkplay/network/HttpRequestUtils$Param;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getReadTimeOut()I
    .locals 1

    sget v0, Lcom/linkplay/network/OkHttpDataUtil;->ReadTimeOut:I

    return v0
.end method

.method public static getWriteTimeOut()I
    .locals 1

    sget v0, Lcom/linkplay/network/OkHttpDataUtil;->WriteTimeOut:I

    return v0
.end method

.method public static setConnectTimeOut(I)V
    .locals 0

    sput p0, Lcom/linkplay/network/OkHttpDataUtil;->ConnectTimeOut:I

    return-void
.end method

.method public static setReadTimeOut(I)V
    .locals 0

    sput p0, Lcom/linkplay/network/OkHttpDataUtil;->ReadTimeOut:I

    return-void
.end method

.method public static setWriteTimeOut(I)V
    .locals 0

    sput p0, Lcom/linkplay/network/OkHttpDataUtil;->WriteTimeOut:I

    return-void
.end method
