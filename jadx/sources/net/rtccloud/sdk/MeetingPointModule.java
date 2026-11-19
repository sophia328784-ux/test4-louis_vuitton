package net.rtccloud.sdk;

import com.sightcall.pratik.extensions.AnyExtensionsKt;
import defpackage.d21;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import net.rtccloud.sdk.event.meetingpoint.ErrorEvent;
import net.rtccloud.sdk.event.meetingpoint.LockEvent;
import net.rtccloud.sdk.event.meetingpoint.RequestEvent;
import net.rtccloud.sdk.event.meetingpoint.StatusEvent;
import net.rtccloud.sdk.event.meetingpoint.UpdateEvent;
import net.rtccloud.sdk.internal.Constants;
import net.rtccloud.sdk.internal.RtccExceptions;
import net.rtccloud.sdk.util.Input;
import net.rtccloud.sdk.util.OldLogger;

/* JADX INFO: loaded from: classes4.dex */
public class MeetingPointModule {
    private static final OldLogger log = OldLogger.get(OldLogger.Internal.MEETING_POINT);
    protected final HashMap<String, MeetingPoint> meetingPoints = new HashMap<>();
    private List<String> mpList = new ArrayList();
    protected MeetingPoint pendingMeetingPoint;
    private final Rtcc rtcc;

    /* JADX INFO: renamed from: net.rtccloud.sdk.MeetingPointModule$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$net$rtccloud$sdk$MeetingPoint$Status;

        static {
            int[] iArr = new int[MeetingPoint.Status.values().length];
            $SwitchMap$net$rtccloud$sdk$MeetingPoint$Status = iArr;
            try {
                iArr[MeetingPoint.Status.CREATING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$net$rtccloud$sdk$MeetingPoint$Status[MeetingPoint.Status.CREATED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$net$rtccloud$sdk$MeetingPoint$Status[MeetingPoint.Status.HOSTED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$net$rtccloud$sdk$MeetingPoint$Status[MeetingPoint.Status.STOPPED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public MeetingPointModule(Rtcc rtcc) {
        this.rtcc = rtcc;
    }

    private static ErrorEvent.Action findCorrespondingError(int i2, int i3) {
        if (i2 == 12288) {
            if (i3 == 1) {
                return ErrorEvent.Action.CREATE;
            }
            if (i3 == 2) {
                return ErrorEvent.Action.UPDATE;
            }
            if (i3 != 4) {
                return i3 != 5 ? ErrorEvent.Action.UNKNOWN : ErrorEvent.Action.DETAILS;
            }
            return ErrorEvent.Action.DELETE;
        }
        if (i2 != 12304) {
            return ErrorEvent.Action.UNKNOWN;
        }
        switch (i3) {
            case 1:
                return ErrorEvent.Action.HOST;
            case 2:
                return ErrorEvent.Action.ACCEPT;
            case 3:
                return ErrorEvent.Action.DENY;
            case 4:
                return ErrorEvent.Action.CANCEL;
            case 5:
                return ErrorEvent.Action.STOP;
            case 6:
                return ErrorEvent.Action.JOIN;
            case 7:
                return ErrorEvent.Action.INVITE;
            case 8:
                return ErrorEvent.Action.ACCEPTONETOONE;
            case 9:
            case 10:
                return ErrorEvent.Action.LOCK;
            default:
                return ErrorEvent.Action.UNKNOWN;
        }
    }

    private synchronized MeetingPoint get(String str, boolean z) {
        MeetingPoint meetingPoint;
        try {
            meetingPoint = this.meetingPoints.get(str);
            if (meetingPoint == null) {
                meetingPoint = new MeetingPoint(this.rtcc, MeetingPoint.Native.JNI, str, z);
                this.meetingPoints.put(str, meetingPoint);
            } else {
                meetingPoint.isHost = z;
            }
        } catch (Throwable th) {
            throw th;
        }
        return meetingPoint;
    }

    public MeetingPoint asAttendee(String str) {
        OldLogger oldLogger = log;
        if (oldLogger.d()) {
            oldLogger.d("asAttendee(%s)", str);
        }
        if (str != null) {
            return get(str, false);
        }
        throw RtccExceptions.newNullPointerException("[mpid] must not be null");
    }

    public MeetingPoint asHost(String str) {
        OldLogger oldLogger = log;
        if (oldLogger.d()) {
            oldLogger.d("asHost(%s)", str);
        }
        if (str != null) {
            return get(str, true);
        }
        throw RtccExceptions.newNullPointerException("[mpid] must not be null");
    }

    public synchronized void handleConfig(int i2, Object obj) {
        MeetingPoint meetingPoint;
        if (obj == null) {
            return;
        }
        try {
            MeetingPoint.DataUrl dataUrl = obj instanceof MeetingPoint.DataUrl ? (MeetingPoint.DataUrl) obj : null;
            MeetingPoint.DataDetails dataDetails = obj instanceof MeetingPoint.DataDetails ? (MeetingPoint.DataDetails) obj : null;
            if (i2 == 1) {
                meetingPoint = this.pendingMeetingPoint;
            } else if (dataUrl != null) {
                meetingPoint = this.meetingPoints.get(dataUrl.mpid);
            } else {
                meetingPoint = dataDetails != null ? this.meetingPoints.get(dataDetails.mpid) : null;
            }
            if (meetingPoint == null) {
                log.e("MeetingPoint is [null]");
                return;
            }
            int i3 = AnonymousClass1.$SwitchMap$net$rtccloud$sdk$MeetingPoint$Status[meetingPoint.status().ordinal()];
            if (i3 != 1) {
                if (i3 == 2 || i3 == 3 || i3 == 4) {
                    if (i2 == 2) {
                        meetingPoint.handle(dataUrl);
                        meetingPoint.details();
                        return;
                    } else if (i2 == 3) {
                        meetingPoint.handle(dataUrl);
                        return;
                    } else if (i2 == 5) {
                        meetingPoint.handle(dataDetails);
                        this.rtcc.bus.post(new UpdateEvent(meetingPoint));
                        return;
                    }
                }
            } else {
                if (i2 == 1) {
                    if (dataUrl == null) {
                        log.e("Missing [data] to create MeetingPoint");
                        return;
                    }
                    this.pendingMeetingPoint = null;
                    this.meetingPoints.put(dataUrl.mpid, meetingPoint);
                    meetingPoint.handle(dataUrl);
                    meetingPoint.details();
                    return;
                }
                if (i2 == 3) {
                    meetingPoint.handle(dataUrl);
                    return;
                } else if (i2 == 5) {
                    meetingPoint.handle(dataDetails);
                    MeetingPoint.Status status = MeetingPoint.Status.CREATED;
                    meetingPoint.updateStatus(status);
                    this.rtcc.bus.post(new StatusEvent(meetingPoint, status));
                    return;
                }
            }
            log.i("Invalid [param] [%s] in status [%s]", Constants.MeetingPointConfig.valueOf(i2), meetingPoint.status());
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void handleControl(int i2, int i3, Object obj) {
        boolean z;
        boolean z2;
        Call call;
        if (obj != null) {
            if (obj instanceof MeetingPoint.DataControl) {
                MeetingPoint.DataControl dataControl = (MeetingPoint.DataControl) obj;
                MeetingPoint meetingPoint = this.meetingPoints.get(dataControl.mpid);
                boolean z3 = i3 != -1;
                boolean z4 = i3 == 1;
                if (meetingPoint == null) {
                    if (i2 == 2 || i2 == 3 || i2 == 4 || i2 == 6) {
                        call = this.rtcc.call().get();
                        User user = this.rtcc.user();
                        if (call != null && call.status() == Call.Status.CREATING && call.type() == Call.Type.CALL_OUTBOUND && user != null && (user instanceof User.SixDigits)) {
                            log.i("Incoming MeetingPoint detected! It will replace the current sixdigits call");
                            call.end();
                        }
                    } else if (i2 != 7) {
                        if (i2 != 8) {
                            log.e("MeetingPoint is [null]");
                            return;
                        }
                        call = this.rtcc.call().get();
                        User user2 = this.rtcc.user();
                        if (call != null) {
                            log.i("Incoming MeetingPoint detected! It will replace the current sixdigits call");
                            call.end();
                        }
                    }
                    meetingPoint = new MeetingPoint(this.rtcc, MeetingPoint.Native.JNI, dataControl);
                    this.meetingPoints.put(meetingPoint.id(), meetingPoint);
                }
                if (i2 == 16) {
                    this.rtcc.sendMeetingCallBack("{\"status\":\"ok\",\"evt\":\"meetingpointhosted\",\"mode\":\"1\",\"mpi\":\"" + meetingPoint.id() + "\"}");
                    return;
                }
                if (i2 == 32) {
                    this.rtcc.sendMeetingCallBack("{\"status\":\"ok\",\"evt\":\"meetingpointhosted\",\"mode\":\"b\",\"mpi\":\"" + meetingPoint.id() + "\"}");
                    return;
                }
                if (i2 == 48) {
                    this.rtcc.sendMeetingCallBack("{\"status\":\"ok\",\"evt\":\"meetingpointattended\",\"request\":\"hosted\",\"mpi\":\"" + meetingPoint.id() + "\"}");
                    return;
                }
                switch (i2) {
                    case 1:
                        MeetingPoint.Status status = MeetingPoint.Status.HOSTED;
                        meetingPoint.updateStatus(status);
                        this.rtcc.bus.post(new StatusEvent(meetingPoint, status));
                        this.rtcc.sendMeetingCallBack("{\"status\":\"ok\",\"evt\":\"meetingpointhosted\",\"mode\":\"n\",\"mpi\":\"" + meetingPoint.id() + "\"}");
                        return;
                    case 2:
                        this.rtcc.bus.post(new RequestEvent(meetingPoint, RequestEvent.Type.ACCEPT, dataControl.uid, dataControl.displayname));
                        this.rtcc.sendMeetingCallBack("{\"status\":\"ok\",\"evt\":\"meetingpointattended\",\"request\":\"accepted\",\"mpi\":\"" + meetingPoint.id() + "\"}");
                        return;
                    case 3:
                        this.rtcc.bus.post(new RequestEvent(meetingPoint, RequestEvent.Type.DENY, dataControl.uid, dataControl.displayname));
                        this.rtcc.sendMeetingCallBack("{\"status\":\"ok\",\"evt\":\"meetingpointattended\",\"request\":\"denied\",\"mpi\":\"" + meetingPoint.id() + "\"}");
                        return;
                    case 4:
                        this.rtcc.bus.post(new RequestEvent(meetingPoint, RequestEvent.Type.CANCEL, dataControl.uid, dataControl.displayname));
                        String str = dataControl.uid;
                        int length = str.length();
                        int iCharCount = 0;
                        while (true) {
                            if (iCharCount < length) {
                                int iCodePointAt = str.codePointAt(iCharCount);
                                if (Character.isWhitespace(iCodePointAt)) {
                                    iCharCount += Character.charCount(iCodePointAt);
                                } else {
                                    z = false;
                                }
                            } else {
                                z = true;
                            }
                        }
                        if (z) {
                            this.rtcc.sendMeetingCallBack("{\"status\":\"ok\",\"evt\":\"meetingpointattended\",\"action\":\"cancel\",\"mpi\":\"" + meetingPoint.id() + "\"}");
                        } else {
                            Rtcc rtcc = this.rtcc;
                            if (z4) {
                                rtcc.sendMeetingCallBack("{\"status\":\"ok\",\"evt\":\"meetingpointrequested\",\"request\":\"requestcancelled\",\"mpi\":\"" + meetingPoint.id() + "\",\"uid\":\"" + dataControl.uid + "\",\"dn\":\"" + dataControl.displayname + "\"}");
                            } else {
                                rtcc.sendMeetingCallBack("{\"status\":\"ok\",\"evt\":\"meetingpointrequested\",\"request\":\"notificationcancelled\",\"mpi\":\"" + meetingPoint.id() + "\",\"uid\":\"" + dataControl.uid + "\",\"dn\":\"" + dataControl.displayname + "\"}");
                            }
                        }
                        return;
                    case 5:
                        if (meetingPoint.status() == MeetingPoint.Status.HOSTED) {
                            meetingPoint.updateStatus(MeetingPoint.Status.CREATED);
                        }
                        this.rtcc.bus.post(new StatusEvent(meetingPoint, MeetingPoint.Status.STOPPED));
                        return;
                    case 6:
                        this.rtcc.bus.post(new RequestEvent(meetingPoint, RequestEvent.Type.JOIN, dataControl.uid, dataControl.displayname));
                        String str2 = dataControl.uid;
                        int length2 = str2.length();
                        int iCharCount2 = 0;
                        while (true) {
                            if (iCharCount2 < length2) {
                                int iCodePointAt2 = str2.codePointAt(iCharCount2);
                                if (Character.isWhitespace(iCodePointAt2)) {
                                    iCharCount2 += Character.charCount(iCodePointAt2);
                                } else {
                                    z2 = false;
                                }
                            } else {
                                z2 = true;
                            }
                        }
                        if (z2) {
                            this.rtcc.sendMeetingCallBack("{\"status\":\"ok\",\"evt\":\"meetingpointattended\",\"request\":\"pending\",\"mpi\":\"" + meetingPoint.id() + "\"}");
                        } else {
                            Rtcc rtcc2 = this.rtcc;
                            if (z3) {
                                rtcc2.sendMeetingCallBack("{\"status\":\"ok\",\"evt\":\"meetingpointrequested\",\"request\":\"requesttoattend\",\"mpi\":\"" + meetingPoint.id() + "\",\"uid\":\"" + dataControl.uid + "\",\"dn\":\"" + dataControl.displayname + "\"}");
                            } else {
                                rtcc2.sendMeetingCallBack("{\"status\":\"ok\",\"evt\":\"meetingpointrequested\",\"request\":\"notification\",\"mpi\":\"" + meetingPoint.id() + "\",\"uid\":\"" + dataControl.uid + "\",\"dn\":\"" + dataControl.displayname + "\"}");
                            }
                        }
                        return;
                    case 7:
                        this.rtcc.bus.post(new RequestEvent(meetingPoint, RequestEvent.Type.INVITE, dataControl.uid, dataControl.displayname));
                        return;
                    case 8:
                        this.rtcc.bus.post(new RequestEvent(meetingPoint, RequestEvent.Type.ACCEPTONETOONE, dataControl.uid, dataControl.displayname));
                        this.rtcc.sendMeetingCallBack("{\"status\":\"ok\",\"evt\":\"meetingpointattended\",\"request\":\"acceptedonetoone\",\"mpi\":\"" + meetingPoint.id() + "\"}");
                        return;
                    case 9:
                    case 10:
                        meetingPoint.updateLock(i2);
                        this.rtcc.bus.post(new LockEvent(meetingPoint, meetingPoint.lock()));
                        return;
                    default:
                        log.i("Invalid [param] [%s] in status [%s]", Constants.MeetingPointControl.valueOf(i2), meetingPoint.status());
                        return;
                }
            }
        }
    }

    public void handleControlError(int i2, int i3, String str, String str2) {
        if (i3 != 1) {
            if (i3 == 2 || i3 == 3 || i3 == 4 || i3 == 8) {
                this.rtcc.sendMeetingCallBack("{\"status\":\"ko\",\"evt\":\"meetingpointcontrolled\",\"action\":\"" + (i2 & i3) + "\",\"mpi\":\"" + str + "\",\"error\": \"" + str2 + "\"}");
                return;
            }
            if (i3 != 16 && i3 != 32) {
                return;
            }
        }
        this.rtcc.sendMeetingCallBack(d21.l("{\"status\":\"ko\",\"evt\":\"meetingpointhosted\",\"error\":\"", str2, "\",\"mpi\":\"", str, "\"}"));
    }

    public synchronized void handleError(int i2, int i3, String str, String str2) {
        try {
            MeetingPoint meetingPoint = this.meetingPoints.get(str);
            if (meetingPoint != null) {
                this.rtcc.bus.post(new ErrorEvent(meetingPoint, findCorrespondingError(i2, i3), str2));
                return;
            }
            MeetingPoint meetingPoint2 = this.pendingMeetingPoint;
            if (meetingPoint2 != null) {
                this.rtcc.bus.post(new ErrorEvent(meetingPoint2, ErrorEvent.Action.CREATE, str2));
                this.pendingMeetingPoint = null;
            } else {
                log.e("Error: but unknown MeetingPoint mpid=%s cmd=%x action=%x message=%s", str, Integer.valueOf(i2), Integer.valueOf(i3), str2);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void handleList(int i2, int i3, Object obj) {
        try {
            if (obj instanceof MeetingPoint.DataControl) {
                MeetingPoint.DataControl dataControl = (MeetingPoint.DataControl) obj;
                this.meetingPoints.get(dataControl.mpid);
                if (i2 > 0) {
                    this.mpList.add(dataControl.uid);
                }
                if (i2 == 0 || i3 == i2 - 1) {
                    this.rtcc.sendMeetingCallBack("{\"evt\": \"mpilist\", \"mpi\": \"" + dataControl.mpid + "\",\"uids\": " + AnyExtensionsKt.toJson(this.mpList, false, false) + "}");
                    this.mpList.clear();
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public MeetingPoint pending() {
        return this.pendingMeetingPoint;
    }

    public void remove(String str) {
        OldLogger oldLogger = log;
        if (oldLogger.d()) {
            oldLogger.d("remove(%s)", str);
        }
        if (str == null) {
            throw RtccExceptions.newNullPointerException("[mpid] must not be null");
        }
        Input input = Input.MPID;
        if (!input.isValid(str)) {
            throw RtccExceptions.newIllegalArgumentException("[mpid] must be [" + input + "] but is [" + str + "]");
        }
        this.meetingPoints.remove(str);
        MeetingPoint meetingPoint = this.pendingMeetingPoint;
        if (meetingPoint == null || !str.equals(meetingPoint.id())) {
            return;
        }
        this.pendingMeetingPoint = null;
    }

    public Rtcc rtcc() {
        return this.rtcc;
    }

    public void teardown() {
        this.meetingPoints.clear();
        this.pendingMeetingPoint = null;
    }
}
