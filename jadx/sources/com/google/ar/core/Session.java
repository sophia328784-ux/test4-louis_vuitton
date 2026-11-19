package com.google.ar.core;

import android.content.Context;
import android.net.Uri;
import com.google.ar.core.exceptions.CameraNotAvailableException;
import com.google.ar.core.exceptions.PlaybackFailedException;
import com.google.ar.core.exceptions.RecordingFailedException;
import com.google.ar.core.exceptions.UnavailableApkTooOldException;
import com.google.ar.core.exceptions.UnavailableArcoreNotInstalledException;
import com.google.ar.core.exceptions.UnavailableDeviceNotCompatibleException;
import com.google.ar.core.exceptions.UnavailableSdkTooOldException;
import defpackage.ct0;
import defpackage.d21;
import defpackage.md;
import defpackage.r81;
import defpackage.z81;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes2.dex */
public class Session {
    private static final String TAG = "ARCore-Session";
    final q faceCache;
    final long nativeSymbolTableHandle;
    long nativeWrapperHandle;
    private SharedCamera sharedCamera;

    public enum Feature {
        FRONT_CAMERA(1),
        SHARED_CAMERA(1000);

        final int nativeCode;

        Feature(int i2) {
            this.nativeCode = i2;
        }
    }

    public enum FeatureMapQuality {
        INSUFFICIENT(0),
        SUFFICIENT(1),
        GOOD(2);

        final int nativeCode;

        FeatureMapQuality(int i2) {
            this.nativeCode = i2;
        }

        public static FeatureMapQuality forNumber(int i2) {
            for (FeatureMapQuality featureMapQuality : values()) {
                if (featureMapQuality.nativeCode == i2) {
                    return featureMapQuality;
                }
            }
            r81.i(z81.f(String.valueOf(i2).length() + (byte) 53, i2, "Unexpected value for native FeatureMapQuality, value="));
            return null;
        }
    }

    public Session(Context context, Set<Feature> set) throws UnavailableApkTooOldException, UnavailableSdkTooOldException, UnavailableArcoreNotInstalledException, UnavailableDeviceNotCompatibleException, IllegalArgumentException {
        this.faceCache = new q();
        this.sharedCamera = null;
        System.loadLibrary("arcore_sdk_jni");
        int[] iArr = new int[set.size() + 1];
        Iterator<Feature> it = set.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            iArr[i2] = it.next().nativeCode;
            i2++;
        }
        iArr[i2] = 0;
        long jNativeCreateSessionAndWrapperWithFeatures = nativeCreateSessionAndWrapperWithFeatures(context, iArr);
        this.nativeWrapperHandle = jNativeCreateSessionAndWrapperWithFeatures;
        this.nativeSymbolTableHandle = nativeGetSymbolTable(jNativeCreateSessionAndWrapperWithFeatures);
        if (set.contains(Feature.SHARED_CAMERA)) {
            this.sharedCamera = new SharedCamera(this);
        }
        loadDynamicSymbolsAfterSessionCreate();
    }

    @Deprecated
    public static Session createForSharedCamera(Context context) throws UnavailableApkTooOldException, UnavailableSdkTooOldException, UnavailableArcoreNotInstalledException, UnavailableDeviceNotCompatibleException {
        return new Session(context, EnumSet.of(Feature.SHARED_CAMERA));
    }

    public static ByteBuffer directByteBufferOrDefault(ByteBuffer byteBuffer) {
        return byteBuffer == null ? ByteBuffer.allocateDirect(0).order(ByteOrder.nativeOrder()) : byteBuffer.order(ByteOrder.nativeOrder());
    }

    public static void loadDynamicSymbolsAfterSessionCreate() {
        ArImage.nativeLoadSymbols();
        ImageMetadata.nativeLoadSymbols();
    }

    private native long[] nativeAcquireAllAnchors(long j2);

    private native long nativeAcquireEarth(long j2);

    private native int nativeCheckModuleAvailability(long j2, int i2);

    private native void nativeCloseSession(long j2);

    private native void nativeConfigure(long j2, long j3);

    private native long nativeCreateAnchor(long j2, Pose pose);

    private static native long nativeCreateSessionAndWrapperWithFeatures(Context context, int[] iArr) throws UnavailableApkTooOldException, UnavailableSdkTooOldException, UnavailableArcoreNotInstalledException, UnavailableDeviceNotCompatibleException;

    public static native long nativeCreateSessionWrapperFromHandle(long j2, long j3);

    private native int nativeEstimateFeatureMapQualityForHosting(long j2, Pose pose);

    private native long nativeGetCameraConfig(long j2);

    private native void nativeGetConfig(long j2, long j3);

    private native int nativeGetPlaybackStatus(long j2);

    private native void nativeGetRandomAccessStats(long j2, long j3);

    private native int nativeGetRecordingStatus(long j2);

    private native long[] nativeGetSupportedCameraConfigs(long j2);

    private native long[] nativeGetSupportedCameraConfigsWithFilter(long j2, long j3);

    private native long nativeGetSymbolTable(long j2);

    private native long nativeHostCloudAnchor(long j2, long j3);

    private native long[] nativeHostCloudAnchorAsync(long j2, long j3, int i2, HostCloudAnchorFuture.CallbackWrapper callbackWrapper);

    private native long nativeHostCloudAnchorWithTtl(long j2, long j3, int i2);

    private native boolean nativeIsSupported(long j2, long j3);

    private native void nativePause(long j2);

    private native void nativeRequestModuleInstallDeferred(long j2, int[] iArr);

    private native void nativeRequestModuleInstallImmediate(long j2, int[] iArr);

    private native long nativeResolveCloudAnchor(long j2, String str);

    private native long[] nativeResolveCloudAnchorAsync(long j2, String str, ResolveCloudAnchorFuture.CallbackWrapper callbackWrapper);

    private native void nativeResume(long j2);

    private native int nativeSetCameraConfig(long j2, long j3);

    private native void nativeSetCameraTextureName(long j2, int i2);

    private native void nativeSetCameraTextureNames(long j2, int[] iArr);

    private native void nativeSetDisplayGeometry(long j2, int i2, int i3, int i4);

    private native void nativeSetPlaybackDataset(long j2, String str);

    private native void nativeSetPlaybackDatasetUri(long j2, String str);

    private native void nativeStartRecording(long j2, long j3);

    private native void nativeStopRecording(long j2);

    private native void nativeUpdate(long j2, long j3);

    private void pauseSharedCameraIfInUse() {
        SharedCamera sharedCamera = this.sharedCamera;
        if (sharedCamera != null) {
            sharedCamera.pause();
        }
    }

    public static void throwExceptionFromArStatus(String str, int i2, String[] strArr, int[] iArr) throws Exception {
        int length;
        for (ai aiVar : ai.values()) {
            if (aiVar.G == i2) {
                Class cls = aiVar.H;
                if (cls == null) {
                    return;
                }
                if (strArr == null || iArr == null || (length = strArr.length) != iArr.length) {
                    length = 0;
                }
                String str2 = aiVar.I;
                if (str2 == null && str == null) {
                    throw ((Exception) cls.getConstructor(null).newInstance(null));
                }
                if (str2 != null || str == null) {
                    str = (str2 == null || str != null) ? String.valueOf(str2).concat(String.valueOf(str)) : str2;
                }
                Exception exc = (Exception) cls.getConstructor(String.class).newInstance(str);
                StackTraceElement[] stackTrace = exc.getStackTrace();
                StackTraceElement[] stackTraceElementArr = new StackTraceElement[stackTrace.length + length];
                int i3 = 0;
                while (i3 < length) {
                    stackTraceElementArr[i3] = new StackTraceElement("ARCore", com.networkbench.nbslens.nbsnativecrashlib.n.f38806i, strArr[i3], iArr[i3]);
                    i3++;
                }
                for (StackTraceElement stackTraceElement : stackTrace) {
                    stackTraceElementArr[i3] = stackTraceElement;
                    i3++;
                }
                exc.setStackTrace(stackTraceElementArr);
                throw exc;
            }
        }
        r81.i(d21.f(i2, "Unexpected error code: ", new StringBuilder(String.valueOf(i2).length() + 23)));
    }

    public VpsAvailabilityFuture checkVpsAvailabilityAsync(double d, double d2, Consumer<VpsAvailability> consumer) {
        long[] jArrNativeCheckVpsAvailabilityAsync = nativeCheckVpsAvailabilityAsync(this.nativeWrapperHandle, d, d2, consumer != null ? new VpsAvailabilityFuture.CallbackWrapper(consumer) : null);
        return new VpsAvailabilityFuture(this, jArrNativeCheckVpsAvailabilityAsync[0], jArrNativeCheckVpsAvailabilityAsync[1]);
    }

    public void close() {
        nativeCloseSession(this.nativeWrapperHandle);
    }

    public void configure(Config config) {
        nativeConfigure(this.nativeWrapperHandle, config.nativeHandle);
    }

    public Collection<Anchor> convertNativeAnchorsToCollection(long[] jArr) {
        ArrayList arrayList = new ArrayList(jArr.length);
        for (long j2 : jArr) {
            arrayList.add(new Anchor(j2, this));
        }
        return Collections.unmodifiableList(arrayList);
    }

    public List<CameraConfig> convertNativeCameraConfigsToCollection(long[] jArr) {
        ArrayList arrayList = new ArrayList(jArr.length);
        for (long j2 : jArr) {
            arrayList.add(new CameraConfig(this, j2));
        }
        return Collections.unmodifiableList(arrayList);
    }

    public Collection<TrackData> convertNativeTrackDataToCollection(long[] jArr) {
        ArrayList arrayList = new ArrayList(jArr.length);
        for (long j2 : jArr) {
            arrayList.add(new TrackData(j2, this));
        }
        return Collections.unmodifiableList(arrayList);
    }

    public <T extends Trackable> Collection<T> convertNativeTrackablesToCollection(Class<T> cls, long[] jArr) {
        ArrayList arrayList = new ArrayList(jArr.length);
        for (long j2 : jArr) {
            Trackable trackableCreateTrackable = createTrackable(j2);
            if (trackableCreateTrackable != null) {
                arrayList.add(cls.cast(trackableCreateTrackable));
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    public Anchor createAnchor(Pose pose) {
        return new Anchor(nativeCreateAnchor(this.nativeWrapperHandle, pose), this);
    }

    public Trackable createTrackable(long j2) {
        aj ajVar;
        int iInternalGetType = TrackableBase.internalGetType(this.nativeWrapperHandle, j2);
        aj[] ajVarArrValues = aj.values();
        int length = ajVarArrValues.length;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                ajVar = null;
                break;
            }
            ajVar = ajVarArrValues[i2];
            if (ajVar.f33394k == iInternalGetType) {
                break;
            }
            i2++;
        }
        if (ajVar == null) {
            TrackableBase.internalReleaseNativeHandle(this.nativeSymbolTableHandle, j2);
            return null;
        }
        switch (ajVar.ordinal()) {
            case 0:
            case 1:
                return null;
            case 2:
                return new Plane(j2, this);
            case 3:
                return new Point(j2, this);
            case 4:
                return new AugmentedImage(j2, this);
            case 5:
                q qVar = this.faceCache;
                synchronized (qVar) {
                    Map map = qVar.f33433a;
                    Long lValueOf = Long.valueOf(j2);
                    LinkedHashMap linkedHashMap = (LinkedHashMap) map;
                    AugmentedFace augmentedFace = (AugmentedFace) linkedHashMap.get(lValueOf);
                    if (augmentedFace != null) {
                        return augmentedFace;
                    }
                    AugmentedFace augmentedFace2 = new AugmentedFace(j2, this);
                    linkedHashMap.put(lValueOf, augmentedFace2);
                    return augmentedFace2;
                }
            case 6:
                return new StreetscapeGeometry(j2, this);
            case 7:
                return getEarth();
            case 8:
                return new DepthPoint(j2, this);
            case 9:
                return new InstantPlacementPoint(j2, this);
            default:
                throw null;
        }
    }

    public FeatureMapQuality estimateFeatureMapQualityForHosting(Pose pose) {
        return FeatureMapQuality.forNumber(nativeEstimateFeatureMapQualityForHosting(this.nativeWrapperHandle, pose));
    }

    public void finalize() throws Throwable {
        long j2 = this.nativeWrapperHandle;
        if (j2 != 0) {
            nativeDestroySessionWrapper(j2);
            this.nativeWrapperHandle = 0L;
        }
        super.finalize();
    }

    public Collection<Anchor> getAllAnchors() {
        return convertNativeAnchorsToCollection(nativeAcquireAllAnchors(this.nativeWrapperHandle));
    }

    public <T extends Trackable> Collection<T> getAllTrackables(Class<T> cls) {
        aj ajVarA = aj.a(cls);
        return ajVarA == aj.f33387b ? Collections.EMPTY_LIST : convertNativeTrackablesToCollection(cls, nativeAcquireAllTrackables(this.nativeWrapperHandle, ajVarA.f33394k));
    }

    public CameraConfig getCameraConfig() {
        return new CameraConfig(this, nativeGetCameraConfig(this.nativeWrapperHandle));
    }

    public Config getConfig() {
        Config config = new Config(this);
        getConfig(config);
        return config;
    }

    public Earth getEarth() {
        long jNativeAcquireEarth = nativeAcquireEarth(this.nativeWrapperHandle);
        if (jNativeAcquireEarth != 0) {
            return new Earth(jNativeAcquireEarth, this);
        }
        return null;
    }

    public PlaybackStatus getPlaybackStatus() {
        return PlaybackStatus.forNumber(nativeGetPlaybackStatus(this.nativeWrapperHandle));
    }

    public RecordingStatus getRecordingStatus() {
        return RecordingStatus.forNumber(nativeGetRecordingStatus(this.nativeWrapperHandle));
    }

    public SharedCamera getSharedCamera() {
        SharedCamera sharedCamera = this.sharedCamera;
        if (sharedCamera != null) {
            return sharedCamera;
        }
        md.k("Shared camera is not in use, please create session using new Session(context, EnumSet.of(Session.Feature.SHARED_CAMERA)).");
        return null;
    }

    public List<CameraConfig> getSupportedCameraConfigs(CameraConfigFilter cameraConfigFilter) {
        if (cameraConfigFilter == null) {
            ct0.c();
            return null;
        }
        long[] jArrNativeGetSupportedCameraConfigsWithFilter = nativeGetSupportedCameraConfigsWithFilter(this.nativeWrapperHandle, cameraConfigFilter.nativeHandle);
        ArrayList arrayList = new ArrayList(jArrNativeGetSupportedCameraConfigsWithFilter.length);
        for (long j2 : jArrNativeGetSupportedCameraConfigsWithFilter) {
            arrayList.add(new CameraConfig(this, j2));
        }
        return Collections.unmodifiableList(arrayList);
    }

    @Deprecated
    public Anchor hostCloudAnchor(Anchor anchor) {
        return new Anchor(nativeHostCloudAnchor(this.nativeWrapperHandle, anchor.nativeHandle), this);
    }

    public HostCloudAnchorFuture hostCloudAnchorAsync(Anchor anchor, int i2, BiConsumer<String, Anchor.CloudAnchorState> biConsumer) {
        long[] jArrNativeHostCloudAnchorAsync = nativeHostCloudAnchorAsync(this.nativeWrapperHandle, anchor.nativeHandle, i2, biConsumer != null ? new HostCloudAnchorFuture.CallbackWrapper(biConsumer) : null);
        return new HostCloudAnchorFuture(this, jArrNativeHostCloudAnchorAsync[0], jArrNativeHostCloudAnchorAsync[1]);
    }

    @Deprecated
    public Anchor hostCloudAnchorWithTtl(Anchor anchor, int i2) {
        return new Anchor(nativeHostCloudAnchorWithTtl(this.nativeWrapperHandle, anchor.nativeHandle, i2), this);
    }

    public boolean isDepthModeSupported(Config.DepthMode depthMode) {
        return nativeIsDepthModeSupported(this.nativeWrapperHandle, depthMode.nativeCode);
    }

    public boolean isGeospatialModeSupported(Config.GeospatialMode geospatialMode) {
        return nativeIsGeospatialModeSupported(this.nativeWrapperHandle, geospatialMode.nativeCode);
    }

    public boolean isImageStabilizationModeSupported(Config.ImageStabilizationMode imageStabilizationMode) {
        return nativeIsImageStabilizationModeSupported(this.nativeWrapperHandle, imageStabilizationMode.nativeCode);
    }

    public boolean isSemanticModeSupported(Config.SemanticMode semanticMode) {
        return nativeIsSemanticModeSupported(this.nativeWrapperHandle, semanticMode.nativeCode);
    }

    public boolean isSharedCameraUsed() {
        return this.sharedCamera != null;
    }

    @Deprecated
    public boolean isSupported(Config config) {
        return nativeIsSupported(this.nativeWrapperHandle, config.nativeHandle);
    }

    public native long[] nativeAcquireAllTrackables(long j2, int i2);

    public native long[] nativeCheckVpsAvailabilityAsync(long j2, double d, double d2, VpsAvailabilityFuture.CallbackWrapper callbackWrapper);

    public native void nativeDestroySessionWrapper(long j2);

    public native long nativeGetSessionNativeHandle(long j2);

    public native boolean nativeIsDepthModeSupported(long j2, int i2);

    public native boolean nativeIsGeospatialModeSupported(long j2, int i2);

    public native boolean nativeIsImageStabilizationModeSupported(long j2, int i2);

    public native boolean nativeIsSemanticModeSupported(long j2, int i2);

    public native long nativeReleaseSessionOwnership(long j2);

    public void pause() {
        pauseSharedCameraIfInUse();
        nativePause(this.nativeWrapperHandle);
    }

    @Deprecated
    public Anchor resolveCloudAnchor(String str) {
        return new Anchor(nativeResolveCloudAnchor(this.nativeWrapperHandle, str), this);
    }

    public ResolveCloudAnchorFuture resolveCloudAnchorAsync(String str, BiConsumer<Anchor, Anchor.CloudAnchorState> biConsumer) {
        long[] jArrNativeResolveCloudAnchorAsync = nativeResolveCloudAnchorAsync(this.nativeWrapperHandle, str, biConsumer != null ? new ResolveCloudAnchorFuture.CallbackWrapper(this, biConsumer) : null);
        return new ResolveCloudAnchorFuture(this, jArrNativeResolveCloudAnchorAsync[0], jArrNativeResolveCloudAnchorAsync[1]);
    }

    public void resume() throws CameraNotAvailableException {
        nativeResume(this.nativeWrapperHandle);
    }

    public void setCameraConfig(CameraConfig cameraConfig) {
        nativeSetCameraConfig(this.nativeWrapperHandle, cameraConfig.nativeHandle);
    }

    public void setCameraTextureName(int i2) {
        nativeSetCameraTextureName(this.nativeWrapperHandle, i2);
    }

    public void setCameraTextureNames(int[] iArr) {
        if (iArr == null || iArr.length == 0) {
            md.n("textureIds must be an array with at least 1 entry.");
        } else {
            nativeSetCameraTextureNames(this.nativeWrapperHandle, iArr);
        }
    }

    public void setDisplayGeometry(int i2, int i3, int i4) {
        nativeSetDisplayGeometry(this.nativeWrapperHandle, i2, i3, i4);
    }

    @Deprecated
    public void setPlaybackDataset(String str) throws PlaybackFailedException {
        nativeSetPlaybackDataset(this.nativeWrapperHandle, str);
    }

    public void setPlaybackDatasetUri(Uri uri) throws PlaybackFailedException {
        nativeSetPlaybackDatasetUri(this.nativeWrapperHandle, uri.toString());
    }

    public void startRecording(RecordingConfig recordingConfig) throws RecordingFailedException {
        if (recordingConfig != null) {
            nativeStartRecording(this.nativeWrapperHandle, recordingConfig.nativeHandle);
        } else {
            ct0.c();
        }
    }

    public void stopRecording() throws RecordingFailedException {
        nativeStopRecording(this.nativeWrapperHandle);
    }

    public Frame update() throws CameraNotAvailableException {
        Frame frame = new Frame(this);
        nativeUpdate(this.nativeWrapperHandle, frame.nativeHandle);
        return frame;
    }

    public void getConfig(Config config) {
        nativeGetConfig(this.nativeWrapperHandle, config.nativeHandle);
    }

    @Deprecated
    public List<CameraConfig> getSupportedCameraConfigs() {
        return convertNativeCameraConfigsToCollection(nativeGetSupportedCameraConfigs(this.nativeWrapperHandle));
    }

    public Session(long j2) {
        this.faceCache = new q();
        this.sharedCamera = null;
        this.nativeWrapperHandle = j2;
        this.nativeSymbolTableHandle = nativeGetSymbolTable(j2);
    }

    public Session(Context context) throws UnavailableApkTooOldException, UnavailableSdkTooOldException, UnavailableArcoreNotInstalledException, UnavailableDeviceNotCompatibleException {
        this(context, EnumSet.noneOf(Feature.class));
    }

    public Session() {
        this.faceCache = new q();
        this.sharedCamera = null;
        this.nativeWrapperHandle = 0L;
        this.nativeSymbolTableHandle = 0L;
    }

    public static void throwExceptionFromArStatus(int i2) throws Exception {
        throwExceptionFromArStatus(null, i2, null, null);
    }
}
