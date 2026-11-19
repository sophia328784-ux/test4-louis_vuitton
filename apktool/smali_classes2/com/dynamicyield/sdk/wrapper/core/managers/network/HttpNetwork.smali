.class public final Lcom/dynamicyield/sdk/wrapper/core/managers/network/HttpNetwork;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynamicyield/sdk/wrapper/core/managers/network/NetworkRequest;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/dynamicyield/sdk/wrapper/core/managers/network/HttpNetwork;",
        "Lcom/dynamicyield/sdk/wrapper/core/managers/network/NetworkRequest;",
        "<init>",
        "()V",
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


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;

    const-string v1, "HttpNetwork"

    sget-object v2, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;->INFO:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;

    invoke-direct {v0, v1, v2}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;-><init>(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;)V

    iput-object v0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/network/HttpNetwork;->a:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;

    return-void
.end method
