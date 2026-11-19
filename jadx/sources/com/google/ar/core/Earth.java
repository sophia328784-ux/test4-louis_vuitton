package com.google.ar.core;

import defpackage.r81;
import defpackage.z81;
import java.util.Collection;
import java.util.function.BiConsumer;

/* JADX INFO: loaded from: classes2.dex */
public class Earth extends TrackableBase {

    public enum EarthState {
        ENABLED(0),
        ERROR_INTERNAL(-1),
        ERROR_GEOSPATIAL_MODE_DISABLED(-2),
        ERROR_NOT_AUTHORIZED(-3),
        ERROR_RESOURCE_EXHAUSTED(-4),
        ERROR_APK_VERSION_TOO_OLD(-5);

        final int nativeCode;

        EarthState(int i2) {
            this.nativeCode = i2;
        }

        public static EarthState forNumber(int i2) {
            for (EarthState earthState : values()) {
                if (earthState.nativeCode == i2) {
                    return earthState;
                }
            }
            r81.i(z81.f(String.valueOf(i2).length() + (byte) 46, i2, "Unexpected value for native EarthState, value="));
            return null;
        }
    }

    public Earth(long j2, Session session) {
        super(j2, session);
    }

    private native long nativeCreateAnchor(long j2, long j3, double d, double d2, double d3, float f2, float f3, float f4, float f5);

    private native long nativeGetCameraGeospatialPose(long j2, long j3);

    private native int nativeGetEarthState(long j2, long j3);

    private native long nativeGetGeospatialPose(long j2, long j3, Pose pose);

    private native Pose nativeGetPose(long j2, long j3, double d, double d2, double d3, float f2, float f3, float f4, float f5);

    private native int nativeGetTrackingState(long j2, long j3);

    private native void nativeReleaseEarth(long j2, long j3);

    private native long[] nativeResolveAnchorOnRooftopAsync(long j2, long j3, double d, double d2, double d3, float f2, float f3, float f4, float f5, ResolveAnchorOnRooftopFuture.CallbackWrapper callbackWrapper);

    private native long nativeResolveAnchorOnTerrain(long j2, long j3, double d, double d2, double d3, float f2, float f3, float f4, float f5);

    private native long[] nativeResolveAnchorOnTerrainAsync(long j2, long j3, double d, double d2, double d3, float f2, float f3, float f4, float f5, ResolveAnchorOnTerrainFuture.CallbackWrapper callbackWrapper);

    public Anchor createAnchor(double d, double d2, double d3, float[] fArr) {
        return new Anchor(nativeCreateAnchor(this.session.nativeWrapperHandle, this.nativeHandle, d, d2, d3, fArr[0], fArr[1], fArr[2], fArr[3]), this.session);
    }

    @Override // com.google.ar.core.TrackableBase
    public /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // com.google.ar.core.TrackableBase
    public void finalize() throws Throwable {
        long j2 = this.nativeHandle;
        if (j2 != 0) {
            nativeReleaseEarth(this.nativeSymbolTableHandle, j2);
            this.nativeHandle = 0L;
        }
        super.finalize();
    }

    @Override // com.google.ar.core.TrackableBase, com.google.ar.core.Trackable
    public /* bridge */ /* synthetic */ Collection getAnchors() {
        return super.getAnchors();
    }

    public GeospatialPose getCameraGeospatialPose() {
        return new GeospatialPose(nativeGetCameraGeospatialPose(this.session.nativeWrapperHandle, this.nativeHandle), this.session);
    }

    public EarthState getEarthState() {
        return EarthState.forNumber(nativeGetEarthState(this.session.nativeWrapperHandle, this.nativeHandle));
    }

    public GeospatialPose getGeospatialPose(Pose pose) {
        return new GeospatialPose(nativeGetGeospatialPose(this.session.nativeWrapperHandle, this.nativeHandle, pose), this.session);
    }

    public Pose getPose(double d, double d2, double d3, float f2, float f3, float f4, float f5) {
        return nativeGetPose(this.session.nativeWrapperHandle, this.nativeHandle, d, d2, d3, f2, f3, f4, f5);
    }

    @Override // com.google.ar.core.TrackableBase, com.google.ar.core.Trackable
    public TrackingState getTrackingState() {
        return TrackingState.forNumber(nativeGetTrackingState(this.session.nativeWrapperHandle, this.nativeHandle));
    }

    @Override // com.google.ar.core.TrackableBase
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    public ResolveAnchorOnRooftopFuture resolveAnchorOnRooftopAsync(double d, double d2, double d3, float f2, float f3, float f4, float f5, BiConsumer<Anchor, Anchor.RooftopAnchorState> biConsumer) {
        long[] jArrNativeResolveAnchorOnRooftopAsync = nativeResolveAnchorOnRooftopAsync(this.session.nativeWrapperHandle, this.nativeHandle, d, d2, d3, f2, f3, f4, f5, biConsumer != null ? new ResolveAnchorOnRooftopFuture.CallbackWrapper(this.session, biConsumer) : null);
        return new ResolveAnchorOnRooftopFuture(this.session, jArrNativeResolveAnchorOnRooftopAsync[0], jArrNativeResolveAnchorOnRooftopAsync[1]);
    }

    @Deprecated
    public Anchor resolveAnchorOnTerrain(double d, double d2, double d3, float f2, float f3, float f4, float f5) {
        return new Anchor(nativeResolveAnchorOnTerrain(this.session.nativeWrapperHandle, this.nativeHandle, d, d2, d3, f2, f3, f4, f5), this.session);
    }

    public ResolveAnchorOnTerrainFuture resolveAnchorOnTerrainAsync(double d, double d2, double d3, float f2, float f3, float f4, float f5, BiConsumer<Anchor, Anchor.TerrainAnchorState> biConsumer) {
        long[] jArrNativeResolveAnchorOnTerrainAsync = nativeResolveAnchorOnTerrainAsync(this.session.nativeWrapperHandle, this.nativeHandle, d, d2, d3, f2, f3, f4, f5, biConsumer != null ? new ResolveAnchorOnTerrainFuture.CallbackWrapper(this.session, biConsumer) : null);
        return new ResolveAnchorOnTerrainFuture(this.session, jArrNativeResolveAnchorOnTerrainAsync[0], jArrNativeResolveAnchorOnTerrainAsync[1]);
    }

    public Anchor createAnchor(double d, double d2, double d3, float f2, float f3, float f4, float f5) {
        return new Anchor(nativeCreateAnchor(this.session.nativeWrapperHandle, this.nativeHandle, d, d2, d3, f2, f3, f4, f5), this.session);
    }

    @Override // com.google.ar.core.TrackableBase, com.google.ar.core.Trackable
    @Deprecated
    public Anchor createAnchor(Pose pose) {
        throw new IllegalArgumentException("Earth does not support createAnchor using a Pose. Use createAnchor with Geospatial coordinates instead.");
    }
}
