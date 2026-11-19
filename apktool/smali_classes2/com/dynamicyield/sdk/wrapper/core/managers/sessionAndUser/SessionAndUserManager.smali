.class public final Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManager;",
        "",
        "Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManagerProvider;",
        "sessionAndUserManagerProvider",
        "Landroid/content/Context;",
        "context",
        "",
        "sharedDevice",
        "<init>",
        "(Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManagerProvider;Landroid/content/Context;Ljava/lang/Boolean;)V",
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
.field public final a:Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManagerProvider;

.field public final b:Ljava/lang/Boolean;

.field public final c:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;

.field public final d:Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/StorageManager;


# direct methods
.method public constructor <init>(Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManagerProvider;Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManager;->a:Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManagerProvider;

    iput-object p3, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManager;->b:Ljava/lang/Boolean;

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;

    const-string v1, "SessionAndUserManager"

    sget-object v2, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;->DEBUG:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;

    invoke-direct {v0, v1, v2}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;-><init>(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;)V

    iput-object v0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManager;->c:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;

    new-instance v1, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/StorageManager;

    invoke-direct {v1, p2}, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/StorageManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManager;->d:Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/StorageManager;

    const-string p2, "Initializing SessionAndUserManager"

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;->a(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;)V

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {v1}, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/StorageManager;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_1

    const-string p1, "Initialization SessionAndUserManager: User is on a shared device, removing the old DY ID since shared devices don\'t have a persistent DY ID user."

    invoke-virtual {v0, p1, v2}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;->a(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;)V

    invoke-virtual {p0}, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManager;->d()V

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManagerProvider;->a()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManagerProvider;->b()Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "Initialization SessionAndUserManager: User has not accepted the consent, resetting session and user data."

    invoke-virtual {v0, p1, v2}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;->a(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;)V

    invoke-virtual {p0}, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManager;->c()V

    invoke-virtual {p0}, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManager;->d()V

    :cond_1
    return-void
.end method

.method public synthetic constructor <init>(Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManagerProvider;Landroid/content/Context;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 89
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManager;-><init>(Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManagerProvider;Landroid/content/Context;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Session;
    .locals 8

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Session;

    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManager;->d:Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/StorageManager;

    iget-object v2, v1, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/StorageManager;->a:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;

    sget-object v3, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;->VERBOSE:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;

    const-string v4, "getSessionId"

    invoke-virtual {v2, v4, v3}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;->a(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;)V

    iget-object v2, v1, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/StorageManager;->f:Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, v1, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/StorageManager;->a:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;

    const-string v7, "isDataExpired"

    invoke-virtual {v6, v7, v3}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;->a(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;)V

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v2, v6, v4

    if-gtz v2, :cond_2

    :cond_0
    iget-object v2, v1, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/StorageManager;->b:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v4, "session"

    invoke-interface {v2, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v4, "session_expiration"

    invoke-interface {v2, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    iput-object v3, v1, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/StorageManager;->e:Ljava/lang/String;

    iput-object v3, v1, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/StorageManager;->f:Ljava/lang/Long;

    :cond_2
    iget-object v1, v1, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/StorageManager;->e:Ljava/lang/String;

    if-nez v1, :cond_3

    const-string v1, ""

    :cond_3
    invoke-direct {v0, v1}, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Session;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManager;->c:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;

    const-string v1, "getSession"

    invoke-virtual {p0, v1, v3}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;->a(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/User;
    .locals 7

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/User;

    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManager;->d:Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/StorageManager;

    invoke-virtual {v1}, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/StorageManager;->a()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v3, v2

    iget-object v2, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManager;->b:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v6, 0x0

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManager;->a:Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManagerProvider;

    invoke-interface {v3}, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManagerProvider;->a()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v3}, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManagerProvider;->b()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object v5, v3

    move-object v4, p2

    move-object v3, p1

    goto :goto_2

    :cond_2
    :goto_1
    move-object v5, v6

    move-object v3, p1

    move-object v4, p2

    :goto_2
    invoke-direct/range {v0 .. v5}, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/User;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManager;->c:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;

    const-string p1, "getUser"

    invoke-virtual {p0, p1, v6}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;->a(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;)V

    return-object v0
.end method

.method public final c()V
    .locals 4

    iget-object v0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManager;->c:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;

    const-string v1, "resetSessionId: Reset the SessionId"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;->a(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;)V

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManager;->d:Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/StorageManager;

    iget-object v0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/StorageManager;->b:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v1, "session_expiration"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "session"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-object v2, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/StorageManager;->e:Ljava/lang/String;

    iput-object v2, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/StorageManager;->f:Ljava/lang/Long;

    iget-object v0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/StorageManager;->a:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "current sessionId:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/StorageManager;->e:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v2}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;->a(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;)V

    return-void
.end method

.method public final d()V
    .locals 4

    iget-object v0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManager;->c:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;

    const-string v1, "resetUserId: Reset the DyId"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;->a(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;)V

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManager;->d:Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/StorageManager;

    iget-object v0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/StorageManager;->b:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v1, "dyid_expiration"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "dyid"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-object v2, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/StorageManager;->c:Ljava/lang/String;

    iput-object v2, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/StorageManager;->d:Ljava/lang/Long;

    iget-object v0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/StorageManager;->a:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "current dyid:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/StorageManager;->c:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v2}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;->a(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;)V

    return-void
.end method

.method public final e(Ljava/lang/Boolean;)V
    .locals 4

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManager;->b:Ljava/lang/Boolean;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateActiveConsentAccepted: Changing activeConsentAccepted to: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManager;->c:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;->a(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;)V

    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManager;->a:Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManagerProvider;

    invoke-interface {v1}, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManagerProvider;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "updateActiveConsentAccepted: User has not accepted the consent, resetting session and user data."

    invoke-virtual {v2, p1, v3}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;->a(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;)V

    invoke-virtual {p0}, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManager;->c()V

    invoke-virtual {p0}, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManager;->d()V

    :cond_1
    :goto_0
    return-void
.end method
