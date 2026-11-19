package net.rtccloud.sdk;

import net.rtccloud.sdk.event.call.ProgressivexStopEvent;
import net.rtccloud.sdk.internal.Constants;
import net.rtccloud.sdk.internal.Preconditions;
import net.rtccloud.sdk.internal.RtccExceptions;
import net.rtccloud.sdk.util.Input;
import net.rtccloud.sdk.util.OldLogger;

/* JADX INFO: loaded from: classes4.dex */
public class CallModule {
    private static final OldLogger log = OldLogger.get(OldLogger.Internal.CALL);
    Call call;
    final Native nativeInterface;
    private final Rtcc rtcc;

    public interface Native {
        public static final Native JNI = new Native() { // from class: net.rtccloud.sdk.CallModule.Native.1
            @Override // net.rtccloud.sdk.CallModule.Native
            public boolean call(String str) {
                return Jni.nCreateCall(str);
            }

            @Override // net.rtccloud.sdk.CallModule.Native
            public boolean callAttendee(String str) {
                return Jni.nCreateCallAttendee(str);
            }

            @Override // net.rtccloud.sdk.CallModule.Native
            public boolean callExternal(String str) {
                return Jni.nCreateCallExternal(str);
            }

            @Override // net.rtccloud.sdk.CallModule.Native
            public boolean callHost(String str) {
                return Jni.nCreateCallHost(str);
            }

            @Override // net.rtccloud.sdk.CallModule.Native
            public boolean callMirroring() {
                return Jni.nCreateCallMirroring();
            }

            @Override // net.rtccloud.sdk.CallModule.Native
            public boolean callSixDigits(String str) {
                return Jni.nCreateCallSixDigits(str);
            }
        };

        boolean call(String str);

        boolean callAttendee(String str);

        boolean callExternal(String str);

        boolean callHost(String str);

        boolean callMirroring();

        boolean callSixDigits(String str);
    }

    public CallModule(Rtcc rtcc, Native r2) {
        this.rtcc = rtcc;
        this.nativeInterface = r2;
    }

    private void _create(String str, Call.Parameters parameters) {
        OldLogger oldLogger = log;
        oldLogger.d("create(uid=%s, parameters=%s)", str, parameters);
        if (str == null) {
            throw RtccExceptions.newNullPointerException("[uid] must not be null");
        }
        if (parameters == null) {
            throw RtccExceptions.newNullPointerException("[parameters] must not be null");
        }
        Input input = Input.UID;
        if (!input.isValid(str)) {
            oldLogger.e("[uid] must be [%s] but is [%s]", input, str);
            return;
        }
        User user = this.rtcc.user();
        if (user != null && Preconditions.enforceRtccStatus(oldLogger, this.rtcc, Rtcc.Status.CONNECTED) && Preconditions.enforceNoCall(oldLogger, this.rtcc)) {
            if (user instanceof User.Internal) {
                this.call = new Call(this.rtcc, this, Call.Native.JNI, str, Call.Type.CALL_OUTBOUND, parameters);
                int iUidType = parameters.uidType();
                if (iUidType == 0) {
                    this.nativeInterface.call(str);
                    return;
                } else if (iUidType != 1) {
                    oldLogger.e("Unknown [uidType] defined in parameters [%d]", Integer.valueOf(iUidType));
                    return;
                } else {
                    this.nativeInterface.callExternal(str);
                    return;
                }
            }
            if (user instanceof User.SixDigits) {
                String strPin = ((User.SixDigits) user).pin();
                if (!str.equals(strPin)) {
                    oldLogger.e("[SixDigits] user only allowed to call its pin [%s]", strPin);
                    return;
                } else {
                    this.call = new Call(this.rtcc, this, Call.Native.JNI, strPin, Call.Type.CALL_OUTBOUND, parameters);
                    this.nativeInterface.callSixDigits(strPin);
                    return;
                }
            }
            if (!(user instanceof User.External)) {
                oldLogger.e("Invalid user type [%s]", user.getClass().toString());
                return;
            }
            Object objUid = ((User.External) user).uid();
            if (!str.equals(objUid)) {
                oldLogger.e("[External] user only allowed to call its parent [%s]", objUid);
            } else {
                this.call = new Call(this.rtcc, this, Call.Native.JNI, str, Call.Type.CALL_OUTBOUND, parameters);
                this.nativeInterface.call(str);
            }
        }
    }

    private void _mirroring(Call.Parameters parameters) {
        OldLogger oldLogger = log;
        oldLogger.d("mirroring(parameters=%s)", parameters);
        if (parameters == null) {
            throw RtccExceptions.newNullPointerException("[parameters] must not be null");
        }
        if (this.rtcc.user() != null && Preconditions.enforceRtccStatus(oldLogger, this.rtcc, Rtcc.Status.CONNECTED) && Preconditions.enforceNoCall(oldLogger, this.rtcc)) {
            this.call = new Call(this.rtcc, this, Call.Native.JNI, "mirroring", Call.Type.CONFERENCE_HOST, parameters);
            this.nativeInterface.callMirroring();
        }
    }

    public void create() {
        _create(new Call.Parameters());
    }

    public Call get() {
        return this.call;
    }

    public void handle(int i2, int i3, int i4, String str) {
        CallModule callModule;
        int i5;
        String str2;
        Call call = this.call;
        if (call != null) {
            int i6 = call.id;
            if (i6 == -1) {
                call.id = i3;
            } else if (i6 != i3) {
                log.e("Wrong call id, expected [%d] but has [%d]", Integer.valueOf(i3), Integer.valueOf(call.id));
                return;
            }
        }
        if (call != null) {
            callModule = this;
            i5 = i3;
            str2 = str;
        } else {
            if (i2 != 24832) {
                log.w("A [call] must exist");
                return;
            }
            callModule = this;
            i5 = i3;
            str2 = str;
            Call call2 = new Call(this.rtcc, callModule, Call.Native.JNI, i5, str2);
            callModule.call = call2;
            call = call2;
        }
        if (i2 == 24832) {
            call.created(i5, i4, str2);
            return;
        }
        if (i2 == 28928) {
            if (i4 == 29088 || i4 == 29089 || i4 == 29104) {
                callModule.call.conferenceModule.recordingModule.handle(i4);
                return;
            } else {
                call.updateStatus(i4);
                return;
            }
        }
        if (i2 == 29187) {
            int i7 = i4 & 15;
            if (((i4 >> 8) & 15) == 1) {
                callModule.call.liveTranslationNewSentenceCallback.newSentence(str2, i7);
                return;
            }
            return;
        }
        if (i2 == 29440) {
            call.updateSipId(str2);
            return;
        }
        if (i2 != 29952) {
            return;
        }
        int i8 = i4 & 1024;
        Call call3 = callModule.call;
        if (i8 == 1024) {
            call3.setUseNgaSVG(true);
            callModule.call.activateSvgAnnotation();
        } else {
            call3.setUseNgaSVG(false);
            callModule.call.deactivateSvgAnnotation();
        }
    }

    public void handleAudio(boolean z) {
        if (Preconditions.enforceCall(log, this.call)) {
            Call call = this.call;
            if (z) {
                call.audioModule.onStart();
            } else {
                call.audioModule.onStop();
            }
        }
    }

    public void handleAudioFrameLength(int i2) {
        if (Preconditions.enforceCall(log, this.call)) {
            this.call.audioModule.setFrameLength(i2);
        }
    }

    public void handleAudioFrequency(int i2) {
        if (Preconditions.enforceCall(log, this.call)) {
            this.call.audioModule.setFrequency(i2);
        }
    }

    public void handleShareStartStop(int i2, int i3) {
        if (Preconditions.enforceCall(log, this.call)) {
            switch (i2) {
                case Constants.Call.SHARE_START /* 37635 */:
                    switch (i3) {
                        case Constants.Direction.SEND /* 37377 */:
                            this.call.screenshareModule.updateSendingStatus(true);
                            break;
                        case Constants.Direction.RECV /* 37378 */:
                            this.call.screenshareModule.updateReceivingStatus(true);
                            break;
                        case Constants.Direction.BOTH /* 37379 */:
                            this.call.screenshareModule.updateReceivingStatus(true);
                            this.call.screenshareModule.updateSendingStatus(true);
                            break;
                    }
                    break;
                case Constants.Call.SHARE_STOP /* 37636 */:
                    this.rtcc.bus.post(new ProgressivexStopEvent());
                    switch (i3) {
                        case Constants.Direction.SEND /* 37377 */:
                            this.call.screenshareModule.updateSendingStatus(false);
                            break;
                        case Constants.Direction.RECV /* 37378 */:
                            this.call.screenshareModule.updateReceivingStatus(false);
                            break;
                        case Constants.Direction.BOTH /* 37379 */:
                            this.call.screenshareModule.updateReceivingStatus(false);
                            this.call.screenshareModule.updateSendingStatus(false);
                            break;
                    }
                    break;
            }
        }
    }

    public void handleVideoProfile(int i2) {
        if (Preconditions.enforceCall(log, this.call)) {
            this.call.videoModule.updateProfile(i2);
        }
    }

    public void handleVideoStartStop(int i2, int i3) {
        if (Preconditions.enforceCall(log, this.call)) {
            if (i2 == 37424 || i2 == 37440) {
                boolean z = i2 == 37424;
                switch (i3) {
                    case Constants.Direction.SEND /* 37377 */:
                        this.call.videoModule.updateSendingStatus(z);
                        break;
                    case Constants.Direction.RECV /* 37378 */:
                        this.call.videoModule.updateReceivingStatus(z);
                        break;
                    case Constants.Direction.BOTH /* 37379 */:
                        this.call.videoModule.updateStatus(z);
                        break;
                }
            }
        }
    }

    public void mirroring() {
        _mirroring(new Call.Parameters());
    }

    public void reset() {
        this.call = null;
    }

    public Rtcc rtcc() {
        return this.rtcc;
    }

    public void create(Call.Parameters parameters) {
        _create(parameters);
    }

    public void mirroring(Call.Parameters parameters) {
        _mirroring(parameters);
    }

    public void create(String str) {
        _create(str, new Call.Parameters());
    }

    public void create(String str, Call.Parameters parameters) {
        _create(str, parameters);
    }

    public void create(MeetingPoint meetingPoint) {
        _create(meetingPoint, new Call.Parameters());
    }

    public void create(MeetingPoint meetingPoint, Call.Parameters parameters) {
        _create(meetingPoint, parameters);
    }

    private void _create(Call.Parameters parameters) {
        OldLogger oldLogger = log;
        oldLogger.d("create(parameters=%s)", parameters);
        if (parameters != null) {
            User user = this.rtcc.user();
            if (user != null && Preconditions.enforceUserType(oldLogger, user, User.SixDigits.class, User.External.class) && Preconditions.enforceRtccStatus(oldLogger, this.rtcc, Rtcc.Status.CONNECTED) && Preconditions.enforceNoCall(oldLogger, this.rtcc)) {
                if (user instanceof User.SixDigits) {
                    String strPin = ((User.SixDigits) user).pin();
                    this.call = new Call(this.rtcc, this, Call.Native.JNI, strPin, Call.Type.CALL_OUTBOUND, parameters);
                    this.nativeInterface.callSixDigits(strPin);
                    return;
                } else {
                    if (user instanceof User.External) {
                        String strUid = ((User.External) user).uid();
                        this.call = new Call(this.rtcc, this, Call.Native.JNI, strUid, Call.Type.CALL_OUTBOUND, parameters);
                        this.nativeInterface.call(strUid);
                        return;
                    }
                    return;
                }
            }
            return;
        }
        throw RtccExceptions.newNullPointerException("[parameters] must not be null");
    }

    private void _create(MeetingPoint meetingPoint, Call.Parameters parameters) {
        OldLogger oldLogger = log;
        oldLogger.d("create(mp=%s, parameters=%s)", meetingPoint, parameters);
        if (meetingPoint != null) {
            String strId = meetingPoint.id();
            if (strId == null) {
                throw RtccExceptions.newNullPointerException("[mpid] must not be null");
            }
            if (parameters != null) {
                if (Preconditions.enforceRtccStatus(oldLogger, this.rtcc, Rtcc.Status.CONNECTED) && Preconditions.enforceMeetingPointStatus(oldLogger, meetingPoint, MeetingPoint.Status.CREATED, MeetingPoint.Status.HOSTED) && Preconditions.enforceNoCall(oldLogger, this.rtcc)) {
                    if (meetingPoint.isHost()) {
                        if (oldLogger.d()) {
                            oldLogger.d("call(mpid=%s, parameters=%s) as host", strId, parameters);
                        }
                        this.call = new Call(this.rtcc, this, Call.Native.JNI, strId, Call.Type.CONFERENCE_HOST, parameters);
                        if (this.nativeInterface.callHost(strId)) {
                            return;
                        }
                        this.call.updateStatus(Constants.CallStatus.LOCAL_ENDED);
                        return;
                    }
                    if (oldLogger.d()) {
                        oldLogger.d("call(mpid=%s, parameters=%s) as attendee", strId, parameters);
                    }
                    this.call = new Call(this.rtcc, this, Call.Native.JNI, strId, Call.Type.CONFERENCE_ATTENDEE, parameters);
                    if (this.nativeInterface.callAttendee(strId)) {
                        return;
                    }
                    this.call.updateStatus(Constants.CallStatus.LOCAL_ENDED);
                    return;
                }
                return;
            }
            throw RtccExceptions.newNullPointerException("[parameters] must not be null");
        }
        throw RtccExceptions.newNullPointerException("[mp] must not be null");
    }
}
