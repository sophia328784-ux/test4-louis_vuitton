package com.google.ar.core;

import defpackage.r81;
import defpackage.z81;
import java.util.Collection;

/* JADX INFO: loaded from: classes2.dex */
public class InstantPlacementPoint extends TrackableBase {

    public enum TrackingMethod {
        NOT_TRACKING(0),
        SCREENSPACE_WITH_APPROXIMATE_DISTANCE(1),
        FULL_TRACKING(2);

        final int nativeCode;

        TrackingMethod(int i2) {
            this.nativeCode = i2;
        }

        public static TrackingMethod fromNumber(int i2) {
            for (TrackingMethod trackingMethod : values()) {
                if (trackingMethod.nativeCode == i2) {
                    return trackingMethod;
                }
            }
            r81.i(z81.f(String.valueOf(i2).length() + (byte) 77, i2, "Unexpected value for native InstantPlacementPoint TrackingMethod Mode, value="));
            return null;
        }
    }

    public InstantPlacementPoint(long j2, Session session) {
        super(j2, session);
    }

    private native Pose nativeGetPose(long j2, long j3);

    private native int nativeGetTrackingMethod(long j2, long j3);

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

    public Pose getPose() {
        return nativeGetPose(this.session.nativeWrapperHandle, this.nativeHandle);
    }

    public TrackingMethod getTrackingMethod() {
        return TrackingMethod.fromNumber(nativeGetTrackingMethod(this.session.nativeWrapperHandle, this.nativeHandle));
    }

    @Override // com.google.ar.core.TrackableBase, com.google.ar.core.Trackable
    public /* bridge */ /* synthetic */ TrackingState getTrackingState() {
        return super.getTrackingState();
    }

    @Override // com.google.ar.core.TrackableBase
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }
}
