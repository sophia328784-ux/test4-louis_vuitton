package androidx.camera.core;

import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.LensFacingCameraFilter;
import androidx.core.util.Preconditions;
import defpackage.fc;
import defpackage.md;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class CameraSelector {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final CameraSelector f1891b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final CameraSelector f1892c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LinkedHashSet f1893a;

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final LinkedHashSet f1894a = new LinkedHashSet();

        public final void a(int i2) {
            Preconditions.f("The specified lens facing is invalid.", i2 != -1);
            this.f1894a.add(new LensFacingCameraFilter(i2));
        }
    }

    @Target({ElementType.TYPE, ElementType.TYPE_USE, ElementType.FIELD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE})
    @Retention(RetentionPolicy.SOURCE)
    public @interface LensFacing {
    }

    static {
        Builder builder = new Builder();
        builder.a(0);
        f1891b = new CameraSelector(builder.f1894a);
        Builder builder2 = new Builder();
        builder2.a(1);
        f1892c = new CameraSelector(builder2.f1894a);
    }

    public CameraSelector(LinkedHashSet linkedHashSet) {
        this.f1893a = linkedHashSet;
    }

    public final List a(ArrayList arrayList) {
        ArrayList arrayList2 = new ArrayList(arrayList);
        Iterator it = this.f1893a.iterator();
        while (it.hasNext()) {
            arrayList2 = ((CameraFilter) it.next()).a(Collections.unmodifiableList(arrayList2));
        }
        arrayList2.retainAll(arrayList);
        return arrayList2;
    }

    public final Integer b() {
        Integer num = null;
        for (CameraFilter cameraFilter : this.f1893a) {
            if (cameraFilter instanceof LensFacingCameraFilter) {
                Integer numValueOf = Integer.valueOf(((LensFacingCameraFilter) cameraFilter).f2307b);
                if (num == null) {
                    num = numValueOf;
                } else if (!num.equals(numValueOf)) {
                    md.k("Multiple conflicting lens facing requirements exist.");
                    return null;
                }
            }
        }
        return num;
    }

    public final CameraInternal c(LinkedHashSet linkedHashSet) {
        ArrayList arrayList = new ArrayList();
        Iterator it = linkedHashSet.iterator();
        while (it.hasNext()) {
            arrayList.add(((CameraInternal) it.next()).b());
        }
        List listA = a(arrayList);
        LinkedHashSet linkedHashSet2 = new LinkedHashSet();
        Iterator it2 = linkedHashSet.iterator();
        while (it2.hasNext()) {
            CameraInternal cameraInternal = (CameraInternal) it2.next();
            if (listA.contains(cameraInternal.b())) {
                linkedHashSet2.add(cameraInternal);
            }
        }
        Iterator it3 = linkedHashSet2.iterator();
        if (it3.hasNext()) {
            return (CameraInternal) it3.next();
        }
        StringBuilder sb = new StringBuilder("Cams:");
        sb.append(linkedHashSet.size());
        Iterator it4 = linkedHashSet.iterator();
        while (it4.hasNext()) {
            CameraInfoInternal cameraInfoInternalK = ((CameraInternal) it4.next()).k();
            sb.append(" Id:" + cameraInfoInternalK.b() + "  Lens:" + cameraInfoInternalK.g());
        }
        String string = sb.toString();
        StringBuilder sb2 = new StringBuilder();
        LinkedHashSet<CameraFilter> linkedHashSet3 = this.f1893a;
        sb2.append("PhyId:null  Filters:" + linkedHashSet3.size());
        for (CameraFilter cameraFilter : linkedHashSet3) {
            sb2.append(" Id:");
            cameraFilter.getClass();
            sb2.append(CameraFilter.f1887a);
            if (cameraFilter instanceof LensFacingCameraFilter) {
                sb2.append(" LensFilter:");
                sb2.append(((LensFacingCameraFilter) cameraFilter).f2307b);
            }
        }
        md.n(fc.i("No available camera can be found. ", string, " ", sb2.toString()));
        return null;
    }
}
