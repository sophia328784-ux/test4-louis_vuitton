package com.airbnb.lottie.compose;

import android.graphics.Bitmap;
import android.graphics.ColorFilter;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.Typeface;
import com.airbnb.lottie.value.ScaleXY;
import com.sensorsdata.analytics.android.sdk.plugin.property.beans.SAPropertyFilter;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001BÕ\u0001\b\u0000\u0012\u0012\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0002\u0012\u0012\u0010\u0007\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00030\u0002\u0012\u0012\u0010\t\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00030\u0002\u0012\u0012\u0010\u000b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\u00030\u0002\u0012\u0012\u0010\r\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u00030\u0002\u0012\u0016\u0010\u000f\u001a\u0012\u0012\u000e\u0012\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u000e0\u00030\u0002\u0012\u0012\u0010\u0011\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00100\u00030\u0002\u0012\u0012\u0010\u0013\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00120\u00030\u0002\u0012\u0012\u0010\u0015\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00140\u00030\u0002\u0012\u0012\u0010\u0017\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00160\u00030\u0002¢\u0006\u0004\b\u0018\u0010\u0019B\u001b\b\u0016\u0012\u0010\u0010\u001a\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00030\u0002¢\u0006\u0004\b\u0018\u0010\u001b¨\u0006\u001c"}, d2 = {"Lcom/airbnb/lottie/compose/LottieDynamicProperties;", "", "", "Lcom/airbnb/lottie/compose/LottieDynamicProperty;", "", "intProperties", "Landroid/graphics/PointF;", "pointFProperties", "", "floatProperties", "Lcom/airbnb/lottie/value/ScaleXY;", "scaleProperties", "Landroid/graphics/ColorFilter;", "colorFilterProperties", "", "intArrayProperties", "Landroid/graphics/Typeface;", "typefaceProperties", "Landroid/graphics/Bitmap;", "bitmapProperties", "", "charSequenceProperties", "Landroid/graphics/Path;", "pathProperties", "<init>", "(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V", SAPropertyFilter.PROPERTIES, "(Ljava/util/List;)V", "lottie-compose_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class LottieDynamicProperties {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f22019a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f22020b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f22021c;
    public final List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f22022e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f22023f;
    public final List g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final List f22024h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final List f22025i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final List f22026j;

    public LottieDynamicProperties(List<? extends LottieDynamicProperty<?>> list) {
        list.getClass();
        List<? extends LottieDynamicProperty<?>> list2 = list;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list2) {
            if (((LottieDynamicProperty) obj).f22029a instanceof Integer) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : list2) {
            if (((LottieDynamicProperty) obj2).f22029a instanceof PointF) {
                arrayList2.add(obj2);
            }
        }
        ArrayList arrayList3 = new ArrayList();
        for (Object obj3 : list2) {
            if (((LottieDynamicProperty) obj3).f22029a instanceof Float) {
                arrayList3.add(obj3);
            }
        }
        ArrayList arrayList4 = new ArrayList();
        for (Object obj4 : list2) {
            if (((LottieDynamicProperty) obj4).f22029a instanceof ScaleXY) {
                arrayList4.add(obj4);
            }
        }
        ArrayList arrayList5 = new ArrayList();
        for (Object obj5 : list2) {
            if (((LottieDynamicProperty) obj5).f22029a instanceof ColorFilter) {
                arrayList5.add(obj5);
            }
        }
        ArrayList arrayList6 = new ArrayList();
        for (Object obj6 : list2) {
            if (((LottieDynamicProperty) obj6).f22029a instanceof Object[]) {
                arrayList6.add(obj6);
            }
        }
        ArrayList arrayList7 = new ArrayList();
        for (Object obj7 : list2) {
            if (((LottieDynamicProperty) obj7).f22029a instanceof Typeface) {
                arrayList7.add(obj7);
            }
        }
        ArrayList arrayList8 = new ArrayList();
        for (Object obj8 : list2) {
            if (((LottieDynamicProperty) obj8).f22029a instanceof Bitmap) {
                arrayList8.add(obj8);
            }
        }
        ArrayList arrayList9 = new ArrayList();
        for (Object obj9 : list2) {
            if (((LottieDynamicProperty) obj9).f22029a instanceof CharSequence) {
                arrayList9.add(obj9);
            }
        }
        ArrayList arrayList10 = new ArrayList();
        for (Object obj10 : list2) {
            if (((LottieDynamicProperty) obj10).f22029a instanceof Path) {
                arrayList10.add(obj10);
            }
        }
        this(arrayList, arrayList2, arrayList3, arrayList4, arrayList5, arrayList6, arrayList7, arrayList8, arrayList9, arrayList10);
    }

    public LottieDynamicProperties(List<LottieDynamicProperty<Integer>> list, List<LottieDynamicProperty<PointF>> list2, List<LottieDynamicProperty<Float>> list3, List<LottieDynamicProperty<ScaleXY>> list4, List<LottieDynamicProperty<ColorFilter>> list5, List<LottieDynamicProperty<Object[]>> list6, List<LottieDynamicProperty<Typeface>> list7, List<LottieDynamicProperty<Bitmap>> list8, List<LottieDynamicProperty<CharSequence>> list9, List<LottieDynamicProperty<Path>> list10) {
        list.getClass();
        list2.getClass();
        list3.getClass();
        list4.getClass();
        list5.getClass();
        list6.getClass();
        list7.getClass();
        list8.getClass();
        list9.getClass();
        list10.getClass();
        this.f22019a = list;
        this.f22020b = list2;
        this.f22021c = list3;
        this.d = list4;
        this.f22022e = list5;
        this.f22023f = list6;
        this.g = list7;
        this.f22024h = list8;
        this.f22025i = list9;
        this.f22026j = list10;
    }
}
