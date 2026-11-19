package com.otaliastudios.cameraview.size;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
public class SizeSelectors {

    /* JADX INFO: renamed from: com.otaliastudios.cameraview.size.SizeSelectors$6, reason: invalid class name */
    class AnonymousClass6 implements SizeSelector {
        @Override // com.otaliastudios.cameraview.size.SizeSelector
        public final List a(List list) {
            Collections.sort(list);
            Collections.reverse(list);
            return list;
        }
    }

    /* JADX INFO: renamed from: com.otaliastudios.cameraview.size.SizeSelectors$7, reason: invalid class name */
    class AnonymousClass7 implements SizeSelector {
        @Override // com.otaliastudios.cameraview.size.SizeSelector
        public final List a(List list) {
            Collections.sort(list);
            return list;
        }
    }

    public static class AndSelector implements SizeSelector {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public SizeSelector[] f39097a;

        @Override // com.otaliastudios.cameraview.size.SizeSelector
        public final List a(List list) {
            for (SizeSelector sizeSelector : this.f39097a) {
                list = sizeSelector.a(list);
            }
            return list;
        }
    }

    public interface Filter {
        boolean a(Size size);
    }

    public static class FilterSelector implements SizeSelector {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Filter f39098a;

        @Override // com.otaliastudios.cameraview.size.SizeSelector
        public final List a(List list) {
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                Size size = (Size) it.next();
                if (this.f39098a.a(size)) {
                    arrayList.add(size);
                }
            }
            return arrayList;
        }
    }

    public static class OrSelector implements SizeSelector {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public SizeSelector[] f39099a;

        @Override // com.otaliastudios.cameraview.size.SizeSelector
        public final List a(List list) {
            List listA = null;
            for (SizeSelector sizeSelector : this.f39099a) {
                listA = sizeSelector.a(list);
                if (!listA.isEmpty()) {
                    break;
                }
            }
            return listA == null ? new ArrayList() : listA;
        }
    }

    public static SizeSelector a(SizeSelector... sizeSelectorArr) {
        AndSelector andSelector = new AndSelector();
        andSelector.f39097a = sizeSelectorArr;
        return andSelector;
    }

    public static SizeSelector b(AspectRatio aspectRatio) {
        final float fC = aspectRatio.c();
        return j(new Filter() { // from class: com.otaliastudios.cameraview.size.SizeSelectors.5
            @Override // com.otaliastudios.cameraview.size.SizeSelectors.Filter
            public final boolean a(Size size) {
                float fC2 = AspectRatio.a(size.f39086b, size.f39087c).c();
                float f2 = fC;
                return fC2 >= f2 - Call.Parameters.DEFAULT_CAMERA_ZOOM && fC2 <= f2 + Call.Parameters.DEFAULT_CAMERA_ZOOM;
            }
        });
    }

    public static SizeSelector c() {
        return new AnonymousClass6();
    }

    public static SizeSelector d(final int i2) {
        return j(new Filter() { // from class: com.otaliastudios.cameraview.size.SizeSelectors.3
            @Override // com.otaliastudios.cameraview.size.SizeSelectors.Filter
            public final boolean a(Size size) {
                return size.f39087c <= i2;
            }
        });
    }

    public static SizeSelector e(final int i2) {
        return j(new Filter() { // from class: com.otaliastudios.cameraview.size.SizeSelectors.1
            @Override // com.otaliastudios.cameraview.size.SizeSelectors.Filter
            public final boolean a(Size size) {
                return size.f39086b <= i2;
            }
        });
    }

    public static SizeSelector f(final int i2) {
        return j(new Filter() { // from class: com.otaliastudios.cameraview.size.SizeSelectors.4
            @Override // com.otaliastudios.cameraview.size.SizeSelectors.Filter
            public final boolean a(Size size) {
                return size.f39087c >= i2;
            }
        });
    }

    public static SizeSelector g(final int i2) {
        return j(new Filter() { // from class: com.otaliastudios.cameraview.size.SizeSelectors.2
            @Override // com.otaliastudios.cameraview.size.SizeSelectors.Filter
            public final boolean a(Size size) {
                return size.f39086b >= i2;
            }
        });
    }

    public static SizeSelector h(SizeSelector... sizeSelectorArr) {
        OrSelector orSelector = new OrSelector();
        orSelector.f39099a = sizeSelectorArr;
        return orSelector;
    }

    public static SizeSelector i() {
        return new AnonymousClass7();
    }

    public static SizeSelector j(Filter filter) {
        FilterSelector filterSelector = new FilterSelector();
        filterSelector.f39098a = filter;
        return filterSelector;
    }
}
