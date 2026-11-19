.class public final Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/EncodingManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/EncodingManager;",
        "",
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

.field public final b:Lkotlinx/serialization/json/Json;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "EncodingManager"

    invoke-direct {v0, v3, v1, v2, v1}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;-><init>(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/EncodingManager;->a:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;

    new-instance v0, Liv;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Liv;-><init>(I)V

    invoke-static {v0}, Lkotlinx/serialization/json/JsonKt;->a(Lkotlin/jvm/functions/Function1;)Lkotlinx/serialization/json/Json;

    move-result-object v0

    iput-object v0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/EncodingManager;->b:Lkotlinx/serialization/json/Json;

    return-void
.end method
