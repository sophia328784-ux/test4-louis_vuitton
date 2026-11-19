package net.rtccloud.sdk.internal;

import android.content.Context;
import android.widget.Toast;
import defpackage.fc;
import defpackage.n00;
import java.util.Locale;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.ConferenceModule;
import net.rtccloud.sdk.MeetingPoint;
import net.rtccloud.sdk.Rtcc;
import net.rtccloud.sdk.Sink;
import net.rtccloud.sdk.User;
import net.rtccloud.sdk.util.OldLogger;
import net.rtccloud.sdk.util.Permission;

/* JADX INFO: loaded from: classes4.dex */
public final class Preconditions {
    private Preconditions() {
    }

    public static boolean enforceCall(OldLogger oldLogger, Rtcc rtcc) {
        if (rtcc.call().get() != null) {
            return true;
        }
        oldLogger.w("Precondition: A [call] must exist");
        return false;
    }

    public static boolean enforceCallStatus(OldLogger oldLogger, Call call, Call.Status status, Call.Status status2, Call.Status status3, Call.Status status4) {
        Call.Status status5 = call.status();
        if (status5 == status || status5 == status2 || status5 == status3 || status5 == status4) {
            return true;
        }
        oldLogger.w("Precondition: The [call] must be [%s] or [%s] or [%s] or [%s] but is [%s]", status, status2, status3, status4, status5);
        return false;
    }

    public static boolean enforceConferenceAdmin(OldLogger oldLogger, ConferenceModule conferenceModule) {
        if (conferenceModule.myself().isAdmin()) {
            return true;
        }
        oldLogger.w("Precondition: User must be [admin] of this conference");
        return false;
    }

    public static boolean enforceMeetingPointAttendee(OldLogger oldLogger, MeetingPoint meetingPoint) {
        if (!meetingPoint.isHost()) {
            return true;
        }
        oldLogger.w("Precondition: User must be [attendee] of this MeetingPoint");
        return false;
    }

    public static boolean enforceMeetingPointConfigType(OldLogger oldLogger, MeetingPoint.Config config, Class<?> cls, Class<?> cls2, Class<?> cls3) {
        if (cls.isAssignableFrom(config.getClass()) || cls2.isAssignableFrom(config.getClass()) || cls3.isAssignableFrom(config.getClass())) {
            return true;
        }
        oldLogger.w("Precondition: Config must be [%s] or [%s] or [%s] but is [%s]", cls, cls2, cls3, config.getClass().toString());
        return false;
    }

    public static boolean enforceMeetingPointHost(OldLogger oldLogger, MeetingPoint meetingPoint) {
        if (meetingPoint.isHost()) {
            return true;
        }
        oldLogger.w("Precondition: User must be [host] of this MeetingPoint");
        return false;
    }

    public static boolean enforceMeetingPointStatus(OldLogger oldLogger, MeetingPoint meetingPoint, MeetingPoint.Status status, MeetingPoint.Status status2, MeetingPoint.Status status3) {
        MeetingPoint.Status status4 = meetingPoint.status();
        if (status4 == status || status4 == status2 || status4 == status3) {
            return true;
        }
        oldLogger.w("Precondition: MeetingPoint status must be [%s] or [%s] or [%s] but is [%s]", status, status2, status3, status4);
        return false;
    }

    public static boolean enforceNoCall(OldLogger oldLogger, Rtcc rtcc) {
        if (rtcc.call().get() == null) {
            return true;
        }
        oldLogger.w("Precondition: A [call] must not exist");
        return false;
    }

    public static void enforcePermissions(OldLogger oldLogger, Context context, String str, Permission... permissionArr) {
        Context applicationContext = context.getApplicationContext();
        StringBuilder sb = new StringBuilder();
        boolean z = false;
        for (Permission permission : permissionArr) {
            if (!permission.isGranted(applicationContext)) {
                sb.append("\n");
                sb.append(permission.value());
                sb.append(": ");
                sb.append(permission.description(context));
                z = true;
            }
        }
        if (z) {
            StringBuilder sbU = n00.u(str, " requires the following permissions to be declared in [AndroidManifest.xml]:");
            sbU.append(sb.toString());
            String string = sbU.toString();
            oldLogger.e(string);
            Toast.makeText(applicationContext, string, 1).show();
            throw RtccExceptions.newIllegalStateException(string);
        }
    }

    public static boolean enforceRtcc(OldLogger oldLogger, Rtcc rtcc) {
        if (rtcc != null) {
            return true;
        }
        oldLogger.w("Precondition: Rtcc must not be null");
        return false;
    }

    public static boolean enforceRtccStatus(OldLogger oldLogger, Rtcc rtcc, Rtcc.Status status, Rtcc.Status status2, Rtcc.Status status3, Rtcc.Status status4) {
        Rtcc.Status status5 = rtcc.status();
        if (status5 == status || status5 == status2 || status5 == status3 || status5 == status4) {
            return true;
        }
        oldLogger.w("Precondition: Rtcc must be [%s] or [%s] or [%s] or [%s] but is [%s]", status, status2, status3, status4, status5);
        return false;
    }

    public static boolean enforceShareSize(OldLogger oldLogger, int i2, int i3) {
        if (i2 <= 0 || i3 <= 0) {
            Locale locale = Locale.US;
            oldLogger.w(fc.f(i2, i3, "Share size width and height must be > 0 but are [", "x", "]"));
            return false;
        }
        int i4 = i2 * i3;
        if (i4 <= 2073600) {
            return true;
        }
        oldLogger.w("Precondition: Share size must not be above [%d] but is [%d] (%dx%d)", Integer.valueOf(Sink.Screenshare.MAX_RESOLUTION), Integer.valueOf(i4), Integer.valueOf(i2), Integer.valueOf(i3));
        return false;
    }

    public static boolean enforceUserStatus(OldLogger oldLogger, User user, User.Status status) {
        if (user == null) {
            oldLogger.w("Precondition: User is null");
            return false;
        }
        User.Status status2 = user.status();
        if (status2 == status) {
            return true;
        }
        oldLogger.w("Precondition: User registration status must be [%s] but is [%s]", status, status2);
        return false;
    }

    public static boolean enforceUserType(OldLogger oldLogger, User user, Class<?> cls, Class<?> cls2) {
        if (cls.isAssignableFrom(user.getClass()) || cls2.isAssignableFrom(user.getClass())) {
            return true;
        }
        oldLogger.w("Precondition: User must be [%s] or [%s] but is [%s]", cls, cls2, user.getClass().toString());
        return false;
    }

    public static boolean enforceVideoSize(OldLogger oldLogger, int i2, int i3) {
        if (i2 <= 0 || i3 <= 0) {
            Locale locale = Locale.US;
            oldLogger.w(fc.f(i2, i3, "Video size width and height must be > 0 but are [", "x", "]"));
            return false;
        }
        int i4 = i2 * i3;
        if (i4 <= 921600) {
            return true;
        }
        oldLogger.w("Precondition: Video size must not be above [%d] but is [%d] (%dx%d)", Integer.valueOf(Sink.Video.MAX_RESOLUTION), Integer.valueOf(i4), Integer.valueOf(i2), Integer.valueOf(i3));
        return false;
    }

    public static boolean enforceCall(OldLogger oldLogger, Call call) {
        if (call != null) {
            return true;
        }
        oldLogger.w("Precondition: A [call] must exist");
        return false;
    }

    public static boolean enforceMeetingPointStatus(OldLogger oldLogger, MeetingPoint meetingPoint, MeetingPoint.Status status, MeetingPoint.Status status2) {
        MeetingPoint.Status status3 = meetingPoint.status();
        if (status3 == status || status3 == status2) {
            return true;
        }
        oldLogger.w("Precondition: MeetingPoint status must be [%s] or [%s] but is [%s]", status, status2, status3);
        return false;
    }

    public static boolean enforceCallStatus(OldLogger oldLogger, Call call, Call.Status status, Call.Status status2) {
        Call.Status status3 = call.status();
        if (status3 == status || status3 == status2) {
            return true;
        }
        oldLogger.w("Precondition: The [call] must be [%s] or [%s] but is [%s]", status, status2, status3);
        return false;
    }

    public static boolean enforceMeetingPointStatus(OldLogger oldLogger, MeetingPoint meetingPoint, MeetingPoint.Status status) {
        MeetingPoint.Status status2 = meetingPoint.status();
        if (status2 == status) {
            return true;
        }
        oldLogger.w("Precondition: MeetingPoint status must be [%s] but is [%s]", status, status2);
        return false;
    }

    public static boolean enforceRtccStatus(OldLogger oldLogger, Rtcc rtcc, Rtcc.Status status, Rtcc.Status status2) {
        Rtcc.Status status3 = rtcc.status();
        if (status3 == status || status3 == status2) {
            return true;
        }
        oldLogger.w("Precondition: Rtcc must be [%s] or [%s] but is [%s]", status, status2, status3);
        return false;
    }

    public static boolean enforceCallStatus(OldLogger oldLogger, Call call, Call.Status status, Call.Status status2, Call.Status status3) {
        Call.Status status4 = call.status();
        if (status4 == status || status4 == status2 || status4 == status3) {
            return true;
        }
        oldLogger.w("Precondition: The [call] must be [%s] or [%s] or [%s] but is [%s]", status, status2, status3, status4);
        return false;
    }

    public static boolean enforceRtccStatus(OldLogger oldLogger, Rtcc rtcc, Rtcc.Status status, Rtcc.Status status2, Rtcc.Status status3) {
        Rtcc.Status status4 = rtcc.status();
        if (status4 == status || status4 == status2 || status4 == status3) {
            return true;
        }
        oldLogger.w("Precondition: Rtcc must be [%s] or [%s] or [%s] but is [%s]", status, status2, status3, status4);
        return false;
    }

    public static boolean enforceCallStatus(OldLogger oldLogger, Call call, Call.Status status) {
        Call.Status status2 = call.status();
        if (status2 == status) {
            return true;
        }
        oldLogger.w("Precondition: The [call] must be [%s] but is [%s]", status, status2);
        return false;
    }

    public static boolean enforceRtccStatus(OldLogger oldLogger, Rtcc rtcc, Rtcc.Status status) {
        Rtcc.Status status2 = rtcc.status();
        if (status2 == status) {
            return true;
        }
        oldLogger.w("Precondition: Rtcc must be [%s] but is [%s]", status, status2);
        return false;
    }

    public static boolean enforceUserType(OldLogger oldLogger, User user, Class<?> cls) {
        if (cls.isAssignableFrom(user.getClass())) {
            return true;
        }
        oldLogger.w("Precondition: User must be [%s] but is [%s]", cls, user.getClass().toString());
        return false;
    }
}
