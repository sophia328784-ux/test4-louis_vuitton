.class public final Lcom/dynatrace/agent/communication/network/response/ServerConfigurationManagerV4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynatrace/agent/communication/network/response/ServerConfigurationManagerV4$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/dynatrace/agent/communication/network/response/ServerConfigurationManagerV4;",
        "",
        "<init>",
        "()V",
        "Companion",
        "com.dynatrace.agent_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dynatrace/agent/communication/network/response/ServerConfigurationManagerV4$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/communication/network/response/ServerConfigurationManagerV4$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/dynatrace/agent/communication/api/AgentState;
    .locals 3

    const-string v0, "status"

    invoke-static {v0, p0}, Lcom/dynatrace/agent/communication/network/response/JsonExtensionKt;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/dynatrace/agent/communication/network/response/ServerConfigurationManagerV4Kt;->a:[Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/collections/ArraysKt;->f(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "config parsing error: unknown status value"

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    return-object v1

    :cond_0
    const-string v0, "dynamicConfig"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_6

    const-string v0, "state"

    invoke-static {v0, p0}, Lcom/dynatrace/agent/communication/network/response/JsonExtensionKt;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v2, -0x5ff074bf

    if-eq v0, v2, :cond_5

    const v2, 0x10263a7c

    if-eq v0, v2, :cond_3

    const v2, 0x3042643b

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "priority=high"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/dynatrace/agent/communication/api/AgentState$Enabled;

    const/4 p0, 0x1

    invoke-direct {v1, p0}, Lcom/dynatrace/agent/communication/api/AgentState$Enabled;-><init>(Z)V

    goto :goto_0

    :cond_3
    const-string v0, "disabled"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/dynatrace/agent/communication/api/AgentState$Disabled;->a:Lcom/dynatrace/agent/communication/api/AgentState$Disabled;

    goto :goto_0

    :cond_5
    const-string v0, "enabled"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    new-instance v1, Lcom/dynatrace/agent/communication/api/AgentState$Enabled;

    const/4 p0, 0x0

    invoke-direct {v1, p0}, Lcom/dynatrace/agent/communication/api/AgentState$Enabled;-><init>(Z)V

    :cond_6
    :goto_0
    if-nez v1, :cond_7

    const-string p0, "config parsing error: unknown agent state"

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    :cond_7
    return-object v1
.end method

.method public static b(Ljava/lang/String;Lorg/json/JSONObject;J)Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;
    .locals 16

    move-object/from16 v0, p1

    const-string v1, "environmentConfig"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "appConfig"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    if-nez v0, :cond_0

    goto/16 :goto_7

    :cond_0
    const-string v3, "applicationId"

    invoke-static {v3, v0}, Lcom/dynatrace/agent/communication/network/response/JsonExtensionKt;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p0

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v0, "config parsing error: appId mismatch"

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    return-object v2

    :cond_1
    new-instance v3, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;

    const-string v4, "maxBeaconSizeKib"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v1

    goto :goto_0

    :cond_3
    move-object v5, v2

    :goto_0
    const/16 v6, 0x100

    const/16 v7, 0x400

    if-eqz v5, :cond_4

    const/16 v8, 0x2800

    invoke-static {v5, v4, v6, v8, v7}, Lcom/dynatrace/agent/communication/network/response/ServerConfigurationManagerV4Kt;->a(Lorg/json/JSONObject;Ljava/lang/String;III)I

    move-result v4

    goto :goto_1

    :cond_4
    move v4, v7

    :goto_1
    const-string v5, "maxEventSizeKib"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    move-object v2, v0

    goto :goto_2

    :cond_5
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    move-object v2, v1

    :cond_6
    :goto_2
    if-eqz v2, :cond_7

    const/16 v8, 0x80

    invoke-static {v2, v5, v8, v7, v6}, Lcom/dynatrace/agent/communication/network/response/ServerConfigurationManagerV4Kt;->a(Lorg/json/JSONObject;Ljava/lang/String;III)I

    move-result v6

    :cond_7
    move v7, v6

    const-string v2, "capture"

    const/4 v5, 0x1

    invoke-virtual {v0, v2, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8

    const-string v2, "userInteractionCapture"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v6, 0x0

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v9

    invoke-static {v6, v9}, Lkotlin/ranges/RangesKt;->j(II)Lkotlin/ranges/IntRange;

    move-result-object v9

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9}, Lkotlin/ranges/IntProgression;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_8
    :goto_3
    move-object v11, v9

    check-cast v11, Lkotlin/ranges/IntProgressionIterator;

    iget-boolean v11, v11, Lkotlin/ranges/IntProgressionIterator;->d:Z

    if-eqz v11, :cond_9

    move-object v11, v9

    check-cast v11, Lkotlin/collections/IntIterator;

    invoke-virtual {v11}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v11

    invoke-virtual {v2, v11}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_8

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_a
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_a

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_b
    :goto_5
    move-object v9, v2

    goto :goto_6

    :cond_c
    sget-object v2, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    goto :goto_5

    :goto_6
    const-string v2, "tracestateKeyPrefix"

    invoke-static {v2, v1}, Lcom/dynatrace/agent/communication/network/response/JsonExtensionKt;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_d

    const-string v1, ""

    :cond_d
    move-object v10, v1

    const-string v1, "traceContext"

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v11

    const-string v1, "uaEnable"

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v12

    const-string v1, "uaActivityEndDelayMs"

    const/16 v2, 0x1388

    const/16 v5, 0x64

    invoke-static {v0, v1, v6, v2, v5}, Lcom/dynatrace/agent/communication/network/response/ServerConfigurationManagerV4Kt;->a(Lorg/json/JSONObject;Ljava/lang/String;III)I

    move-result v13

    const-string v1, "uaActivityValidationDelayMs"

    invoke-static {v0, v1, v6, v2, v5}, Lcom/dynatrace/agent/communication/network/response/ServerConfigurationManagerV4Kt;->a(Lorg/json/JSONObject;Ljava/lang/String;III)I

    move-result v14

    const v1, 0x2bf20

    const v2, 0xc350

    const-string v5, "uaMaxDurationMs"

    const/16 v6, 0x3e8

    invoke-static {v0, v5, v6, v1, v2}, Lcom/dynatrace/agent/communication/network/response/ServerConfigurationManagerV4Kt;->a(Lorg/json/JSONObject;Ljava/lang/String;III)I

    move-result v15

    move v6, v4

    move-wide/from16 v4, p2

    invoke-direct/range {v3 .. v15}, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;-><init>(JIIZLjava/util/List;Ljava/lang/String;ZZIII)V

    return-object v3

    :cond_e
    :goto_7
    const-string v0, "config parsing error: invalid config update"

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    return-object v2
.end method
