.class public final Lcom/dynatrace/agent/communication/network/response/ResponseResult$UnexpectedError;
.super Lcom/dynatrace/agent/communication/network/response/ResponseResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dynatrace/agent/communication/network/response/ResponseResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnexpectedError"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/dynatrace/agent/communication/network/response/ResponseResult$UnexpectedError;",
        "Lcom/dynatrace/agent/communication/network/response/ResponseResult;",
        "com.dynatrace.agent_release"
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
.field public static final a:Lcom/dynatrace/agent/communication/network/response/ResponseResult$UnexpectedError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dynatrace/agent/communication/network/response/ResponseResult$UnexpectedError;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/communication/network/response/ResponseResult;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/dynatrace/agent/communication/network/response/ResponseResult$UnexpectedError;->a:Lcom/dynatrace/agent/communication/network/response/ResponseResult$UnexpectedError;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of p0, p1, Lcom/dynatrace/agent/communication/network/response/ResponseResult$UnexpectedError;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method public final hashCode()I
    .locals 0

    const p0, 0x7026c475

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "UnexpectedError"

    return-object p0
.end method
