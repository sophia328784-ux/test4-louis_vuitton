package androidx.camera.camera2.internal;

import android.graphics.Rect;
import android.hardware.camera2.CameraCharacteristics;
import android.os.Build;
import android.util.Pair;
import android.util.Range;
import android.util.Size;
import androidx.camera.camera2.internal.compat.CameraAccessExceptionCompat;
import androidx.camera.camera2.internal.compat.CameraCharacteristicsCompat;
import androidx.camera.camera2.internal.compat.CameraManagerCompat;
import androidx.camera.camera2.internal.compat.params.DynamicRangesCompat;
import androidx.camera.camera2.internal.compat.quirk.CameraQuirks;
import androidx.camera.camera2.internal.compat.workaround.FlashAvailabilityChecker;
import androidx.camera.camera2.interop.Camera2CameraInfo;
import androidx.camera.core.CameraState;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.CameraCaptureCallback;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.EncoderProfilesProvider;
import androidx.camera.core.impl.Quirks;
import androidx.camera.core.impl.Timebase;
import androidx.camera.core.impl.utils.CameraOrientationUtil;
import androidx.camera.core.impl.utils.RedirectableLiveData;
import androidx.camera.core.internal.ImmutableZoomState;
import androidx.camera.core.internal.StreamSpecsCalculator;
import androidx.core.util.Preconditions;
import androidx.lifecycle.LiveData;
import com.networkbench.agent.impl.harvest.HarvestConfiguration;
import defpackage.oi;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class Camera2CameraInfoImpl implements CameraInfoInternal {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f1470a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CameraCharacteristicsCompat f1471b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Camera2CameraInfo f1472c;
    public final Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Camera2CameraControlImpl f1473e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public RedirectableLiveData f1474f;
    public final RedirectableLiveData g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ArrayList f1475h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Quirks f1476i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Camera2EncoderProfilesProvider f1477j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final StreamSpecsCalculator f1478k;

    public Camera2CameraInfoImpl(String str, CameraManagerCompat cameraManagerCompat, StreamSpecsCalculator streamSpecsCalculator) throws CameraAccessExceptionCompat {
        this.d = new Object();
        this.f1474f = null;
        this.f1475h = null;
        str.getClass();
        this.f1470a = str;
        CameraCharacteristicsCompat cameraCharacteristicsCompatB = cameraManagerCompat.b(str);
        this.f1471b = cameraCharacteristicsCompatB;
        this.f1472c = new Camera2CameraInfo(this);
        Quirks quirksA = CameraQuirks.a(cameraCharacteristicsCompatB);
        this.f1476i = quirksA;
        this.f1477j = new Camera2EncoderProfilesProvider(str, quirksA);
        this.g = new RedirectableLiveData(CameraState.a(CameraState.Type.CLOSED));
        this.f1478k = streamSpecsCalculator;
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public final Set a() {
        return DynamicRangesCompat.a(this.f1471b).c();
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public final String b() {
        return this.f1470a;
    }

    @Override // androidx.camera.core.CameraInfo
    public final LiveData c() {
        return this.g;
    }

    @Override // androidx.camera.core.CameraInfo
    public final int d() {
        return t(0);
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public final void e(Executor executor, CameraCaptureCallback cameraCaptureCallback) {
        synchronized (this.d) {
            try {
                Camera2CameraControlImpl camera2CameraControlImpl = this.f1473e;
                if (camera2CameraControlImpl != null) {
                    camera2CameraControlImpl.f1417c.execute(new b(camera2CameraControlImpl, executor, cameraCaptureCallback, 0));
                    return;
                }
                if (this.f1475h == null) {
                    this.f1475h = new ArrayList();
                }
                this.f1475h.add(new Pair(cameraCaptureCallback, executor));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public final Rect f() {
        Rect rect = (Rect) this.f1471b.a(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE);
        if ("robolectric".equals(Build.FINGERPRINT) && rect == null) {
            return new Rect(0, 0, 4000, HarvestConfiguration.SLOW_START_THRESHOLD);
        }
        rect.getClass();
        return rect;
    }

    @Override // androidx.camera.core.CameraInfo
    public final int g() {
        Integer num = (Integer) this.f1471b.a(CameraCharacteristics.LENS_FACING);
        Preconditions.b(num != null, "Unable to get the lens facing of the camera.");
        int iIntValue = num.intValue();
        if (iIntValue == 0) {
            return 0;
        }
        if (iIntValue == 1) {
            return 1;
        }
        if (iIntValue == 2) {
            return 2;
        }
        Logger.c(5, "LensFacingUtil");
        return -1;
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public final Object h() {
        return this.f1471b.g();
    }

    @Override // androidx.camera.core.CameraInfo
    public final boolean i() {
        CameraCharacteristicsCompat cameraCharacteristicsCompat = this.f1471b;
        Objects.requireNonNull(cameraCharacteristicsCompat);
        return FlashAvailabilityChecker.a(new oi(cameraCharacteristicsCompat, 0));
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public final Quirks j() {
        return this.f1476i;
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public final List k(int i2) {
        Size[] sizeArrF = this.f1471b.c().f(i2);
        return sizeArrF != null ? Arrays.asList(sizeArrF) : Collections.EMPTY_LIST;
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public final Set l() {
        HashSet hashSet = new HashSet();
        int[] iArr = (int[]) this.f1471b.a(CameraCharacteristics.REQUEST_AVAILABLE_CAPABILITIES);
        if (iArr != null) {
            for (int i2 : iArr) {
                hashSet.add(Integer.valueOf(i2));
            }
        }
        return hashSet;
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public final void m(CameraCaptureCallback cameraCaptureCallback) {
        synchronized (this.d) {
            try {
                Camera2CameraControlImpl camera2CameraControlImpl = this.f1473e;
                if (camera2CameraControlImpl != null) {
                    camera2CameraControlImpl.f1417c.execute(new d(camera2CameraControlImpl, cameraCaptureCallback, 0));
                    return;
                }
                ArrayList arrayList = this.f1475h;
                if (arrayList == null) {
                    return;
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    if (((Pair) it.next()).first == cameraCaptureCallback) {
                        it.remove();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public final boolean n() {
        int[] iArr = (int[]) this.f1471b.a(CameraCharacteristics.CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES);
        if (iArr != null) {
            for (int i2 : iArr) {
                if (i2 == 1) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public final List p(Range range) {
        Size[] sizeArrC;
        try {
            sizeArrC = this.f1471b.c().c(range);
        } catch (IllegalArgumentException unused) {
            Objects.toString(range);
            Logger.c(5, "Camera2CameraInfo");
            sizeArrC = null;
        }
        return sizeArrC != null ? Arrays.asList(sizeArrC) : Collections.EMPTY_LIST;
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public final boolean q() {
        int[] iArr = (int[]) this.f1471b.a(CameraCharacteristics.REQUEST_AVAILABLE_CAPABILITIES);
        if (iArr != null) {
            for (int i2 : iArr) {
                if (i2 == 9) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public final Timebase r() {
        Integer num = (Integer) this.f1471b.a(CameraCharacteristics.SENSOR_INFO_TIMESTAMP_SOURCE);
        num.getClass();
        return num.intValue() != 1 ? Timebase.UPTIME : Timebase.REALTIME;
    }

    @Override // androidx.camera.core.CameraInfo
    public final String s() {
        Integer num = (Integer) this.f1471b.a(CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL);
        num.getClass();
        return num.intValue() == 2 ? "androidx.camera.camera2.legacy" : "androidx.camera.camera2";
    }

    @Override // androidx.camera.core.CameraInfo
    public final int t(int i2) {
        Integer num = (Integer) this.f1471b.a(CameraCharacteristics.SENSOR_ORIENTATION);
        num.getClass();
        return CameraOrientationUtil.a(CameraOrientationUtil.b(i2), num.intValue(), 1 == g());
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public final EncoderProfilesProvider u() {
        return this.f1477j;
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public final List v() {
        Size[] sizeArrB = this.f1471b.c().b();
        return sizeArrB != null ? Arrays.asList(sizeArrB) : Collections.EMPTY_LIST;
    }

    @Override // androidx.camera.core.CameraInfo
    public final LiveData w() {
        synchronized (this.d) {
            try {
                Camera2CameraControlImpl camera2CameraControlImpl = this.f1473e;
                RedirectableLiveData redirectableLiveData = this.f1474f;
                if (camera2CameraControlImpl != null) {
                    if (redirectableLiveData != null) {
                        return redirectableLiveData;
                    }
                    return camera2CameraControlImpl.f1421i.d;
                }
                if (redirectableLiveData == null) {
                    ZoomControl.ZoomImpl zoomImplA = ZoomControl.a(this.f1471b);
                    ZoomStateImpl zoomStateImpl = new ZoomStateImpl(zoomImplA.f(), zoomImplA.d());
                    zoomStateImpl.e(1.0f);
                    this.f1474f = new RedirectableLiveData(ImmutableZoomState.f(zoomStateImpl));
                }
                return this.f1474f;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public final Set y() {
        int[] iArrD = this.f1471b.c().d();
        if (iArrD == null) {
            return new HashSet();
        }
        HashSet hashSet = new HashSet();
        for (int i2 : iArrD) {
            hashSet.add(Integer.valueOf(i2));
        }
        return hashSet;
    }

    public final void z(Camera2CameraControlImpl camera2CameraControlImpl) {
        synchronized (this.d) {
            try {
                this.f1473e = camera2CameraControlImpl;
                RedirectableLiveData redirectableLiveData = this.f1474f;
                if (redirectableLiveData != null) {
                    redirectableLiveData.e(camera2CameraControlImpl.f1421i.d);
                }
                ArrayList<Pair> arrayList = this.f1475h;
                if (arrayList != null) {
                    for (Pair pair : arrayList) {
                        Camera2CameraControlImpl camera2CameraControlImpl2 = this.f1473e;
                        camera2CameraControlImpl2.f1417c.execute(new b(camera2CameraControlImpl2, (Executor) pair.second, (CameraCaptureCallback) pair.first, 0));
                    }
                    this.f1475h = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        ((Integer) this.f1471b.a(CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL)).getClass();
        Logger.c(4, "Camera2CameraInfo");
    }

    public Camera2CameraInfoImpl(String str, CameraManagerCompat cameraManagerCompat) throws CameraAccessExceptionCompat {
        this(str, cameraManagerCompat, StreamSpecsCalculator.f2488a);
    }
}
