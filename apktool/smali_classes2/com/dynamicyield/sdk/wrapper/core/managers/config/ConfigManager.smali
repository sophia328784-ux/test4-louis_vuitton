.class public final Lcom/dynamicyield/sdk/wrapper/core/managers/config/ConfigManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0007\u0018\u00002\u00020\u0001B\u008f\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/dynamicyield/sdk/wrapper/core/managers/config/ConfigManager;",
        "",
        "Lcom/dynamicyield/sdk/wrapper/core/enums/DataCenter;",
        "dataCenter",
        "Lcom/dynamicyield/sdk/wrapper/core/enums/DeviceType;",
        "deviceType",
        "",
        "sharedDevice",
        "",
        "deviceId",
        "Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;",
        "channel",
        "ip",
        "locale",
        "isImplicitPageview",
        "isImplicitImpressionMode",
        "activeConsentIntegration",
        "activeConsentAccepted",
        "customUrl",
        "<init>",
        "(Lcom/dynamicyield/sdk/wrapper/core/enums/DataCenter;Lcom/dynamicyield/sdk/wrapper/core/enums/DeviceType;Ljava/lang/Boolean;Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;ZLjava/lang/Boolean;Ljava/lang/String;)V",
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
.field public final a:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;

.field public final b:Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;


# direct methods
.method public constructor <init>(Lcom/dynamicyield/sdk/wrapper/core/enums/DataCenter;Lcom/dynamicyield/sdk/wrapper/core/enums/DeviceType;Ljava/lang/Boolean;Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;ZLjava/lang/Boolean;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v1, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;

    const-string v2, "ConfigManager"

    sget-object v3, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;->DEBUG:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;

    invoke-direct {v1, v2, v3}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;-><init>(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;)V

    iput-object v1, v0, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ConfigManager;->a:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;

    .line 63
    new-instance v4, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    move-object/from16 v6, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move/from16 v14, p10

    move-object/from16 v15, p11

    move-object/from16 v16, p12

    invoke-direct/range {v4 .. v16}, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;-><init>(Lcom/dynamicyield/sdk/wrapper/core/enums/DataCenter;Ljava/lang/Boolean;Lcom/dynamicyield/sdk/wrapper/core/enums/DeviceType;Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;ZLjava/lang/Boolean;Ljava/lang/String;)V

    iput-object v4, v0, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ConfigManager;->b:Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/dynamicyield/sdk/wrapper/core/enums/DataCenter;Lcom/dynamicyield/sdk/wrapper/core/enums/DeviceType;Ljava/lang/Boolean;Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;ZLjava/lang/Boolean;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p14, p13, 0x2

    const/4 v0, 0x0

    if-eqz p14, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p14, p13, 0x4

    if-eqz p14, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p14, p13, 0x8

    if-eqz p14, :cond_2

    move-object p4, v0

    :cond_2
    and-int/lit8 p14, p13, 0x10

    if-eqz p14, :cond_3

    sget-object p5, Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;->APP:Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;

    :cond_3
    and-int/lit8 p14, p13, 0x20

    if-eqz p14, :cond_4

    move-object p6, v0

    :cond_4
    and-int/lit8 p14, p13, 0x40

    if-eqz p14, :cond_5

    move-object p7, v0

    :cond_5
    and-int/lit16 p14, p13, 0x80

    if-eqz p14, :cond_6

    move-object p8, v0

    :cond_6
    and-int/lit16 p14, p13, 0x100

    if-eqz p14, :cond_7

    move-object p9, v0

    :cond_7
    and-int/lit16 p14, p13, 0x200

    if-eqz p14, :cond_8

    const/4 p10, 0x0

    :cond_8
    and-int/lit16 p14, p13, 0x400

    if-eqz p14, :cond_9

    move-object p11, v0

    :cond_9
    and-int/lit16 p13, p13, 0x800

    if-eqz p13, :cond_a

    move-object p12, v0

    :cond_a
    invoke-direct/range {p0 .. p12}, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ConfigManager;-><init>(Lcom/dynamicyield/sdk/wrapper/core/enums/DataCenter;Lcom/dynamicyield/sdk/wrapper/core/enums/DeviceType;Ljava/lang/Boolean;Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/enums/Channel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;ZLjava/lang/Boolean;Ljava/lang/String;)V

    return-void
.end method
