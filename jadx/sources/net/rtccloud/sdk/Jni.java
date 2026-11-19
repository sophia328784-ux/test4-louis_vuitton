package net.rtccloud.sdk;

import android.graphics.Bitmap;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes4.dex */
public class Jni {
    public static native boolean nAcdAcceptRequest(String str);

    public static native boolean nAcdCancel();

    public static native boolean nAcdDeclineRequest(String str);

    public static native boolean nAcdGetUser(long j2, long j3, boolean z);

    public static native boolean nAcdGetWaitingList();

    public static native boolean nAcdRequest(long j2, long j3);

    public static native boolean nAcdSetPresence(long j2);

    public static native boolean nAcdSetPriority(long j2);

    public static native void nAudioSetSamplingRate(int i2);

    public static native void nBrutalDisconnect();

    public static native void nBuildStartupLog();

    public static native Frame nCallGetProgressivexFrame(FrameCache frameCache);

    public static native Frame nCallGetShareFrame(FrameCache frameCache);

    public static native Frame nCallGetVideoFrame(FrameCache frameCache);

    public static native int nCheckCloudConnection();

    public static native void nConnect(Rtcc rtcc, int i2, int i3, int i4, boolean z, boolean z2, boolean z3, boolean z4, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, int i5);

    public static native void nConnectMeeting(Rtcc rtcc, int i2, int i3, int i4, String str, String str2, String str3, String str4, int i5, int i6, String str5, String str6, String str7, int i7, String str8, int i8, boolean z);

    public static native void nControlMeetingPoint(String str, int i2, String str2);

    public static native boolean nConvertBGR2RGB(Bitmap bitmap);

    public static native boolean nCreateCall(String str);

    public static native boolean nCreateCallAttendee(String str);

    public static native boolean nCreateCallExternal(String str);

    public static native boolean nCreateCallHost(String str);

    public static native boolean nCreateCallMirroring();

    public static native boolean nCreateCallSixDigits(String str);

    public static native void nDCShareDecoderStop();

    public static native boolean nDCShareSend(byte[] bArr, int i2, int i3, int i4, int i5, int i6);

    public static native void nDCShareSendStop(int i2);

    public static native boolean nDCThumbnailSend(byte[] bArr, int i2, int i3, String str);

    public static native boolean nDataChannelAck(String str, int i2, int i3);

    public static native boolean nDataChannelSendInBand(byte[] bArr);

    public static native boolean nDataChannelSendOutOfBand(byte[] bArr, long j2, String str);

    public static native boolean nDataChannelSendOutOfBandMulti(byte[] bArr, long j2, String... strArr);

    public static native void nDisconnect();

    public static native void nDisconnectEnd();

    public static native ByteBuffer nDumpAnalyticsChunk();

    public static native ByteBuffer nDumpStats();

    public static native ByteBuffer nEncryptBuffer(byte[] bArr);

    public static native void nEncryptInit();

    public static native int nGetAllMyChatRooms();

    public static native Call.QualityIndicator nGetCallQualityIndicator();

    public static native int nGetChatRoomForMID(String str);

    public static native int nGetChatRooms(String[] strArr, int i2);

    public static native int nGetHistory(String str, int i2, int i3);

    public static native void nGetMeetingPoint(String str);

    public static native long nGetNetworkLatency();

    public static native String nGetRealtimePlatformName();

    public static native String nGetSid();

    public static native String nGetUid();

    public static native int nGetVersion();

    public static native void nLogHapEventBegin();

    public static native void nLogHapEventError(String str);

    public static native void nMutePlaying(boolean z);

    public static native void nMuteRecording(boolean z);

    public static native void nPassiveStreamsOnly(boolean z);

    public static native boolean nPresenceGet(String... strArr);

    public static native boolean nPresenceGetRoster();

    public static native boolean nPresenceSet(int i2);

    public static native void nRegisterForTests();

    public static native int nRegisterJWT(String str);

    public static native void nResetFastMode();

    public static native boolean nRosterAdd(String... strArr);

    public static native boolean nRosterClear();

    public static native boolean nRosterRemove(String... strArr);

    public static native void nSendAvatar(String str, int i2, byte[] bArr);

    public static native void nSendCallControl(int i2, int i3, int i4);

    public static native int nSendChat(String str, byte[] bArr, int i2);

    public static native void nSendConfControl(int i2);

    public static native boolean nSendDCMessageMPI(String str, long j2, byte[] bArr);

    public static native void nSendParticipantControl(int i2, int i3);

    public static native boolean nSendShareBitmap(Bitmap bitmap, int i2, int i3, int i4);

    public static native boolean nSendShareByteArray(byte[] bArr, int i2, int i3, int i4, int i5, int i6);

    public static native boolean nSendShareByteBuffer(ByteBuffer byteBuffer, int i2, int i3, int i4, int i5, int i6);

    public static native boolean nSendVideoBitmap(Bitmap bitmap, int i2, int i3, int i4);

    public static native boolean nSendVideoByteArray(byte[] bArr, int i2, int i3, int i4, int i5, int i6);

    public static native boolean nSendVideoByteBuffer(ByteBuffer byteBuffer, int i2, int i3, int i4, int i5, int i6);

    public static native boolean nSetAudioEncodingParameters(int i2, int i3);

    public static native boolean nSetDeadPartyTimeout(int i2);

    public static native void nSetDisplayName(String str);

    public static native boolean nSetEnableLocalIce(int i2);

    public static native boolean nSetEnableUSAPTURN(int i2);

    public static native boolean nSetEncodingParameters(int i2, int i3, int i4, int i5, int i6, int i7);

    public static native void nSetJsVersion(String str, String str2);

    public static native void nSetLoggerLevel(int i2);

    public static native void nSetMirrorMode(boolean z);

    public static native void nSetNetworkInfo(String str, String str2);

    public static native void nSetUrlReferer(String str);

    public static native void nSetVersionOverride(String str, String str2, String str3);

    public static native boolean nSetVideoEncodingParameters(int i2, int i3, int i4);

    public static native void nStartAudio(int i2, int i3, int i4, int i5, boolean z, boolean z2);

    public static native void nStartRecording(String str, int i2);

    public static native boolean nStartTranslation();

    public static native void nStopAudio();

    public static native boolean nStopTranslation();

    public static native void nSwapFathers();

    public static native int nUpdateMetadata(String str, byte[] bArr, int i2);

    public static native int nUpdateTS(String str, int i2);
}
