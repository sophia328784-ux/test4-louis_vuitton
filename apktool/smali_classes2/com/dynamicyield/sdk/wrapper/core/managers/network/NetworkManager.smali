.class public final Lcom/dynamicyield/sdk/wrapper/core/managers/network/NetworkManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/dynamicyield/sdk/wrapper/core/managers/network/NetworkManager;",
        "",
        "",
        "apiKey",
        "dyVersion",
        "Lkotlin/UInt;",
        "timeoutInterval",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V",
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

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/16 p3, 0x1e

    :cond_0
    const/4 p4, 0x0

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dynamicyield/sdk/wrapper/core/managers/network/NetworkManager;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/network/NetworkManager;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/network/NetworkManager;->b:Ljava/lang/String;

    iput p3, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/network/NetworkManager;->c:I

    new-instance p1, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;

    const/4 p2, 0x0

    const/4 p3, 0x2

    const-string p4, "NetworkManager"

    invoke-direct {p1, p4, p2, p3, p2}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;-><init>(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/network/NetworkManager;->d:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;

    return-void
.end method
