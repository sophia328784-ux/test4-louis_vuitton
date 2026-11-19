package androidx.camera.core.streamsharing;

import android.graphics.Rect;
import android.graphics.RectF;
import android.util.Pair;
import android.util.Rational;
import android.util.Size;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.utils.AspectRatioUtil;
import androidx.camera.core.impl.utils.CompareSizesByArea;
import androidx.camera.core.impl.utils.TransformUtils;
import androidx.camera.core.internal.SupportedOutputSizesSorter;
import androidx.camera.core.internal.utils.SizeUtil;
import defpackage.az;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Objects;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class ResolutionsMerger {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final double f2643h = Math.sqrt(2.3703703703703702d);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final /* synthetic */ int f2644i = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Size f2645a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Rational f2646b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Rational f2647c;
    public final HashSet d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final SupportedOutputSizesSorter f2648e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final CameraInfoInternal f2649f;
    public final HashMap g;

    public static class CompareAspectRatioByOverlappingAreaToReference implements Comparator<Rational> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Rational f2650b;

        public CompareAspectRatioByOverlappingAreaToReference(Rational rational) {
            this.f2650b = rational;
        }

        @Override // java.util.Comparator
        public final int compare(Rational rational, Rational rational2) {
            Rational rational3 = rational2;
            int i2 = ResolutionsMerger.f2644i;
            float fFloatValue = rational.floatValue();
            Rational rational4 = this.f2650b;
            float fFloatValue2 = rational4.floatValue();
            float f2 = fFloatValue > fFloatValue2 ? fFloatValue2 / fFloatValue : fFloatValue / fFloatValue2;
            float fFloatValue3 = rational3.floatValue();
            float fFloatValue4 = rational4.floatValue();
            return Float.compare(fFloatValue3 > fFloatValue4 ? fFloatValue4 / fFloatValue3 : fFloatValue3 / fFloatValue4, f2);
        }
    }

    public ResolutionsMerger(CameraInternal cameraInternal, HashSet hashSet) {
        Size sizeG = TransformUtils.g(cameraInternal.k().f());
        CameraInfoInternal cameraInfoInternalK = cameraInternal.k();
        SupportedOutputSizesSorter supportedOutputSizesSorter = new SupportedOutputSizesSorter(cameraInfoInternalK, sizeG);
        this.g = new HashMap();
        this.f2645a = sizeG;
        Rational rational = ((double) sizeG.getWidth()) / ((double) sizeG.getHeight()) > f2643h ? AspectRatioUtil.f2382c : AspectRatioUtil.f2380a;
        sizeG.toString();
        Objects.toString(rational);
        Logger.c(3, "ResolutionsMerger");
        this.f2646b = rational;
        Rational rational2 = AspectRatioUtil.f2380a;
        if (rational.equals(rational2)) {
            rational2 = AspectRatioUtil.f2382c;
        } else if (!rational.equals(AspectRatioUtil.f2382c)) {
            az.m(rational, "Invalid sensor aspect-ratio: ");
            throw null;
        }
        this.f2647c = rational2;
        this.f2649f = cameraInfoInternalK;
        this.d = hashSet;
        this.f2648e = supportedOutputSizesSorter;
    }

    public static Rect a(Size size, Size size2) {
        RectF rectF;
        RectF rectF2;
        Rational rationalH = h(size2);
        int width = size.getWidth();
        int height = size.getHeight();
        Rational rationalH2 = h(size);
        if (rationalH.floatValue() == rationalH2.floatValue()) {
            rectF2 = new RectF(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, width, height);
        } else {
            if (rationalH.floatValue() > rationalH2.floatValue()) {
                float f2 = width;
                float fFloatValue = f2 / rationalH.floatValue();
                float f3 = (height - fFloatValue) / 2.0f;
                rectF = new RectF(Call.Parameters.DEFAULT_CAMERA_ZOOM, f3, f2, fFloatValue + f3);
            } else {
                float f4 = height;
                float fFloatValue2 = rationalH.floatValue() * f4;
                float f5 = (width - fFloatValue2) / 2.0f;
                rectF = new RectF(f5, Call.Parameters.DEFAULT_CAMERA_ZOOM, fFloatValue2 + f5, f4);
            }
            rectF2 = rectF;
        }
        Rect rect = new Rect();
        rectF2.round(rect);
        return rect;
    }

    public static boolean d(Size size, Size size2) {
        return size.getHeight() > size2.getHeight() || size.getWidth() > size2.getWidth();
    }

    public static Rational h(Size size) {
        return new Rational(size.getWidth(), size.getHeight());
    }

    public final PreferredChildSize b(UseCaseConfig useCaseConfig, Rect rect, int i2, boolean z) {
        boolean z2;
        Size size;
        Size size2;
        Pair pairCreate;
        if (TransformUtils.d(i2)) {
            z2 = true;
            rect = new Rect(rect.top, rect.left, rect.bottom, rect.right);
        } else {
            z2 = false;
        }
        if (z) {
            Size sizeG = TransformUtils.g(rect);
            Iterator it = c(useCaseConfig).iterator();
            while (true) {
                if (!it.hasNext()) {
                    pairCreate = Pair.create(sizeG, sizeG);
                    break;
                }
                Size size3 = (Size) it.next();
                Size sizeG2 = TransformUtils.g(a(size3, sizeG));
                if (!d(sizeG2, sizeG)) {
                    pairCreate = Pair.create(size3, sizeG2);
                    break;
                }
            }
            size = (Size) pairCreate.first;
            size2 = (Size) pairCreate.second;
        } else {
            Size sizeG3 = TransformUtils.g(rect);
            List listC = c(useCaseConfig);
            Iterator it2 = listC.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    Iterator it3 = listC.iterator();
                    do {
                        if (!it3.hasNext()) {
                            size = sizeG3;
                            break;
                        }
                        size = (Size) it3.next();
                    } while (d(size, sizeG3));
                } else {
                    Size size4 = (Size) it2.next();
                    Rational rationalH = AspectRatioUtil.f2380a;
                    Size size5 = SizeUtil.f2517c;
                    if (!AspectRatioUtil.a(sizeG3, rationalH, size5)) {
                        rationalH = AspectRatioUtil.f2382c;
                        if (!AspectRatioUtil.a(sizeG3, rationalH, size5)) {
                            rationalH = h(sizeG3);
                        }
                    }
                    if (!e(rationalH, size4) && !d(size4, sizeG3)) {
                        size = size4;
                        break;
                    }
                }
            }
            rect = a(sizeG3, size);
            size2 = size;
        }
        PreferredChildSize preferredChildSize = new PreferredChildSize(rect, size2, size);
        if (!z2) {
            return preferredChildSize;
        }
        Rect rect2 = preferredChildSize.f2640a;
        Rect rect3 = new Rect(rect2.top, rect2.left, rect2.bottom, rect2.right);
        Size size6 = preferredChildSize.f2641b;
        return new PreferredChildSize(rect3, new Size(size6.getHeight(), size6.getWidth()), preferredChildSize.f2642c);
    }

    public final List c(UseCaseConfig useCaseConfig) {
        Rational rationalH;
        if (!this.d.contains(useCaseConfig)) {
            az.m(useCaseConfig, "Invalid child config: ");
            return null;
        }
        HashMap map = this.g;
        if (map.containsKey(useCaseConfig)) {
            List list = (List) map.get(useCaseConfig);
            Objects.requireNonNull(list);
            return list;
        }
        List listB = this.f2648e.b(useCaseConfig);
        HashMap map2 = new HashMap();
        ArrayList arrayList = new ArrayList();
        for (Size size : (ArrayList) listB) {
            Iterator it = map2.keySet().iterator();
            do {
                if (!it.hasNext()) {
                    rationalH = null;
                    break;
                }
                rationalH = (Rational) it.next();
                Rational rational = AspectRatioUtil.f2380a;
            } while (!AspectRatioUtil.a(size, rationalH, SizeUtil.f2517c));
            if (rationalH != null) {
                Size size2 = (Size) map2.get(rationalH);
                Objects.requireNonNull(size2);
                if (size.getHeight() > size2.getHeight() || size.getWidth() > size2.getWidth() || (size.getWidth() == size2.getWidth() && size.getHeight() == size2.getHeight())) {
                }
            } else {
                rationalH = h(size);
            }
            arrayList.add(size);
            map2.put(rationalH, size);
        }
        map.put(useCaseConfig, arrayList);
        return arrayList;
    }

    public final boolean e(Rational rational, Size size) {
        Rational rational2 = this.f2646b;
        if (rational2.equals(rational)) {
            return false;
        }
        Rational rational3 = AspectRatioUtil.f2380a;
        Size size2 = SizeUtil.f2517c;
        if (AspectRatioUtil.a(size, rational, size2)) {
            return false;
        }
        float fFloatValue = rational2.floatValue();
        float fFloatValue2 = rational.floatValue();
        Rational rationalH = AspectRatioUtil.f2380a;
        if (!AspectRatioUtil.a(size, rationalH, size2)) {
            rationalH = AspectRatioUtil.f2382c;
            if (!AspectRatioUtil.a(size, rationalH, size2)) {
                rationalH = h(size);
            }
        }
        float fFloatValue3 = rationalH.floatValue();
        if (fFloatValue == fFloatValue2 || fFloatValue2 == fFloatValue3) {
            return false;
        }
        if (fFloatValue > fFloatValue2) {
            return fFloatValue2 < fFloatValue3;
        }
        return fFloatValue2 > fFloatValue3;
    }

    public final ArrayList f(List list, boolean z) {
        List arrayList;
        HashMap map = new HashMap();
        Rational rational = AspectRatioUtil.f2380a;
        map.put(rational, new ArrayList());
        Rational rational2 = AspectRatioUtil.f2382c;
        map.put(rational2, new ArrayList());
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(rational);
        arrayList2.add(rational2);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Size size = (Size) it.next();
            if (size.getHeight() > 0) {
                Iterator it2 = arrayList2.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        arrayList = null;
                        break;
                    }
                    Rational rational3 = (Rational) it2.next();
                    if (AspectRatioUtil.a(size, rational3, SizeUtil.f2517c)) {
                        arrayList = (List) map.get(rational3);
                        break;
                    }
                }
                if (arrayList == null) {
                    arrayList = new ArrayList();
                    Rational rationalH = h(size);
                    arrayList2.add(rationalH);
                    map.put(rationalH, arrayList);
                }
                arrayList.add(size);
            }
        }
        ArrayList<Rational> arrayList3 = new ArrayList(map.keySet());
        Collections.sort(arrayList3, new CompareAspectRatioByOverlappingAreaToReference(h(this.f2645a)));
        ArrayList arrayList4 = new ArrayList();
        for (Rational rational4 : arrayList3) {
            if (!rational4.equals(AspectRatioUtil.f2382c) && !rational4.equals(AspectRatioUtil.f2380a)) {
                List list2 = (List) map.get(rational4);
                Objects.requireNonNull(list2);
                arrayList4.addAll(g(rational4, list2, z));
            }
        }
        return arrayList4;
    }

    public final ArrayList g(Rational rational, List list, boolean z) {
        ArrayList arrayList;
        ArrayList<Size> arrayList2 = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Size size = (Size) it.next();
            Rational rational2 = AspectRatioUtil.f2380a;
            if (AspectRatioUtil.a(size, rational, SizeUtil.f2517c)) {
                arrayList2.add(size);
            }
        }
        Collections.sort(arrayList2, new CompareSizesByArea(true));
        HashSet hashSet = new HashSet(arrayList2);
        Iterator it2 = this.d.iterator();
        while (it2.hasNext()) {
            List<Size> listC = c((UseCaseConfig) it2.next());
            if (!z) {
                ArrayList arrayList3 = new ArrayList();
                for (Size size2 : listC) {
                    if (!e(rational, size2)) {
                        arrayList3.add(size2);
                    }
                }
                listC = arrayList3;
            }
            if (listC.isEmpty()) {
                return new ArrayList();
            }
            if (listC.isEmpty() || arrayList2.isEmpty()) {
                arrayList2 = new ArrayList();
            } else {
                ArrayList arrayList4 = new ArrayList();
                for (Size size3 : arrayList2) {
                    Iterator it3 = listC.iterator();
                    while (it3.hasNext()) {
                        if (!d((Size) it3.next(), size3)) {
                            arrayList4.add(size3);
                            break;
                        }
                    }
                }
                arrayList2 = arrayList4;
            }
            if (listC.isEmpty() || arrayList2.isEmpty()) {
                arrayList = new ArrayList();
            } else {
                ArrayList<Size> arrayList5 = arrayList2.isEmpty() ? arrayList2 : new ArrayList(new LinkedHashSet(arrayList2));
                arrayList = new ArrayList();
                for (Size size4 : arrayList5) {
                    Iterator it4 = listC.iterator();
                    do {
                        if (!it4.hasNext()) {
                            arrayList.add(size4);
                            break;
                        }
                    } while (!d((Size) it4.next(), size4));
                }
                if (!arrayList.isEmpty()) {
                    arrayList.remove(arrayList.size() - 1);
                }
            }
            hashSet.retainAll(arrayList);
        }
        ArrayList arrayList6 = new ArrayList();
        for (Size size5 : arrayList2) {
            if (!hashSet.contains(size5)) {
                arrayList6.add(size5);
            }
        }
        return arrayList6;
    }
}
