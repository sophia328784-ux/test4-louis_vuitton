.class public final Lcom/appsflyer/internal/AFd1jSDK;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/AFd1jSDK$AFa1tSDK;,
        Lcom/appsflyer/internal/AFd1jSDK$AFa1ySDK;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\n\u001a\u00020\u00028\u0002X\u0083\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR\u0014\u0010\r\u001a\u00020\u00048\u0002X\u0083\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0010\u001a\u00020\u000e8G\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000fR\u0011\u0010\u0011\u001a\u00020\u000e8G\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000fR\u0015\u0010\u0014\u001a\u00020\u000e8BX\u0083\u0084\u0002\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0015\u0010\u0012\u001a\u00020\u000e8BX\u0083\u0084\u0002\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0013R\u0011\u0010\u000b\u001a\u00020\u00158G\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0016"
    }
    d2 = {
        "Lcom/appsflyer/internal/AFd1jSDK;",
        "",
        "Lcom/appsflyer/internal/AFc1iSDK;",
        "p0",
        "Lcom/appsflyer/internal/AFc1kSDK;",
        "p1",
        "<init>",
        "(Lcom/appsflyer/internal/AFc1iSDK;Lcom/appsflyer/internal/AFc1kSDK;)V",
        "i",
        "Lcom/appsflyer/internal/AFc1iSDK;",
        "registerClient",
        "v",
        "Lcom/appsflyer/internal/AFc1kSDK;",
        "d",
        "",
        "()Ljava/lang/String;",
        "AFLogger",
        "AFKeystoreWrapper",
        "w",
        "Lkotlin/Lazy;",
        "unregisterClient",
        "",
        "()Z",
        "AFa1tSDK"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static AFLogger:Ljava/lang/String;

.field public static final AFa1tSDK:Lcom/appsflyer/internal/AFd1jSDK$AFa1tSDK;

.field public static d:Lcom/appsflyer/internal/AFd1gSDK;

.field public static registerClient:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static unregisterClient:Ljava/lang/String;


# instance fields
.field public final AFKeystoreWrapper:Lkotlin/Lazy;

.field private final i:Lcom/appsflyer/internal/AFc1iSDK;

.field private final v:Lcom/appsflyer/internal/AFc1kSDK;

.field private final w:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/appsflyer/internal/AFd1jSDK$AFa1tSDK;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/appsflyer/internal/AFd1jSDK$AFa1tSDK;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/appsflyer/internal/AFd1jSDK;->AFa1tSDK:Lcom/appsflyer/internal/AFd1jSDK$AFa1tSDK;

    const-string v0, "https://%scdn-%ssettings.%s/android/v2/%s/settings"

    sput-object v0, Lcom/appsflyer/internal/AFd1jSDK;->AFLogger:Ljava/lang/String;

    const-string v0, "https://%scdn-%stestsettings.%s/android/v2/%s/settings"

    sput-object v0, Lcom/appsflyer/internal/AFd1jSDK;->unregisterClient:Ljava/lang/String;

    const-string v0, "playstore"

    const-string v1, "googleplaystore"

    const-string v2, "googleplay"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/appsflyer/internal/AFd1jSDK;->registerClient:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/appsflyer/internal/AFc1iSDK;Lcom/appsflyer/internal/AFc1kSDK;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appsflyer/internal/AFd1jSDK;->i:Lcom/appsflyer/internal/AFc1iSDK;

    iput-object p2, p0, Lcom/appsflyer/internal/AFd1jSDK;->v:Lcom/appsflyer/internal/AFc1kSDK;

    new-instance p1, Lcom/appsflyer/internal/l;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/appsflyer/internal/l;-><init>(Lcom/appsflyer/internal/AFd1jSDK;I)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFd1jSDK;->w:Lkotlin/Lazy;

    new-instance p1, Lcom/appsflyer/internal/l;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/appsflyer/internal/l;-><init>(Lcom/appsflyer/internal/AFd1jSDK;I)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFd1jSDK;->AFKeystoreWrapper:Lkotlin/Lazy;

    return-void
.end method

.method private static final AFKeystoreWrapper(Lcom/appsflyer/internal/AFd1jSDK;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/appsflyer/internal/AFd1jSDK;->i:Lcom/appsflyer/internal/AFc1iSDK;

    iget-object v0, v0, Lcom/appsflyer/internal/AFc1iSDK;->d:Lcom/appsflyer/internal/AFd1zSDK;

    iget-object v0, v0, Lcom/appsflyer/internal/AFd1zSDK;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/appsflyer/internal/AFd1jSDK;->w:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0}, Ld21;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "[^\\w]+"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, p0, v1}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static AFKeystoreWrapper()Z
    .locals 1

    .line 93
    sget-object v0, Lcom/appsflyer/internal/AFd1jSDK;->d:Lcom/appsflyer/internal/AFd1gSDK;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static final AFLogger(Lcom/appsflyer/internal/AFd1gSDK;)V
    .locals 0

    invoke-static {p0}, Lcom/appsflyer/internal/AFd1jSDK$AFa1tSDK;->unregisterClient(Lcom/appsflyer/internal/AFd1gSDK;)V

    return-void
.end method

.method public static synthetic a(Lcom/appsflyer/internal/AFd1jSDK;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/appsflyer/internal/AFd1jSDK;->d(Lcom/appsflyer/internal/AFd1jSDK;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/appsflyer/internal/AFd1jSDK;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/appsflyer/internal/AFd1jSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFd1jSDK;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final d(Lcom/appsflyer/internal/AFd1jSDK;)Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/appsflyer/internal/AFd1jSDK;->v:Lcom/appsflyer/internal/AFc1kSDK;

    iget-object p0, p0, Lcom/appsflyer/internal/AFd1jSDK;->i:Lcom/appsflyer/internal/AFc1iSDK;

    const-string v1, "CHANNEL"

    invoke-virtual {p0, v1}, Lcom/appsflyer/internal/AFc1iSDK;->AFLogger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, ""

    if-eqz p0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-static {v0, p0}, Lcom/appsflyer/internal/AFa1tSDK;->d(Lcom/appsflyer/internal/AFc1kSDK;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-static {p0}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lkotlin/text/StringsKt;->a0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/appsflyer/internal/AFd1jSDK;->registerClient:Ljava/util/List;

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v3, Lcom/appsflyer/sdk_base/logger/LogTag;->GENERAL:Lcom/appsflyer/sdk_base/logger/LogTag;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x1

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v4, "AF detected using redundant Google-Play channel for attribution - %s. Using without channel postfix."

    invoke-static {v0, v4, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->w$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZILjava/lang/Object;)V

    move-object p0, v1

    :cond_3
    :goto_0
    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    move-object v1, p0

    :goto_1
    invoke-static {v1}, Lkotlin/text/StringsKt;->a0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic registerClient(Lcom/appsflyer/internal/AFd1gSDK;)V
    .locals 0

    .line 53
    sput-object p0, Lcom/appsflyer/internal/AFd1jSDK;->d:Lcom/appsflyer/internal/AFd1gSDK;

    return-void
.end method


# virtual methods
.method public final d()Ljava/lang/String;
    .locals 3

    .line 110
    sget-object p0, Lcom/appsflyer/internal/AFd1jSDK;->d:Lcom/appsflyer/internal/AFd1gSDK;

    if-nez p0, :cond_0

    .line 111
    sget-object p0, Lcom/appsflyer/internal/AFd1dSDK;->unregisterClient:Lcom/appsflyer/internal/AFd1dSDK;

    goto :goto_0

    .line 112
    :cond_0
    sget-object p0, Lcom/appsflyer/internal/AFd1dSDK;->registerClient:Lcom/appsflyer/internal/AFd1dSDK;

    .line 113
    :goto_0
    sget-object v0, Lcom/appsflyer/internal/AFd1jSDK$AFa1ySDK;->AFKeystoreWrapper:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_5

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, ""

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    return-object v2

    :cond_1
    invoke-static {}, Lv40;->g()V

    return-object v1

    .line 114
    :cond_2
    sget-object p0, Lcom/appsflyer/internal/AFd1jSDK;->d:Lcom/appsflyer/internal/AFd1gSDK;

    if-eqz p0, :cond_3

    .line 115
    iget-object v1, p0, Lcom/appsflyer/internal/AFd1gSDK;->AFLogger:Ljava/lang/String;

    :cond_3
    if-nez v1, :cond_4

    return-object v2

    :cond_4
    return-object v1

    .line 116
    :cond_5
    const-string p0, "appsflyersdk.com"

    return-object p0
.end method

.method public final registerClient()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/appsflyer/internal/AFd1jSDK;->d:Lcom/appsflyer/internal/AFd1gSDK;

    if-nez v0, :cond_0

    sget-object v0, Lcom/appsflyer/internal/AFd1dSDK;->unregisterClient:Lcom/appsflyer/internal/AFd1dSDK;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/appsflyer/internal/AFd1dSDK;->registerClient:Lcom/appsflyer/internal/AFd1dSDK;

    :goto_0
    sget-object v1, Lcom/appsflyer/internal/AFd1jSDK$AFa1ySDK;->AFKeystoreWrapper:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 p0, 0x2

    const/4 v1, 0x0

    const-string v2, ""

    if-eq v0, p0, :cond_2

    const/4 p0, 0x3

    if-ne v0, p0, :cond_1

    return-object v2

    :cond_1
    invoke-static {}, Lv40;->g()V

    return-object v1

    :cond_2
    sget-object p0, Lcom/appsflyer/internal/AFd1jSDK;->d:Lcom/appsflyer/internal/AFd1gSDK;

    if-eqz p0, :cond_3

    iget-object v1, p0, Lcom/appsflyer/internal/AFd1gSDK;->registerClient:Ljava/lang/String;

    :cond_3
    if-nez v1, :cond_4

    return-object v2

    :cond_4
    return-object v1

    :cond_5
    iget-object p0, p0, Lcom/appsflyer/internal/AFd1jSDK;->AFKeystoreWrapper:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
