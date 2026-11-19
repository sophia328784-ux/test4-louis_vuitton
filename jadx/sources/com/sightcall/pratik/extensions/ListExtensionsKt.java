package com.sightcall.pratik.extensions;

import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\u001a\u001c\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0001¨\u0006\u0003"}, d2 = {"inverted", "", "T", "pratik_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class ListExtensionsKt {
    public static final <T> List<T> inverted(List<? extends T> list) {
        list.getClass();
        ArrayList arrayList = new ArrayList();
        for (int iF = CollectionsKt.F(list); -1 < iF; iF--) {
            arrayList.add(list.get(iF));
        }
        return arrayList;
    }
}
