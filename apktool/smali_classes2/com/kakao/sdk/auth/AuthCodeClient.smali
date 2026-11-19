.class public final Lcom/kakao/sdk/auth/AuthCodeClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/auth/AuthCodeClient$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\u000cB/\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/kakao/sdk/auth/AuthCodeClient;",
        "",
        "Lcom/kakao/sdk/common/util/IntentResolveClient;",
        "intentResolveClient",
        "Lcom/kakao/sdk/common/model/ApplicationInfo;",
        "applicationInfo",
        "Lcom/kakao/sdk/common/model/ContextInfo;",
        "contextInfo",
        "Lcom/kakao/sdk/common/model/ApprovalType;",
        "approvalType",
        "<init>",
        "(Lcom/kakao/sdk/common/util/IntentResolveClient;Lcom/kakao/sdk/common/model/ApplicationInfo;Lcom/kakao/sdk/common/model/ContextInfo;Lcom/kakao/sdk/common/model/ApprovalType;)V",
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
.field public static final e:Lcom/kakao/sdk/auth/AuthCodeClient$Companion;

.field public static final f:Lkotlin/Lazy;


# instance fields
.field public final a:Lcom/kakao/sdk/common/util/IntentResolveClient;

.field public final b:Lcom/kakao/sdk/common/model/ApplicationInfo;

.field public final c:Lcom/kakao/sdk/common/model/ContextInfo;

.field public final d:Lcom/kakao/sdk/common/model/ApprovalType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakao/sdk/auth/AuthCodeClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakao/sdk/auth/AuthCodeClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakao/sdk/auth/AuthCodeClient;->e:Lcom/kakao/sdk/auth/AuthCodeClient$Companion;

    sget-object v0, Lcom/kakao/sdk/auth/AuthCodeClient$Companion$instance$2;->c:Lcom/kakao/sdk/auth/AuthCodeClient$Companion$instance$2;

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/auth/AuthCodeClient;->f:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 58
    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/kakao/sdk/auth/AuthCodeClient;-><init>(Lcom/kakao/sdk/common/util/IntentResolveClient;Lcom/kakao/sdk/common/model/ApplicationInfo;Lcom/kakao/sdk/common/model/ContextInfo;Lcom/kakao/sdk/common/model/ApprovalType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/kakao/sdk/common/util/IntentResolveClient;Lcom/kakao/sdk/common/model/ApplicationInfo;Lcom/kakao/sdk/common/model/ContextInfo;Lcom/kakao/sdk/common/model/ApprovalType;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/kakao/sdk/auth/AuthCodeClient;->a:Lcom/kakao/sdk/common/util/IntentResolveClient;

    .line 55
    iput-object p2, p0, Lcom/kakao/sdk/auth/AuthCodeClient;->b:Lcom/kakao/sdk/common/model/ApplicationInfo;

    .line 56
    iput-object p3, p0, Lcom/kakao/sdk/auth/AuthCodeClient;->c:Lcom/kakao/sdk/common/model/ContextInfo;

    .line 57
    iput-object p4, p0, Lcom/kakao/sdk/auth/AuthCodeClient;->d:Lcom/kakao/sdk/common/model/ApprovalType;

    return-void
.end method

.method public constructor <init>(Lcom/kakao/sdk/common/util/IntentResolveClient;Lcom/kakao/sdk/common/model/ApplicationInfo;Lcom/kakao/sdk/common/model/ContextInfo;Lcom/kakao/sdk/common/model/ApprovalType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    sget-object p1, Lcom/kakao/sdk/common/util/IntentResolveClient;->c:Lcom/kakao/sdk/common/util/IntentResolveClient$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/kakao/sdk/common/util/IntentResolveClient;->d:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kakao/sdk/common/util/IntentResolveClient;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    invoke-static {}, Lcom/kakao/sdk/common/KakaoSdk;->a()Lcom/kakao/sdk/common/model/ApplicationContextInfo;

    move-result-object p2

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    invoke-static {}, Lcom/kakao/sdk/common/KakaoSdk;->a()Lcom/kakao/sdk/common/model/ApplicationContextInfo;

    move-result-object p3

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_4

    sget-object p4, Lcom/kakao/sdk/common/KakaoSdk;->d:Lcom/kakao/sdk/common/model/ApprovalType;

    if-eqz p4, :cond_3

    goto :goto_0

    :cond_3
    const-string p0, "approvalType"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_4
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kakao/sdk/auth/AuthCodeClient;-><init>(Lcom/kakao/sdk/common/util/IntentResolveClient;Lcom/kakao/sdk/common/model/ApplicationInfo;Lcom/kakao/sdk/common/model/ContextInfo;Lcom/kakao/sdk/common/model/ApprovalType;)V

    return-void
.end method

.method public static a(Lcom/kakao/sdk/auth/AuthCodeClient;Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;I)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    and-int/lit8 v4, p7, 0x4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    move-object v4, v5

    goto :goto_0

    :cond_0
    move-object/from16 v4, p2

    :goto_0
    and-int/lit8 v6, p7, 0x8

    if-eqz v6, :cond_1

    move-object v6, v5

    goto :goto_1

    :cond_1
    move-object/from16 v6, p3

    :goto_1
    and-int/lit8 v7, p7, 0x10

    if-eqz v7, :cond_2

    move-object v7, v5

    goto :goto_2

    :cond_2
    move-object/from16 v7, p4

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Lcom/kakao/sdk/auth/UriUtility;

    const/4 v9, 0x1

    invoke-direct {v8, v5, v9, v5}, Lcom/kakao/sdk/auth/UriUtility;-><init>(Lcom/kakao/sdk/common/model/ServerHosts;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v9, v0, Lcom/kakao/sdk/auth/AuthCodeClient;->b:Lcom/kakao/sdk/common/model/ApplicationInfo;

    invoke-interface {v9}, Lcom/kakao/sdk/common/model/ApplicationInfo;->d()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9}, Lcom/kakao/sdk/common/model/ApplicationInfo;->a()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v0, Lcom/kakao/sdk/auth/AuthCodeClient;->c:Lcom/kakao/sdk/common/model/ContextInfo;

    invoke-interface {v12}, Lcom/kakao/sdk/common/model/ContextInfo;->c()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Lcom/kakao/sdk/auth/AuthCodeClient;->d:Lcom/kakao/sdk/common/model/ApprovalType;

    invoke-virtual {v13}, Lcom/kakao/sdk/common/model/ApprovalType;->a()Ljava/lang/String;

    move-result-object v13

    if-eqz v2, :cond_3

    sget-object v14, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v14}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v15, Lcom/kakao/sdk/auth/AuthCodeClient;->e:Lcom/kakao/sdk/auth/AuthCodeClient$Companion;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v15, "SHA-256"

    invoke-static {v15}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v14

    const/16 v15, 0xb

    invoke-static {v14, v15}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_3

    :cond_3
    move-object v14, v5

    :goto_3
    if-eqz v2, :cond_4

    const-string v2, "S256"

    goto :goto_4

    :cond_4
    move-object v2, v5

    :goto_4
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v15, Landroid/net/Uri$Builder;

    invoke-direct {v15}, Landroid/net/Uri$Builder;-><init>()V

    const-string v5, "https"

    invoke-virtual {v15, v5}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    iget-object v8, v8, Lcom/kakao/sdk/auth/UriUtility;->a:Lcom/kakao/sdk/common/model/ServerHosts;

    invoke-virtual {v8}, Lcom/kakao/sdk/common/model/ServerHosts;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v8, "oauth/authorize"

    invoke-virtual {v5, v8}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v8, "client_id"

    invoke-virtual {v5, v8, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v8, "redirect_uri"

    invoke-virtual {v5, v8, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v8, "response_type"

    const-string v10, "code"

    invoke-virtual {v5, v8, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v8, "ka"

    invoke-virtual {v5, v8, v12}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    if-eqz v7, :cond_5

    const-string v8, "agt"

    invoke-virtual {v5, v8, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_5
    move-object v7, v4

    check-cast v7, Ljava/util/Collection;

    if-eqz v7, :cond_7

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_5

    :cond_6
    move-object/from16 v16, v4

    check-cast v16, Ljava/lang/Iterable;

    const/16 v20, 0x0

    const/16 v21, 0x3e

    const-string v17, ","

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v16 .. v21}, Lkotlin/collections/CollectionsKt;->K(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v4

    const-string v7, "scope"

    invoke-virtual {v5, v7, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_7
    :goto_5
    if-eqz v6, :cond_8

    const-string v4, "nonce"

    invoke-virtual {v5, v4, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_8
    if-eqz v13, :cond_9

    const-string v4, "approval_type"

    invoke-virtual {v5, v4, v13}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_9
    if-eqz v14, :cond_a

    const-string v4, "code_challenge"

    invoke-virtual {v5, v4, v14}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_a
    if-eqz v2, :cond_b

    const-string v4, "code_challenge_method"

    invoke-virtual {v5, v4, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_b
    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/kakao/sdk/common/util/SdkLog;->d:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->b(Ljava/lang/Object;)V

    :try_start_0
    invoke-interface {v9}, Lcom/kakao/sdk/common/model/ApplicationInfo;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3}, Lcom/kakao/sdk/auth/AuthCodeClient;->b(Lkotlin/jvm/functions/Function2;)Lcom/kakao/sdk/auth/SingleResultReceiver$Companion$create$1;

    move-result-object v0

    invoke-static {v1, v2, v4, v0}, Lcom/kakao/sdk/auth/IntentFactory;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/kakao/sdk/auth/SingleResultReceiver$Companion$create$1;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/kakao/sdk/common/util/SdkLog;->d:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->a(Ljava/io/Serializable;)V

    const/4 v1, 0x0

    invoke-interface {v3, v1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final b(Lkotlin/jvm/functions/Function2;)Lcom/kakao/sdk/auth/SingleResultReceiver$Companion$create$1;
    .locals 3

    sget-object p0, Lcom/kakao/sdk/auth/SingleResultReceiver;->d:Lcom/kakao/sdk/auth/SingleResultReceiver$Companion;

    sget-object v0, Lcom/kakao/sdk/auth/AuthCodeClient$resultReceiver$1;->c:Lcom/kakao/sdk/auth/AuthCodeClient$resultReceiver$1;

    new-instance v1, Lcom/kakao/sdk/auth/AuthCodeClient$resultReceiver$2;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    sget-object v2, Lcom/kakao/sdk/auth/AuthCodeClient$resultReceiver$3;->c:Lcom/kakao/sdk/auth/AuthCodeClient$resultReceiver$3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/kakao/sdk/auth/SingleResultReceiver$Companion$create$1;

    invoke-direct {p0, v0, v1, v2}, Lcom/kakao/sdk/auth/SingleResultReceiver$Companion$create$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    check-cast p1, Lkotlin/jvm/internal/Lambda;

    iput-object p1, p0, Lcom/kakao/sdk/common/util/BaseResultReceiver;->c:Lkotlin/jvm/internal/Lambda;

    return-object p0
.end method
