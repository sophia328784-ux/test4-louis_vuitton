package androidx.camera.camera2.internal;

import android.hardware.camera2.CameraCharacteristics;
import android.util.Range;
import android.util.Size;
import androidx.camera.camera2.internal.HighSpeedResolver;
import androidx.camera.camera2.internal.compat.CameraCharacteristicsCompat;
import androidx.camera.core.internal.utils.SizeUtil;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u0006B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Landroidx/camera/camera2/internal/HighSpeedResolver;", "", "Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;", "characteristics", "<init>", "(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;)V", "Companion", "camera-camera2_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class HighSpeedResolver {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Companion f1589e = new Companion(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Range f1590f = new Range(120, 120);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CameraCharacteristicsCompat f1591a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Lazy f1592b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Lazy f1593c;
    public final Lazy d;

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u001a\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/camera/camera2/internal/HighSpeedResolver$Companion;", "", "", "TAG", "Ljava/lang/String;", "Landroid/util/Range;", "", "DEFAULT_FPS", "Landroid/util/Range;", "camera-camera2_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public HighSpeedResolver(CameraCharacteristicsCompat cameraCharacteristicsCompat) {
        cameraCharacteristicsCompat.getClass();
        this.f1591a = cameraCharacteristicsCompat;
        final int i2 = 0;
        this.f1592b = LazyKt.b(new Function0(this) { // from class: j10

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ HighSpeedResolver f71255c;

            {
                this.f71255c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i3 = i2;
                HighSpeedResolver highSpeedResolver = this.f71255c;
                switch (i3) {
                    case 0:
                        int[] iArr = (int[]) highSpeedResolver.f1591a.a(CameraCharacteristics.REQUEST_AVAILABLE_CAPABILITIES);
                        boolean z = false;
                        if (iArr != null) {
                            for (int i4 : iArr) {
                                if (i4 == 9) {
                                    z = true;
                                }
                            }
                        }
                        return Boolean.valueOf(z);
                    case 1:
                        HighSpeedResolver.Companion companion = HighSpeedResolver.f1589e;
                        List list = (List) highSpeedResolver.d.getF71699b();
                        if (list.isEmpty()) {
                            list = null;
                        }
                        if (list == null) {
                            return null;
                        }
                        Iterator it = list.iterator();
                        if (!it.hasNext()) {
                            b21.x();
                            return null;
                        }
                        Object next = it.next();
                        if (it.hasNext()) {
                            int iA = SizeUtil.a((Size) next);
                            do {
                                Object next2 = it.next();
                                int iA2 = SizeUtil.a((Size) next2);
                                if (iA < iA2) {
                                    next = next2;
                                    iA = iA2;
                                }
                            } while (it.hasNext());
                        }
                        return (Size) next;
                    default:
                        Size[] sizeArrB = highSpeedResolver.f1591a.c().b();
                        return sizeArrB != null ? ArraysKt.v(sizeArrB) : EmptyList.f71768b;
                }
            }
        });
        final int i3 = 1;
        this.f1593c = LazyKt.b(new Function0(this) { // from class: j10

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ HighSpeedResolver f71255c;

            {
                this.f71255c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i4 = i3;
                HighSpeedResolver highSpeedResolver = this.f71255c;
                switch (i4) {
                    case 0:
                        int[] iArr = (int[]) highSpeedResolver.f1591a.a(CameraCharacteristics.REQUEST_AVAILABLE_CAPABILITIES);
                        boolean z = false;
                        if (iArr != null) {
                            for (int i5 : iArr) {
                                if (i5 == 9) {
                                    z = true;
                                }
                            }
                        }
                        return Boolean.valueOf(z);
                    case 1:
                        HighSpeedResolver.Companion companion = HighSpeedResolver.f1589e;
                        List list = (List) highSpeedResolver.d.getF71699b();
                        if (list.isEmpty()) {
                            list = null;
                        }
                        if (list == null) {
                            return null;
                        }
                        Iterator it = list.iterator();
                        if (!it.hasNext()) {
                            b21.x();
                            return null;
                        }
                        Object next = it.next();
                        if (it.hasNext()) {
                            int iA = SizeUtil.a((Size) next);
                            do {
                                Object next2 = it.next();
                                int iA2 = SizeUtil.a((Size) next2);
                                if (iA < iA2) {
                                    next = next2;
                                    iA = iA2;
                                }
                            } while (it.hasNext());
                        }
                        return (Size) next;
                    default:
                        Size[] sizeArrB = highSpeedResolver.f1591a.c().b();
                        return sizeArrB != null ? ArraysKt.v(sizeArrB) : EmptyList.f71768b;
                }
            }
        });
        final int i4 = 2;
        this.d = LazyKt.b(new Function0(this) { // from class: j10

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ HighSpeedResolver f71255c;

            {
                this.f71255c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i5 = i4;
                HighSpeedResolver highSpeedResolver = this.f71255c;
                switch (i5) {
                    case 0:
                        int[] iArr = (int[]) highSpeedResolver.f1591a.a(CameraCharacteristics.REQUEST_AVAILABLE_CAPABILITIES);
                        boolean z = false;
                        if (iArr != null) {
                            for (int i6 : iArr) {
                                if (i6 == 9) {
                                    z = true;
                                }
                            }
                        }
                        return Boolean.valueOf(z);
                    case 1:
                        HighSpeedResolver.Companion companion = HighSpeedResolver.f1589e;
                        List list = (List) highSpeedResolver.d.getF71699b();
                        if (list.isEmpty()) {
                            list = null;
                        }
                        if (list == null) {
                            return null;
                        }
                        Iterator it = list.iterator();
                        if (!it.hasNext()) {
                            b21.x();
                            return null;
                        }
                        Object next = it.next();
                        if (it.hasNext()) {
                            int iA = SizeUtil.a((Size) next);
                            do {
                                Object next2 = it.next();
                                int iA2 = SizeUtil.a((Size) next2);
                                if (iA < iA2) {
                                    next = next2;
                                    iA = iA2;
                                }
                            } while (it.hasNext());
                        }
                        return (Size) next;
                    default:
                        Size[] sizeArrB = highSpeedResolver.f1591a.c().b();
                        return sizeArrB != null ? ArraysKt.v(sizeArrB) : EmptyList.f71768b;
                }
            }
        });
    }

    public static List a(List list) {
        if (list.isEmpty()) {
            return EmptyList.f71768b;
        }
        ArrayList arrayListZ0 = CollectionsKt.z0((Collection) CollectionsKt.B(list));
        Iterator it = CollectionsKt.w(list, 1).iterator();
        while (it.hasNext()) {
            arrayListZ0.retainAll((List) it.next());
        }
        return arrayListZ0;
    }

    public final Range[] b(List list) {
        list.getClass();
        int size = list.size();
        if (1 <= size && size < 3 && CollectionsKt.y0(CollectionsKt.A0(list)).size() == 1) {
            List listC = c((Size) list.get(0));
            if (listC.isEmpty()) {
                listC = null;
            }
            if (listC != null) {
                if (list.size() == 2) {
                    ArrayList arrayList = new ArrayList();
                    for (Object obj : listC) {
                        Range range = (Range) obj;
                        if (Intrinsics.c(range.getLower(), range.getUpper())) {
                            arrayList.add(obj);
                        }
                    }
                    listC = arrayList;
                }
                return (Range[]) listC.toArray(new Range[0]);
            }
        }
        return null;
    }

    public final List c(Size size) {
        Object failure;
        List listY0;
        try {
            Result.Companion companion = Result.INSTANCE;
            failure = this.f1591a.c().a(size);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        if (failure instanceof Result.Failure) {
            failure = null;
        }
        Range[] rangeArr = (Range[]) failure;
        return (rangeArr == null || (listY0 = CollectionsKt.y0(ArraysKt.v(rangeArr))) == null) ? EmptyList.f71768b : listY0;
    }
}
