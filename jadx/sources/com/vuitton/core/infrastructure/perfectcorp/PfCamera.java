package com.vuitton.core.infrastructure.perfectcorp;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.hardware.Camera;
import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraManager;
import android.hardware.camera2.params.StreamConfigurationMap;
import android.util.Pair;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.UnmodifiableListIterator;
import defpackage.a61;
import defpackage.lc0;
import defpackage.md;
import defpackage.s3;
import defpackage.v7;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import net.rtccloud.sdk.Sink;

/* JADX INFO: loaded from: classes4.dex */
public abstract class PfCamera {

    /* JADX INFO: renamed from: com.vuitton.core.infrastructure.perfectcorp.PfCamera$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f66172a;

        static {
            int[] iArr = new int[CameraLibrary.values().length];
            f66172a = iArr;
            try {
                iArr[CameraLibrary.CAMERA_1.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f66172a[CameraLibrary.CAMERA_2.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    @FunctionalInterface
    public interface AutoFocusCallback {
    }

    public static final class CameraInfo {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final CameraFacing f66173a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f66174b;

        public CameraInfo(CameraFacing cameraFacing, int i2) {
            this.f66173a = cameraFacing;
            this.f66174b = i2;
        }
    }

    public interface Parameters {

        @Retention(RetentionPolicy.SOURCE)
        public @interface FocusMode {
        }

        String a();

        List b();

        void c(int i2, int i3);

        void d(String str);

        List e();

        Size getPreviewSize();
    }

    @FunctionalInterface
    public interface PictureCallback {
    }

    @FunctionalInterface
    public interface PreviewCallback {
        void h(byte[] bArr);
    }

    public static final class Size {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f66175a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f66176b;

        public Size(int i2, int i3) {
            this.f66175a = i2;
            this.f66176b = i3;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static PfCamera d(Context context, CameraLibrary cameraLibrary, CameraFacing cameraFacing) throws CameraAccessException {
        StreamConfigurationMap streamConfigurationMap;
        Objects.toString(cameraLibrary);
        Objects.toString(cameraFacing);
        int i2 = AnonymousClass1.f66172a[cameraLibrary.ordinal()];
        Pair pair = null;
        if (i2 == 1) {
            ImmutableMap immutableMap = PfCamera1.f66177c;
            Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
            int numberOfCameras = Camera.getNumberOfCameras();
            if (numberOfCameras == 0) {
                v7.h("No physical camera can be used.");
                return null;
            }
            for (int i3 = 0; i3 < numberOfCameras; i3++) {
                Camera.getCameraInfo(i3, cameraInfo);
                if (PfCamera1.f66177c.get(Integer.valueOf(cameraInfo.facing)) == cameraFacing) {
                    pair = new Pair(cameraInfo, Integer.valueOf(i3));
                    break;
                }
            }
            return new PfCamera1(pair != null ? ((Integer) pair.second).intValue() : 0);
        }
        if (i2 != 2) {
            lc0.n("Library ", cameraLibrary, " is not supported!");
            return null;
        }
        Context applicationContext = context.getApplicationContext();
        List list = PfCamera2.p;
        CameraManager cameraManager = (CameraManager) applicationContext.getSystemService("camera");
        for (String str : cameraManager.getCameraIdList()) {
            CameraCharacteristics cameraCharacteristics = cameraManager.getCameraCharacteristics(str);
            CameraFacing cameraFacing2 = (CameraFacing) PfCamera2.q.get((Integer) cameraCharacteristics.get(CameraCharacteristics.LENS_FACING));
            if (cameraFacing2 != null && cameraFacing2 == cameraFacing && (streamConfigurationMap = (StreamConfigurationMap) cameraCharacteristics.get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP)) != null) {
                android.util.Size size = (android.util.Size) Collections.max(Arrays.asList(streamConfigurationMap.getOutputSizes(35)), new PfCamera2.CompareSizesByArea());
                PfCamera2.Builder builder = new PfCamera2.Builder(applicationContext);
                builder.f66197b = cameraManager;
                builder.f66198c = str;
                builder.d = new Size(size.getWidth(), size.getHeight());
                return new PfCamera2(builder);
            }
        }
        a61.q(cameraFacing, "Can't find available camera for facing ");
        return null;
    }

    public abstract void a(md mdVar);

    public abstract CameraInfo b();

    public abstract Parameters c();

    public abstract void e();

    public abstract void f(Parameters parameters);

    public abstract void g(s3 s3Var);

    public abstract void h();

    public abstract void i(SurfaceTexture surfaceTexture);

    public abstract void j();

    public abstract void k();

    /* JADX WARN: Multi-variable type inference failed */
    public final void l() {
        int i2;
        ImmutableList immutableListA = ImmutableList.A(new Size(Sink.Screenshare.MAX_DIMENSION_HIGH, Sink.Screenshare.MAX_DIMENSION_LOW));
        Parameters parametersC = c();
        List<Size> listB = parametersC.b();
        UnmodifiableListIterator unmodifiableListIteratorListIterator = immutableListA.listIterator(0);
        while (unmodifiableListIteratorListIterator.hasNext()) {
            Size size = (Size) unmodifiableListIteratorListIterator.next();
            for (Size size2 : listB) {
                int i3 = size.f66175a;
                if (i3 == size2.f66175a && (i2 = size.f66176b) == size2.f66176b) {
                    parametersC.c(i3, i2);
                    f(parametersC);
                    return;
                }
            }
        }
        int i4 = parametersC.getPreviewSize().f66175a;
    }
}
