package androidx.camera.core;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.hardware.camera2.CameraCharacteristics;
import android.net.Uri;
import android.os.Looper;
import android.util.Pair;
import android.util.Rational;
import android.util.Size;
import androidx.camera.core.featuregroup.GroupableFeature;
import androidx.camera.core.featuregroup.impl.feature.ImageFormatFeature;
import androidx.camera.core.imagecapture.ImageCaptureControl;
import androidx.camera.core.imagecapture.ImagePipeline;
import androidx.camera.core.imagecapture.PostviewSettings;
import androidx.camera.core.imagecapture.TakePictureManager;
import androidx.camera.core.imagecapture.TakePictureRequest;
import androidx.camera.core.impl.AdapterCameraInfo;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.ConfigProvider;
import androidx.camera.core.impl.ImageCaptureConfig;
import androidx.camera.core.impl.ImageInputConfig;
import androidx.camera.core.impl.ImageOutputConfig;
import androidx.camera.core.impl.MutableConfig;
import androidx.camera.core.impl.MutableOptionsBundle;
import androidx.camera.core.impl.OptionsBundle;
import androidx.camera.core.impl.StreamSpec;
import androidx.camera.core.impl.StreamUseCase;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.UseCaseConfigFactory;
import androidx.camera.core.impl.utils.CompareSizesByArea;
import androidx.camera.core.impl.utils.Threads;
import androidx.camera.core.impl.utils.TransformUtils;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.camera.core.internal.IoConfig;
import androidx.camera.core.internal.ScreenFlashWrapper;
import androidx.camera.core.internal.SupportedOutputSizesSorter;
import androidx.camera.core.internal.TargetConfig;
import androidx.camera.core.internal.compat.quirk.SoftwareJpegEncodingPreferredQuirk;
import androidx.camera.core.internal.compat.workaround.ExifRotationAvailability;
import androidx.camera.core.resolutionselector.AspectRatioStrategy;
import androidx.camera.core.resolutionselector.ResolutionSelector;
import androidx.camera.core.resolutionselector.ResolutionStrategy;
import androidx.core.util.Preconditions;
import com.google.common.util.concurrent.ListenableFuture;
import com.sightcall.mediacapture.repo.MediaCaptureRepositoryImpl$takePhoto$2$1$1;
import defpackage.az;
import defpackage.b21;
import defpackage.d20;
import defpackage.f20;
import defpackage.md;
import defpackage.n00;
import defpackage.xo;
import java.io.File;
import java.io.OutputStream;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.UUID;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public final class ImageCapture extends UseCase {
    public static final Defaults B = new Defaults();
    public final ImageCaptureControl A;
    public final int q;
    public final AtomicReference r;
    public final int s;
    public final int t;
    public Rational u;
    public final ScreenFlashWrapper v;
    public androidx.camera.core.impl.SessionConfig.Builder w;
    public ImagePipeline x;
    public TakePictureManager y;
    public androidx.camera.core.impl.SessionConfig.CloseableErrorListener z;

    @Retention(RetentionPolicy.SOURCE)
    public @interface CaptureMode {
    }

    public static final class Defaults implements ConfigProvider<ImageCaptureConfig> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ImageCaptureConfig f1924a;

        static {
            StreamUseCase streamUseCase = StreamUseCase.STILL_CAPTURE;
            ResolutionSelector.Builder builder = new ResolutionSelector.Builder();
            AspectRatioStrategy aspectRatioStrategy = AspectRatioStrategy.f2630c;
            builder.f2635a = aspectRatioStrategy;
            ResolutionStrategy resolutionStrategy = ResolutionStrategy.f2637c;
            builder.f2636b = resolutionStrategy;
            ResolutionSelector resolutionSelector = new ResolutionSelector(aspectRatioStrategy, resolutionStrategy);
            DynamicRange dynamicRange = DynamicRange.d;
            Builder builder2 = new Builder();
            Config.Option option = UseCaseConfig.y;
            MutableOptionsBundle mutableOptionsBundle = builder2.f1923a;
            mutableOptionsBundle.o(option, 4);
            mutableOptionsBundle.o(UseCaseConfig.I, streamUseCase);
            mutableOptionsBundle.o(ImageOutputConfig.f2306k, 0);
            mutableOptionsBundle.o(ImageOutputConfig.s, resolutionSelector);
            mutableOptionsBundle.o(ImageCaptureConfig.R, 0);
            mutableOptionsBundle.o(ImageInputConfig.f2305j, dynamicRange);
            f1924a = new ImageCaptureConfig(OptionsBundle.c0(mutableOptionsBundle));
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface FlashMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface FlashType {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ImageCaptureError {
    }

    public static final class Metadata {
        public final String toString() {
            return "Metadata{mIsReversedHorizontal=false, mIsReversedVertical=false, mLocation=null}";
        }
    }

    public static abstract class OnImageCapturedCallback {
    }

    public interface OnImageSavedCallback {
        default void onCaptureProcessProgressed(int i2) {
        }

        default void onCaptureStarted() {
        }

        void onError(ImageCaptureException imageCaptureException);

        void onImageSaved(OutputFileResults outputFileResults);

        default void onPostviewBitmapAvailable(Bitmap bitmap) {
        }
    }

    @Target({ElementType.TYPE_USE})
    @Retention(RetentionPolicy.SOURCE)
    public @interface OutputFormat {
    }

    public interface ScreenFlash {
        void a(long j2, ScreenFlashListener screenFlashListener);

        void clear();
    }

    public interface ScreenFlashListener {
        void onCompleted();
    }

    static {
        new ExifRotationAvailability();
    }

    public ImageCapture(ImageCaptureConfig imageCaptureConfig) {
        super(imageCaptureConfig);
        this.r = new AtomicReference(null);
        this.t = -1;
        this.u = null;
        this.A = new ImageCaptureControl() { // from class: androidx.camera.core.ImageCapture.1
            @Override // androidx.camera.core.imagecapture.ImageCaptureControl
            public final ListenableFuture a(List list) {
                Threads.a();
                ImageCapture imageCapture = ImageCapture.this;
                return Futures.l(imageCapture.d().j(imageCapture.q, imageCapture.s, list), new d20(1), CameraXExecutors.a());
            }

            @Override // androidx.camera.core.imagecapture.ImageCaptureControl
            public final void b() {
                ImageCapture imageCapture = ImageCapture.this;
                synchronized (imageCapture.r) {
                    try {
                        if (imageCapture.r.get() != null) {
                            return;
                        }
                        imageCapture.r.set(Integer.valueOf(imageCapture.G()));
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }

            @Override // androidx.camera.core.imagecapture.ImageCaptureControl
            public final void c() {
                ImageCapture imageCapture = ImageCapture.this;
                synchronized (imageCapture.r) {
                    try {
                        Integer num = (Integer) imageCapture.r.getAndSet(null);
                        if (num == null) {
                            return;
                        }
                        if (num.intValue() != imageCapture.G()) {
                            imageCapture.K();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        };
        ImageCaptureConfig imageCaptureConfig2 = (ImageCaptureConfig) this.f1995h;
        Config.Option option = ImageCaptureConfig.N;
        if (imageCaptureConfig2.b(option)) {
            this.q = ((Integer) imageCaptureConfig2.a(option)).intValue();
        } else {
            this.q = 1;
        }
        this.s = ((Integer) imageCaptureConfig2.f(ImageCaptureConfig.U, 0)).intValue();
        ScreenFlash screenFlash = (ScreenFlash) imageCaptureConfig2.f(ImageCaptureConfig.W, null);
        ScreenFlashWrapper.f2482e.getClass();
        this.v = new ScreenFlashWrapper(screenFlash, null);
    }

    public static boolean H(int i2, List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (((Integer) ((Pair) it.next()).first).equals(Integer.valueOf(i2))) {
                return true;
            }
        }
        return false;
    }

    public static boolean I(Map map, int i2) {
        return map.containsKey(Integer.valueOf(i2)) && !((List) map.get(Integer.valueOf(i2))).isEmpty();
    }

    public final void E(boolean z) {
        TakePictureManager takePictureManager;
        Threads.a();
        androidx.camera.core.impl.SessionConfig.CloseableErrorListener closeableErrorListener = this.z;
        if (closeableErrorListener != null) {
            closeableErrorListener.b();
            this.z = null;
        }
        ImagePipeline imagePipeline = this.x;
        if (imagePipeline != null) {
            imagePipeline.a();
            this.x = null;
        }
        if (!z && (takePictureManager = this.y) != null) {
            takePictureManager.a();
            this.y = null;
        }
        d().h();
    }

    /* JADX WARN: Code duplicated, block: B:31:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:39:0x0142  */
    /* JADX WARN: Code duplicated, block: B:7:0x0051  */
    public final androidx.camera.core.impl.SessionConfig.Builder F(String str, ImageCaptureConfig imageCaptureConfig, StreamSpec streamSpec) {
        Config configA;
        HashSet hashSet;
        PostviewSettings postviewSettings;
        PostviewSettings postviewSettingsA;
        boolean zContains;
        int i2 = 0;
        Threads.a();
        String.format("createPipeline(cameraId: %s, streamSpec: %s)", str, streamSpec);
        Size sizeF = streamSpec.f();
        CameraInternal cameraInternalC = c();
        Objects.requireNonNull(cameraInternalC);
        boolean z = !cameraInternalC.p();
        CameraCharacteristics cameraCharacteristics = null;
        if (this.x != null) {
            Preconditions.f(null, z);
            this.x.a();
        }
        CameraInfo cameraInfoB = c().b();
        if ((cameraInfoB instanceof AdapterCameraInfo) && (configA = ((AdapterCameraInfo) cameraInfoB).d.i().a(UseCaseConfigFactory.CaptureType.IMAGE_CAPTURE, 1)) != null) {
            Config.Option option = ImageOutputConfig.r;
            OptionsBundle optionsBundle = (OptionsBundle) configA;
            if (optionsBundle.M.containsKey(option)) {
                hashSet = new HashSet();
                hashSet.add(0);
                Iterator it = ((List) optionsBundle.a(option)).iterator();
                while (it.hasNext()) {
                    if (((Integer) ((Pair) it.next()).first).intValue() == 4101) {
                        hashSet.add(1);
                        break;
                    }
                }
            } else {
                hashSet = null;
            }
        } else {
            hashSet = null;
        }
        if (hashSet == null) {
            hashSet = new HashSet();
            hashSet.add(0);
            if (cameraInfoB != null ? ((CameraInfoInternal) cameraInfoB).y().contains(4101) : false) {
                hashSet.add(1);
            }
            if (cameraInfoB != null) {
                CameraInfoInternal cameraInfoInternal = (CameraInfoInternal) cameraInfoB;
                if (cameraInfoInternal.l().contains(3)) {
                    zContains = cameraInfoInternal.y().contains(32);
                } else {
                    zContains = false;
                }
            } else {
                zContains = false;
            }
            if (zContains) {
                hashSet.add(2);
                hashSet.add(3);
            }
        }
        UseCaseConfig useCaseConfig = this.f1995h;
        Config.Option option2 = ImageCaptureConfig.R;
        Integer num = (Integer) useCaseConfig.f(option2, 0);
        num.getClass();
        boolean zContains2 = hashSet.contains(num);
        StringBuilder sb = new StringBuilder("The specified output format (");
        Integer num2 = (Integer) this.f1995h.f(option2, 0);
        num2.getClass();
        sb.append(num2.intValue());
        sb.append(") is not supported by current configuration. Supported output formats: ");
        sb.append(hashSet);
        Preconditions.b(zContains2, sb.toString());
        if (((Boolean) this.f1995h.f(ImageCaptureConfig.Y, Boolean.FALSE)).booleanValue()) {
            imageCaptureConfig.m();
            if (c().g().x() == null) {
                postviewSettingsA = null;
            } else {
                Map map = Collections.EMPTY_MAP;
                ArrayList arrayList = new ArrayList();
                if (I(map, 35)) {
                    arrayList.add(35);
                }
                if (I(map, 256)) {
                    arrayList.add(256);
                }
                if (I(map, 4101)) {
                    arrayList.add(4101);
                }
                int iA = !arrayList.isEmpty() ? c().g().D().a(arrayList) : 0;
                if (iA == 0) {
                    postviewSettingsA = null;
                } else {
                    List list = (List) map.get(Integer.valueOf(iA));
                    ResolutionSelector resolutionSelector = (ResolutionSelector) this.f1995h.f(ImageCaptureConfig.X, null);
                    if (resolutionSelector != null) {
                        Collections.sort(list, new CompareSizesByArea(true));
                        CameraInternal cameraInternalC2 = c();
                        Rect rectF = cameraInternalC2.k().f();
                        CameraInfoInternal cameraInfoInternalK = cameraInternalC2.k();
                        ArrayList arrayList2 = (ArrayList) SupportedOutputSizesSorter.e(resolutionSelector, list, null, l(), new Rational(rectF.width(), rectF.height()), cameraInfoInternalK.d(), cameraInfoInternalK.g());
                        if (arrayList2.isEmpty()) {
                            md.n("The postview ResolutionSelector cannot select a valid size for the postview.");
                            return null;
                        }
                        postviewSettingsA = PostviewSettings.a((Size) arrayList2.get(0), iA);
                    } else {
                        postviewSettingsA = PostviewSettings.a((Size) Collections.max(list, new CompareSizesByArea()), iA);
                    }
                }
            }
            postviewSettings = postviewSettingsA;
        } else {
            postviewSettings = null;
        }
        if (c() != null) {
            try {
                Object objH = c().k().h();
                if (objH instanceof CameraCharacteristics) {
                    cameraCharacteristics = (CameraCharacteristics) objH;
                }
            } catch (Exception unused) {
            }
        }
        this.x = new ImagePipeline(imageCaptureConfig, sizeF, cameraCharacteristics, null, z, postviewSettings);
        if (this.y == null) {
            this.y = this.f1995h.n().a(this.A);
        }
        this.y.c(this.x);
        androidx.camera.core.impl.SessionConfig.Builder builderB = this.x.b(streamSpec.f());
        builderB.v(streamSpec.g());
        if (this.q == 2 && !streamSpec.h()) {
            d().i(builderB);
        }
        if (streamSpec.d() != null) {
            builderB.e(streamSpec.d());
        }
        androidx.camera.core.impl.SessionConfig.CloseableErrorListener closeableErrorListener = this.z;
        if (closeableErrorListener != null) {
            closeableErrorListener.b();
        }
        androidx.camera.core.impl.SessionConfig.CloseableErrorListener closeableErrorListener2 = new androidx.camera.core.impl.SessionConfig.CloseableErrorListener(new f20(this, i2));
        this.z = closeableErrorListener2;
        builderB.p(closeableErrorListener2);
        return builderB;
    }

    public final int G() {
        int iIntValue;
        synchronized (this.r) {
            iIntValue = this.t;
            if (iIntValue == -1) {
                iIntValue = ((Integer) ((ImageCaptureConfig) this.f1995h).f(ImageCaptureConfig.O, 2)).intValue();
            }
        }
        return iIntValue;
    }

    public final void J(OutputFileOptions outputFileOptions, Executor executor, MediaCaptureRepositoryImpl$takePhoto$2$1$1 mediaCaptureRepositoryImpl$takePhoto$2$1$1) {
        int iIntValue;
        int iRound;
        int i2;
        int i3;
        int i4;
        if (Looper.getMainLooper() != Looper.myLooper()) {
            CameraXExecutors.c().execute(new xo(this, outputFileOptions, executor, mediaCaptureRepositoryImpl$takePhoto$2$1$1, 4));
            return;
        }
        Threads.a();
        if (G() == 3 && this.v.f2483a == null) {
            md.n("A ScreenFlash instance is required for FLASH_MODE_SCREEN but was not found. If value from PreviewView.getScreenFlash() is set to ImageCapture.setScreenFlash(), ensure PreviewView.setScreenFlashWindow() is invoked first.");
            return;
        }
        CameraInternal cameraInternalC = c();
        Rect rect = null;
        if (cameraInternalC == null || !this.f1990a) {
            mediaCaptureRepositoryImpl$takePhoto$2$1$1.onError(new ImageCaptureException(4, "Not bound to a valid Camera [" + this + "]", null));
            return;
        }
        boolean z = this.f1995h.V() != 0;
        if (z) {
            md.n("Simultaneous capture RAW and JPEG needs two output file options");
            return;
        }
        TakePictureManager takePictureManager = this.y;
        Objects.requireNonNull(takePictureManager);
        Rect rect2 = this.f1998k;
        StreamSpec streamSpec = this.f1996i;
        Size sizeF = streamSpec != null ? streamSpec.f() : null;
        Objects.requireNonNull(sizeF);
        if (rect2 == null) {
            Rational rational = this.u;
            if (rational == null || rational.floatValue() <= Call.Parameters.DEFAULT_CAMERA_ZOOM || rational.isNaN()) {
                rect2 = new Rect(0, 0, sizeF.getWidth(), sizeF.getHeight());
            } else {
                CameraInternal cameraInternalC2 = c();
                Objects.requireNonNull(cameraInternalC2);
                int iH = h(cameraInternalC2, false);
                Rational rational2 = new Rational(this.u.getDenominator(), this.u.getNumerator());
                if (!TransformUtils.d(iH)) {
                    rational2 = this.u;
                }
                if (rational2 == null || rational2.floatValue() <= Call.Parameters.DEFAULT_CAMERA_ZOOM || rational2.isNaN()) {
                    Logger.c(5, "ImageUtil");
                } else {
                    int width = sizeF.getWidth();
                    int height = sizeF.getHeight();
                    float f2 = width;
                    float f3 = height;
                    float f4 = f2 / f3;
                    int numerator = rational2.getNumerator();
                    int denominator = rational2.getDenominator();
                    if (rational2.floatValue() > f4) {
                        int iRound2 = Math.round((f2 / numerator) * denominator);
                        i4 = (height - iRound2) / 2;
                        i3 = iRound2;
                        iRound = width;
                        i2 = 0;
                    } else {
                        iRound = Math.round((f3 / denominator) * numerator);
                        i2 = (width - iRound) / 2;
                        i3 = height;
                        i4 = 0;
                    }
                    rect = new Rect(i2, i4, iRound + i2, i3 + i4);
                }
                Objects.requireNonNull(rect);
                rect2 = rect;
            }
        }
        Matrix matrix = this.l;
        int iH2 = h(cameraInternalC, false);
        ImageCaptureConfig imageCaptureConfig = (ImageCaptureConfig) this.f1995h;
        Config.Option option = ImageCaptureConfig.V;
        if (imageCaptureConfig.b(option)) {
            iIntValue = ((Integer) imageCaptureConfig.a(option)).intValue();
        } else {
            int i5 = this.q;
            if (i5 == 0) {
                iIntValue = 100;
            } else {
                if (i5 != 1 && i5 != 2) {
                    md.k(n00.m(i5, "CaptureMode ", " is invalid"));
                    return;
                }
                iIntValue = 95;
            }
        }
        takePictureManager.b(TakePictureRequest.o(executor, mediaCaptureRepositoryImpl$takePhoto$2$1$1, outputFileOptions, rect2, matrix, iH2, iIntValue, this.q, z, this.w.n()));
    }

    public final void K() {
        synchronized (this.r) {
            try {
                if (this.r.get() != null) {
                    return;
                }
                d().c(G());
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.camera.core.UseCase
    public final UseCaseConfig f(boolean z, UseCaseConfigFactory useCaseConfigFactory) {
        B.getClass();
        ImageCaptureConfig imageCaptureConfig = Defaults.f1924a;
        Config configA = useCaseConfigFactory.a(imageCaptureConfig.S(), this.q);
        if (z) {
            configA = Config.U(configA, imageCaptureConfig);
        }
        if (configA == null) {
            return null;
        }
        return new ImageCaptureConfig(OptionsBundle.c0(((Builder) m(configA)).f1923a));
    }

    @Override // androidx.camera.core.UseCase
    public final HashSet k() {
        HashSet hashSet = new HashSet();
        hashSet.add(4);
        return hashSet;
    }

    @Override // androidx.camera.core.UseCase
    public final UseCaseConfig.Builder m(Config config) {
        return new Builder(MutableOptionsBundle.e0(config));
    }

    @Override // androidx.camera.core.UseCase
    public final void s() {
        Preconditions.e(c(), "Attached camera cannot be null");
        if (G() == 3) {
            CameraInternal cameraInternalC = c();
            if ((cameraInternalC != null ? cameraInternalC.b().g() : -1) == 0) {
                return;
            }
            md.n("Not a front camera despite setting FLASH_MODE_SCREEN in ImageCapture");
        }
    }

    @Override // androidx.camera.core.UseCase
    public final void t() {
        Logger.c(3, "ImageCapture");
        K();
        d().k(this.v);
    }

    public final String toString() {
        return "ImageCapture:".concat(g());
    }

    @Override // androidx.camera.core.UseCase
    public final UseCaseConfig u(CameraInfoInternal cameraInfoInternal, UseCaseConfig.Builder builder) {
        boolean z;
        HashSet<GroupableFeature> hashSet = this.g;
        if (hashSet != null) {
            int i2 = 0;
            for (GroupableFeature groupableFeature : hashSet) {
                if (groupableFeature instanceof ImageFormatFeature) {
                    i2 = ((ImageFormatFeature) groupableFeature).f2033c;
                }
            }
            builder.a().o(ImageCaptureConfig.R, Integer.valueOf(i2));
        }
        if (cameraInfoInternal.j().a(SoftwareJpegEncodingPreferredQuirk.class)) {
            Boolean bool = Boolean.FALSE;
            MutableConfig mutableConfigA = builder.a();
            Config.Option option = ImageCaptureConfig.T;
            Boolean bool2 = Boolean.TRUE;
            if (bool.equals(mutableConfigA.f(option, bool2))) {
                Logger.c(5, "ImageCapture");
            } else {
                Logger.c(4, "ImageCapture");
                builder.a().o(option, bool2);
            }
        }
        MutableConfig mutableConfigA2 = builder.a();
        Boolean bool3 = Boolean.TRUE;
        Config.Option option2 = ImageCaptureConfig.T;
        Boolean bool4 = Boolean.FALSE;
        if (bool3.equals(mutableConfigA2.f(option2, bool4))) {
            if (c() == null || c().g().x() == null) {
                z = true;
            } else {
                Logger.c(5, "ImageCapture");
                z = false;
            }
            Integer num = (Integer) mutableConfigA2.f(ImageCaptureConfig.Q, null);
            if (num != null && num.intValue() != 256) {
                Logger.c(5, "ImageCapture");
                z = false;
            }
            if (!z) {
                Logger.c(5, "ImageCapture");
                mutableConfigA2.o(option2, bool4);
            }
        } else {
            z = false;
        }
        Integer num2 = (Integer) builder.a().f(ImageCaptureConfig.Q, null);
        if (num2 != null) {
            Preconditions.b(c() == null || c().g().x() == null || num2.intValue() == 256, "Cannot set non-JPEG buffer format with Extensions enabled.");
            builder.a().o(ImageInputConfig.f2303h, Integer.valueOf(z ? 35 : num2.intValue()));
        } else {
            MutableConfig mutableConfigA3 = builder.a();
            Config.Option option3 = ImageCaptureConfig.R;
            if (Objects.equals(mutableConfigA3.f(option3, null), 2)) {
                builder.a().o(ImageInputConfig.f2303h, 32);
            } else if (Objects.equals(builder.a().f(option3, null), 3)) {
                builder.a().o(ImageInputConfig.f2303h, 32);
                builder.a().o(ImageInputConfig.f2304i, 256);
            } else if (Objects.equals(builder.a().f(option3, null), 1)) {
                builder.a().o(ImageInputConfig.f2303h, 4101);
                builder.a().o(ImageInputConfig.f2305j, DynamicRange.f1913c);
            } else if (z) {
                builder.a().o(ImageInputConfig.f2303h, 35);
            } else {
                List list = (List) builder.a().f(ImageOutputConfig.r, null);
                if (list == null || H(256, list)) {
                    builder.a().o(ImageInputConfig.f2303h, 256);
                } else if (H(35, list)) {
                    builder.a().o(ImageInputConfig.f2303h, 35);
                }
            }
        }
        return builder.d();
    }

    @Override // androidx.camera.core.UseCase
    public final void w() {
        ScreenFlashWrapper screenFlashWrapper = this.v;
        screenFlashWrapper.c();
        screenFlashWrapper.b();
        TakePictureManager takePictureManager = this.y;
        if (takePictureManager != null) {
            takePictureManager.a();
        }
    }

    @Override // androidx.camera.core.UseCase
    public final StreamSpec x(Config config) {
        this.w.e(config);
        Object[] objArr = {this.w.k()};
        ArrayList arrayList = new ArrayList(1);
        Object obj = objArr[0];
        Objects.requireNonNull(obj);
        arrayList.add(obj);
        D(Collections.unmodifiableList(arrayList));
        StreamSpec.Builder builderI = this.f1996i.i();
        builderI.d(config);
        return builderI.a();
    }

    @Override // androidx.camera.core.UseCase
    public final StreamSpec y(StreamSpec streamSpec, StreamSpec streamSpec2) {
        Objects.toString(streamSpec);
        Objects.toString(streamSpec2);
        Logger.c(3, "ImageCapture");
        androidx.camera.core.impl.SessionConfig.Builder builderF = F(e(), (ImageCaptureConfig) this.f1995h, streamSpec);
        this.w = builderF;
        Object[] objArr = {builderF.k()};
        ArrayList arrayList = new ArrayList(1);
        Object obj = objArr[0];
        Objects.requireNonNull(obj);
        arrayList.add(obj);
        D(Collections.unmodifiableList(arrayList));
        p();
        return streamSpec;
    }

    @Override // androidx.camera.core.UseCase
    public final void z() {
        ScreenFlashWrapper screenFlashWrapper = this.v;
        screenFlashWrapper.c();
        screenFlashWrapper.b();
        TakePictureManager takePictureManager = this.y;
        if (takePictureManager != null) {
            takePictureManager.a();
        }
        E(false);
        d().k(null);
    }

    public static class OutputFileResults {
        public OutputFileResults(Uri uri) {
            this(uri, 256);
        }

        public OutputFileResults(Uri uri, int i2) {
        }
    }

    public static final class OutputFileOptions {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final File f1925a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ContentResolver f1926b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Uri f1927c;
        public final ContentValues d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final OutputStream f1928e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final Metadata f1929f = new Metadata();

        public OutputFileOptions(File file, ContentResolver contentResolver, Uri uri, ContentValues contentValues, OutputStream outputStream) {
            this.f1925a = file;
            this.f1926b = contentResolver;
            this.f1927c = uri;
            this.d = contentValues;
            this.f1928e = outputStream;
        }

        public final String toString() {
            return "OutputFileOptions{mFile=" + this.f1925a + ", mContentResolver=" + this.f1926b + ", mSaveCollection=" + this.f1927c + ", mContentValues=" + this.d + ", mOutputStream=" + this.f1928e + ", mMetadata=" + this.f1929f + "}";
        }

        /* JADX INFO: loaded from: classes3.dex */
        public static final class Builder {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final File f1930a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final ContentResolver f1931b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final Uri f1932c;
            public final ContentValues d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public final OutputStream f1933e;

            public Builder(ContentResolver contentResolver, Uri uri, ContentValues contentValues) {
                this.f1931b = contentResolver;
                this.f1932c = uri;
                this.d = contentValues;
            }

            public Builder(File file) {
                this.f1930a = file;
            }

            public Builder(OutputStream outputStream) {
                this.f1933e = outputStream;
            }
        }
    }

    public static final class Builder implements UseCaseConfig.Builder<ImageCapture, ImageCaptureConfig, Builder>, ImageOutputConfig.Builder<Builder>, IoConfig.Builder<Builder>, ImageInputConfig.Builder<Builder> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final MutableOptionsBundle f1923a;

        public Builder(MutableOptionsBundle mutableOptionsBundle) {
            this.f1923a = mutableOptionsBundle;
            Config.Option option = TargetConfig.L;
            Class cls = (Class) mutableOptionsBundle.f(option, null);
            if (cls != null && !cls.equals(ImageCapture.class)) {
                b21.s("Invalid target class configuration for ", this, ": ", cls);
                throw null;
            }
            mutableOptionsBundle.o(UseCaseConfig.E, UseCaseConfigFactory.CaptureType.IMAGE_CAPTURE);
            mutableOptionsBundle.o(option, ImageCapture.class);
            Config.Option option2 = TargetConfig.K;
            if (mutableOptionsBundle.f(option2, null) == null) {
                mutableOptionsBundle.o(option2, ImageCapture.class.getCanonicalName() + "-" + UUID.randomUUID());
            }
        }

        @Override // androidx.camera.core.ExtendableBuilder
        public final MutableConfig a() {
            return this.f1923a;
        }

        @Override // androidx.camera.core.impl.ImageOutputConfig.Builder
        public final Object b(int i2) {
            this.f1923a.o(ImageOutputConfig.l, Integer.valueOf(i2));
            return this;
        }

        @Override // androidx.camera.core.impl.ImageOutputConfig.Builder
        public final Object c(Size size) {
            this.f1923a.o(ImageOutputConfig.o, size);
            return this;
        }

        @Override // androidx.camera.core.impl.UseCaseConfig.Builder
        public final UseCaseConfig d() {
            return new ImageCaptureConfig(OptionsBundle.c0(this.f1923a));
        }

        public final ImageCapture e() {
            Config.Option option = ImageCaptureConfig.Q;
            MutableOptionsBundle mutableOptionsBundle = this.f1923a;
            Integer num = (Integer) mutableOptionsBundle.f(option, null);
            if (num != null) {
                mutableOptionsBundle.o(ImageInputConfig.f2303h, num);
            } else {
                Defaults defaults = ImageCapture.B;
                Config.Option option2 = ImageCaptureConfig.R;
                if (Objects.equals(mutableOptionsBundle.f(option2, null), 2)) {
                    mutableOptionsBundle.o(ImageInputConfig.f2303h, 32);
                } else if (Objects.equals(mutableOptionsBundle.f(option2, null), 3)) {
                    mutableOptionsBundle.o(ImageInputConfig.f2303h, 32);
                    mutableOptionsBundle.o(ImageInputConfig.f2304i, 256);
                } else if (Objects.equals(mutableOptionsBundle.f(option2, null), 1)) {
                    mutableOptionsBundle.o(ImageInputConfig.f2303h, 4101);
                    mutableOptionsBundle.o(ImageInputConfig.f2305j, DynamicRange.f1913c);
                } else {
                    mutableOptionsBundle.o(ImageInputConfig.f2303h, 256);
                }
            }
            ImageCaptureConfig imageCaptureConfig = new ImageCaptureConfig(OptionsBundle.c0(mutableOptionsBundle));
            ImageOutputConfig.u(imageCaptureConfig);
            ImageCapture imageCapture = new ImageCapture(imageCaptureConfig);
            Size size = (Size) mutableOptionsBundle.f(ImageOutputConfig.o, null);
            if (size != null) {
                imageCapture.u = new Rational(size.getWidth(), size.getHeight());
            }
            Preconditions.e((Executor) mutableOptionsBundle.f(IoConfig.J, CameraXExecutors.b()), "The IO executor can't be null");
            Config.Option option3 = ImageCaptureConfig.O;
            if (mutableOptionsBundle.M.containsKey(option3)) {
                Integer num2 = (Integer) mutableOptionsBundle.a(option3);
                if (num2 == null || !(num2.intValue() == 0 || num2.intValue() == 1 || num2.intValue() == 3 || num2.intValue() == 2)) {
                    az.m(num2, "The flash mode is not allowed to set: ");
                    return null;
                }
                if (num2.intValue() == 3 && mutableOptionsBundle.f(ImageCaptureConfig.W, null) == null) {
                    md.n("A ScreenFlash instance is required for FLASH_MODE_SCREEN but was not found. If value from PreviewView.getScreenFlash() is set to ImageCapture.setScreenFlash(), ensure PreviewView.setScreenFlashWindow() is invoked first.");
                    return null;
                }
            }
            return imageCapture;
        }

        public Builder() {
            this(MutableOptionsBundle.d0());
        }
    }
}
