package com.google.ar.core;

import android.hardware.HardwareBuffer;
import android.media.Image;
import android.view.MotionEvent;
import com.google.ar.core.exceptions.NotYetAvailableException;
import defpackage.md;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public class Frame {
    static final ArrayList<Anchor> ANCHORS_EMPTY_LIST = new ArrayList<>();
    static final ArrayList<Plane> PLANES_EMPTY_LIST = new ArrayList<>();
    private static final String TAG = "ARCore-Frame";
    private LightEstimate lightEstimate;
    long nativeHandle;
    final long nativeSymbolTableHandle;
    final Session session;

    public Frame() {
        this.nativeHandle = 0L;
        this.session = null;
        this.nativeSymbolTableHandle = 0L;
    }

    private List<HitResult> convertNativeHitResultsToList(long[] jArr) {
        ArrayList arrayList = new ArrayList(jArr.length);
        for (long j2 : jArr) {
            HitResult hitResult = new HitResult(j2, this.session);
            if (hitResult.getTrackable() != null) {
                arrayList.add(hitResult);
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    private native long nativeAcquireCameraImage(long j2, long j3);

    private native long nativeAcquireDepthImage(long j2, long j3);

    private native long nativeAcquireDepthImage16Bits(long j2, long j3);

    private native long nativeAcquireImageMetadata(long j2, long j3);

    private native long nativeAcquireRawDepthConfidenceImage(long j2, long j3);

    private native long nativeAcquireRawDepthImage(long j2, long j3);

    private native long nativeAcquireRawDepthImage16Bits(long j2, long j3);

    private native long nativeAcquireSemanticConfidenceImage(long j2, long j3);

    private native long nativeAcquireSemanticImage(long j2, long j3);

    private native long[] nativeAcquireTrackData(long j2, long j3, byte[] bArr);

    private native long[] nativeAcquireUpdatedAnchors(long j2, long j3);

    private static native long nativeCreateFrame(long j2);

    private static native void nativeDestroyFrame(long j2, long j3);

    private native long nativeGetAndroidCameraTimestamp(long j2, long j3);

    private native Pose nativeGetAndroidSensorPose(long j2, long j3);

    private native int nativeGetCameraTextureName(long j2, long j3);

    private native HardwareBuffer nativeGetHardwareBuffer(long j2, long j3);

    private native void nativeGetLightEstimate(long j2, long j3, long j4);

    private native float nativeGetSemanticLabelFraction(long j2, long j3, int i2);

    private native long nativeGetTimestamp(long j2, long j3);

    private native boolean nativeHasDisplayGeometryChanged(long j2, long j3);

    private native void nativeRecordTrackData(long j2, long j3, byte[] bArr, byte[] bArr2);

    private native void nativeTransformCoordinates2dFloatArrayOrBuffer(long j2, long j3, int i2, Object obj, int i3, Object obj2);

    private native void nativeTransformCoordinates3dFloatArrayOrBuffer(long j2, long j3, int i2, Object obj, int i3, Object obj2);

    private native void nativeTransformDisplayUvCoords(long j2, long j3, FloatBuffer floatBuffer, FloatBuffer floatBuffer2);

    public Image acquireCameraImage() throws NotYetAvailableException {
        return new ArImage(this.session, nativeAcquireCameraImage(this.session.nativeWrapperHandle, this.nativeHandle));
    }

    @Deprecated(forRemoval = true)
    public Image acquireDepthImage() throws NotYetAvailableException {
        return new ArImage(this.session, nativeAcquireDepthImage(this.session.nativeWrapperHandle, this.nativeHandle));
    }

    public Image acquireDepthImage16Bits() throws NotYetAvailableException {
        return new ArImage(this.session, nativeAcquireDepthImage16Bits(this.session.nativeWrapperHandle, this.nativeHandle));
    }

    public PointCloud acquirePointCloud() {
        return new PointCloud(this.session, nativeAcquirePointCloud(this.session.nativeWrapperHandle, this.nativeHandle));
    }

    public Image acquireRawDepthConfidenceImage() throws NotYetAvailableException {
        return new ArImage(this.session, nativeAcquireRawDepthConfidenceImage(this.session.nativeWrapperHandle, this.nativeHandle));
    }

    @Deprecated(forRemoval = true)
    public Image acquireRawDepthImage() throws NotYetAvailableException {
        return new ArImage(this.session, nativeAcquireRawDepthImage(this.session.nativeWrapperHandle, this.nativeHandle));
    }

    public Image acquireRawDepthImage16Bits() throws NotYetAvailableException {
        return new ArImage(this.session, nativeAcquireRawDepthImage16Bits(this.session.nativeWrapperHandle, this.nativeHandle));
    }

    public Image acquireSemanticConfidenceImage() throws NotYetAvailableException {
        return new ArImage(this.session, nativeAcquireSemanticConfidenceImage(this.session.nativeWrapperHandle, this.nativeHandle));
    }

    public Image acquireSemanticImage() throws NotYetAvailableException {
        return new ArImage(this.session, nativeAcquireSemanticImage(this.session.nativeWrapperHandle, this.nativeHandle));
    }

    public void finalize() throws Throwable {
        long j2 = this.nativeHandle;
        if (j2 != 0) {
            nativeDestroyFrame(this.nativeSymbolTableHandle, j2);
            this.nativeHandle = 0L;
        }
        super.finalize();
    }

    public long getAndroidCameraTimestamp() {
        return nativeGetAndroidCameraTimestamp(this.session.nativeWrapperHandle, this.nativeHandle);
    }

    public Pose getAndroidSensorPose() {
        return nativeGetAndroidSensorPose(this.session.nativeWrapperHandle, this.nativeHandle);
    }

    public Camera getCamera() {
        return new Camera(this.session, this);
    }

    public int getCameraTextureName() {
        return nativeGetCameraTextureName(this.session.nativeWrapperHandle, this.nativeHandle);
    }

    public HardwareBuffer getHardwareBuffer() throws IllegalStateException, NotYetAvailableException {
        return nativeGetHardwareBuffer(this.session.nativeWrapperHandle, this.nativeHandle);
    }

    public ImageMetadata getImageMetadata() throws NotYetAvailableException {
        return new ImageMetadata(nativeAcquireImageMetadata(this.session.nativeWrapperHandle, this.nativeHandle), this.session);
    }

    public LightEstimate getLightEstimate() {
        if (this.lightEstimate == null) {
            this.lightEstimate = new LightEstimate(this.session);
        }
        nativeGetLightEstimate(this.session.nativeWrapperHandle, this.nativeHandle, this.lightEstimate.nativeHandle);
        return this.lightEstimate;
    }

    public float getSemanticLabelFraction(SemanticLabel semanticLabel) throws NotYetAvailableException {
        return nativeGetSemanticLabelFraction(this.session.nativeWrapperHandle, this.nativeHandle, semanticLabel.nativeCode);
    }

    public long getTimestamp() {
        return nativeGetTimestamp(this.session.nativeWrapperHandle, this.nativeHandle);
    }

    public Collection<Anchor> getUpdatedAnchors() {
        return this.session.convertNativeAnchorsToCollection(nativeAcquireUpdatedAnchors(this.session.nativeWrapperHandle, this.nativeHandle));
    }

    public Collection<TrackData> getUpdatedTrackData(UUID uuid) {
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(new byte[16]);
        byteBufferWrap.putLong(uuid.getMostSignificantBits());
        byteBufferWrap.putLong(uuid.getLeastSignificantBits());
        return this.session.convertNativeTrackDataToCollection(nativeAcquireTrackData(this.session.nativeWrapperHandle, this.nativeHandle, byteBufferWrap.array()));
    }

    public <T extends Trackable> Collection<T> getUpdatedTrackables(Class<T> cls) {
        aj ajVarA = aj.a(cls);
        if (ajVarA == aj.f33387b) {
            return Collections.EMPTY_LIST;
        }
        return this.session.convertNativeTrackablesToCollection(cls, nativeAcquireUpdatedTrackables(this.session.nativeWrapperHandle, this.nativeHandle, ajVarA.f33394k));
    }

    public boolean hasDisplayGeometryChanged() {
        return nativeHasDisplayGeometryChanged(this.session.nativeWrapperHandle, this.nativeHandle);
    }

    public List<HitResult> hitTest(float[] fArr, int i2, float[] fArr2, int i3) {
        return convertNativeHitResultsToList(nativeHitTestRay(this.session.nativeWrapperHandle, this.nativeHandle, fArr, i2, fArr2, i3));
    }

    public List<HitResult> hitTestInstantPlacement(float f2, float f3, float f4) {
        return convertNativeHitResultsToList(nativeHitTestInstantPlacement(this.session.nativeWrapperHandle, this.nativeHandle, f2, f3, f4));
    }

    public native long nativeAcquirePointCloud(long j2, long j3);

    public native long[] nativeAcquireUpdatedTrackables(long j2, long j3, int i2);

    public native long[] nativeHitTest(long j2, long j3, float f2, float f3);

    public native long[] nativeHitTestInstantPlacement(long j2, long j3, float f2, float f3, float f4);

    public native long[] nativeHitTestRay(long j2, long j3, float[] fArr, int i2, float[] fArr2, int i3);

    public void recordTrackData(UUID uuid, ByteBuffer byteBuffer) {
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(new byte[16]);
        byteBufferWrap.putLong(uuid.getMostSignificantBits());
        byteBufferWrap.putLong(uuid.getLeastSignificantBits());
        if (byteBuffer.hasArray() && byteBuffer.arrayOffset() == 0) {
            nativeRecordTrackData(this.session.nativeWrapperHandle, this.nativeHandle, byteBufferWrap.array(), byteBuffer.array());
            return;
        }
        byte[] bArr = new byte[byteBuffer.remaining()];
        byteBuffer.get(bArr);
        nativeRecordTrackData(this.session.nativeWrapperHandle, this.nativeHandle, byteBufferWrap.array(), bArr);
    }

    public void transformCoordinates2d(Coordinates2d coordinates2d, FloatBuffer floatBuffer, Coordinates2d coordinates2d2, FloatBuffer floatBuffer2) {
        nativeTransformCoordinates2dFloatArrayOrBuffer(this.session.nativeWrapperHandle, this.nativeHandle, coordinates2d.nativeCode, floatBuffer, coordinates2d2.nativeCode, floatBuffer2);
    }

    public void transformCoordinates3d(Coordinates2d coordinates2d, FloatBuffer floatBuffer, Coordinates3d coordinates3d, FloatBuffer floatBuffer2) {
        nativeTransformCoordinates3dFloatArrayOrBuffer(this.session.nativeWrapperHandle, this.nativeHandle, coordinates2d.nativeCode, floatBuffer, coordinates3d.nativeCode, floatBuffer2);
    }

    @Deprecated
    public void transformDisplayUvCoords(FloatBuffer floatBuffer, FloatBuffer floatBuffer2) {
        if (floatBuffer.isDirect() && floatBuffer2.isDirect()) {
            nativeTransformDisplayUvCoords(this.session.nativeWrapperHandle, this.nativeHandle, floatBuffer, floatBuffer2);
        } else {
            md.n("transformDisplayUvCoords currently requires direct buffers.");
        }
    }

    public Frame(Session session) {
        this(session, nativeCreateFrame(session.nativeWrapperHandle));
    }

    public Frame(Session session, long j2) {
        this.session = session;
        this.nativeHandle = j2;
        this.nativeSymbolTableHandle = session.nativeSymbolTableHandle;
    }

    public void transformCoordinates2d(Coordinates2d coordinates2d, float[] fArr, Coordinates2d coordinates2d2, float[] fArr2) {
        nativeTransformCoordinates2dFloatArrayOrBuffer(this.session.nativeWrapperHandle, this.nativeHandle, coordinates2d.nativeCode, fArr, coordinates2d2.nativeCode, fArr2);
    }

    public void transformCoordinates3d(Coordinates2d coordinates2d, float[] fArr, Coordinates3d coordinates3d, float[] fArr2) {
        nativeTransformCoordinates3dFloatArrayOrBuffer(this.session.nativeWrapperHandle, this.nativeHandle, coordinates2d.nativeCode, fArr, coordinates3d.nativeCode, fArr2);
    }

    public List<HitResult> hitTest(MotionEvent motionEvent) {
        return hitTest(motionEvent.getX(), motionEvent.getY());
    }

    public List<HitResult> hitTest(float f2, float f3) {
        return convertNativeHitResultsToList(nativeHitTest(this.session.nativeWrapperHandle, this.nativeHandle, f2, f3));
    }
}
