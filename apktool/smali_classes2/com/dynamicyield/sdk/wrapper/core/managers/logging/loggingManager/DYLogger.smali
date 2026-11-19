.class public final Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;",
        "",
        "",
        "logCategory",
        "Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;",
        "logLevel",
        "<init>",
        "(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;)V",
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
.field public final a:Ljava/lang/String;

.field public final b:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;->b:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 14
    sget-object p2, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;->VERBOSE:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;-><init>(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LoggingManager;->a:Ljava/util/ArrayList;

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;->b:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;

    :cond_0
    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;->a:Ljava/lang/String;

    invoke-static {p2, p0, p1}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LoggingManager;->a(Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
