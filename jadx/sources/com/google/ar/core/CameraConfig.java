package com.google.ar.core;

import android.util.Range;
import android.util.Size;
import defpackage.r81;
import defpackage.z81;
import java.util.EnumSet;

/* JADX INFO: loaded from: classes2.dex */
public class CameraConfig {
    long nativeHandle;
    private final long nativeSymbolTableHandle;
    private final Session session;

    public enum DepthSensorUsage {
        REQUIRE_AND_USE(1),
        DO_NOT_USE(2);

        final int nativeCode;

        DepthSensorUsage(int i2) {
            this.nativeCode = i2;
        }

        public static EnumSet<DepthSensorUsage> forBitFlags(int i2) {
            EnumSet<DepthSensorUsage> enumSetNoneOf = EnumSet.noneOf(DepthSensorUsage.class);
            for (DepthSensorUsage depthSensorUsage : values()) {
                if ((depthSensorUsage.nativeCode & i2) != 0) {
                    enumSetNoneOf.add(depthSensorUsage);
                }
            }
            return enumSetNoneOf;
        }

        public static DepthSensorUsage forNumber(int i2) {
            for (DepthSensorUsage depthSensorUsage : values()) {
                if (depthSensorUsage.nativeCode == i2) {
                    return depthSensorUsage;
                }
            }
            r81.i(z81.f(String.valueOf(i2).length() + (byte) 52, i2, "Unexpected value for native DepthSensorUsage, value="));
            return null;
        }
    }

    public enum FacingDirection {
        BACK(0),
        FRONT(1);

        final int nativeCode;

        FacingDirection(int i2) {
            this.nativeCode = i2;
        }

        public static FacingDirection forNumber(int i2) {
            for (FacingDirection facingDirection : values()) {
                if (facingDirection.nativeCode == i2) {
                    return facingDirection;
                }
            }
            r81.i(z81.f(String.valueOf(i2).length() + (byte) 51, i2, "Unexpected value for native FacingDirection, value="));
            return null;
        }
    }

    public enum StereoCameraUsage {
        REQUIRE_AND_USE(1),
        DO_NOT_USE(2);

        final int nativeCode;

        StereoCameraUsage(int i2) {
            this.nativeCode = i2;
        }

        public static EnumSet<StereoCameraUsage> forBitFlags(int i2) {
            EnumSet<StereoCameraUsage> enumSetNoneOf = EnumSet.noneOf(StereoCameraUsage.class);
            for (StereoCameraUsage stereoCameraUsage : values()) {
                if ((stereoCameraUsage.nativeCode & i2) != 0) {
                    enumSetNoneOf.add(stereoCameraUsage);
                }
            }
            return enumSetNoneOf;
        }

        public static StereoCameraUsage forNumber(int i2) {
            for (StereoCameraUsage stereoCameraUsage : values()) {
                if (stereoCameraUsage.nativeCode == i2) {
                    return stereoCameraUsage;
                }
            }
            r81.i(z81.f(String.valueOf(i2).length() + (byte) 53, i2, "Unexpected value for native StereoCameraUsage, value="));
            return null;
        }
    }

    public enum TargetFps {
        TARGET_FPS_30(1),
        TARGET_FPS_60(2);

        final int nativeCode;

        TargetFps(int i2) {
            this.nativeCode = i2;
        }

        public static EnumSet<TargetFps> forBitFlags(int i2) {
            EnumSet<TargetFps> enumSetNoneOf = EnumSet.noneOf(TargetFps.class);
            for (TargetFps targetFps : values()) {
                if ((targetFps.nativeCode & i2) != 0) {
                    enumSetNoneOf.add(targetFps);
                }
            }
            return enumSetNoneOf;
        }
    }

    public CameraConfig() {
        this.session = null;
        this.nativeHandle = 0L;
        this.nativeSymbolTableHandle = 0L;
    }

    private static native void nativeDestroyCameraConfig(long j2, long j3);

    private native String nativeGetCameraId(long j2, long j3);

    private native int nativeGetDepthSensorUsage(long j2, long j3);

    private native int nativeGetFacingDirection(long j2, long j3);

    private native void nativeGetFpsRange(long j2, long j3, int[] iArr);

    private native void nativeGetImageDimensions(long j2, long j3, int[] iArr);

    private native int nativeGetStereoCameraUsage(long j2, long j3);

    private native void nativeGetTextureDimensions(long j2, long j3, int[] iArr);

    public void finalize() throws Throwable {
        long j2 = this.nativeHandle;
        if (j2 != 0) {
            nativeDestroyCameraConfig(this.nativeSymbolTableHandle, j2);
            this.nativeHandle = 0L;
        }
        super.finalize();
    }

    public String getCameraId() {
        return nativeGetCameraId(this.session.nativeWrapperHandle, this.nativeHandle);
    }

    public DepthSensorUsage getDepthSensorUsage() {
        return DepthSensorUsage.forNumber(nativeGetDepthSensorUsage(this.session.nativeWrapperHandle, this.nativeHandle));
    }

    public FacingDirection getFacingDirection() {
        return FacingDirection.forNumber(nativeGetFacingDirection(this.session.nativeWrapperHandle, this.nativeHandle));
    }

    public Range<Integer> getFpsRange() {
        int[] iArr = new int[2];
        nativeGetFpsRange(this.session.nativeWrapperHandle, this.nativeHandle, iArr);
        return new Range<>(Integer.valueOf(iArr[0]), Integer.valueOf(iArr[1]));
    }

    public Size getImageSize() {
        int[] iArr = new int[2];
        nativeGetImageDimensions(this.session.nativeWrapperHandle, this.nativeHandle, iArr);
        return new Size(iArr[0], iArr[1]);
    }

    public StereoCameraUsage getStereoCameraUsage() {
        return StereoCameraUsage.forNumber(nativeGetStereoCameraUsage(this.session.nativeWrapperHandle, this.nativeHandle));
    }

    public Size getTextureSize() {
        int[] iArr = new int[2];
        nativeGetTextureDimensions(this.session.nativeWrapperHandle, this.nativeHandle, iArr);
        return new Size(iArr[0], iArr[1]);
    }

    public CameraConfig(Session session, long j2) {
        this.session = session;
        this.nativeHandle = j2;
        this.nativeSymbolTableHandle = session.nativeSymbolTableHandle;
    }
}
