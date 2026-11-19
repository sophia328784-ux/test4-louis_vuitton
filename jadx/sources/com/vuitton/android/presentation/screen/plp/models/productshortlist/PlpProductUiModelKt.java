package com.vuitton.android.presentation.screen.plp.models.productshortlist;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PlpProductUiModelKt {
    public static final String a(List list) {
        Object next;
        list.getClass();
        List list2 = list;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
        Iterator it = list2.iterator();
        while (true) {
            String str = null;
            if (!it.hasNext()) {
                break;
            }
            ProductShortPriceUiModel productShortPriceUiModel = ((PlpProductUiModel) it.next()).d;
            if (productShortPriceUiModel != null) {
                str = productShortPriceUiModel.d;
            }
            arrayList.add(str);
        }
        Iterator it2 = arrayList.iterator();
        do {
            if (!it2.hasNext()) {
                next = null;
                break;
            }
            next = it2.next();
        } while (((String) next) == null);
        String str2 = (String) next;
        if (str2 != null) {
            return str2;
        }
        return null;
    }
}
