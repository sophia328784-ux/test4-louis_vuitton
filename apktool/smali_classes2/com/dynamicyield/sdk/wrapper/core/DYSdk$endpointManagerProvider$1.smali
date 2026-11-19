.class public final Lcom/dynamicyield/sdk/wrapper/core/DYSdk$endpointManagerProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProvider;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/dynamicyield/sdk/wrapper/core/DYSdk$endpointManagerProvider$1",
        "Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProvider;",
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
.field public final synthetic a:Lcom/dynamicyield/sdk/wrapper/core/DYSdk;


# direct methods
.method public constructor <init>(Lcom/dynamicyield/sdk/wrapper/core/DYSdk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynamicyield/sdk/wrapper/core/DYSdk$endpointManagerProvider$1;->a:Lcom/dynamicyield/sdk/wrapper/core/DYSdk;

    return-void
.end method


# virtual methods
.method public final a()Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;
    .locals 0

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/DYSdk$endpointManagerProvider$1;->a:Lcom/dynamicyield/sdk/wrapper/core/DYSdk;

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->b:Lcom/dynamicyield/sdk/wrapper/core/managers/config/ConfigManager;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ConfigManager;->b:Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;

    return-object p0

    :cond_0
    const-string p0, "configManager"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/User;
    .locals 0

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/DYSdk$endpointManagerProvider$1;->a:Lcom/dynamicyield/sdk/wrapper/core/DYSdk;

    invoke-virtual {p0}, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->b()Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManager;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/User;

    move-result-object p0

    return-object p0
.end method

.method public final c(Ljava/util/List;)Z
    .locals 18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dynamicyield/sdk/wrapper/core/DYSdk$endpointManagerProvider$1;->a:Lcom/dynamicyield/sdk/wrapper/core/DYSdk;

    invoke-virtual {v0}, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->b()Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManager;

    move-result-object v0

    iget-object v1, v0, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManager;->d:Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/StorageManager;

    iget-object v2, v0, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManager;->a:Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManagerProvider;

    iget-object v3, v0, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManager;->c:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;

    const-string v4, "updateCookies"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;->a(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;)V

    iget-object v0, v0, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManager;->b:Ljava/lang/Boolean;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_0

    invoke-interface {v2}, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManagerProvider;->a()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManagerProvider;->b()Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v0, "updateCookies: User has not accepted the consent, cookies will not be updated."

    invoke-virtual {v3, v0, v5}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;->a(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;)V

    return v7

    :cond_0
    const-string v2, ", maxAge:"

    const-wide/16 v8, 0x3e8

    const/4 v4, 0x0

    if-eqz p1, :cond_7

    move-object/from16 v6, p1

    check-cast v6, Ljava/lang/Iterable;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Cookie;

    iget-object v11, v11, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Cookie;->a:Ljava/lang/String;

    const-string v12, "_dyjsession"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    goto :goto_0

    :cond_2
    move-object v10, v5

    :goto_0
    check-cast v10, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Cookie;

    if-eqz v10, :cond_7

    iget-object v6, v10, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Cookie;->b:Ljava/lang/String;

    iget-object v10, v10, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Cookie;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v10, :cond_3

    invoke-static {v10}, Lkotlin/text/StringsKt;->Z(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    if-eqz v11, :cond_3

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    goto :goto_1

    :cond_3
    const-wide/16 v11, 0x708

    :goto_1
    iget-object v13, v1, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/StorageManager;->b:Landroid/content/SharedPreferences;

    if-eqz v13, :cond_4

    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    goto :goto_2

    :cond_4
    move-object v13, v5

    :goto_2
    if-nez v13, :cond_5

    goto :goto_3

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    mul-long/2addr v11, v8

    add-long/2addr v11, v14

    const-string v14, "session_expiration"

    invoke-interface {v13, v14, v11, v12}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iput-object v11, v1, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/StorageManager;->f:Ljava/lang/Long;

    iget-object v11, v1, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/StorageManager;->e:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    const-string v11, "session"

    invoke-interface {v13, v11, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_6
    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-object v6, v1, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/StorageManager;->e:Ljava/lang/String;

    iget-object v11, v1, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/StorageManager;->a:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;

    const-string v12, "current session:"

    invoke-static {v12, v6, v2, v10}, Lfc;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6, v5}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;->a(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;)V

    move v6, v7

    goto :goto_4

    :cond_7
    :goto_3
    move v6, v4

    :goto_4
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/16 v10, 0xa

    const-string v11, "updateCookies: success? -> "

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v5}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;->a(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;)V

    return v6

    :cond_8
    if-eqz p1, :cond_f

    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Cookie;

    iget-object v13, v13, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Cookie;->a:Ljava/lang/String;

    const-string v14, "_dyid_server"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    goto :goto_5

    :cond_a
    move-object v12, v5

    :goto_5
    check-cast v12, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Cookie;

    if-eqz v12, :cond_f

    iget-object v0, v12, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Cookie;->b:Ljava/lang/String;

    iget-object v12, v12, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Cookie;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v12, :cond_b

    invoke-static {v12}, Lkotlin/text/StringsKt;->Z(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    if-eqz v13, :cond_b

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    goto :goto_6

    :cond_b
    const-wide/32 v13, 0x1e1853e

    :goto_6
    iget-object v15, v1, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/StorageManager;->b:Landroid/content/SharedPreferences;

    if-eqz v15, :cond_c

    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    goto :goto_7

    :cond_c
    move-object v15, v5

    :goto_7
    if-nez v15, :cond_d

    goto :goto_8

    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    mul-long/2addr v13, v8

    add-long v13, v13, v16

    const-string v8, "dyid_expiration"

    invoke-interface {v15, v8, v13, v14}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, v1, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/StorageManager;->d:Ljava/lang/Long;

    iget-object v8, v1, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/StorageManager;->c:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e

    const-string v8, "dyid"

    invoke-interface {v15, v8, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_e
    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-object v0, v1, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/StorageManager;->c:Ljava/lang/String;

    iget-object v0, v1, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/StorageManager;->a:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "current dyid:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/StorageManager;->c:Ljava/lang/String;

    invoke-static {v8, v1, v2, v12}, Ld21;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;->a(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;)V

    move v0, v7

    goto :goto_9

    :cond_f
    :goto_8
    move v0, v4

    :goto_9
    if-eqz v6, :cond_10

    if-eqz v0, :cond_10

    goto :goto_a

    :cond_10
    move v7, v4

    :goto_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v5}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;->a(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;)V

    return v7
.end method

.method public final d(Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProtocol;)Lcom/dynamicyield/sdk/wrapper/core/managers/network/RawNetworkData;
    .locals 14

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/DYSdk$endpointManagerProvider$1;->a:Lcom/dynamicyield/sdk/wrapper/core/DYSdk;

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->c:Lcom/dynamicyield/sdk/wrapper/core/managers/network/NetworkManager;

    const/4 v1, 0x0

    if-eqz p0, :cond_a

    iget-object v0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/network/NetworkManager;->d:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;

    const-string v2, "sendRequest"

    invoke-virtual {v0, v2, v1}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;->a(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;)V

    new-instance v2, Lcom/dynamicyield/sdk/wrapper/core/managers/network/HttpNetwork;

    invoke-direct {v2}, Lcom/dynamicyield/sdk/wrapper/core/managers/network/HttpNetwork;-><init>()V

    invoke-interface {p1}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProtocol;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProtocol;->h()Lcom/dynamicyield/sdk/wrapper/core/enums/HttpMethod;

    move-result-object v4

    invoke-interface {p1}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProtocol;->e()Ljava/lang/String;

    move-result-object v10

    const-string v5, "getHeaders"

    invoke-virtual {v0, v5, v1}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;->a(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;)V

    new-instance v0, Lkotlin/Pair;

    const-string v5, "accept"

    const-string v6, "application/json"

    invoke-direct {v0, v5, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Lkotlin/Pair;

    const-string v7, "content-type"

    invoke-direct {v5, v7, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/network/NetworkManager;->a:Ljava/lang/String;

    new-instance v7, Lkotlin/Pair;

    const-string v8, "DY-API-Key"

    invoke-direct {v7, v8, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/network/NetworkManager;->b:Ljava/lang/String;

    new-instance v8, Lkotlin/Pair;

    const-string v9, "DY-SDK-Version"

    invoke-direct {v8, v9, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v0, v5, v7, v8}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->i([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    iget p0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/network/NetworkManager;->c:I

    new-instance v5, Lkotlin/UInt;

    invoke-direct {v5, p0}, Lkotlin/UInt;-><init>(I)V

    iget-object p0, v2, Lcom/dynamicyield/sdk/wrapper/core/managers/network/HttpNetwork;->a:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1, v3, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    invoke-static {v2}, Lcom/dynatrace/android/callback/Callback;->C(Ljava/net/URLConnection;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v6, 0x1

    if-eqz v10, :cond_1

    sget-object v7, Lcom/dynamicyield/sdk/wrapper/core/enums/HttpMethod;->POST:Lcom/dynamicyield/sdk/wrapper/core/enums/HttpMethod;

    if-eq v4, v7, :cond_0

    sget-object v7, Lcom/dynamicyield/sdk/wrapper/core/enums/HttpMethod;->PUT:Lcom/dynamicyield/sdk/wrapper/core/enums/HttpMethod;

    if-ne v4, v7, :cond_1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    move-object v1, v2

    goto/16 :goto_8

    :cond_0
    :goto_0
    invoke-virtual {v2, v6}, Ljava/net/URLConnection;->setDoOutput(Z)V

    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v2, v11, v8}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget v5, v5, Lkotlin/UInt;->b:I

    mul-int/lit16 v5, v5, 0x3e8

    invoke-virtual {v2, v5}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v2, v5}, Ljava/net/URLConnection;->setReadTimeout(I)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "request path: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/LoggingUtils;->a:Ljava/util/Set;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_3

    const-string v3, "/"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    :try_start_3
    const-string v3, "[invalid-url]"

    :cond_3
    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", method: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", headers: ["

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/LoggingUtils;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x5d

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;->DEBUG:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;

    invoke-virtual {p0, v3, v5}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;->a(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;)V

    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-static {v2}, Lcom/dynatrace/android/callback/Callback;->i(Ljava/net/HttpURLConnection;)Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v3, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flush()V

    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V

    invoke-static {v2}, Lcom/dynatrace/android/callback/Callback;->k(Ljava/net/HttpURLConnection;)I

    move-result v3

    const/16 v5, 0x12c

    const/16 v7, 0xc8

    if-gt v7, v3, :cond_4

    if-ge v3, v5, :cond_4

    invoke-static {v2}, Lcom/dynatrace/android/callback/Callback;->g(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v8

    goto :goto_3

    :cond_4
    invoke-static {v2}, Lcom/dynatrace/android/callback/Callback;->d(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v8

    :goto_3
    if-eqz v8, :cond_6

    new-instance v4, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-direct {v11, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    :goto_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_5

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_5
    move v8, v5

    goto :goto_6

    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " Request failed"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v8, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;->WARN:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;

    invoke-virtual {p0, v4, v8}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;->a(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;)V

    move-object v4, v1

    goto :goto_5

    :goto_6
    new-instance v5, Lcom/dynamicyield/sdk/wrapper/core/managers/network/RawNetworkData;

    move v11, v6

    invoke-static {v2}, Lcom/dynatrace/android/callback/Callback;->k(Ljava/net/HttpURLConnection;)I

    move-result v6

    move v12, v7

    invoke-static {v2}, Lcom/dynatrace/android/callback/Callback;->l(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v13, 0x0

    if-gt v12, v3, :cond_7

    if-ge v3, v8, :cond_7

    move v8, v11

    goto :goto_7

    :cond_7
    move v8, v13

    :goto_7
    invoke-interface {v0, v9, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    move-object v9, v4

    invoke-direct/range {v5 .. v11}, Lcom/dynamicyield/sdk/wrapper/core/managers/network/RawNetworkData;-><init>(ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    iget-boolean p0, v5, Lcom/dynamicyield/sdk/wrapper/core/managers/network/RawNetworkData;->c:Z

    if-nez p0, :cond_8

    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LoggingManager;->a:Ljava/util/ArrayList;

    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;->DEBUG:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;

    invoke-interface {p1}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProtocol;->k()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProtocol;->i()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LoggingManager;->a(Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-object v5

    :catch_2
    move-exception v0

    move-object p1, v0

    :goto_8
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;->ERROR:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;

    invoke-virtual {p0, v0, v1}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;->a(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;)V

    throw p1

    :cond_a
    const-string p0, "networkManager"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v1
.end method

.method public final e()Z
    .locals 1

    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->k:Lcom/dynamicyield/sdk/wrapper/core/DYSdk$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->l:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/DYSdk$endpointManagerProvider$1;->a:Lcom/dynamicyield/sdk/wrapper/core/DYSdk;

    const-string v0, "isSdkInitialize"

    invoke-virtual {p0, v0}, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->c(Ljava/lang/String;)V

    :cond_0
    sget-boolean p0, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->l:Z

    return p0
.end method

.method public final getSession()Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Session;
    .locals 0

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/DYSdk$endpointManagerProvider$1;->a:Lcom/dynamicyield/sdk/wrapper/core/DYSdk;

    invoke-virtual {p0}, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->b()Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManager;->a()Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Session;

    move-result-object p0

    return-object p0
.end method
