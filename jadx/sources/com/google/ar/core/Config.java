package com.google.ar.core;

import defpackage.r81;
import defpackage.z81;

/* JADX INFO: loaded from: classes2.dex */
public class Config {
    private static final String TAG = "ARCore-Config";
    long nativeHandle;
    final long nativeSymbolTableHandle;
    final Session session;

    public enum AugmentedFaceMode {
        DISABLED(0),
        MESH3D(2);

        final int nativeCode;

        AugmentedFaceMode(int i2) {
            this.nativeCode = i2;
        }

        public static AugmentedFaceMode forNumber(int i2) {
            for (AugmentedFaceMode augmentedFaceMode : values()) {
                if (augmentedFaceMode.nativeCode == i2) {
                    return augmentedFaceMode;
                }
            }
            r81.i(z81.f(String.valueOf(i2).length() + (byte) 53, i2, "Unexpected value for native AugmentedFaceMode, value="));
            return null;
        }
    }

    public enum CloudAnchorMode {
        DISABLED(0),
        ENABLED(1);

        final int nativeCode;

        CloudAnchorMode(int i2) {
            this.nativeCode = i2;
        }

        public static CloudAnchorMode forNumber(int i2) {
            for (CloudAnchorMode cloudAnchorMode : values()) {
                if (cloudAnchorMode.nativeCode == i2) {
                    return cloudAnchorMode;
                }
            }
            r81.i(z81.f(String.valueOf(i2).length() + (byte) 53, i2, "Unexpected value for native AnchorHostingMode, value="));
            return null;
        }
    }

    public enum DepthMode {
        DISABLED(0),
        AUTOMATIC(1),
        RAW_DEPTH_ONLY(3);

        final int nativeCode;

        DepthMode(int i2) {
            this.nativeCode = i2;
        }

        public static DepthMode forNumber(int i2) {
            for (DepthMode depthMode : values()) {
                if (depthMode.nativeCode == i2) {
                    return depthMode;
                }
            }
            r81.i(z81.f(String.valueOf(i2).length() + (byte) 45, i2, "Unexpected value for native DepthMode, value="));
            return null;
        }
    }

    public enum FlashMode {
        OFF(0),
        TORCH(2);

        final int nativeCode;

        FlashMode(int i2) {
            this.nativeCode = i2;
        }

        public static FlashMode forNumber(int i2) {
            for (FlashMode flashMode : values()) {
                if (flashMode.nativeCode == i2) {
                    return flashMode;
                }
            }
            r81.i(z81.f(String.valueOf(i2).length() + (byte) 45, i2, "Unexpected value for native FlashMode, value="));
            return null;
        }
    }

    public enum FocusMode {
        FIXED(0),
        AUTO(1);

        final int nativeCode;

        FocusMode(int i2) {
            this.nativeCode = i2;
        }

        public static FocusMode forNumber(int i2) {
            for (FocusMode focusMode : values()) {
                if (focusMode.nativeCode == i2) {
                    return focusMode;
                }
            }
            r81.i(z81.f(String.valueOf(i2).length() + (byte) 45, i2, "Unexpected value for native FocusMode, value="));
            return null;
        }
    }

    public enum GeospatialMode {
        DISABLED(0),
        ENABLED(2);

        final int nativeCode;

        GeospatialMode(int i2) {
            this.nativeCode = i2;
        }

        public static GeospatialMode forNumber(int i2) {
            for (GeospatialMode geospatialMode : values()) {
                if (geospatialMode.nativeCode == i2) {
                    return geospatialMode;
                }
            }
            r81.i(z81.f(String.valueOf(i2).length() + (byte) 50, i2, "Unexpected value for native GeospatialMode, value="));
            return null;
        }
    }

    public enum ImageStabilizationMode {
        OFF(0),
        EIS(1);

        final int nativeCode;

        ImageStabilizationMode(int i2) {
            this.nativeCode = i2;
        }

        public static ImageStabilizationMode forNumber(int i2) {
            for (ImageStabilizationMode imageStabilizationMode : values()) {
                if (imageStabilizationMode.nativeCode == i2) {
                    return imageStabilizationMode;
                }
            }
            r81.i(z81.f(String.valueOf(i2).length() + (byte) 58, i2, "Unexpected value for native ImageStabilizationMode, value="));
            return null;
        }
    }

    public enum InstantPlacementMode {
        DISABLED(0),
        LOCAL_Y_UP(2);

        final int nativeCode;

        InstantPlacementMode(int i2) {
            this.nativeCode = i2;
        }

        public static InstantPlacementMode forNumber(int i2) {
            for (InstantPlacementMode instantPlacementMode : values()) {
                if (instantPlacementMode.nativeCode == i2) {
                    return instantPlacementMode;
                }
            }
            r81.i(z81.f(String.valueOf(i2).length() + (byte) 56, i2, "Unexpected value for native InstantPlacementMode, value="));
            return null;
        }
    }

    public enum LightEstimationMode {
        DISABLED(0),
        AMBIENT_INTENSITY(1),
        ENVIRONMENTAL_HDR(2);

        final int nativeCode;

        LightEstimationMode(int i2) {
            this.nativeCode = i2;
        }

        public static LightEstimationMode forNumber(int i2) {
            for (LightEstimationMode lightEstimationMode : values()) {
                if (lightEstimationMode.nativeCode == i2) {
                    return lightEstimationMode;
                }
            }
            r81.i(z81.f(String.valueOf(i2).length() + (byte) 55, i2, "Unexpected value for native LightEstimationMode, value="));
            return null;
        }
    }

    public enum PlaneFindingMode {
        DISABLED(0),
        HORIZONTAL(1),
        VERTICAL(2),
        HORIZONTAL_AND_VERTICAL(3);

        final int nativeCode;

        PlaneFindingMode(int i2) {
            this.nativeCode = i2;
        }

        public static PlaneFindingMode forNumber(int i2) {
            for (PlaneFindingMode planeFindingMode : values()) {
                if (planeFindingMode.nativeCode == i2) {
                    return planeFindingMode;
                }
            }
            r81.i(z81.f(String.valueOf(i2).length() + (byte) 52, i2, "Unexpected value for native PlaneFindingMode, value="));
            return null;
        }
    }

    public enum SemanticMode {
        DISABLED(0),
        ENABLED(1);

        final int nativeCode;

        SemanticMode(int i2) {
            this.nativeCode = i2;
        }

        public static SemanticMode forNumber(int i2) {
            for (SemanticMode semanticMode : values()) {
                if (semanticMode.nativeCode == i2) {
                    return semanticMode;
                }
            }
            r81.i(z81.f(String.valueOf(i2).length() + (byte) 48, i2, "Unexpected value for native SemanticMode, value="));
            return null;
        }
    }

    public enum StreetscapeGeometryMode {
        DISABLED(0),
        ENABLED(1);

        final int nativeCode;

        StreetscapeGeometryMode(int i2) {
            this.nativeCode = i2;
        }

        public static StreetscapeGeometryMode forNumber(int i2) {
            for (StreetscapeGeometryMode streetscapeGeometryMode : values()) {
                if (streetscapeGeometryMode.nativeCode == i2) {
                    return streetscapeGeometryMode;
                }
            }
            r81.i(z81.f(String.valueOf(i2).length() + (byte) 59, i2, "Unexpected value for native StreetscapeGeometryMode, value="));
            return null;
        }
    }

    public enum TextureUpdateMode {
        BIND_TO_TEXTURE_EXTERNAL_OES(0),
        EXPOSE_HARDWARE_BUFFER(1);

        final int nativeCode;

        TextureUpdateMode(int i2) {
            this.nativeCode = i2;
        }

        public static TextureUpdateMode forNumber(int i2) {
            for (TextureUpdateMode textureUpdateMode : values()) {
                if (textureUpdateMode.nativeCode == i2) {
                    return textureUpdateMode;
                }
            }
            r81.i(z81.f(String.valueOf(i2).length() + (byte) 53, i2, "Unexpected value for native TextureUpdateMode, value="));
            return null;
        }
    }

    public enum UpdateMode {
        BLOCKING(0),
        LATEST_CAMERA_IMAGE(1);

        final int nativeCode;

        UpdateMode(int i2) {
            this.nativeCode = i2;
        }

        public static UpdateMode forNumber(int i2) {
            for (UpdateMode updateMode : values()) {
                if (updateMode.nativeCode == i2) {
                    return updateMode;
                }
            }
            r81.i(z81.f(String.valueOf(i2).length() + (byte) 46, i2, "Unexpected value for native UpdateMode, value="));
            return null;
        }
    }

    public Config(Session session) {
        this.session = session;
        this.nativeHandle = nativeCreate(session.nativeWrapperHandle);
        this.nativeSymbolTableHandle = session.nativeSymbolTableHandle;
    }

    private static native long nativeCreate(long j2);

    private static native void nativeDestroy(long j2, long j3);

    private native int nativeGetAugmentedFaceMode(long j2, long j3);

    private native long nativeGetAugmentedImageDatabase(long j2, long j3);

    private native int nativeGetCloudAnchorMode(long j2, long j3);

    private native int nativeGetDepthMode(long j2, long j3);

    private native int nativeGetFlashMode(long j2, long j3);

    private native int nativeGetFocusMode(long j2, long j3);

    private native int nativeGetGeospatialMode(long j2, long j3, long j4);

    private native int nativeGetImageStabilizationMode(long j2, long j3);

    private native int nativeGetInstantPlacementMode(long j2, long j3);

    private native int nativeGetLightEstimationMode(long j2, long j3);

    private native int nativeGetPlaneFindingMode(long j2, long j3);

    private native int nativeGetSemanticMode(long j2, long j3);

    private native int nativeGetStreetscapeGeometryMode(long j2, long j3, long j4);

    private native int nativeGetTextureUpdateMode(long j2, long j3);

    private native int nativeGetUpdateMode(long j2, long j3);

    private native void nativeSetAugmentedFaceMode(long j2, long j3, int i2);

    private native void nativeSetAugmentedImageDatabase(long j2, long j3, long j4);

    private native void nativeSetCloudAnchorMode(long j2, long j3, int i2);

    private native void nativeSetDepthMode(long j2, long j3, int i2);

    private native void nativeSetFlashMode(long j2, long j3, int i2);

    private native void nativeSetFocusMode(long j2, long j3, int i2);

    private native void nativeSetGeospatialMode(long j2, long j3, long j4, int i2);

    private native void nativeSetImageStabilizationMode(long j2, long j3, int i2);

    private native void nativeSetInstantPlacementMode(long j2, long j3, int i2);

    private native void nativeSetLightEstimationMode(long j2, long j3, int i2);

    private native void nativeSetPlaneFindingMode(long j2, long j3, int i2);

    private native void nativeSetSemanticMode(long j2, long j3, int i2);

    private native void nativeSetStreetscapeGeometryMode(long j2, long j3, long j4, int i2);

    private native void nativeSetTextureUpdateMode(long j2, long j3, int i2);

    private native void nativeSetUpdateMode(long j2, long j3, int i2);

    public void finalize() throws Throwable {
        long j2 = this.nativeHandle;
        if (j2 != 0) {
            nativeDestroy(this.nativeSymbolTableHandle, j2);
        }
        super.finalize();
    }

    public AugmentedFaceMode getAugmentedFaceMode() {
        return AugmentedFaceMode.forNumber(nativeGetAugmentedFaceMode(this.session.nativeWrapperHandle, this.nativeHandle));
    }

    public AugmentedImageDatabase getAugmentedImageDatabase() {
        return new AugmentedImageDatabase(this.session, nativeGetAugmentedImageDatabase(this.session.nativeWrapperHandle, this.nativeHandle));
    }

    public CloudAnchorMode getCloudAnchorMode() {
        return CloudAnchorMode.forNumber(nativeGetCloudAnchorMode(this.session.nativeWrapperHandle, this.nativeHandle));
    }

    public DepthMode getDepthMode() {
        return DepthMode.forNumber(nativeGetDepthMode(this.session.nativeWrapperHandle, this.nativeHandle));
    }

    public FlashMode getFlashMode() {
        return FlashMode.forNumber(nativeGetFlashMode(this.session.nativeWrapperHandle, this.nativeHandle));
    }

    public FocusMode getFocusMode() {
        return FocusMode.forNumber(nativeGetFocusMode(this.session.nativeWrapperHandle, this.nativeHandle));
    }

    public GeospatialMode getGeospatialMode() {
        return GeospatialMode.forNumber(nativeGetGeospatialMode(this.nativeSymbolTableHandle, this.session.nativeWrapperHandle, this.nativeHandle));
    }

    public ImageStabilizationMode getImageStabilizationMode() {
        return ImageStabilizationMode.forNumber(nativeGetImageStabilizationMode(this.session.nativeWrapperHandle, this.nativeHandle));
    }

    public InstantPlacementMode getInstantPlacementMode() {
        return InstantPlacementMode.forNumber(nativeGetInstantPlacementMode(this.session.nativeWrapperHandle, this.nativeHandle));
    }

    public LightEstimationMode getLightEstimationMode() {
        return LightEstimationMode.forNumber(nativeGetLightEstimationMode(this.session.nativeWrapperHandle, this.nativeHandle));
    }

    public PlaneFindingMode getPlaneFindingMode() {
        return PlaneFindingMode.forNumber(nativeGetPlaneFindingMode(this.session.nativeWrapperHandle, this.nativeHandle));
    }

    public SemanticMode getSemanticMode() {
        return SemanticMode.forNumber(nativeGetSemanticMode(this.session.nativeWrapperHandle, this.nativeHandle));
    }

    public StreetscapeGeometryMode getStreetscapeGeometryMode() {
        return StreetscapeGeometryMode.forNumber(nativeGetStreetscapeGeometryMode(this.nativeSymbolTableHandle, this.session.nativeWrapperHandle, this.nativeHandle));
    }

    public TextureUpdateMode getTextureUpdateMode() {
        return TextureUpdateMode.forNumber(nativeGetTextureUpdateMode(this.session.nativeWrapperHandle, this.nativeHandle));
    }

    public UpdateMode getUpdateMode() {
        return UpdateMode.forNumber(nativeGetUpdateMode(this.session.nativeWrapperHandle, this.nativeHandle));
    }

    public Config setAugmentedFaceMode(AugmentedFaceMode augmentedFaceMode) {
        nativeSetAugmentedFaceMode(this.session.nativeWrapperHandle, this.nativeHandle, augmentedFaceMode.nativeCode);
        return this;
    }

    public Config setAugmentedImageDatabase(AugmentedImageDatabase augmentedImageDatabase) {
        nativeSetAugmentedImageDatabase(this.session.nativeWrapperHandle, this.nativeHandle, augmentedImageDatabase == null ? 0L : augmentedImageDatabase.nativeHandle);
        return this;
    }

    public Config setCloudAnchorMode(CloudAnchorMode cloudAnchorMode) {
        nativeSetCloudAnchorMode(this.session.nativeWrapperHandle, this.nativeHandle, cloudAnchorMode.nativeCode);
        return this;
    }

    public Config setDepthMode(DepthMode depthMode) {
        nativeSetDepthMode(this.session.nativeWrapperHandle, this.nativeHandle, depthMode.nativeCode);
        return this;
    }

    public Config setFlashMode(FlashMode flashMode) {
        nativeSetFlashMode(this.session.nativeWrapperHandle, this.nativeHandle, flashMode.nativeCode);
        return this;
    }

    public Config setFocusMode(FocusMode focusMode) {
        nativeSetFocusMode(this.session.nativeWrapperHandle, this.nativeHandle, focusMode.nativeCode);
        return this;
    }

    public Config setGeospatialMode(GeospatialMode geospatialMode) {
        nativeSetGeospatialMode(this.nativeSymbolTableHandle, this.session.nativeWrapperHandle, this.nativeHandle, geospatialMode.nativeCode);
        return this;
    }

    public Config setImageStabilizationMode(ImageStabilizationMode imageStabilizationMode) {
        nativeSetImageStabilizationMode(this.session.nativeWrapperHandle, this.nativeHandle, imageStabilizationMode.nativeCode);
        return this;
    }

    public Config setInstantPlacementMode(InstantPlacementMode instantPlacementMode) {
        nativeSetInstantPlacementMode(this.session.nativeWrapperHandle, this.nativeHandle, instantPlacementMode.nativeCode);
        return this;
    }

    public Config setLightEstimationMode(LightEstimationMode lightEstimationMode) {
        nativeSetLightEstimationMode(this.session.nativeWrapperHandle, this.nativeHandle, lightEstimationMode.nativeCode);
        return this;
    }

    public Config setPlaneFindingMode(PlaneFindingMode planeFindingMode) {
        nativeSetPlaneFindingMode(this.session.nativeWrapperHandle, this.nativeHandle, planeFindingMode.nativeCode);
        return this;
    }

    public Config setSemanticMode(SemanticMode semanticMode) {
        nativeSetSemanticMode(this.session.nativeWrapperHandle, this.nativeHandle, semanticMode.nativeCode);
        return this;
    }

    public Config setStreetscapeGeometryMode(StreetscapeGeometryMode streetscapeGeometryMode) {
        nativeSetStreetscapeGeometryMode(this.nativeSymbolTableHandle, this.session.nativeWrapperHandle, this.nativeHandle, streetscapeGeometryMode.nativeCode);
        return this;
    }

    public Config setTextureUpdateMode(TextureUpdateMode textureUpdateMode) {
        nativeSetTextureUpdateMode(this.session.nativeWrapperHandle, this.nativeHandle, textureUpdateMode.nativeCode);
        return this;
    }

    public Config setUpdateMode(UpdateMode updateMode) {
        nativeSetUpdateMode(this.session.nativeWrapperHandle, this.nativeHandle, updateMode.nativeCode);
        return this;
    }

    public Config() {
        this.session = null;
        this.nativeHandle = 0L;
        this.nativeSymbolTableHandle = 0L;
    }

    public Config(Session session, long j2) {
        this.session = session;
        this.nativeHandle = j2;
        this.nativeSymbolTableHandle = session.nativeSymbolTableHandle;
    }
}
