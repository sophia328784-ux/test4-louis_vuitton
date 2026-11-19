package com.perfectcorp.thirdparty.com.google.common.collect;

import com.perfectcorp.thirdparty.com.google.common.base.Preconditions;
import defpackage.b21;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
public abstract class b<T> extends by<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f42260b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f42261c;

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final int f42262a = 1;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final int f42263b = 2;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final int f42264c = 3;
        public static final int d = 4;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final /* synthetic */ int[] f42265e = {1, 2, 3, 4};

        public static void a() {
            f42265e.clone();
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        Object next;
        int i2 = this.f42260b;
        int i3 = a.d;
        Preconditions.i(i2 != i3);
        int i4 = c.f42296a[this.f42260b - 1];
        if (i4 != 1) {
            if (i4 != 2) {
                this.f42260b = i3;
                aw awVar = (aw) this;
                Iterator it = awVar.d;
                do {
                    if (!it.hasNext()) {
                        awVar.f42260b = a.f42264c;
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (!awVar.f42254e.apply(next));
                this.f42261c = next;
                if (this.f42260b != a.f42264c) {
                    this.f42260b = a.f42262a;
                }
            }
            return true;
        }
        return false;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            b21.x();
            return null;
        }
        this.f42260b = a.f42263b;
        Object obj = this.f42261c;
        this.f42261c = null;
        return obj;
    }
}
