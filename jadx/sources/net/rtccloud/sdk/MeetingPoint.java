package net.rtccloud.sdk;

import defpackage.b21;
import defpackage.n00;
import defpackage.tr;
import java.util.Arrays;
import net.rtccloud.sdk.internal.Preconditions;
import net.rtccloud.sdk.internal.RtccExceptions;
import net.rtccloud.sdk.util.Input;
import net.rtccloud.sdk.util.OldLogger;
import net.rtccloud.sdk.util.Utils;

/* JADX INFO: loaded from: classes4.dex */
public class MeetingPoint {
    private static final OldLogger log = OldLogger.get(OldLogger.Internal.MEETING_POINT);
    private String attendeeUrl;
    private int endTime;
    private String hostUrl;
    private String id;
    public boolean isHost;
    private String location;
    private Lock lock;
    private final Native nativeInterface;
    private final Rtcc rtcc;
    private int startTime;
    Status status;
    private String title;
    private Type type;

    /* JADX INFO: renamed from: net.rtccloud.sdk.MeetingPoint$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$net$rtccloud$sdk$MeetingPoint$Lock;

        static {
            int[] iArr = new int[Lock.values().length];
            $SwitchMap$net$rtccloud$sdk$MeetingPoint$Lock = iArr;
            try {
                iArr[Lock.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$net$rtccloud$sdk$MeetingPoint$Lock[Lock.AUTO_ACCEPT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$net$rtccloud$sdk$MeetingPoint$Lock[Lock.LOCKED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public enum Control {
        HOST(0),
        JOIN(1),
        JOIN_WITH_HASH(17),
        ACCEPT(2),
        DENY(3),
        CANCEL(4),
        STOP(5),
        INVITE(6),
        LOCK(7),
        AUTOACCEPT(8),
        DEFAULT(9),
        LIST(10),
        LIST2(26),
        ACCEPT_ONE_TO_ONE(18);

        public final int value;

        Control(int i2) {
            this.value = i2;
        }
    }

    public static final class DataControl {
        public final String displayname;
        public final String mpid;
        public final String uid;

        public DataControl(String str, String str2, String str3) {
            this.mpid = str;
            this.uid = str2;
            this.displayname = str3;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("DataControl{mpid='");
            sb.append(this.mpid);
            sb.append("', uid='");
            sb.append(this.uid);
            sb.append("', displayname='");
            return n00.r(this.displayname, "'}", sb);
        }
    }

    public static final class DataDetails {
        final int endTime;
        final String location;
        public final String mpid;
        final int startTime;
        final String title;
        final Type type;

        public DataDetails(String str, int i2, String str2, String str3, int i3, int i4) {
            this.mpid = str;
            this.title = str2;
            this.location = str3;
            this.startTime = i3;
            this.endTime = i4;
            if (i2 == 1) {
                this.type = Type.SCHEDULED;
            } else if (i2 != 2) {
                this.type = Type.PERMANENT;
            } else {
                this.type = Type.ADHOC;
            }
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("DataDetails{mpid='");
            sb.append(this.mpid);
            sb.append("', type=");
            sb.append(this.type);
            sb.append(", title='");
            sb.append(this.title);
            sb.append("', location='");
            sb.append(this.location);
            sb.append("', startTime=");
            sb.append(this.startTime);
            sb.append(", endTime=");
            return tr.k(sb, this.endTime, '}');
        }
    }

    public static final class DataUrl {
        final String attendeeUrl;
        final String hostUrl;
        public final String mpid;

        public DataUrl(String str, String str2, String str3) {
            this.mpid = str;
            this.hostUrl = str2;
            this.attendeeUrl = str3;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("DataUrl{mpid='");
            sb.append(this.mpid);
            sb.append("', urlOfHost='");
            sb.append(this.hostUrl);
            sb.append("', attendeeUrl='");
            return n00.r(this.attendeeUrl, "'}", sb);
        }
    }

    public enum Lock {
        UNKNOWN,
        DEFAULT,
        LOCKED,
        AUTO_ACCEPT
    }

    public interface Native {
        public static final Native JNI = new Native() { // from class: net.rtccloud.sdk.MeetingPoint.Native.1
            @Override // net.rtccloud.sdk.MeetingPoint.Native
            public void control(String str, Control control) {
                Jni.nControlMeetingPoint(str, control.value, null);
            }

            @Override // net.rtccloud.sdk.MeetingPoint.Native
            public void get(String str) {
                Jni.nGetMeetingPoint(str);
            }

            @Override // net.rtccloud.sdk.MeetingPoint.Native
            public void control(String str, Control control, String str2) {
                Jni.nControlMeetingPoint(str, control.value, str2);
            }
        };

        void control(String str, Control control);

        void control(String str, Control control, String str2);

        void get(String str);
    }

    public enum Status {
        CREATING,
        CREATED,
        HOSTED,
        STOPPED
    }

    public enum Type {
        UNKNOWN,
        ADHOC,
        PERMANENT,
        SCHEDULED
    }

    public MeetingPoint(Rtcc rtcc, Native r3, Config config) {
        this.status = Status.CREATING;
        this.type = Type.UNKNOWN;
        this.lock = Lock.UNKNOWN;
        this.rtcc = rtcc;
        this.nativeInterface = r3;
        this.type = config.type;
        this.lock = Lock.DEFAULT;
        this.isHost = true;
        this.title = config.title;
        this.location = config.location;
        if (config instanceof Config.Scheduled) {
            Config.Scheduled scheduled = (Config.Scheduled) config;
            this.endTime = scheduled.endTime;
            this.startTime = scheduled.startTime;
        }
    }

    public void accept(String str) {
        OldLogger oldLogger = log;
        if (oldLogger.d()) {
            oldLogger.d("accept(%s)", str);
        }
        if (str == null) {
            throw RtccExceptions.newNullPointerException("[uid] must not be null");
        }
        if (Preconditions.enforceRtccStatus(oldLogger, this.rtcc, Rtcc.Status.CONNECTED) && Preconditions.enforceMeetingPointStatus(oldLogger, this, Status.HOSTED, Status.CREATED)) {
            this.nativeInterface.control(this.id, Control.ACCEPT, str);
        }
    }

    public void acceptOneToOne(String str) {
        OldLogger oldLogger = log;
        if (oldLogger.d()) {
            oldLogger.d("accept(%s)", str);
        }
        if (str == null) {
            throw RtccExceptions.newNullPointerException("[uid] must not be null");
        }
        if (Preconditions.enforceRtccStatus(oldLogger, this.rtcc, Rtcc.Status.CONNECTED) && Preconditions.enforceMeetingPointStatus(oldLogger, this, Status.HOSTED, Status.CREATED)) {
            this.nativeInterface.control(this.id, Control.ACCEPT_ONE_TO_ONE, str);
        }
    }

    public void call(Call.Parameters parameters) {
        if (parameters == null) {
            throw RtccExceptions.newNullPointerException("[parameters] must not be null");
        }
        this.rtcc.call().create(this, parameters);
    }

    public void cancel(String str) {
        OldLogger oldLogger = log;
        if (oldLogger.d()) {
            oldLogger.d("cancel(%s)", str);
        }
        if (Preconditions.enforceRtccStatus(oldLogger, this.rtcc, Rtcc.Status.CONNECTED) && Preconditions.enforceMeetingPointStatus(oldLogger, this, Status.HOSTED, Status.CREATED)) {
            Native r0 = this.nativeInterface;
            if (str == null) {
                r0.control(this.id, Control.CANCEL);
            } else {
                r0.control(this.id, Control.CANCEL, str);
            }
        }
    }

    public void deny(String str) {
        OldLogger oldLogger = log;
        if (oldLogger.d()) {
            oldLogger.d("deny(%s)", str);
        }
        if (str == null) {
            throw RtccExceptions.newNullPointerException("[uid] must not be null");
        }
        if (Preconditions.enforceRtccStatus(oldLogger, this.rtcc, Rtcc.Status.CONNECTED) && Preconditions.enforceMeetingPointStatus(oldLogger, this, Status.HOSTED, Status.CREATED)) {
            this.nativeInterface.control(this.id, Control.DENY, str);
        }
    }

    public void details() {
        OldLogger oldLogger = log;
        oldLogger.d("details()");
        if (Preconditions.enforceRtccStatus(oldLogger, this.rtcc, Rtcc.Status.CONNECTED) && Preconditions.enforceMeetingPointHost(oldLogger, this) && Preconditions.enforceMeetingPointStatus(oldLogger, this, Status.CREATING, Status.HOSTED, Status.CREATED)) {
            this.nativeInterface.get(this.id);
        }
    }

    public int endTime() {
        return this.endTime;
    }

    public void handle(DataDetails dataDetails) {
        if (dataDetails == null) {
            return;
        }
        log.d(dataDetails.toString());
        this.id = dataDetails.mpid;
        this.title = dataDetails.title;
        this.location = dataDetails.location;
        this.startTime = dataDetails.startTime;
        this.endTime = dataDetails.endTime;
        this.type = dataDetails.type;
    }

    public void host() {
        OldLogger oldLogger = log;
        oldLogger.d("host()");
        if (Preconditions.enforceRtccStatus(oldLogger, this.rtcc, Rtcc.Status.CONNECTED) && Preconditions.enforceMeetingPointHost(oldLogger, this) && Preconditions.enforceMeetingPointStatus(oldLogger, this, Status.HOSTED, Status.CREATED)) {
            this.nativeInterface.control(this.id, Control.HOST);
        }
    }

    public String id() {
        return this.id;
    }

    public void invite(String... strArr) {
        OldLogger oldLogger = log;
        if (oldLogger.d()) {
            oldLogger.d("invite(%s)", Arrays.toString(strArr));
        }
        if (Utils.isVarargsNullOrEmpty(strArr)) {
            throw RtccExceptions.newNullPointerException("[uids] must not be null");
        }
        if (Preconditions.enforceRtccStatus(oldLogger, this.rtcc, Rtcc.Status.CONNECTED) && Preconditions.enforceMeetingPointStatus(oldLogger, this, Status.HOSTED, Status.CREATED)) {
            String[] strArrConsolidateUidInput = net.rtccloud.sdk.internal.util.Utils.consolidateUidInput(strArr, oldLogger);
            if (strArrConsolidateUidInput == null) {
                oldLogger.e("[uids] must not be null");
                return;
            }
            if (strArrConsolidateUidInput.length == 0) {
                oldLogger.e("[uids] must not be empty");
                return;
            }
            for (String str : strArrConsolidateUidInput) {
                this.nativeInterface.control(this.id, Control.INVITE, str);
            }
        }
    }

    public boolean isAttendee() {
        return !this.isHost;
    }

    public boolean isHost() {
        return this.isHost;
    }

    public void join(String str) {
        OldLogger oldLogger = log;
        oldLogger.d("join(%s)", str);
        Input input = Input.HASH;
        if (!input.isValid(str)) {
            b21.o(input, "] but is [", str, "]", "[hash] must be [");
        } else if (Preconditions.enforceRtccStatus(oldLogger, this.rtcc, Rtcc.Status.CONNECTED) && Preconditions.enforceMeetingPointAttendee(oldLogger, this) && Preconditions.enforceMeetingPointStatus(oldLogger, this, Status.HOSTED, Status.CREATED)) {
            this.nativeInterface.control(this.id, Control.JOIN_WITH_HASH, str);
        }
    }

    public void joinMeeting(String str) {
        log.d("joinMeeting()");
        this.nativeInterface.control(this.id, Control.JOIN, str);
    }

    public void list() {
        OldLogger oldLogger = log;
        oldLogger.d("list()");
        if (Preconditions.enforceRtccStatus(oldLogger, this.rtcc, Rtcc.Status.CONNECTED) && Preconditions.enforceMeetingPointHost(oldLogger, this) && Preconditions.enforceMeetingPointStatus(oldLogger, this, Status.HOSTED, Status.CREATED)) {
            this.nativeInterface.control(this.id, Control.LIST);
        }
    }

    public void list2() {
        log.d("list2()");
        this.nativeInterface.control(this.id, Control.LIST2);
    }

    public String location() {
        return this.location;
    }

    public void lock(Lock lock) {
        OldLogger oldLogger = log;
        if (oldLogger.d()) {
            oldLogger.d("lock(%s)", lock);
        }
        if (lock == null) {
            throw RtccExceptions.newNullPointerException("[lock] must not be null");
        }
        if (Preconditions.enforceRtccStatus(oldLogger, this.rtcc, Rtcc.Status.CONNECTED) && Preconditions.enforceMeetingPointHost(oldLogger, this) && Preconditions.enforceMeetingPointStatus(oldLogger, this, Status.HOSTED, Status.CREATED)) {
            int i2 = AnonymousClass1.$SwitchMap$net$rtccloud$sdk$MeetingPoint$Lock[lock.ordinal()];
            if (i2 == 1) {
                this.nativeInterface.control(this.id, Control.DEFAULT);
            } else if (i2 == 2) {
                this.nativeInterface.control(this.id, Control.AUTOACCEPT);
            } else {
                if (i2 != 3) {
                    return;
                }
                this.nativeInterface.control(this.id, Control.LOCK);
            }
        }
    }

    public Rtcc rtcc() {
        return this.rtcc;
    }

    public int startTime() {
        return this.startTime;
    }

    public Status status() {
        return this.status;
    }

    public void stop() {
        OldLogger oldLogger = log;
        oldLogger.d("stop()");
        if (Preconditions.enforceRtccStatus(oldLogger, this.rtcc, Rtcc.Status.CONNECTED) && Preconditions.enforceMeetingPointHost(oldLogger, this)) {
            this.nativeInterface.control(this.id, Control.STOP);
        }
    }

    public String title() {
        return this.title;
    }

    public Type type() {
        return this.type;
    }

    public void updateLock(int i2) {
        if (i2 == 9) {
            this.lock = Lock.AUTO_ACCEPT;
        } else if (i2 != 10) {
            this.lock = Lock.UNKNOWN;
        } else {
            this.lock = Lock.DEFAULT;
        }
    }

    public void updateStatus(Status status) {
        this.status = status;
    }

    public String urlOfAttendee() {
        return this.attendeeUrl;
    }

    public String urlOfHost() {
        return this.hostUrl;
    }

    public static class Config {
        public final String location;
        public final String title;
        public final Type type;

        private Config(Type type, String str, String str2) {
            this.type = type;
            this.title = str;
            this.location = str2;
        }

        public static Adhoc adhoc(String str, String str2) {
            return new Adhoc(str, str2, 0);
        }

        public static Permanent permanent(String str, String str2) {
            return new Permanent(str, str2, 0);
        }

        public static Scheduled scheduled(String str, String str2, int i2, int i3) {
            return new Scheduled(str, str2, i2, i3, 0);
        }

        public static class Adhoc extends Config {
            private Adhoc(String str, String str2) {
                super(Type.ADHOC, str, str2, 0);
            }

            public String toString() {
                StringBuilder sb = new StringBuilder("Adhoc{type=");
                sb.append(this.type);
                sb.append(", title='");
                sb.append(this.title);
                sb.append("', location='");
                return n00.r(this.location, "'}", sb);
            }

            public /* synthetic */ Adhoc(String str, String str2, int i2) {
                this(str, str2);
            }
        }

        public static class Permanent extends Config {
            private Permanent(String str, String str2) {
                super(Type.PERMANENT, str, str2, 0);
            }

            public String toString() {
                StringBuilder sb = new StringBuilder("Permanent{type=");
                sb.append(this.type);
                sb.append(", title='");
                sb.append(this.title);
                sb.append("', location='");
                return n00.r(this.location, "'}", sb);
            }

            public /* synthetic */ Permanent(String str, String str2, int i2) {
                this(str, str2);
            }
        }

        public static class Scheduled extends Config {
            public final int endTime;
            public final int startTime;

            private Scheduled(String str, String str2, int i2, int i3) {
                super(Type.SCHEDULED, str, str2, 0);
                this.startTime = i2;
                this.endTime = i3;
            }

            public String toString() {
                StringBuilder sb = new StringBuilder("Scheduled{type=");
                sb.append(this.type);
                sb.append(", title='");
                sb.append(this.title);
                sb.append("', location='");
                sb.append(this.location);
                sb.append("', startTime=");
                sb.append(this.startTime);
                sb.append(", endTime=");
                return tr.k(sb, this.endTime, '}');
            }

            public /* synthetic */ Scheduled(String str, String str2, int i2, int i3, int i4) {
                this(str, str2, i2, i3);
            }
        }

        public /* synthetic */ Config(Type type, String str, String str2, int i2) {
            this(type, str, str2);
        }
    }

    public void call() {
        this.rtcc.call().create(this, new Call.Parameters());
    }

    public void handle(DataUrl dataUrl) {
        if (dataUrl == null) {
            return;
        }
        log.d(dataUrl.toString());
        this.id = dataUrl.mpid;
        this.hostUrl = dataUrl.hostUrl;
        this.attendeeUrl = dataUrl.attendeeUrl;
    }

    public MeetingPoint(Rtcc rtcc, Native r3, DataControl dataControl) {
        this.status = Status.CREATING;
        this.type = Type.UNKNOWN;
        this.lock = Lock.UNKNOWN;
        this.rtcc = rtcc;
        this.nativeInterface = r3;
        this.id = dataControl.mpid;
        this.status = Status.CREATED;
    }

    public void cancel() {
        OldLogger oldLogger = log;
        oldLogger.d("cancel()");
        if (Preconditions.enforceRtccStatus(oldLogger, this.rtcc, Rtcc.Status.CONNECTED) && Preconditions.enforceMeetingPointStatus(oldLogger, this, Status.HOSTED, Status.CREATED)) {
            this.nativeInterface.control(this.id, Control.CANCEL);
        }
    }

    public MeetingPoint(Rtcc rtcc, Native r3, String str, boolean z) {
        this.status = Status.CREATING;
        this.type = Type.UNKNOWN;
        this.lock = Lock.UNKNOWN;
        this.rtcc = rtcc;
        this.nativeInterface = r3;
        this.id = str;
        this.isHost = z;
        this.status = Status.CREATED;
    }

    public void join() {
        log.d("join()");
        this.nativeInterface.control(this.id, Control.JOIN);
    }

    public Lock lock() {
        return this.lock;
    }
}
