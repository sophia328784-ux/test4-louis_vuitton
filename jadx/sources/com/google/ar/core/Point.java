package com.google.ar.core;

import defpackage.r81;
import defpackage.z81;
import java.util.Collection;

/* JADX INFO: loaded from: classes2.dex */
public class Point extends TrackableBase {

    public enum OrientationMode {
        INITIALIZED_TO_IDENTITY(0),
        ESTIMATED_SURFACE_NORMAL(1);

        private final int nativeCode;

        OrientationMode(int i2) {
            this.nativeCode = i2;
        }

        public static OrientationMode forNumber(int i2) {
            for (OrientationMode orientationMode : values()) {
                if (orientationMode.nativeCode == i2) {
                    return orientationMode;
                }
            }
            r81.i(z81.f(String.valueOf(i2).length() + (byte) 58, i2, "Unexpected value for native Point Orientation Mode, value="));
            return null;
        }
    }

    public Point() {
        super(0L, null);
    }

    private native int nativeGetOrientationMode(long j2, long j3);

    private native Pose nativeGetPose(long j2, long j3);

    @Override // com.google.ar.core.TrackableBase, com.google.ar.core.Trackable
    public /* bridge */ /* synthetic */ Anchor createAnchor(Pose pose) {
        return super.createAnchor(pose);
    }

    @Override // com.google.ar.core.TrackableBase
    public /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // com.google.ar.core.TrackableBase, com.google.ar.core.Trackable
    public /* bridge */ /* synthetic */ Collection getAnchors() {
        return super.getAnchors();
    }

    public OrientationMode getOrientationMode() {
        return OrientationMode.forNumber(nativeGetOrientationMode(this.session.nativeWrapperHandle, this.nativeHandle));
    }

    public Pose getPose() {
        return nativeGetPose(this.session.nativeWrapperHandle, this.nativeHandle);
    }

    @Override // com.google.ar.core.TrackableBase, com.google.ar.core.Trackable
    public /* bridge */ /* synthetic */ TrackingState getTrackingState() {
        return super.getTrackingState();
    }

    @Override // com.google.ar.core.TrackableBase
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    public Point(long j2, Session session) {
        super(j2, session);
    }
}
