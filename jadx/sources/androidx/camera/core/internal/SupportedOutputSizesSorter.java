package androidx.camera.core.internal;

import android.util.Pair;
import android.util.Rational;
import android.util.Size;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.ImageOutputConfig;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.utils.AspectRatioUtil;
import androidx.camera.core.impl.utils.CompareSizesByArea;
import androidx.camera.core.internal.utils.SizeUtil;
import androidx.camera.core.resolutionselector.AspectRatioStrategy;
import androidx.camera.core.resolutionselector.ResolutionSelector;
import androidx.camera.core.resolutionselector.ResolutionStrategy;
import defpackage.r81;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class SupportedOutputSizesSorter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CameraInfoInternal f2491a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f2492b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f2493c;
    public final Rational d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final SupportedOutputSizesSorterLegacy f2494e;

    public SupportedOutputSizesSorter(CameraInfoInternal cameraInfoInternal, Size size) {
        Rational rational;
        this.f2491a = cameraInfoInternal;
        this.f2492b = cameraInfoInternal.d();
        this.f2493c = cameraInfoInternal.g();
        if (size != null) {
            rational = new Rational(size.getWidth(), size.getHeight());
        } else {
            List listK = cameraInfoInternal.k(256);
            if (listK.isEmpty()) {
                rational = null;
            } else {
                Size size2 = (Size) Collections.max(listK, new CompareSizesByArea());
                rational = new Rational(size2.getWidth(), size2.getHeight());
            }
        }
        this.d = rational;
        this.f2494e = new SupportedOutputSizesSorterLegacy(cameraInfoInternal, rational);
    }

    public static ArrayList a(List list) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(AspectRatioUtil.f2380a);
        arrayList.add(AspectRatioUtil.f2382c);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Size size = (Size) it.next();
            Rational rational = new Rational(size.getWidth(), size.getHeight());
            if (!arrayList.contains(rational)) {
                Iterator it2 = arrayList.iterator();
                do {
                    if (!it2.hasNext()) {
                        arrayList.add(rational);
                        break;
                    }
                } while (!AspectRatioUtil.a(size, (Rational) it2.next(), SizeUtil.f2517c));
            }
        }
        return arrayList;
    }

    public static Rational c(int i2, boolean z) {
        if (i2 == -1) {
            return null;
        }
        if (i2 == 0) {
            return z ? AspectRatioUtil.f2380a : AspectRatioUtil.f2381b;
        }
        if (i2 == 1) {
            return z ? AspectRatioUtil.f2382c : AspectRatioUtil.d;
        }
        Logger.a("SupportedOutputSizesCollector");
        return null;
    }

    public static HashMap d(List list) {
        HashMap map = new HashMap();
        Iterator it = a(list).iterator();
        while (it.hasNext()) {
            map.put((Rational) it.next(), new ArrayList());
        }
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            Size size = (Size) it2.next();
            for (Rational rational : map.keySet()) {
                if (AspectRatioUtil.a(size, rational, SizeUtil.f2517c)) {
                    ((List) map.get(rational)).add(size);
                }
            }
        }
        return map;
    }

    public static List e(ResolutionSelector resolutionSelector, List list, Size size, int i2, Rational rational, int i3, int i4) {
        AspectRatioStrategy aspectRatioStrategy = resolutionSelector.f2633a;
        HashMap mapD = d(list);
        boolean z = rational == null || rational.getNumerator() >= rational.getDenominator();
        Rational rationalC = c(aspectRatioStrategy.f2631a, z);
        if (aspectRatioStrategy.f2632b == 0) {
            Rational rationalC2 = c(aspectRatioStrategy.f2631a, z);
            for (Rational rational2 : new ArrayList(mapD.keySet())) {
                if (!rational2.equals(rationalC2)) {
                    mapD.remove(rational2);
                }
            }
        }
        ArrayList<Rational> arrayList = new ArrayList(mapD.keySet());
        Collections.sort(arrayList, new AspectRatioUtil.CompareAspectRatiosByMappingAreaInFullFovAspectRatioSpace(rationalC, rational));
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Rational rational3 : arrayList) {
            linkedHashMap.put(rational3, (List) mapD.get(rational3));
        }
        if (size != null) {
            Size size2 = SizeUtil.f2515a;
            int height = size.getHeight() * size.getWidth();
            Iterator it = linkedHashMap.keySet().iterator();
            while (it.hasNext()) {
                List<Size> list2 = (List) linkedHashMap.get((Rational) it.next());
                ArrayList arrayList2 = new ArrayList();
                for (Size size3 : list2) {
                    if (SizeUtil.a(size3) <= height) {
                        arrayList2.add(size3);
                    }
                }
                list2.clear();
                list2.addAll(arrayList2);
            }
        }
        ResolutionStrategy resolutionStrategy = resolutionSelector.f2634b;
        if (resolutionStrategy != null) {
            Iterator it2 = linkedHashMap.keySet().iterator();
            while (it2.hasNext()) {
                List list3 = (List) linkedHashMap.get((Rational) it2.next());
                if (!list3.isEmpty()) {
                    int i5 = resolutionStrategy.f2639b;
                    if (resolutionStrategy != ResolutionStrategy.f2637c) {
                        Size size4 = resolutionStrategy.f2638a;
                        if (i5 == 0) {
                            boolean zContains = list3.contains(size4);
                            list3.clear();
                            if (zContains) {
                                list3.add(size4);
                            }
                        } else if (i5 == 1) {
                            f(list3, size4, true);
                        } else if (i5 == 2) {
                            f(list3, size4, false);
                        } else if (i5 == 3) {
                            g(list3, size4, true);
                        } else if (i5 == 4) {
                            g(list3, size4, false);
                        }
                    }
                }
            }
        }
        ArrayList arrayList3 = new ArrayList();
        Iterator it3 = linkedHashMap.values().iterator();
        while (it3.hasNext()) {
            for (Size size5 : (List) it3.next()) {
                if (!arrayList3.contains(size5)) {
                    arrayList3.add(size5);
                }
            }
        }
        return arrayList3;
    }

    public static void f(List list, Size size, boolean z) {
        ArrayList arrayList = new ArrayList();
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            Size size3 = (Size) list.get(size2);
            if (size3.getWidth() >= size.getWidth() && size3.getHeight() >= size.getHeight()) {
                break;
            }
            arrayList.add(0, size3);
        }
        list.removeAll(arrayList);
        Collections.reverse(list);
        if (z) {
            list.addAll(arrayList);
        }
    }

    public static void g(List list, Size size, boolean z) {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < list.size(); i2++) {
            Size size2 = (Size) list.get(i2);
            if (size2.getWidth() <= size.getWidth() && size2.getHeight() <= size.getHeight()) {
                break;
            }
            arrayList.add(0, size2);
        }
        list.removeAll(arrayList);
        if (z) {
            list.addAll(arrayList);
        }
    }

    /* JADX WARN: Code duplicated, block: B:101:0x00e6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:105:0x00cb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:112:0x01c5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:114:0x01b3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:116:0x013a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:117:0x0138 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:118:? A[LOOP:5: B:60:0x0124->B:118:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:33:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:45:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:54:0x0105  */
    /* JADX WARN: Code duplicated, block: B:56:0x010b  */
    /* JADX WARN: Code duplicated, block: B:57:0x0116  */
    /* JADX WARN: Code duplicated, block: B:59:0x011c  */
    /* JADX WARN: Code duplicated, block: B:62:0x012a  */
    /* JADX WARN: Code duplicated, block: B:67:0x0149  */
    /* JADX WARN: Code duplicated, block: B:70:0x0159  */
    /* JADX WARN: Code duplicated, block: B:72:0x015e  */
    /* JADX WARN: Code duplicated, block: B:74:0x0162  */
    /* JADX WARN: Code duplicated, block: B:76:0x0168  */
    /* JADX WARN: Code duplicated, block: B:79:0x0176 A[LOOP:2: B:77:0x0170->B:79:0x0176, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:83:0x01a3  */
    /* JADX WARN: Code duplicated, block: B:86:0x01b9  */
    /* JADX WARN: Code duplicated, block: B:90:0x01ca  */
    public final List b(UseCaseConfig useCaseConfig) {
        Size[] sizeArr;
        Size size;
        Size size2;
        Size sizeA;
        Iterator it;
        Rational rational;
        ArrayList arrayList;
        HashMap mapD;
        Iterator it2;
        Iterator it3;
        ImageOutputConfig imageOutputConfig = (ImageOutputConfig) useCaseConfig;
        ArrayList arrayListP = imageOutputConfig.P();
        if (arrayListP != null) {
            return arrayListP;
        }
        ResolutionSelector resolutionSelectorK = imageOutputConfig.k();
        List listJ = imageOutputConfig.j();
        int iM = useCaseConfig.m();
        Rational rational2 = null;
        if (listJ == null) {
            sizeArr = null;
            break;
        }
        Iterator it4 = listJ.iterator();
        while (true) {
            if (!it4.hasNext()) {
                sizeArr = null;
                break;
            }
            Pair pair = (Pair) it4.next();
            if (((Integer) pair.first).intValue() == iM) {
                sizeArr = (Size[]) pair.second;
                break;
            }
        }
        List listAsList = sizeArr == null ? null : Arrays.asList(sizeArr);
        if (listAsList == null) {
            listAsList = this.f2491a.k(iM);
        }
        ArrayList arrayList2 = new ArrayList(listAsList);
        Collections.sort(arrayList2, new CompareSizesByArea(true));
        if (arrayList2.isEmpty()) {
            Logger.c(5, "SupportedOutputSizesCollector");
        }
        if (resolutionSelectorK != null) {
            Size sizeE = ((ImageOutputConfig) useCaseConfig).E();
            int iG = imageOutputConfig.G(0);
            if (!useCaseConfig.p()) {
                useCaseConfig.m();
            }
            useCaseConfig.toString();
            arrayList2.toString();
            Logger.c(3, "SupportedOutputSizesCollector");
            return e(imageOutputConfig.q(), arrayList2, sizeE, iG, this.d, this.f2492b, this.f2493c);
        }
        SupportedOutputSizesSorterLegacy supportedOutputSizesSorterLegacy = this.f2494e;
        supportedOutputSizesSorterLegacy.getClass();
        if (arrayList2.isEmpty()) {
            return arrayList2;
        }
        ArrayList<Size> arrayList3 = new ArrayList(arrayList2);
        Collections.sort(arrayList3, new CompareSizesByArea(true));
        ArrayList arrayList4 = new ArrayList();
        ImageOutputConfig imageOutputConfig2 = (ImageOutputConfig) useCaseConfig;
        Size sizeE2 = imageOutputConfig2.E();
        Size size3 = (Size) arrayList3.get(0);
        if (sizeE2 == null) {
            size = size3;
        } else if (SizeUtil.a(size3) < sizeE2.getHeight() * sizeE2.getWidth()) {
            size = size3;
        } else {
            size = sizeE2;
        }
        Size sizeA2 = supportedOutputSizesSorterLegacy.a(imageOutputConfig2);
        Size size4 = SizeUtil.f2517c;
        int iA = SizeUtil.a(size4);
        if (SizeUtil.a(size) >= iA) {
            if (sizeA2 != null) {
                if (sizeA2.getHeight() * sizeA2.getWidth() < iA) {
                    size2 = sizeA2;
                }
            }
            for (Size size5 : arrayList3) {
                if (SizeUtil.a(size5) <= size.getHeight() * size.getWidth()) {
                    if (size5.getHeight() * size5.getWidth() < SizeUtil.a(size2) && !arrayList4.contains(size5)) {
                        arrayList4.add(size5);
                    }
                }
            }
            if (!arrayList4.isEmpty()) {
                r81.f("All supported output sizes are filtered out according to current resolution selection settings. \nminSize = ", size2, "\nmaxSize = ", size, "\ninitial size list: ", arrayList3);
                return null;
            }
            if (imageOutputConfig2.z()) {
                sizeA = supportedOutputSizesSorterLegacy.a(imageOutputConfig2);
                if (sizeA != null) {
                    it = a(arrayList4).iterator();
                    while (true) {
                        if (it.hasNext()) {
                            rational2 = new Rational(sizeA.getWidth(), sizeA.getHeight());
                            break;
                        }
                        rational = (Rational) it.next();
                        if (AspectRatioUtil.a(sizeA, rational, SizeUtil.f2517c)) {
                            rational2 = rational;
                            break;
                        }
                    }
                }
            } else {
                rational2 = c(imageOutputConfig2.A(), supportedOutputSizesSorterLegacy.d);
            }
            if (sizeA2 == null) {
                sizeA2 = imageOutputConfig2.s();
            }
            arrayList = new ArrayList();
            new HashMap();
            if (rational2 == null) {
                arrayList.addAll(arrayList4);
                if (sizeA2 != null) {
                    f(arrayList, sizeA2, true);
                    return arrayList;
                }
            } else {
                mapD = d(arrayList4);
                if (sizeA2 != null) {
                    it3 = mapD.keySet().iterator();
                    while (it3.hasNext()) {
                        f((List) mapD.get((Rational) it3.next()), sizeA2, true);
                    }
                }
                ArrayList arrayList5 = new ArrayList(mapD.keySet());
                Collections.sort(arrayList5, new AspectRatioUtil.CompareAspectRatiosByMappingAreaInFullFovAspectRatioSpace(rational2, supportedOutputSizesSorterLegacy.f2497c));
                it2 = arrayList5.iterator();
                while (it2.hasNext()) {
                    for (Size size6 : (List) mapD.get((Rational) it2.next())) {
                        if (!arrayList.contains(size6)) {
                            arrayList.add(size6);
                        }
                    }
                }
            }
            return arrayList;
        }
        size4 = SizeUtil.f2515a;
        size2 = size4;
        while (r2.hasNext()) {
            if (SizeUtil.a(size5) <= size.getHeight() * size.getWidth()) {
                if (size5.getHeight() * size5.getWidth() < SizeUtil.a(size2)) {
                }
            }
        }
        if (!arrayList4.isEmpty()) {
            r81.f("All supported output sizes are filtered out according to current resolution selection settings. \nminSize = ", size2, "\nmaxSize = ", size, "\ninitial size list: ", arrayList3);
            return null;
        }
        if (imageOutputConfig2.z()) {
            sizeA = supportedOutputSizesSorterLegacy.a(imageOutputConfig2);
            if (sizeA != null) {
                it = a(arrayList4).iterator();
                while (true) {
                    if (it.hasNext()) {
                        rational2 = new Rational(sizeA.getWidth(), sizeA.getHeight());
                        break;
                    }
                    rational = (Rational) it.next();
                    if (AspectRatioUtil.a(sizeA, rational, SizeUtil.f2517c)) {
                        rational2 = rational;
                        break;
                    }
                }
            }
        } else {
            rational2 = c(imageOutputConfig2.A(), supportedOutputSizesSorterLegacy.d);
        }
        if (sizeA2 == null) {
            sizeA2 = imageOutputConfig2.s();
        }
        arrayList = new ArrayList();
        new HashMap();
        if (rational2 == null) {
            arrayList.addAll(arrayList4);
            if (sizeA2 != null) {
                f(arrayList, sizeA2, true);
                return arrayList;
            }
        } else {
            mapD = d(arrayList4);
            if (sizeA2 != null) {
                it3 = mapD.keySet().iterator();
                while (it3.hasNext()) {
                    f((List) mapD.get((Rational) it3.next()), sizeA2, true);
                }
            }
            ArrayList arrayList6 = new ArrayList(mapD.keySet());
            Collections.sort(arrayList6, new AspectRatioUtil.CompareAspectRatiosByMappingAreaInFullFovAspectRatioSpace(rational2, supportedOutputSizesSorterLegacy.f2497c));
            it2 = arrayList6.iterator();
            while (it2.hasNext()) {
                while (r1.hasNext()) {
                    if (!arrayList.contains(size6)) {
                        arrayList.add(size6);
                    }
                }
            }
        }
        return arrayList;
    }
}
