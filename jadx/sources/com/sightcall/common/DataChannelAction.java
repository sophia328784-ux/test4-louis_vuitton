package com.sightcall.common;

import defpackage.d21;
import java.util.LinkedList;
import java.util.Locale;
import net.rtccloud.sdk.DataChannelModule;
import net.rtccloud.sdk.Rtcc;

/* JADX INFO: loaded from: classes3.dex */
public enum DataChannelAction {
    POINTER("RTCCPTR", "%04X%04X"),
    DRAW("RTCCDRAW", "%04X%04X"),
    DROP("RTCCDROP", "%04X%04X"),
    POINTER2("RTCCPTR", "%04X%04X|%02X|%02X"),
    DRAW2("RTCCDRAW", "%04X%04X|%02X|%02X"),
    DROP2("RTCCDROP", "%04X%04X|%02X|%02X"),
    ERASE("RTCCERASE"),
    TORCH_AVAILABLE("RTCCTORCHAVAILABLE"),
    TORCH_UNAVAILABLE("RTCCTORCHUNAVAILABLE"),
    START_LIGHT("RTCCSTARTLIGHT"),
    STARTED_LIGHT("RTCCSTARTEDLIGHT"),
    STOP_LIGHT("RTCCSTOPLIGHT"),
    STOPPED_LIGHT("RTCCSTOPPEDLIGHT"),
    START_MUTE("RTCCSTARTMUTE"),
    STARTED_MUTE("RTCCSTARTEDMUTE"),
    STOP_MUTE("RTCCSTOPMUTE", "%s"),
    STOPPED_MUTE("RTCCSTOPPEDMUTE"),
    CHANGED_SOUND_TO_SPEAKER("RTCCLOUDSPEAKER"),
    CHANGED_SOUND_TO_HEADSET("RTCCEARSPEAKER"),
    START_HOLD("RTCCSTARTHOLD"),
    STARTED_HOLD("RTCCSTARTEDHOLD"),
    STOP_HOLD("RTCCSTOPHOLD"),
    STOPPED_HOLD("RTCCSTOPPEDHOLD"),
    START_CAMERA("RTCCSTARTCAMERA"),
    STARTED_CAMERA("RTCCSTARTEDCAMERA"),
    STOP_CAMERA("RTCCSTOPCAMERA"),
    STOPPED_CAMERA("RTCCSTOPPEDCAMERA"),
    SET_CAMERA_FRONT("RTCCSETCAMERAFRONT"),
    SETTED_CAMERA_FRONT("RTCCSETTEDCAMERAFRONT"),
    SET_CAMERA_REAR("RTCCSETCAMERAREAR"),
    SETTED_CAMERA_REAR("RTCCSETTEDCAMERAREAR"),
    ZOOM_CAMERA("RTCCZOOMCAMERA", "%04X"),
    ZOOMED_CAMERA("RTCCZOOMEDCAMERA", "%04X"),
    FOCUS("RTCCFOCUS"),
    REQUEST_GEOLOCATION("RTCC_REQUEST_GEOLOCATION", "%s"),
    GEOLOCATION_RESPONSE("RTCC_RESPONSE_GEOLOCATION", "%s"),
    STOP_LOCATION("RTCCSTOPLOCATION"),
    START_SCREENCAST("RTCCSTARTSCREENCAST"),
    SCREENCAST_ENTER("RTCCSCREENCAST0"),
    SCREENCAST_ACCEPT("RTCCSCREENCAST2"),
    SCREENCAST_DENY("RTCCSCREENCAST1"),
    STARTED_SCREENCAST("RTCCSTARTEDSCREENCAST"),
    STOP_SCREENCAST("RTCCSTOPSCREENCAST"),
    STOPPED_SCREENCAST("RTCCSTOPPEDSCREENCAST"),
    START_SNAPSHOT("RTCCSTARTSNAPSHOT"),
    STARTED_SNAPSHOT("RTCCSTARTEDSNAPSHOT"),
    SNAPSHOT("RTCCSNAPSHOT"),
    STOP_SNAPSHOT("RTCCSTOPSNAPSHOT"),
    STOPPED_SNAPSHOT("RTCCSTOPPEDSNAPSHOT"),
    START_COLLIMATOR("RTCCSTARTCOLLIMATOR"),
    STARTED_COLLIMATOR("RTCCSTARTEDCOLLIMATOR"),
    STOP_COLLIMATOR("RTCCSTOPCOLLIMATOR"),
    STOPPED_COLLIMATOR("RTCCSTOPPEDCOLLIMATOR"),
    OCR("RTCCOCR", "%s"),
    OCR_SUCCESS("RTCCOCRSUCCESS"),
    OCR_ERROR("RTCCOCRERROR"),
    GET_IP_ADDRESS("RTCCGETIP"),
    IP_ADDRESS("RTCCIP", "%s"),
    GET_PROPERTIES("RTCCGETPROPERTIES"),
    PROPERTIES("RTCCPROPERTIES", "%s"),
    GET_STATE("RTCCGETSTATE"),
    STATE("RTCCSTATE", "%s"),
    GET_DEVICE_STATUS("RTCCGETSTATUS"),
    DEVICE_STATUS("RTCCSTATUS", "%s"),
    START_PICTURE("RTCCSTARTPICTURE"),
    STARTED_PICTURE("RTCCSTARTEDPICTURE"),
    SELECT_MEDIA("RTCCSELECTMEDIA"),
    SELECTING_MEDIA("RTCCSELECTINGMEDIA"),
    CANCELLED_MEDIA("RTCCCANCELLEDMEDIA"),
    SELECT_PHOTO("RTCCSELECTPHOTO"),
    SELECTING_PHOTO("RTCCSELECTINGPHOTO"),
    SELECTED_PHOTO("RTCCSELECTEDPHOTO"),
    CANCELLED_PHOTO("RTCCCANCELLEDPHOTO"),
    SELECT_PICTURE("RTCCSELECTPICTURE"),
    SELECTING_PICTURE("RTCCSELECTINGPICTURE"),
    SELECTED_PICTURE("RTCCSELECTEDPICTURE"),
    CANCELLED_PICTURE("RTCCCANCELLEDPICTURE"),
    STOP_PICTURE("RTCCSTOPPICTURE"),
    STOPPED_PICTURE("RTCCSTOPPEDPICTURE"),
    SELECT_VIDEO("RTCCSELECTVIDEO"),
    SELECTING_VIDEO("RTCCSELECTINGVIDEO"),
    SELECTED_VIDEO("RTCCSELECTEDVIDEO"),
    CANCELLED_VIDEO("RTCCCANCELLEDVIDEO"),
    SEEK_PLAYER("RTCCSEEKPLAYER", "%d"),
    STARTED_PLAYER("RTCCSTARTEDPLAYER"),
    STOP_PLAYER("RTCCSTOPPLAYER"),
    STOPPED_PLAYER("RTCCSTOPPEDPLAYER"),
    RESUME_PLAYER("RTCCRESUMEPLAYER"),
    RESUMED_PLAYER("RTCCRESUMEDPLAYER"),
    PAUSE_PLAYER("RTCCPAUSEPLAYER"),
    PAUSED_PLAYER("RTCCPAUSEDPLAYER"),
    START_SHARE("RTCCSTARTSHARE", "%"),
    STARTED_SHARE("RTCCSTARTEDSHARE"),
    STOP_SHARE("RTCCSTOPSHARE"),
    STOPPED_SHARE("RTCCSTOPPEDSHARE"),
    PROPOSITION("RTCCPROPOSITION", "%s"),
    MESSAGING("RTCCMSGCHAT", "%s"),
    USB_CAMERA_ENABLE("RTCCUSBCAMERAENABLE"),
    USB_CAMERA_ENABLED("RTCCUSBCAMERAENABLED"),
    USB_CAMERA_DISABLE("RTCCUSBCAMERADISABLE"),
    USB_CAMERA_DISABLED("RTCCUSBCAMERADISABLED"),
    AR_START("RTCC_AR_START", "%s"),
    AR_START_IGNORED("RTCC_AR_START_IGNORED", "%s"),
    AR_STARTED("RTCC_AR_STARTED"),
    AR_STOP("RTCC_AR_STOP"),
    AR_STOPPED("RTCC_AR_STOPPED"),
    AR_POPUP("RTCC_AR_POPUP", "%s"),
    AR_TRACKING("RTCC_AR_TRACKING", "%s"),
    AR_ANCHORS("RTCC_AR_ANCHORS", "%s"),
    AR_UNDO("RTCC_AR_UNDO"),
    AR_RESET("RTCC_AR_RESET"),
    AR_SAVE("RTCC_AR_SAVE"),
    AR_SAVED("RTCC_AR_SAVED", "%s"),
    LIVE_QR_START("RTCC_LIVE_QR_START"),
    LIVE_QR_STARTED("RTCC_LIVE_QR_STARTED"),
    LIVE_QR_DETECTED("RTCC_LIVE_QR_DETECTED", "%s"),
    LIVE_QR_STOP("RTCC_LIVE_QR_STOP"),
    LIVE_QR_STOPPED("RTCC_LIVE_QR_STOPPED"),
    CAPABILITIES_REQUEST("RTCC_CAPABILITIES_REQUEST", "%s"),
    CAPABILITIES_RESPONSE("RTCC_CAPABILITIES_RESPONSE", "%s"),
    CAPABILITIES_UPDATE("RTCC_CAPABILITIES_UPDATE", "%s"),
    CAPABILITIES_CANCEL("RTCC_CAPABILITIES_CANCEL", "%s"),
    SWITCH_REQUEST("RTCC_SWITCH_REQUEST", "%s"),
    SWITCH_ACCEPT("RTCC_SWITCH_ACCEPT", "%s"),
    SWITCH_DECLINE("RTCC_SWITCH_DECLINE", "%s"),
    SWITCH_CANCEL("RTCC_SWITCH_CANCEL", "%s"),
    SWITCH_ACK("RTCC_SWITCHED", "%s"),
    SDF_OPEN("RTCCOPENSDF", "%s"),
    SDF_OPENED("RTCCFLOWREADY"),
    SDF_OPEN_ERROR("RTCCFLOWERROR", "%s"),
    SDF_CLOSE("RTCCCLOSESDF"),
    SDF_CLOSED("RTCCCLOSEDSDF"),
    RTCC_REQUEST_TRANSLATE_REMOTE("RTCC_REQUEST_TRANSLATE_REMOTE", "%s"),
    RTCC_RESPONSE_TRANSLATION("RTCC_RESPONSE_TRANSLATION", "%s"),
    ANNOTATION_REQUEST("RTCC_ANNOTATION_REQUEST", "%s"),
    VIDEO_ANNOTATION("@", "%s");

    private static final byte[] RTCC_PREFIX;
    private static final LinkedList<byte[]> prefixes;
    private final byte[] baseBytes;
    private final String parameter;

    public static final class Wrapper {
        public String extra;
    }

    static {
        LinkedList<byte[]> linkedList = new LinkedList<>();
        prefixes = linkedList;
        linkedList.add("RTCC".getBytes());
        linkedList.add("@".getBytes());
        RTCC_PREFIX = "RTCC".getBytes();
    }

    DataChannelAction(String str, String str2) {
        this.baseBytes = str.getBytes();
        this.parameter = d21.j(str, str2);
    }

    private static boolean checkPrefix(byte[] bArr, byte[] bArr2) {
        if (bArr.length <= bArr2.length) {
            return false;
        }
        for (int i2 = 0; i2 < bArr2.length; i2++) {
            if (bArr2[i2] != bArr[i2]) {
                return false;
            }
        }
        return true;
    }

    private static byte[] findPrefix(byte[] bArr) {
        for (byte[] bArr2 : prefixes) {
            if (checkPrefix(bArr, bArr2)) {
                return bArr2;
            }
        }
        return null;
    }

    public static DataChannelAction outOfBandValueOf(byte[] bArr, Wrapper wrapper) {
        String str = null;
        if (bArr != null && bArr.length > RTCC_PREFIX.length) {
            int i2 = 0;
            while (true) {
                byte[] bArr2 = RTCC_PREFIX;
                if (i2 >= bArr2.length) {
                    int length = bArr2.length;
                    for (DataChannelAction dataChannelAction : values()) {
                        boolean z = dataChannelAction.parameter == null;
                        if ((!z || bArr.length == dataChannelAction.baseBytes.length) && startWith(bArr, dataChannelAction.baseBytes, length)) {
                            if (!z) {
                                byte[] bArr3 = dataChannelAction.baseBytes;
                                str = new String(bArr, bArr3.length, bArr.length - bArr3.length);
                            }
                            wrapper.extra = str;
                            return dataChannelAction;
                        }
                    }
                    break;
                }
                if (bArr2[i2] != bArr[i2]) {
                    return null;
                }
                i2++;
            }
        }
        return null;
    }

    private static boolean safeSend(DataChannelModule dataChannelModule, byte[] bArr) {
        try {
            return dataChannelModule.sendInBand(bArr);
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    private static boolean startWith(byte[] bArr, byte[] bArr2, int i2) {
        if (bArr == null || bArr2 == null) {
            return false;
        }
        int length = bArr.length;
        int length2 = bArr2.length;
        if (length < length2) {
            return false;
        }
        while (i2 < length2) {
            if (bArr[i2] != bArr2[i2]) {
                return false;
            }
            i2++;
        }
        return true;
    }

    public static DataChannelAction valueOf(byte[] bArr, Wrapper wrapper) {
        byte[] bArrFindPrefix;
        String str = null;
        if (bArr == null || (bArrFindPrefix = findPrefix(bArr)) == null) {
            return null;
        }
        int length = bArrFindPrefix.length;
        for (DataChannelAction dataChannelAction : values()) {
            boolean z = dataChannelAction.parameter == null;
            if ((!z || bArr.length == dataChannelAction.baseBytes.length) && startWith(bArr, dataChannelAction.baseBytes, length)) {
                if (!z) {
                    byte[] bArr2 = dataChannelAction.baseBytes;
                    str = new String(bArr, bArr2.length, bArr.length - bArr2.length);
                }
                wrapper.extra = str;
                return dataChannelAction;
            }
        }
        return null;
    }

    public String getBase() {
        return new String(this.baseBytes);
    }

    public boolean send(Object... objArr) {
        String strName = name();
        strName.getClass();
        boolean z = true;
        switch (strName) {
            case "SWITCH_ACCEPT":
            case "SWITCH_DECLINE":
            case "CAPABILITIES_UPDATE":
            case "MESSAGING":
            case "CAPABILITIES_RESPONSE":
                break;
            default:
                z = false;
                break;
        }
        if (IgnoreAndFilterInBandDataChannel.INSTANCE.getValue() && !z) {
            return false;
        }
        return safeSend(Rtcc.instance().dataChannel(), String.format(Locale.US, this.parameter, objArr).getBytes());
    }

    DataChannelAction(String str) {
        this.baseBytes = str.getBytes();
        this.parameter = null;
    }

    public boolean send(DataChannelModule dataChannelModule) {
        return (IgnoreAndFilterInBandDataChannel.INSTANCE.getValue() || dataChannelModule == null || !safeSend(dataChannelModule, this.baseBytes)) ? false : true;
    }

    public boolean send() {
        if (IgnoreAndFilterInBandDataChannel.INSTANCE.getValue()) {
            return false;
        }
        return safeSend(Rtcc.instance().dataChannel(), this.baseBytes);
    }

    public boolean send(DataChannelModule dataChannelModule, Object... objArr) {
        if (IgnoreAndFilterInBandDataChannel.INSTANCE.getValue()) {
            return false;
        }
        return dataChannelModule != null && safeSend(dataChannelModule, String.format(Locale.US, this.parameter, objArr).getBytes());
    }
}
