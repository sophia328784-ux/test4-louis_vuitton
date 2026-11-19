.class public final Lcom/dynatrace/agent/communication/network/response/ResponseResult$TooManyRequests;
.super Lcom/dynatrace/agent/communication/network/response/ResponseResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dynatrace/agent/communication/network/response/ResponseResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TooManyRequests"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/dynatrace/agent/communication/network/response/ResponseResult$TooManyRequests;",
        "Lcom/dynatrace/agent/communication/network/response/ResponseResult;",
        "Lkotlin/time/Duration;",
        "delay",
        "<init>",
        "(JLkotlin/jvm/internal/DefaultConstructorMarker;)V",
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


# instance fields
.field public final a:J


# direct methods
.method public constructor <init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    const/4 p3, 0x0

    invoke-direct {p0, p3}, Lcom/dynatrace/agent/communication/network/response/ResponseResult;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-wide p1, p0, Lcom/dynatrace/agent/communication/network/response/ResponseResult$TooManyRequests;->a:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/dynatrace/agent/communication/network/response/ResponseResult$TooManyRequests;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/dynatrace/agent/communication/network/response/ResponseResult$TooManyRequests;

    iget-wide v3, p0, Lcom/dynatrace/agent/communication/network/response/ResponseResult$TooManyRequests;->a:J

    iget-wide p0, p1, Lcom/dynatrace/agent/communication/network/response/ResponseResult$TooManyRequests;->a:J

    invoke-static {v3, v4, p0, p1}, Lkotlin/time/Duration;->d(JJ)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 2

    sget-object v0, Lkotlin/time/Duration;->c:Lkotlin/time/Duration$Companion;

    iget-wide v0, p0, Lcom/dynatrace/agent/communication/network/response/ResponseResult$TooManyRequests;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TooManyRequests(delay="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/dynatrace/agent/communication/network/response/ResponseResult$TooManyRequests;->a:J

    invoke-static {v1, v2}, Lkotlin/time/Duration;->l(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
