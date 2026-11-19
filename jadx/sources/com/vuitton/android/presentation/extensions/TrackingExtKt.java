package com.vuitton.android.presentation.extensions;

import com.vuitton.foundation.model.domain.model.analytics.AdditionalProperty;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class TrackingExtKt {
    public static final ArrayList a(String str, List list) {
        Object next;
        list.getClass();
        ArrayList arrayList = new ArrayList(list);
        if (str != null) {
            Iterator it = list.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!(((AdditionalProperty) next) instanceof AdditionalProperty.StoreMode));
            if (next == null) {
                arrayList.add(new AdditionalProperty.StoreMode(str, true));
            }
        }
        return arrayList;
    }
}
