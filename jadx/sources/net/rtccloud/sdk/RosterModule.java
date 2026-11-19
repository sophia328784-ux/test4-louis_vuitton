package net.rtccloud.sdk;

import java.util.Arrays;
import net.rtccloud.sdk.internal.Preconditions;
import net.rtccloud.sdk.internal.RtccExceptions;
import net.rtccloud.sdk.util.OldLogger;
import net.rtccloud.sdk.util.Utils;

/* JADX INFO: loaded from: classes4.dex */
public class RosterModule {
    private static final OldLogger log = OldLogger.get(OldLogger.Internal.ROSTER);
    private final Native nativeRosterModule;
    private final Rtcc rtcc;

    public interface Native {
        public static final Native JNI = new Native() { // from class: net.rtccloud.sdk.RosterModule.Native.1
            @Override // net.rtccloud.sdk.RosterModule.Native
            public boolean add(String[] strArr) {
                return Jni.nRosterAdd(strArr);
            }

            @Override // net.rtccloud.sdk.RosterModule.Native
            public boolean clear() {
                return Jni.nRosterClear();
            }

            @Override // net.rtccloud.sdk.RosterModule.Native
            public boolean remove(String[] strArr) {
                return Jni.nRosterRemove(strArr);
            }
        };

        boolean add(String[] strArr);

        boolean clear();

        boolean remove(String[] strArr);
    }

    public RosterModule(Rtcc rtcc, Native r2) {
        this.rtcc = rtcc;
        this.nativeRosterModule = r2;
    }

    public boolean add(String... strArr) {
        OldLogger oldLogger = log;
        if (oldLogger.d()) {
            oldLogger.d("add(uids=%s)", Arrays.toString(strArr));
        }
        if (Utils.isVarargsNullOrEmpty(strArr)) {
            throw RtccExceptions.newNullPointerException("[uids] must not be null nor empty");
        }
        String[] strArrConsolidateUidInput = net.rtccloud.sdk.internal.util.Utils.consolidateUidInput(strArr, oldLogger);
        if (strArrConsolidateUidInput == null || strArrConsolidateUidInput.length == 0) {
            throw RtccExceptions.newIllegalArgumentException("[uids] must contain at least one valid uid");
        }
        if (Preconditions.enforceRtccStatus(oldLogger, this.rtcc, Rtcc.Status.CONNECTED) && Preconditions.enforceUserStatus(oldLogger, this.rtcc.user(), User.Status.REGISTERED)) {
            return this.nativeRosterModule.add(strArrConsolidateUidInput);
        }
        return false;
    }

    public boolean clear() {
        OldLogger oldLogger = log;
        oldLogger.d("clear()");
        if (Preconditions.enforceRtccStatus(oldLogger, this.rtcc, Rtcc.Status.CONNECTED) && Preconditions.enforceUserStatus(oldLogger, this.rtcc.user(), User.Status.REGISTERED)) {
            return this.nativeRosterModule.clear();
        }
        return false;
    }

    public boolean remove(String... strArr) {
        OldLogger oldLogger = log;
        if (oldLogger.d()) {
            oldLogger.d("remove(uids=%s)", Arrays.toString(strArr));
        }
        if (Utils.isVarargsNullOrEmpty(strArr)) {
            throw RtccExceptions.newNullPointerException("[uids] must not be null nor empty");
        }
        String[] strArrConsolidateUidInput = net.rtccloud.sdk.internal.util.Utils.consolidateUidInput(strArr, oldLogger);
        if (strArrConsolidateUidInput == null || strArrConsolidateUidInput.length == 0) {
            throw RtccExceptions.newIllegalArgumentException("[uids] must contain at least one valid uid");
        }
        if (Preconditions.enforceRtccStatus(oldLogger, this.rtcc, Rtcc.Status.CONNECTED) && Preconditions.enforceUserStatus(oldLogger, this.rtcc.user(), User.Status.REGISTERED)) {
            return this.nativeRosterModule.remove(strArrConsolidateUidInput);
        }
        return false;
    }

    public Rtcc rtcc() {
        return this.rtcc;
    }
}
