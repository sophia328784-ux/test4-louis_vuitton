.class Lnet/rtccloud/sdk/Rtcc$Native$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/rtccloud/sdk/Rtcc$Native;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/Rtcc$Native;
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
.method public brutalDisconnect()V
    .locals 0

    invoke-static {}, Lnet/rtccloud/sdk/Jni;->nBrutalDisconnect()V

    return-void
.end method

.method public connect(Lnet/rtccloud/sdk/Rtcc;IIIZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-static/range {p1 .. p18}, Lnet/rtccloud/sdk/Jni;->nConnect(Lnet/rtccloud/sdk/Rtcc;IIIZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public connectMeeting(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZ)V
    .locals 19

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->g()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v0

    const-string v1, "{\"evt\":\"connectevent\",\"id\":2,\"desc\":\"MUCL Init\"}"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallBack(Ljava/lang/String;)V

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->g()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v2

    move/from16 v10, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move/from16 v15, p13

    move-object/from16 v16, p14

    move/from16 v17, p15

    move/from16 v18, p16

    invoke-static/range {v2 .. v18}, Lnet/rtccloud/sdk/Jni;->nConnectMeeting(Lnet/rtccloud/sdk/Rtcc;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZ)V

    return-void
.end method

.method public disconnect()V
    .locals 0

    invoke-static {}, Lnet/rtccloud/sdk/Jni;->nDisconnect()V

    return-void
.end method

.method public disconnectEnd()V
    .locals 0

    invoke-static {}, Lnet/rtccloud/sdk/Jni;->nDisconnectEnd()V

    return-void
.end method

.method public getAllMyChatRooms()I
    .locals 0

    invoke-static {}, Lnet/rtccloud/sdk/Jni;->nGetAllMyChatRooms()I

    move-result p0

    return p0
.end method

.method public getChatRoomForMID(Ljava/lang/String;)I
    .locals 0

    invoke-static {p1}, Lnet/rtccloud/sdk/Jni;->nGetChatRoomForMID(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getChatRooms([Ljava/lang/String;I)I
    .locals 0

    invoke-static {p1, p2}, Lnet/rtccloud/sdk/Jni;->nGetChatRooms([Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getHistory(Ljava/lang/String;II)I
    .locals 0

    invoke-static {p1, p2, p3}, Lnet/rtccloud/sdk/Jni;->nGetHistory(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public getVersion()I
    .locals 0

    invoke-static {}, Lnet/rtccloud/sdk/Jni;->nGetVersion()I

    move-result p0

    return p0
.end method

.method public nRegisterForTests()V
    .locals 0

    invoke-static {}, Lnet/rtccloud/sdk/Jni;->nRegisterForTests()V

    return-void
.end method

.method public registerJWT(Ljava/lang/String;)I
    .locals 0

    invoke-static {p1}, Lnet/rtccloud/sdk/Jni;->nRegisterJWT(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public resetFastMode()V
    .locals 0

    invoke-static {}, Lnet/rtccloud/sdk/Jni;->nResetFastMode()V

    return-void
.end method

.method public sendAvatar(Ljava/lang/String;I[B)V
    .locals 0

    invoke-static {p1, p2, p3}, Lnet/rtccloud/sdk/Jni;->nSendAvatar(Ljava/lang/String;I[B)V

    return-void
.end method

.method public sendChat(Ljava/lang/String;[BI)I
    .locals 0

    invoke-static {p1, p2, p3}, Lnet/rtccloud/sdk/Jni;->nSendChat(Ljava/lang/String;[BI)I

    move-result p0

    return p0
.end method

.method public setJsVersion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lnet/rtccloud/sdk/Jni;->nSetJsVersion(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLoggerLevel(I)V
    .locals 0

    invoke-static {p1}, Lnet/rtccloud/sdk/Jni;->nSetLoggerLevel(I)V

    return-void
.end method

.method public setSamplingRate(I)V
    .locals 0

    invoke-static {p1}, Lnet/rtccloud/sdk/Jni;->nAudioSetSamplingRate(I)V

    return-void
.end method

.method public setUrlReferer(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lnet/rtccloud/sdk/Jni;->nSetUrlReferer(Ljava/lang/String;)V

    return-void
.end method

.method public setVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2, p3}, Lnet/rtccloud/sdk/Jni;->nSetVersionOverride(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateMetadata(Ljava/lang/String;[BI)I
    .locals 0

    invoke-static {p1, p2, p3}, Lnet/rtccloud/sdk/Jni;->nUpdateMetadata(Ljava/lang/String;[BI)I

    move-result p0

    return p0
.end method

.method public updateTS(Ljava/lang/String;I)I
    .locals 0

    invoke-static {p1, p2}, Lnet/rtccloud/sdk/Jni;->nUpdateTS(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method
