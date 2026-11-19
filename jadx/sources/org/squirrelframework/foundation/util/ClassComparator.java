package org.squirrelframework.foundation.util;

import defpackage.md;
import java.io.Serializable;
import java.util.Comparator;

/* JADX INFO: loaded from: classes5.dex */
public class ClassComparator<T> implements Comparator<T>, Serializable {
    private static final long serialVersionUID = 7351750287378530968L;

    @Override // java.util.Comparator
    public int compare(T t, T t2) {
        Class<?> cls = t.getClass();
        Class<?> cls2 = t2.getClass();
        if (cls.equals(cls2)) {
            return 0;
        }
        if (cls.isAssignableFrom(cls2)) {
            return -1;
        }
        if (cls2.isAssignableFrom(cls2)) {
            return 1;
        }
        md.n("The classes share no relation");
        return 0;
    }

    public boolean isComparable(Class<?> cls, Class<?> cls2) {
        return cls.isAssignableFrom(cls2) || cls2.isAssignableFrom(cls);
    }
}
