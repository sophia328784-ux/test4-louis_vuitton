package com.google.ar.core;

import defpackage.r81;
import defpackage.z81;
import java.util.Collection;

/* JADX INFO: loaded from: classes2.dex */
public class StreetscapeGeometry extends TrackableBase {

    public enum Quality {
        NONE(0),
        BUILDING_LOD_1(1),
        BUILDING_LOD_2(2);

        final int nativeCode;

        Quality(int i2) {
            this.nativeCode = i2;
        }

        public static Quality forNumber(int i2) {
            for (Quality quality : values()) {
                if (quality.nativeCode == i2) {
                    return quality;
                }
            }
            r81.i(z81.f(String.valueOf(i2).length() + (byte) 63, i2, "Unexpected value for native StreetscapeGeometry.Quality, value="));
            return null;
        }
    }

    public enum Type {
        TERRAIN(0),
        BUILDING(1);

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
            r81.i(z81.f(String.valueOf(i2).length() + (byte) 60, i2, "Unexpected value for native StreetscapeGeometry.Type, value="));
            return null;
        }
    }

    public StreetscapeGeometry(long j2, Session session) {
        super(j2, session);
    }

    private native long nativeAcquireMesh(long j2, long j3);

    private native Pose nativeGetMeshPose(long j2, long j3);

    private native int nativeGetQuality(long j2, long j3);

    private native int nativeGetType(long j2, long j3);

    private native void nativeReleaseStreetscapeGeometry(long j2, long j3);

    @Override // com.google.ar.core.TrackableBase, com.google.ar.core.Trackable
    public /* bridge */ /* synthetic */ Anchor createAnchor(Pose pose) {
        return super.createAnchor(pose);
    }

    @Override // com.google.ar.core.TrackableBase
    public /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // com.google.ar.core.TrackableBase
    public void finalize() throws Throwable {
        long j2 = this.nativeHandle;
        if (j2 != 0) {
            nativeReleaseStreetscapeGeometry(this.session.nativeSymbolTableHandle, j2);
            this.nativeHandle = 0L;
        }
        super.finalize();
    }

    @Override // com.google.ar.core.TrackableBase, com.google.ar.core.Trackable
    public /* bridge */ /* synthetic */ Collection getAnchors() {
        return super.getAnchors();
    }

    public Mesh getMesh() {
        long jNativeAcquireMesh = nativeAcquireMesh(this.session.nativeWrapperHandle, this.nativeHandle);
        if (jNativeAcquireMesh != 0) {
            return new Mesh(jNativeAcquireMesh, this.session);
        }
        return null;
    }

    public Pose getMeshPose() {
        return nativeGetMeshPose(this.session.nativeWrapperHandle, this.nativeHandle);
    }

    public Quality getQuality() {
        return Quality.forNumber(nativeGetQuality(this.session.nativeWrapperHandle, this.nativeHandle));
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
}
