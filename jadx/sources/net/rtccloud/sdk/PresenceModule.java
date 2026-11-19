package net.rtccloud.sdk;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import net.rtccloud.sdk.event.presence.PresenceRequestEvent;
import net.rtccloud.sdk.event.presence.PresenceUpdateEvent;
import net.rtccloud.sdk.event.presence.RosterEvent;
import net.rtccloud.sdk.internal.Preconditions;
import net.rtccloud.sdk.internal.RtccExceptions;
import net.rtccloud.sdk.util.OldLogger;
import net.rtccloud.sdk.util.Utils;

/* JADX INFO: loaded from: classes4.dex */
public class PresenceModule {
    private static final OldLogger log = OldLogger.get(OldLogger.Internal.PRESENCE);
    private final Native nativePresenceModule;
    private final Map<String, Integer> pendingBulk = new HashMap();
    private final Map<String, Integer> pendingRoster = new HashMap();
    private final Rtcc rtcc;

    public interface Native {
        public static final Native JNI = new Native() { // from class: net.rtccloud.sdk.PresenceModule.Native.1
            @Override // net.rtccloud.sdk.PresenceModule.Native
            public boolean request(String[] strArr) {
                return Jni.nPresenceGet(strArr);
            }

            @Override // net.rtccloud.sdk.PresenceModule.Native
            public boolean requestAll() {
                return Jni.nPresenceGetRoster();
            }

            @Override // net.rtccloud.sdk.PresenceModule.Native
            public boolean set(int i2) {
                return Jni.nPresenceSet(i2);
            }
        };

        boolean request(String[] strArr);

        boolean requestAll();

        boolean set(int i2);
    }

    public PresenceModule(Rtcc rtcc, Native r3) {
        this.rtcc = rtcc;
        this.nativePresenceModule = r3;
    }

    public synchronized void handlePresence(int i2, int i3, int i4, String str, boolean z) {
        try {
            if (i4 > 0) {
                Map<String, Integer> map = z ? this.pendingRoster : this.pendingBulk;
                map.put(str, Integer.valueOf(i3));
                if (i2 == i4 - 1) {
                    this.rtcc.bus.post(new PresenceRequestEvent(map, z));
                    map.clear();
                }
            } else {
                this.rtcc.bus.post(new PresenceUpdateEvent(str, i3));
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void handleRoster(int i2, int i3) {
        this.rtcc.bus.post(new RosterEvent(i2, i3));
    }

    public boolean request(String... strArr) {
        OldLogger oldLogger = log;
        if (oldLogger.d()) {
            oldLogger.d("request(%s)", Arrays.toString(strArr));
        }
        if (Utils.isVarargsNullOrEmpty(strArr)) {
            throw RtccExceptions.newNullPointerException("[uids] must not be null nor empty");
        }
        String[] strArrConsolidateUidInput = net.rtccloud.sdk.internal.util.Utils.consolidateUidInput(strArr, oldLogger);
        if (strArrConsolidateUidInput == null || strArrConsolidateUidInput.length == 0) {
            throw RtccExceptions.newIllegalArgumentException("[uids] must contain at least one valid uid");
        }
        if (Preconditions.enforceRtccStatus(oldLogger, this.rtcc, Rtcc.Status.CONNECTED) && Preconditions.enforceUserStatus(oldLogger, this.rtcc.user(), User.Status.REGISTERED)) {
            return this.nativePresenceModule.request(strArrConsolidateUidInput);
        }
        return false;
    }

    public boolean requestAll() {
        OldLogger oldLogger = log;
        oldLogger.d("requestAll()");
        if (Preconditions.enforceRtccStatus(oldLogger, this.rtcc, Rtcc.Status.CONNECTED) && Preconditions.enforceUserStatus(oldLogger, this.rtcc.user(), User.Status.REGISTERED)) {
            return this.nativePresenceModule.requestAll();
        }
        return false;
    }

    public Rtcc rtcc() {
        return this.rtcc;
    }

    public boolean set(int i2) {
        OldLogger oldLogger = log;
        if (oldLogger.d()) {
            oldLogger.d("set(%d)", Integer.valueOf(i2));
        }
        if (i2 <= 255 && i2 >= 0) {
            if (Preconditions.enforceRtccStatus(oldLogger, this.rtcc, Rtcc.Status.CONNECTED) && Preconditions.enforceUserStatus(oldLogger, this.rtcc.user(), User.Status.REGISTERED)) {
                return this.nativePresenceModule.set(i2);
            }
            return false;
        }
        Locale locale = Locale.US;
        throw RtccExceptions.newIllegalArgumentException("[value] must be in range [0 - 255] but is [" + i2 + "]");
    }
}
