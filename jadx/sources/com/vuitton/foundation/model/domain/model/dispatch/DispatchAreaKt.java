package com.vuitton.foundation.model.domain.model.dispatch;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"domain"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class DispatchAreaKt {
    public static final InAppDispatch a(String str, List list) {
        Object next;
        list.getClass();
        str.getClass();
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            CollectionsKt.j(arrayList, ((DispatchArea) it.next()).d);
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            next = it2.next();
            String str2 = ((InAppDispatch) next).f67476a;
            InAppDispatch.Id.Companion companion = InAppDispatch.Id.f67485b;
            if (str2.equals(str)) {
                return (InAppDispatch) next;
            }
        }
        next = null;
        return (InAppDispatch) next;
    }
}
