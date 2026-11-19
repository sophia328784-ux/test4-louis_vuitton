package com.google.ar.core;

import defpackage.r81;
import defpackage.z81;
import java.nio.FloatBuffer;
import java.util.Collection;

/* JADX INFO: loaded from: classes2.dex */
public class Plane extends TrackableBase {

    public enum Type {
        HORIZONTAL_UPWARD_FACING(0),
        HORIZONTAL_DOWNWARD_FACING(1),
        VERTICAL(2);

        final int nativeCode;

        Type(int i2) {
            this.nativeCode = i2;
        }

        public static Type forNumber(int i2) {
            for (Type type : values()) {
                if (type.nativeCode == i2) {
                    return type;
                }
            }
            r81.i(z81.f(String.valueOf(i2).length() + (byte) 46, i2, "Unexpected value for native Plane.Type, value="));
            return null;
        }
    }

    public Plane() {
        super(0L, null);
    }

    private native long nativeAcquireSubsumedBy(long j2, long j3);

    private native Pose nativeGetCenterPose(long j2, long j3);

    private native float nativeGetExtentX(long j2, long j3);

    private native float nativeGetExtentZ(long j2, long j3);

    private native float[] nativeGetPolygon(long j2, long j3);

    private native int nativeGetType(long j2, long j3);

    private native boolean nativeIsPoseInExtents(long j2, long j3, Pose pose);

    private native boolean nativeIsPoseInPolygon(long j2, long j3, Pose pose);

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

    public Pose getCenterPose() {
        return nativeGetCenterPose(this.session.nativeWrapperHandle, this.nativeHandle);
    }

    public float getExtentX() {
        return nativeGetExtentX(this.session.nativeWrapperHandle, this.nativeHandle);
    }

    public float getExtentZ() {
        return nativeGetExtentZ(this.session.nativeWrapperHandle, this.nativeHandle);
    }

    public FloatBuffer getPolygon() {
        return FloatBuffer.wrap(nativeGetPolygon(this.session.nativeWrapperHandle, this.nativeHandle));
    }

    public Plane getSubsumedBy() {
        long jNativeAcquireSubsumedBy = nativeAcquireSubsumedBy(this.session.nativeWrapperHandle, this.nativeHandle);
        if (jNativeAcquireSubsumedBy == 0) {
            return null;
        }
        return new Plane(jNativeAcquireSubsumedBy, this.session);
    }

    @Override // com.google.ar.core.TrackableBase, com.google.ar.core.Trackable
    public /* bridge */ /* synthetic */ TrackingState getTrackingState() {
        return super.getTrackingState();
    }

    public Type getType() {
        return Type.forNumber(nativeGetType(this.session.nativeWrapperHandle, this.nativeHandle));
    }

    @Override // com.google.ar.core.TrackableBase
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    public boolean isPoseInExtents(Pose pose) {
        return nativeIsPoseInExtents(this.session.nativeWrapperHandle, this.nativeHandle, pose);
    }

    public boolean isPoseInPolygon(Pose pose) {
        return nativeIsPoseInPolygon(this.session.nativeWrapperHandle, this.nativeHandle, pose);
    }

    public Plane(long j2, Session session) {
        super(j2, session);
    }
}
