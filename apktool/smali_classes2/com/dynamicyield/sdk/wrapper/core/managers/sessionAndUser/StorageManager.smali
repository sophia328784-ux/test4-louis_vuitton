.class public final Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/StorageManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/StorageManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0006B\u0011\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/StorageManager;",
        "",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Companion",
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

.field public final b:Landroid/content/SharedPreferences;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/Long;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/StorageManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/StorageManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;

    sget-object v1, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;->DEBUG:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;

    const-string v2, "StorageManager"

    invoke-direct {v0, v2, v1}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;-><init>(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;)V

    iput-object v0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/StorageManager;->a:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string v3, "dy-preference"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    iput-object p1, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/StorageManager;->b:Landroid/content/SharedPreferences;

    sget-object v3, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/LoggingUtils;->a:Ljava/util/Set;

    const-string v3, " initialized"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;->a(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;)V

    const-string v0, ""

    if-eqz p1, :cond_1

    :try_start_0
    const-string v2, "dyid"

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_4

    :cond_1
    move-object v2, v1

    :goto_1
    iput-object v2, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/StorageManager;->c:Ljava/lang/String;

    const-wide/16 v2, 0x0

    if-eqz p1, :cond_2

    const-string v4, "dyid_expiration"

    invoke-interface {p1, v4, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object v4, v1

    :goto_2
    iput-object v4, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/StorageManager;->d:Ljava/lang/Long;

    if-eqz p1, :cond_3

    const-string v4, "session"

    invoke-interface {p1, v4, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_3
    move-object v0, v1

    :goto_3
    iput-object v0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/StorageManager;->e:Ljava/lang/String;

    if-eqz p1, :cond_4

    const-string v0, "session_expiration"

    invoke-interface {p1, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :cond_4
    iput-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/StorageManager;->f:Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_4
    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/StorageManager;->a:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;->ERROR:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;

    invoke-virtual {p0, p1, v0}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;->a(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 6

    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;->VERBOSE:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;

    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/StorageManager;->a:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;

    const-string v2, "getUserId"

    invoke-virtual {v1, v2, v0}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;->a(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;)V

    iget-object v2, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/StorageManager;->d:Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string v5, "isDataExpired"

    invoke-virtual {v1, v5, v0}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;->a(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;)V

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-gtz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/StorageManager;->b:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "dyid"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "dyid_expiration"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/StorageManager;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/StorageManager;->d:Ljava/lang/Long;

    :cond_2
    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/StorageManager;->c:Ljava/lang/String;

    if-nez p0, :cond_3

    const-string p0, ""

    :cond_3
    return-object p0
.end method
