.class public abstract Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LoggingManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LoggingManager;",
        "",
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


# static fields
.field public static final a:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LoggingManager;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public static a(Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LoggingManager;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LoggerEngine;

    invoke-interface {v1}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LoggerEngine;->b()Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-gtz v2, :cond_0

    const-string v2, "["

    const-string v3, "] "

    invoke-static {v2, p1, v3, p2}, Lfc;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LoggerEngine;->a(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;)V

    goto :goto_0

    :cond_1
    return-void
.end method
