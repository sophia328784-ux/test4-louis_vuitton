package com.perfectcorp.thirdparty.com.google.common.collect;

import com.perfectcorp.thirdparty.com.google.common.base.Function;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Ordering<T> implements Comparator<T> {

    public static class a extends ClassCastException {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Object f42220b;
    }

    public static Ordering a(ArrayList arrayList) {
        ImmutableMap.Builder builder = new ImmutableMap.Builder(arrayList.size());
        Iterator it = arrayList.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            builder.b(it.next(), Integer.valueOf(i2));
            i2++;
        }
        ImmutableMap immutableMapA = builder.a();
        y yVar = new y();
        yVar.f42354b = immutableMapA;
        return yVar;
    }

    public final Ordering b(Function function) {
        p pVar = new p();
        function.getClass();
        pVar.f42322b = function;
        pVar.f42323c = this;
        return pVar;
    }
}
