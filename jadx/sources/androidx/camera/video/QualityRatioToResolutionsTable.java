package androidx.camera.video;

import android.util.Range;
import android.util.Rational;
import android.util.Size;
import androidx.camera.core.impl.utils.AspectRatioUtil;
import androidx.camera.core.internal.utils.SizeUtil;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import net.rtccloud.sdk.Sink;

/* JADX INFO: loaded from: classes.dex */
class QualityRatioToResolutionsTable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final HashMap f2773b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final HashMap f2774c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f2775a = new HashMap();

    public static abstract class QualityRatio {
    }

    static {
        HashMap map = new HashMap();
        f2773b = map;
        map.put(Quality.d, Range.create(2160, 4319));
        map.put(Quality.f2768c, Range.create(Integer.valueOf(Sink.Screenshare.MAX_DIMENSION_LOW), 1439));
        map.put(Quality.f2767b, Range.create(Integer.valueOf(Sink.Video.MAX_DIMENSION_LOW), 1079));
        map.put(Quality.f2766a, Range.create(241, 719));
        HashMap map2 = new HashMap();
        f2774c = map2;
        map2.put(0, AspectRatioUtil.f2380a);
        map2.put(1, AspectRatioUtil.f2382c);
    }

    public QualityRatioToResolutionsTable(List list, HashMap map) {
        HashMap map2;
        Integer num;
        Quality quality;
        HashMap map3 = f2773b;
        Iterator it = map3.keySet().iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            map2 = f2774c;
            if (!zHasNext) {
                break;
            }
            Quality quality2 = (Quality) it.next();
            this.f2775a.put(new AutoValue_QualityRatioToResolutionsTable_QualityRatio(quality2, -1), new ArrayList());
            Iterator it2 = map2.keySet().iterator();
            while (it2.hasNext()) {
                this.f2775a.put(new AutoValue_QualityRatioToResolutionsTable_QualityRatio(quality2, ((Integer) it2.next()).intValue()), new ArrayList());
            }
        }
        for (Map.Entry entry : map.entrySet()) {
            List list2 = (List) this.f2775a.get(new AutoValue_QualityRatioToResolutionsTable_QualityRatio((Quality) entry.getKey(), -1));
            Objects.requireNonNull(list2);
            list2.add((Size) entry.getValue());
        }
        Iterator it3 = list.iterator();
        while (it3.hasNext()) {
            Size size = (Size) it3.next();
            Iterator it4 = map3.entrySet().iterator();
            while (true) {
                num = null;
                if (!it4.hasNext()) {
                    quality = null;
                    break;
                }
                Map.Entry entry2 = (Map.Entry) it4.next();
                if (((Range) entry2.getValue()).contains(Integer.valueOf(size.getHeight()))) {
                    quality = (Quality) entry2.getKey();
                    break;
                }
            }
            if (quality != null) {
                for (Map.Entry entry3 : map2.entrySet()) {
                    if (AspectRatioUtil.a(size, (Rational) entry3.getValue(), SizeUtil.f2516b)) {
                        num = (Integer) entry3.getKey();
                        break;
                    }
                }
                if (num != null) {
                    List list3 = (List) this.f2775a.get(new AutoValue_QualityRatioToResolutionsTable_QualityRatio(quality, num.intValue()));
                    Objects.requireNonNull(list3);
                    list3.add(size);
                }
            }
        }
        for (Map.Entry entry4 : this.f2775a.entrySet()) {
            Size size2 = (Size) map.get(((AutoValue_QualityRatioToResolutionsTable_QualityRatio) ((QualityRatio) entry4.getKey())).f2736a);
            if (size2 != null) {
                Size size3 = SizeUtil.f2515a;
                final int height = size2.getHeight() * size2.getWidth();
                Collections.sort((List) entry4.getValue(), new Comparator() { // from class: androidx.camera.video.a
                    @Override // java.util.Comparator
                    public final int compare(Object obj, Object obj2) {
                        HashMap map4 = QualityRatioToResolutionsTable.f2773b;
                        int iA = SizeUtil.a((Size) obj);
                        int i2 = height;
                        return Math.abs(iA - i2) - Math.abs(SizeUtil.a((Size) obj2) - i2);
                    }
                });
            }
        }
    }
}
