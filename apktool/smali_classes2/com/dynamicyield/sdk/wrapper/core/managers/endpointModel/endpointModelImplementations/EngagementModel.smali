.class public final Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/EngagementModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProtocol;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001BE\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0012\u0010\u0006\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00050\u0004\"\u00020\u0005\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/EngagementModel;",
        "Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProtocol;",
        "Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProvider;",
        "endpointModelProvider",
        "",
        "Lcom/dynamicyield/sdk/wrapper/core/models/engagment/BaseEngagement;",
        "engagements",
        "",
        "branchId",
        "Lcom/dynamicyield/sdk/wrapper/core/enums/DayPart;",
        "dayPart",
        "",
        "ignoreWhenMissingActiveConsentAccepted",
        "<init>",
        "(Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProvider;[Lcom/dynamicyield/sdk/wrapper/core/models/engagment/BaseEngagement;Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/enums/DayPart;Z)V",
        "DY-Sdk_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProvider;

.field public final b:[Lcom/dynamicyield/sdk/wrapper/core/models/engagment/BaseEngagement;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/dynamicyield/sdk/wrapper/core/enums/DayPart;

.field public final e:Z

.field public final f:Lcom/dynamicyield/sdk/wrapper/core/enums/HttpMethod;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;

.field public final j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProvider;[Lcom/dynamicyield/sdk/wrapper/core/models/engagment/BaseEngagement;Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/enums/DayPart;Z)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/EngagementModel;->a:Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProvider;

    iput-object p2, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/EngagementModel;->b:[Lcom/dynamicyield/sdk/wrapper/core/models/engagment/BaseEngagement;

    iput-object p3, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/EngagementModel;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/EngagementModel;->d:Lcom/dynamicyield/sdk/wrapper/core/enums/DayPart;

    iput-boolean p5, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/EngagementModel;->e:Z

    sget-object p1, Lcom/dynamicyield/sdk/wrapper/core/enums/HttpMethod;->POST:Lcom/dynamicyield/sdk/wrapper/core/enums/HttpMethod;

    iput-object p1, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/EngagementModel;->f:Lcom/dynamicyield/sdk/wrapper/core/enums/HttpMethod;

    const-string p1, "failed to send engagement"

    iput-object p1, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/EngagementModel;->g:Ljava/lang/String;

    const-string p1, "Engagement Endpoint"

    iput-object p1, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/EngagementModel;->h:Ljava/lang/String;

    new-instance p2, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;

    const/4 p3, 0x0

    const/4 p4, 0x2

    invoke-direct {p2, p1, p3, p4, p3}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;-><init>(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/EngagementModel;->i:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;

    const-string p1, "collect/user/engagement"

    iput-object p1, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/EngagementModel;->j:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProvider;[Lcom/dynamicyield/sdk/wrapper/core/models/engagment/BaseEngagement;Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/enums/DayPart;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object p3, v0

    :cond_0
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_1

    move-object p4, v0

    :cond_1
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_2

    const/4 p5, 0x1

    .line 45
    :cond_2
    invoke-direct/range {p0 .. p5}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/EngagementModel;-><init>(Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProvider;[Lcom/dynamicyield/sdk/wrapper/core/models/engagment/BaseEngagement;Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/enums/DayPart;Z)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;
    .locals 0

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/EngagementModel;->i:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/EngagementModel;->a:Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProvider;

    invoke-interface {p0, p1}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProvider;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final c(Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Exception;)Lcom/dynamicyield/sdk/wrapper/core/enums/ResultStatus;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProtocol$DefaultImpls;->b(Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProtocol;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Exception;)Lcom/dynamicyield/sdk/wrapper/core/enums/ResultStatus;

    move-result-object p0

    return-object p0
.end method

.method public final d(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcom/dynamicyield/sdk/wrapper/core/models/exception/NetworkFailedException;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProtocol$DefaultImpls;->a(Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProtocol;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcom/dynamicyield/sdk/wrapper/core/models/exception/NetworkFailedException;

    move-result-object p0

    return-object p0
.end method

.method public final e()Ljava/lang/String;
    .locals 14

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Device;

    iget-object v10, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/EngagementModel;->a:Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProvider;

    invoke-interface {v10}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProvider;->a()Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;

    move-result-object v1

    iget-object v2, v1, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->f:Ljava/lang/String;

    const/16 v5, 0xd

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Device;-><init>(Lcom/dynamicyield/sdk/wrapper/core/enums/DeviceType;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v11, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/EngagementsPayload;

    invoke-interface {v10}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProvider;->getSession()Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Session;

    move-result-object v12

    invoke-interface {v10, v1, v1}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProvider;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/User;

    move-result-object v13

    move-object v2, v0

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;

    iget-object v3, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/EngagementModel;->d:Lcom/dynamicyield/sdk/wrapper/core/enums/DayPart;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/EngagementModel;->c:Ljava/lang/String;

    if-eqz v3, :cond_0

    new-instance v4, Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Branch;

    const/4 v8, 0x4

    const/4 v9, 0x0

    iget-object v5, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/EngagementModel;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/EngagementModel;->d:Lcom/dynamicyield/sdk/wrapper/core/enums/DayPart;

    const/4 v7, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Branch;-><init>(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/enums/DayPart;Lcom/dynamicyield/sdk/wrapper/core/enums/OrderFulfillment;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v3, v4

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    invoke-interface {v10}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProvider;->a()Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;

    move-result-object v1

    iget-object v4, v1, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->e:Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;

    const/16 v8, 0x71

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;-><init>(Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Device;Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Branch;Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;Ljava/util/List;Ljava/util/Map;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/EngagementModel;->b:[Lcom/dynamicyield/sdk/wrapper/core/models/engagment/BaseEngagement;

    invoke-static {p0}, Lkotlin/collections/ArraysKt;->d([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v11, v12, v13, v0, p0}, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/EngagementsPayload;-><init>(Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Session;Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/User;Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;Ljava/util/List;)V

    invoke-interface {v10, v11}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProvider;->c(Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/EndpointPayload;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final f()Z
    .locals 0

    iget-boolean p0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/EngagementModel;->e:Z

    return p0
.end method

.method public final g()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/EngagementModel;->j:Ljava/lang/String;

    return-object p0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProtocol$DefaultImpls;->c(Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProtocol;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final h()Lcom/dynamicyield/sdk/wrapper/core/enums/HttpMethod;
    .locals 0

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/EngagementModel;->f:Lcom/dynamicyield/sdk/wrapper/core/enums/HttpMethod;

    return-object p0
.end method

.method public final i()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/EngagementModel;->g:Ljava/lang/String;

    return-object p0
.end method

.method public final j()Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProvider;
    .locals 0

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/EngagementModel;->a:Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProvider;

    return-object p0
.end method

.method public final k()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/EngagementModel;->h:Ljava/lang/String;

    return-object p0
.end method
