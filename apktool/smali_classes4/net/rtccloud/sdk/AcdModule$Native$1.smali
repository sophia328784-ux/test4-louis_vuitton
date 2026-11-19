.class Lnet/rtccloud/sdk/AcdModule$Native$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/rtccloud/sdk/AcdModule$Native;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/AcdModule$Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptRequest(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Lnet/rtccloud/sdk/Jni;->nAcdAcceptRequest(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public cancel()Z
    .locals 0

    invoke-static {}, Lnet/rtccloud/sdk/Jni;->nAcdCancel()Z

    move-result p0

    return p0
.end method

.method public declineRequest(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Lnet/rtccloud/sdk/Jni;->nAcdDeclineRequest(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getSingleUser(JJ)Z
    .locals 0

    const/4 p0, 0x0

    invoke-static {p1, p2, p3, p4, p0}, Lnet/rtccloud/sdk/Jni;->nAcdGetUser(JJZ)Z

    move-result p0

    return p0
.end method

.method public getUserList(JJ)Z
    .locals 0

    const/4 p0, 0x1

    invoke-static {p1, p2, p3, p4, p0}, Lnet/rtccloud/sdk/Jni;->nAcdGetUser(JJZ)Z

    move-result p0

    return p0
.end method

.method public getWaitingList()Z
    .locals 0

    invoke-static {}, Lnet/rtccloud/sdk/Jni;->nAcdGetWaitingList()Z

    move-result p0

    return p0
.end method

.method public request(JJ)Z
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lnet/rtccloud/sdk/Jni;->nAcdRequest(JJ)Z

    move-result p0

    return p0
.end method

.method public setPresence(J)Z
    .locals 0

    invoke-static {p1, p2}, Lnet/rtccloud/sdk/Jni;->nAcdSetPresence(J)Z

    move-result p0

    return p0
.end method

.method public setPriority(J)Z
    .locals 0

    invoke-static {p1, p2}, Lnet/rtccloud/sdk/Jni;->nAcdSetPriority(J)Z

    move-result p0

    return p0
.end method
