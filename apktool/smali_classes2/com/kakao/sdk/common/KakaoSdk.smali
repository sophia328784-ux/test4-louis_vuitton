.class public abstract Lcom/kakao/sdk/common/KakaoSdk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/common/KakaoSdk$Type;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/kakao/sdk/common/KakaoSdk;",
        "",
        "Type",
        "common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static a:Lcom/kakao/sdk/common/model/ApplicationContextInfo;

.field public static b:Lcom/kakao/sdk/common/model/ServerHosts;

.field public static c:Z

.field public static d:Lcom/kakao/sdk/common/model/ApprovalType;


# direct methods
.method public static a()Lcom/kakao/sdk/common/model/ApplicationContextInfo;
    .locals 1

    sget-object v0, Lcom/kakao/sdk/common/KakaoSdk;->a:Lcom/kakao/sdk/common/model/ApplicationContextInfo;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "applicationContextInfo"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public static b()Lcom/kakao/sdk/common/model/ServerHosts;
    .locals 1

    sget-object v0, Lcom/kakao/sdk/common/KakaoSdk;->b:Lcom/kakao/sdk/common/model/ServerHosts;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "hosts"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
