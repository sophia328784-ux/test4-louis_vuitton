.class public final Lcom/kakao/sdk/auth/TokenManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kakao/sdk/auth/TokenManageable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/auth/TokenManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\u0008B\u001b\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/kakao/sdk/auth/TokenManager;",
        "Lcom/kakao/sdk/auth/TokenManageable;",
        "Lcom/kakao/sdk/common/util/PersistentKVStore;",
        "appCache",
        "Lcom/kakao/sdk/common/util/Cipher;",
        "encryptor",
        "<init>",
        "(Lcom/kakao/sdk/common/util/PersistentKVStore;Lcom/kakao/sdk/common/util/Cipher;)V",
        "Companion",
        "auth_release"
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
.field public static final d:Lcom/kakao/sdk/auth/TokenManager$Companion;

.field public static final e:Lkotlin/Lazy;


# instance fields
.field public final a:Lcom/kakao/sdk/common/util/PersistentKVStore;

.field public final b:Lcom/kakao/sdk/common/util/Cipher;

.field public c:Lcom/kakao/sdk/auth/model/OAuthToken;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakao/sdk/auth/TokenManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakao/sdk/auth/TokenManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakao/sdk/auth/TokenManager;->d:Lcom/kakao/sdk/auth/TokenManager$Companion;

    sget-object v0, Lcom/kakao/sdk/auth/TokenManager$Companion$instance$2;->c:Lcom/kakao/sdk/auth/TokenManager$Companion$instance$2;

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/auth/TokenManager;->e:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 467
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/kakao/sdk/auth/TokenManager;-><init>(Lcom/kakao/sdk/common/util/PersistentKVStore;Lcom/kakao/sdk/common/util/Cipher;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/kakao/sdk/common/util/PersistentKVStore;Lcom/kakao/sdk/common/util/Cipher;)V
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v2, v1, Lcom/kakao/sdk/auth/TokenManager;->a:Lcom/kakao/sdk/common/util/PersistentKVStore;

    iput-object v3, v1, Lcom/kakao/sdk/auth/TokenManager;->b:Lcom/kakao/sdk/common/util/Cipher;

    const-string v0, "com.kakao.sdk.version"

    invoke-interface {v2, v0}, Lcom/kakao/sdk/common/util/PersistentKVStore;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.kakao.sdk.oauth_token"

    if-nez v4, :cond_a

    const-string v4, "com.kakao.token.RefreshToken.ExpiresAt"

    const-string v7, "com.kakao.token.OAuthToken.ExpiresAt"

    const-string v8, "com.kakao.token.RefreshToken"

    const-string v9, "true"

    const-string v10, "com.kakao.token.AccessToken"

    sget-object v11, Lcom/kakao/sdk/common/util/SdkLog;->d:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v11, "=== Migrate from old version token"

    invoke-static {v11}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->b(Ljava/lang/Object;)V

    const-string v11, "2.20.6"

    invoke-interface {v2, v0, v11}, Lcom/kakao/sdk/common/util/PersistentKVStore;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/kakao/sdk/common/util/SharedPrefsWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakao/sdk/common/util/SharedPrefsWrapper;->a()Lcom/kakao/sdk/common/util/SharedPrefsWrapper;

    const-string v11, "com.kakao.token.KakaoSecureMode"

    invoke-interface {v2, v11}, Lcom/kakao/sdk/common/util/PersistentKVStore;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v12, "value"

    const-class v13, Lcom/google/gson/JsonObject;

    if-eqz v0, :cond_0

    sget-object v14, Lcom/kakao/sdk/common/util/KakaoJson;->a:Lcom/google/gson/Gson;

    invoke-virtual {v14, v0, v13}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    invoke-virtual {v0, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "false"

    :cond_1
    move-object v14, v0

    const-string v0, "secureMode: "

    invoke-virtual {v0, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->b(Ljava/lang/Object;)V

    :try_start_0
    invoke-interface {v2, v10}, Lcom/kakao/sdk/common/util/PersistentKVStore;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v15, Lcom/kakao/sdk/common/util/KakaoJson;->a:Lcom/google/gson/Gson;

    invoke-virtual {v15, v0, v13}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    invoke-virtual {v0, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v14, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v3, v0}, Lcom/kakao/sdk/common/util/Cipher;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_1
    move-object v15, v0

    goto :goto_3

    :goto_2
    sget-object v15, Lcom/kakao/sdk/common/util/SdkLog;->d:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->a(Ljava/io/Serializable;)V

    const/4 v15, 0x0

    :goto_3
    sget-object v0, Lcom/kakao/sdk/common/util/SdkLog;->d:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    const-string v0, "accessToken: "

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->b(Ljava/lang/Object;)V

    :try_start_1
    invoke-interface {v2, v8}, Lcom/kakao/sdk/common/util/PersistentKVStore;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v6, Lcom/kakao/sdk/common/util/KakaoJson;->a:Lcom/google/gson/Gson;

    invoke-virtual {v6, v0, v13}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    invoke-virtual {v0, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v14, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3, v0}, Lcom/kakao/sdk/common/util/Cipher;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :cond_5
    :goto_4
    move-object v6, v0

    goto :goto_6

    :goto_5
    sget-object v6, Lcom/kakao/sdk/common/util/SdkLog;->d:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->a(Ljava/io/Serializable;)V

    const/4 v6, 0x0

    :goto_6
    sget-object v0, Lcom/kakao/sdk/common/util/SdkLog;->d:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v14, "refreshToken: "

    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->b(Ljava/lang/Object;)V

    :try_start_2
    invoke-interface {v2, v7}, Lcom/kakao/sdk/common/util/PersistentKVStore;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    sget-object v9, Lcom/kakao/sdk/common/util/KakaoJson;->a:Lcom/google/gson/Gson;

    invoke-virtual {v9, v0, v13}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    invoke-virtual {v0, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_7

    :catch_2
    move-exception v0

    sget-object v9, Lcom/kakao/sdk/common/util/SdkLog;->d:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->a(Ljava/io/Serializable;)V

    :cond_6
    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    :goto_8
    move-object v9, v15

    move-wide/from16 v14, v16

    goto :goto_9

    :cond_7
    const-wide/16 v16, 0x0

    goto :goto_8

    :goto_9
    :try_start_3
    invoke-interface {v2, v4}, Lcom/kakao/sdk/common/util/PersistentKVStore;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    if-eqz v0, :cond_8

    move-object/from16 v19, v6

    :try_start_4
    sget-object v6, Lcom/kakao/sdk/common/util/KakaoJson;->a:Lcom/google/gson/Gson;

    invoke-virtual {v6, v0, v13}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    invoke-virtual {v0, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_c

    :catch_3
    move-exception v0

    goto :goto_a

    :cond_8
    move-object/from16 v19, v6

    goto :goto_b

    :catch_4
    move-exception v0

    move-object/from16 v19, v6

    :goto_a
    sget-object v6, Lcom/kakao/sdk/common/util/SdkLog;->d:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->a(Ljava/io/Serializable;)V

    :goto_b
    const/4 v0, 0x0

    :goto_c
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    goto :goto_d

    :cond_9
    const-wide v12, 0x7fffffffffffffffL

    :goto_d
    if-eqz v9, :cond_a

    if-eqz v19, :cond_a

    new-instance v16, Lcom/kakao/sdk/auth/model/OAuthToken;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v14, v15}, Ljava/util/Date;-><init>(J)V

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v12, v13}, Ljava/util/Date;-><init>(J)V

    const/16 v23, 0x30

    const/16 v24, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v18, v0

    move-object/from16 v20, v6

    move-object/from16 v17, v9

    invoke-direct/range {v16 .. v24}, Lcom/kakao/sdk/auth/model/OAuthToken;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, v16

    sget-object v6, Lcom/kakao/sdk/common/util/KakaoJson;->a:Lcom/google/gson/Gson;

    invoke-virtual {v6, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v3, v0}, Lcom/kakao/sdk/common/util/Cipher;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v5, v0}, Lcom/kakao/sdk/common/util/PersistentKVStore;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/kakao/sdk/common/util/SharedPrefsWrapper;

    move-result-object v0

    iget-object v2, v0, Lcom/kakao/sdk/common/util/SharedPrefsWrapper;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2, v11}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {v0}, Lcom/kakao/sdk/common/util/SharedPrefsWrapper;->a()Lcom/kakao/sdk/common/util/SharedPrefsWrapper;

    :cond_a
    iget-object v0, v1, Lcom/kakao/sdk/auth/TokenManager;->a:Lcom/kakao/sdk/common/util/PersistentKVStore;

    invoke-interface {v0, v5}, Lcom/kakao/sdk/common/util/PersistentKVStore;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    :try_start_5
    sget-object v2, Lcom/kakao/sdk/common/util/KakaoJson;->a:Lcom/google/gson/Gson;

    iget-object v2, v1, Lcom/kakao/sdk/auth/TokenManager;->b:Lcom/kakao/sdk/common/util/Cipher;

    invoke-interface {v2, v0}, Lcom/kakao/sdk/common/util/Cipher;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/kakao/sdk/auth/model/OAuthToken;

    sget-object v3, Lcom/kakao/sdk/common/util/KakaoJson;->a:Lcom/google/gson/Gson;

    invoke-virtual {v3, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakao/sdk/auth/model/OAuthToken;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v6, v0

    goto :goto_e

    :catchall_0
    move-exception v0

    sget-object v2, Lcom/kakao/sdk/common/util/SdkLog;->d:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->a(Ljava/io/Serializable;)V

    :cond_b
    const/4 v6, 0x0

    :goto_e
    iput-object v6, v1, Lcom/kakao/sdk/auth/TokenManager;->c:Lcom/kakao/sdk/auth/model/OAuthToken;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/kakao/sdk/common/util/PersistentKVStore;Lcom/kakao/sdk/common/util/Cipher;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 468
    new-instance p1, Lcom/kakao/sdk/common/util/SharedPrefsWrapper;

    .line 469
    invoke-static {}, Lcom/kakao/sdk/common/KakaoSdk;->a()Lcom/kakao/sdk/common/model/ApplicationContextInfo;

    move-result-object p4

    invoke-virtual {p4}, Lcom/kakao/sdk/common/model/ApplicationContextInfo;->f()Landroid/content/SharedPreferences;

    move-result-object p4

    .line 470
    invoke-direct {p1, p4}, Lcom/kakao/sdk/common/util/SharedPrefsWrapper;-><init>(Landroid/content/SharedPreferences;)V

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 471
    new-instance p2, Lcom/kakao/sdk/common/util/AESCipher;

    const/4 p3, 0x0

    const/4 p4, 0x1

    invoke-direct {p2, p3, p4, p3}, Lcom/kakao/sdk/common/util/AESCipher;-><init>(Lcom/kakao/sdk/common/model/ContextInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 472
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/kakao/sdk/auth/TokenManager;-><init>(Lcom/kakao/sdk/common/util/PersistentKVStore;Lcom/kakao/sdk/common/util/Cipher;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/kakao/sdk/auth/model/OAuthToken;
    .locals 0

    iget-object p0, p0, Lcom/kakao/sdk/auth/TokenManager;->c:Lcom/kakao/sdk/auth/model/OAuthToken;

    return-object p0
.end method

.method public final declared-synchronized b(Lcom/kakao/sdk/auth/model/OAuthToken;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/kakao/sdk/auth/model/OAuthToken;->a(Lcom/kakao/sdk/auth/model/OAuthToken;)Lcom/kakao/sdk/auth/model/OAuthToken;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/kakao/sdk/auth/TokenManager;->a:Lcom/kakao/sdk/common/util/PersistentKVStore;

    const-string v1, "com.kakao.sdk.oauth_token"

    iget-object v2, p0, Lcom/kakao/sdk/auth/TokenManager;->b:Lcom/kakao/sdk/common/util/Cipher;

    sget-object v3, Lcom/kakao/sdk/common/util/KakaoJson;->a:Lcom/google/gson/Gson;

    invoke-virtual {v3, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2, v3}, Lcom/kakao/sdk/common/util/Cipher;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/kakao/sdk/common/util/PersistentKVStore;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/kakao/sdk/common/util/SharedPrefsWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakao/sdk/common/util/SharedPrefsWrapper;->a()Lcom/kakao/sdk/common/util/SharedPrefsWrapper;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    sget-object v1, Lcom/kakao/sdk/common/util/SdkLog;->d:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->a(Ljava/io/Serializable;)V

    :goto_0
    iput-object p1, p0, Lcom/kakao/sdk/auth/TokenManager;->c:Lcom/kakao/sdk/auth/model/OAuthToken;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method
