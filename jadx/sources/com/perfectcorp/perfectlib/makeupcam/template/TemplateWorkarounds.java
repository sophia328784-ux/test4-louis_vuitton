package com.perfectcorp.perfectlib.makeupcam.template;

import com.perfectcorp.perfectlib.makeupcam.camera.YMKPrimitiveData;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class TemplateWorkarounds {
    public static void a(int i2, List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            YMKPrimitiveData.MakeupColor makeupColor = (YMKPrimitiveData.MakeupColor) it.next();
            int i3 = makeupColor.f40791e;
            if (i3 < 0 || i3 > 100) {
                makeupColor.f40791e = i2;
            }
        }
    }

    public static void b(int i2, List list, List list2) {
        int i3 = 0;
        while (i3 < list.size()) {
            ((YMKPrimitiveData.MakeupColor) list.get(i3)).f40791e = i3 < list2.size() ? ((Integer) list2.get(i3)).intValue() : i2;
            i3++;
        }
        a(i2, list);
    }

    public static void c(List list, List list2) {
        for (int i2 = 0; i2 < list2.size() && i2 < list.size(); i2++) {
            Integer num = (Integer) list2.get(i2);
            if (num.intValue() >= 0 && num.intValue() <= 100) {
                ((YMKPrimitiveData.MakeupColor) list.get(i2)).f40791e = num.intValue();
            }
        }
    }
}
