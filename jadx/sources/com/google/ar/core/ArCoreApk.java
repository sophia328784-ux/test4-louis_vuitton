package com.google.ar.core;

import android.app.Activity;
import android.content.Context;
import com.google.ar.core.exceptions.UnavailableDeviceNotCompatibleException;
import com.google.ar.core.exceptions.UnavailableUserDeclinedInstallationException;
import defpackage.r81;
import defpackage.z81;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes2.dex */
public class ArCoreApk {

    public enum InstallBehavior {
        REQUIRED(0),
        OPTIONAL(1);

        final int nativeCode;

        InstallBehavior(int i2) {
            this.nativeCode = i2;
        }

        public static InstallBehavior forNumber(int i2) {
            for (InstallBehavior installBehavior : values()) {
                if (installBehavior.nativeCode == i2) {
                    return installBehavior;
                }
            }
            r81.i(z81.f(String.valueOf(i2).length() + (byte) 51, i2, "Unexpected value for native InstallBehavior, value="));
            return null;
        }
    }

    public enum InstallStatus {
        INSTALLED(0),
        INSTALL_REQUESTED(1);

        final int nativeCode;

        InstallStatus(int i2) {
            this.nativeCode = i2;
        }

        public static InstallStatus forNumber(int i2) {
            for (InstallStatus installStatus : values()) {
                if (installStatus.nativeCode == i2) {
                    return installStatus;
                }
            }
            r81.i(z81.f(String.valueOf(i2).length() + (byte) 49, i2, "Unexpected value for native InstallStatus, value="));
            return null;
        }
    }

    public enum UserMessageType {
        APPLICATION(0),
        FEATURE(1),
        USER_ALREADY_INFORMED(2);

        final int nativeCode;

        UserMessageType(int i2) {
            this.nativeCode = i2;
        }

        public static UserMessageType forNumber(int i2) {
            for (UserMessageType userMessageType : values()) {
                if (userMessageType.nativeCode == i2) {
                    return userMessageType;
                }
            }
            r81.i(z81.f(String.valueOf(i2).length() + (byte) 51, i2, "Unexpected value for native UserMessageType, value="));
            return null;
        }
    }

    public static ArCoreApk getInstance() {
        return l.m;
    }

    public Availability checkAvailability(Context context) {
        throw new UnsupportedOperationException("Stub");
    }

    public void checkAvailabilityAsync(Context context, Consumer<Availability> consumer) {
        throw new UnsupportedOperationException("Stub");
    }

    public InstallStatus requestInstall(Activity activity, boolean z) throws UnavailableUserDeclinedInstallationException, UnavailableDeviceNotCompatibleException {
        throw new UnsupportedOperationException("Stub");
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static class Availability {
        private static final /* synthetic */ Availability[] $VALUES = $values();
        public static final Availability SUPPORTED_APK_TOO_OLD;
        public static final Availability SUPPORTED_INSTALLED;
        public static final Availability SUPPORTED_NOT_INSTALLED;
        public static final Availability UNKNOWN_CHECKING;
        public static final Availability UNKNOWN_ERROR;
        public static final Availability UNKNOWN_TIMED_OUT;
        public static final Availability UNSUPPORTED_DEVICE_NOT_CAPABLE;
        final int nativeCode;

        private static /* synthetic */ Availability[] $values() {
            return new Availability[]{UNKNOWN_ERROR, UNKNOWN_CHECKING, UNKNOWN_TIMED_OUT, UNSUPPORTED_DEVICE_NOT_CAPABLE, SUPPORTED_NOT_INSTALLED, SUPPORTED_APK_TOO_OLD, SUPPORTED_INSTALLED};
        }

        static {
            int i2 = 0;
            byte[] bArr = null;
            UNKNOWN_ERROR = new a("UNKNOWN_ERROR", i2, i2, bArr);
            int i3 = 1;
            UNKNOWN_CHECKING = new b("UNKNOWN_CHECKING", i3, i3, bArr);
            int i4 = 2;
            UNKNOWN_TIMED_OUT = new c("UNKNOWN_TIMED_OUT", i4, i4, bArr);
            UNSUPPORTED_DEVICE_NOT_CAPABLE = new d("UNSUPPORTED_DEVICE_NOT_CAPABLE", 3, 100, bArr);
            SUPPORTED_NOT_INSTALLED = new e("SUPPORTED_NOT_INSTALLED", 4, 201, bArr);
            SUPPORTED_APK_TOO_OLD = new f("SUPPORTED_APK_TOO_OLD", 5, 202, bArr);
            SUPPORTED_INSTALLED = new g("SUPPORTED_INSTALLED", 6, 203, bArr);
        }

        private Availability(String str, int i2, int i3) {
            super(str, i2);
            this.nativeCode = i3;
        }

        public static Availability forNumber(int i2) {
            for (Availability availability : values()) {
                if (availability.nativeCode == i2) {
                    return availability;
                }
            }
            r81.i(z81.f(String.valueOf(i2).length() + (byte) 48, i2, "Unexpected value for native Availability, value="));
            return null;
        }

        public static Availability valueOf(String str) {
            return (Availability) Enum.valueOf(Availability.class, str);
        }

        public static Availability[] values() {
            return (Availability[]) $VALUES.clone();
        }

        public boolean isSupported() {
            return false;
        }

        public boolean isTransient() {
            return false;
        }

        public boolean isUnknown() {
            return false;
        }

        public boolean isUnsupported() {
            return false;
        }

        public /* synthetic */ Availability(String str, int i2, int i3, byte[] bArr) {
            this(str, i2, i3);
        }
    }

    public InstallStatus requestInstall(Activity activity, boolean z, InstallBehavior installBehavior, UserMessageType userMessageType) throws UnavailableUserDeclinedInstallationException, UnavailableDeviceNotCompatibleException {
        throw new UnsupportedOperationException("Stub");
    }
}
