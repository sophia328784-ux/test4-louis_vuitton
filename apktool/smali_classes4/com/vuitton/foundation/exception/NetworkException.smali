.class public abstract Lcom/vuitton/foundation/exception/NetworkException;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/foundation/exception/NetworkException$CustomException;,
        Lcom/vuitton/foundation/exception/NetworkException$InMaintenance;,
        Lcom/vuitton/foundation/exception/NetworkException$NoNetwork;,
        Lcom/vuitton/foundation/exception/NetworkException$NotFound;,
        Lcom/vuitton/foundation/exception/NetworkException$TooManyRequest;,
        Lcom/vuitton/foundation/exception/NetworkException$Unauthorized;,
        Lcom/vuitton/foundation/exception/NetworkException$Unknown;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00060\u0001j\u0002`\u0002:\u0007\u0003\u0004\u0005\u0006\u0007\u0008\t\u0082\u0001\u0007\n\u000b\u000c\r\u000e\u000f\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/vuitton/foundation/exception/NetworkException;",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "Unauthorized",
        "NotFound",
        "NoNetwork",
        "InMaintenance",
        "TooManyRequest",
        "Unknown",
        "CustomException",
        "Lcom/vuitton/foundation/exception/NetworkException$CustomException;",
        "Lcom/vuitton/foundation/exception/NetworkException$InMaintenance;",
        "Lcom/vuitton/foundation/exception/NetworkException$NoNetwork;",
        "Lcom/vuitton/foundation/exception/NetworkException$NotFound;",
        "Lcom/vuitton/foundation/exception/NetworkException$TooManyRequest;",
        "Lcom/vuitton/foundation/exception/NetworkException$Unauthorized;",
        "Lcom/vuitton/foundation/exception/NetworkException$Unknown;",
        "util"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    move-object p1, p3

    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/vuitton/foundation/exception/NetworkException;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
