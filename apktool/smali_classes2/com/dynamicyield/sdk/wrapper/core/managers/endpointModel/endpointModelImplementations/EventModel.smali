.class public final Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/EventModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProtocol;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B[\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0012\u0010\u0006\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00050\u0004\"\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/EventModel;",
        "Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProtocol;",
        "Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProvider;",
        "endpointModelProvider",
        "",
        "Lcom/dynamicyield/sdk/wrapper/core/models/event/DYEvent;",
        "events",
        "",
        "addDeviceDateTime",
        "",
        "branchId",
        "Lcom/dynamicyield/sdk/wrapper/core/enums/DayPart;",
        "dayPart",
        "Lcom/dynamicyield/sdk/wrapper/core/enums/OrderFulfillment;",
        "orderFulfillment",
        "ignoreWhenMissingActiveConsentAccepted",
        "<init>",
        "(Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProvider;[Lcom/dynamicyield/sdk/wrapper/core/models/event/DYEvent;ZLjava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/enums/DayPart;Lcom/dynamicyield/sdk/wrapper/core/enums/OrderFulfillment;Z)V",
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

.field public final b:[Lcom/dynamicyield/sdk/wrapper/core/models/event/DYEvent;

.field public final c:Z

.field public final d:Ljava/lang/String;

.field public final e:Lcom/dynamicyield/sdk/wrapper/core/enums/DayPart;

.field public final f:Lcom/dynamicyield/sdk/wrapper/core/enums/OrderFulfillment;

.field public final g:Z

.field public final h:Lcom/dynamicyield/sdk/wrapper/core/enums/HttpMethod;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;


# direct methods
.method public constructor <init>(Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProvider;[Lcom/dynamicyield/sdk/wrapper/core/models/event/DYEvent;ZLjava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/enums/DayPart;Lcom/dynamicyield/sdk/wrapper/core/enums/OrderFulfillment;Z)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/EventModel;->a:Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProvider;

    iput-object p2, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/EventModel;->b:[Lcom/dynamicyield/sdk/wrapper/core/models/event/DYEvent;

    iput-boolean p3, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/EventModel;->c:Z

    iput-object p4, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/EventModel;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/EventModel;->e:Lcom/dynamicyield/sdk/wrapper/core/enums/DayPart;

    iput-object p6, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/EventModel;->f:Lcom/dynamicyield/sdk/wrapper/core/enums/OrderFulfillment;

    iput-boolean p7, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/EventModel;->g:Z

    sget-object p1, Lcom/dynamicyield/sdk/wrapper/core/enums/HttpMethod;->POST:Lcom/dynamicyield/sdk/wrapper/core/enums/HttpMethod;

    iput-object p1, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/EventModel;->h:Lcom/dynamicyield/sdk/wrapper/core/enums/HttpMethod;

    const-string p1, "collect/user/event"

    iput-object p1, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/EventModel;->i:Ljava/lang/String;

    const-string p1, "failed to send events"

    iput-object p1, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/EventModel;->j:Ljava/lang/String;

    const-string p1, "Event Endpoint"

    iput-object p1, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/EventModel;->k:Ljava/lang/String;

    new-instance p2, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;

    const/4 p3, 0x0

    const/4 p4, 0x2

    invoke-direct {p2, p1, p3, p4, p3}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;-><init>(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/EventModel;->l:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProvider;[Lcom/dynamicyield/sdk/wrapper/core/models/event/DYEvent;ZLjava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/enums/DayPart;Lcom/dynamicyield/sdk/wrapper/core/enums/OrderFulfillment;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 2

    and-int/lit8 p9, p8, 0x4

    const/4 v0, 0x1

    if-eqz p9, :cond_0

    move p3, v0

    :cond_0
    and-int/lit8 p9, p8, 0x8

    const/4 v1, 0x0

    if-eqz p9, :cond_1

    move-object p4, v1

    :cond_1
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_2

    move-object p5, v1

    :cond_2
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_3

    move-object p6, v1

    :cond_3
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_4

    move p7, v0

    .line 49
    :cond_4
    invoke-direct/range {p0 .. p7}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/EventModel;-><init>(Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProvider;[Lcom/dynamicyield/sdk/wrapper/core/models/event/DYEvent;ZLjava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/enums/DayPart;Lcom/dynamicyield/sdk/wrapper/core/enums/OrderFulfillment;Z)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;
    .locals 0

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/EventModel;->l:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/EventModel;->a:Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProvider;

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

    new-instance v2, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Device;

    iget-object v10, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/EventModel;->a:Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProvider;

    invoke-interface {v10}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProvider;->a()Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->c:Lcom/dynamicyield/sdk/wrapper/core/enums/DeviceType;

    invoke-interface {v10}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProvider;->a()Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->f:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/EventModel;->c:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    invoke-interface {v10}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProvider;->a()Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;

    move-result-object v5

    iget-object v5, v5, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->d:Ljava/lang/String;

    invoke-direct {v2, v0, v1, v3, v5}, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Device;-><init>(Lcom/dynamicyield/sdk/wrapper/core/enums/DeviceType;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/EventModel;->f:Lcom/dynamicyield/sdk/wrapper/core/enums/OrderFulfillment;

    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/EventModel;->e:Lcom/dynamicyield/sdk/wrapper/core/enums/DayPart;

    iget-object v3, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/EventModel;->d:Ljava/lang/String;

    if-nez v3, :cond_2

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v3, v4

    goto :goto_2

    :cond_2
    :goto_1
    new-instance v5, Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Branch;

    invoke-direct {v5, v3, v1, v0}, Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Branch;-><init>(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/enums/DayPart;Lcom/dynamicyield/sdk/wrapper/core/enums/OrderFulfillment;)V

    move-object v3, v5

    :goto_2
    new-instance v11, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/EventsPayload;

    invoke-interface {v10}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProvider;->getSession()Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Session;

    move-result-object v12

    invoke-interface {v10, v4, v4}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProvider;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/User;

    move-result-object v13

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;

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

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/EventModel;->b:[Lcom/dynamicyield/sdk/wrapper/core/models/event/DYEvent;

    invoke-static {p0}, Lkotlin/collections/ArraysKt;->d([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v11, v12, v13, v0, p0}, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/EventsPayload;-><init>(Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Session;Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/User;Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;Ljava/util/List;)V

    invoke-interface {v10, v11}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProvider;->c(Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/EndpointPayload;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final f()Z
    .locals 0

    iget-boolean p0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/EventModel;->g:Z

    return p0
.end method

.method public final g()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/EventModel;->i:Ljava/lang/String;

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

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/EventModel;->h:Lcom/dynamicyield/sdk/wrapper/core/enums/HttpMethod;

    return-object p0
.end method

.method public final i()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/EventModel;->j:Ljava/lang/String;

    return-object p0
.end method

.method public final j()Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProvider;
    .locals 0

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/EventModel;->a:Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProvider;

    return-object p0
.end method

.method public final k()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/endpointModelImplementations/EventModel;->k:Ljava/lang/String;

    return-object p0
.end method
