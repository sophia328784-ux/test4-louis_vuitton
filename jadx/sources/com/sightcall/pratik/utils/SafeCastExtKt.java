package com.sightcall.pratik.utils;

import defpackage.o60;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\b\n\u0002\u0010\u0000\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002¨\u0006\u0003"}, d2 = {"safeCastToInt", "", "", "pratik_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class SafeCastExtKt {
    public static final int safeCastToInt(Object obj) {
        obj.getClass();
        if (obj instanceof String) {
            return Integer.parseInt((String) obj);
        }
        if (obj instanceof Long) {
            return (int) ((Number) obj).longValue();
        }
        if (obj instanceof Double) {
            return (int) ((Number) obj).doubleValue();
        }
        if (obj instanceof Float) {
            return (int) ((Number) obj).floatValue();
        }
        if (obj instanceof Integer) {
            return ((Number) obj).intValue();
        }
        throw new ClassCastException(o60.n("can't cast ", obj, " to Int"));
    }
}
