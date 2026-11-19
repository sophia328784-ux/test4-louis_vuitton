.class public Lnet/rtccloud/sdk/Jni;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native nAcdAcceptRequest(Ljava/lang/String;)Z
.end method

.method public static native nAcdCancel()Z
.end method

.method public static native nAcdDeclineRequest(Ljava/lang/String;)Z
.end method

.method public static native nAcdGetUser(JJZ)Z
.end method

.method public static native nAcdGetWaitingList()Z
.end method

.method public static native nAcdRequest(JJ)Z
.end method

.method public static native nAcdSetPresence(J)Z
.end method

.method public static native nAcdSetPriority(J)Z
.end method

.method public static native nAudioSetSamplingRate(I)V
.end method

.method public static native nBrutalDisconnect()V
.end method

.method public static native nBuildStartupLog()V
.end method

.method public static native nCallGetProgressivexFrame(Lnet/rtccloud/sdk/FrameCache;)Lnet/rtccloud/sdk/Frame;
.end method

.method public static native nCallGetShareFrame(Lnet/rtccloud/sdk/FrameCache;)Lnet/rtccloud/sdk/Frame;
.end method

.method public static native nCallGetVideoFrame(Lnet/rtccloud/sdk/FrameCache;)Lnet/rtccloud/sdk/Frame;
.end method

.method public static native nCheckCloudConnection()I
.end method

.method public static native nConnect(Lnet/rtccloud/sdk/Rtcc;IIIZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public static native nConnectMeeting(Lnet/rtccloud/sdk/Rtcc;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZ)V
.end method

.method public static native nControlMeetingPoint(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public static native nConvertBGR2RGB(Landroid/graphics/Bitmap;)Z
.end method

.method public static native nCreateCall(Ljava/lang/String;)Z
.end method

.method public static native nCreateCallAttendee(Ljava/lang/String;)Z
.end method

.method public static native nCreateCallExternal(Ljava/lang/String;)Z
.end method

.method public static native nCreateCallHost(Ljava/lang/String;)Z
.end method

.method public static native nCreateCallMirroring()Z
.end method

.method public static native nCreateCallSixDigits(Ljava/lang/String;)Z
.end method

.method public static native nDCShareDecoderStop()V
.end method

.method public static native nDCShareSend([BIIIII)Z
.end method

.method public static native nDCShareSendStop(I)V
.end method

.method public static native nDCThumbnailSend([BIILjava/lang/String;)Z
.end method

.method public static native nDataChannelAck(Ljava/lang/String;II)Z
.end method

.method public static native nDataChannelSendInBand([B)Z
.end method

.method public static native nDataChannelSendOutOfBand([BJLjava/lang/String;)Z
.end method

.method public static varargs native nDataChannelSendOutOfBandMulti([BJ[Ljava/lang/String;)Z
.end method

.method public static native nDisconnect()V
.end method

.method public static native nDisconnectEnd()V
.end method

.method public static native nDumpAnalyticsChunk()Ljava/nio/ByteBuffer;
.end method

.method public static native nDumpStats()Ljava/nio/ByteBuffer;
.end method

.method public static native nEncryptBuffer([B)Ljava/nio/ByteBuffer;
.end method

.method public static native nEncryptInit()V
.end method

.method public static native nGetAllMyChatRooms()I
.end method

.method public static native nGetCallQualityIndicator()Lnet/rtccloud/sdk/Call$QualityIndicator;
.end method

.method public static native nGetChatRoomForMID(Ljava/lang/String;)I
.end method

.method public static native nGetChatRooms([Ljava/lang/String;I)I
.end method

.method public static native nGetHistory(Ljava/lang/String;II)I
.end method

.method public static native nGetMeetingPoint(Ljava/lang/String;)V
.end method

.method public static native nGetNetworkLatency()J
.end method

.method public static native nGetRealtimePlatformName()Ljava/lang/String;
.end method

.method public static native nGetSid()Ljava/lang/String;
.end method

.method public static native nGetUid()Ljava/lang/String;
.end method

.method public static native nGetVersion()I
.end method

.method public static native nLogHapEventBegin()V
.end method

.method public static native nLogHapEventError(Ljava/lang/String;)V
.end method

.method public static native nMutePlaying(Z)V
.end method

.method public static native nMuteRecording(Z)V
.end method

.method public static native nPassiveStreamsOnly(Z)V
.end method

.method public static varargs native nPresenceGet([Ljava/lang/String;)Z
.end method

.method public static native nPresenceGetRoster()Z
.end method

.method public static native nPresenceSet(I)Z
.end method

.method public static native nRegisterForTests()V
.end method

.method public static native nRegisterJWT(Ljava/lang/String;)I
.end method

.method public static native nResetFastMode()V
.end method

.method public static varargs native nRosterAdd([Ljava/lang/String;)Z
.end method

.method public static native nRosterClear()Z
.end method

.method public static varargs native nRosterRemove([Ljava/lang/String;)Z
.end method

.method public static native nSendAvatar(Ljava/lang/String;I[B)V
.end method

.method public static native nSendCallControl(III)V
.end method

.method public static native nSendChat(Ljava/lang/String;[BI)I
.end method

.method public static native nSendConfControl(I)V
.end method

.method public static native nSendDCMessageMPI(Ljava/lang/String;J[B)Z
.end method

.method public static native nSendParticipantControl(II)V
.end method

.method public static native nSendShareBitmap(Landroid/graphics/Bitmap;III)Z
.end method

.method public static native nSendShareByteArray([BIIIII)Z
.end method

.method public static native nSendShareByteBuffer(Ljava/nio/ByteBuffer;IIIII)Z
.end method

.method public static native nSendVideoBitmap(Landroid/graphics/Bitmap;III)Z
.end method

.method public static native nSendVideoByteArray([BIIIII)Z
.end method

.method public static native nSendVideoByteBuffer(Ljava/nio/ByteBuffer;IIIII)Z
.end method

.method public static native nSetAudioEncodingParameters(II)Z
.end method

.method public static native nSetDeadPartyTimeout(I)Z
.end method

.method public static native nSetDisplayName(Ljava/lang/String;)V
.end method

.method public static native nSetEnableLocalIce(I)Z
.end method

.method public static native nSetEnableUSAPTURN(I)Z
.end method

.method public static native nSetEncodingParameters(IIIIII)Z
.end method

.method public static native nSetJsVersion(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native nSetLoggerLevel(I)V
.end method

.method public static native nSetMirrorMode(Z)V
.end method

.method public static native nSetNetworkInfo(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native nSetUrlReferer(Ljava/lang/String;)V
.end method

.method public static native nSetVersionOverride(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native nSetVideoEncodingParameters(III)Z
.end method

.method public static native nStartAudio(IIIIZZ)V
.end method

.method public static native nStartRecording(Ljava/lang/String;I)V
.end method

.method public static native nStartTranslation()Z
.end method

.method public static native nStopAudio()V
.end method

.method public static native nStopTranslation()Z
.end method

.method public static native nSwapFathers()V
.end method

.method public static native nUpdateMetadata(Ljava/lang/String;[BI)I
.end method

.method public static native nUpdateTS(Ljava/lang/String;I)I
.end method
