package com.perfectcorp.thirdparty.com.google.common.base;

import java.io.Serializable;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public abstract class s {

    public static class a<T> implements r<T>, Serializable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Object f42109b;

        @Override // com.perfectcorp.thirdparty.com.google.common.base.r
        public final Object a() {
            return this.f42109b;
        }

        public final boolean equals(Object obj) {
            if (obj instanceof a) {
                return g.a.a(this.f42109b, ((a) obj).f42109b);
            }
            return false;
        }

        public final int hashCode() {
            return Arrays.hashCode(new Object[]{this.f42109b});
        }

        public final String toString() {
            return defpackage.a.n(new StringBuilder("Suppliers.ofInstance("), this.f42109b, ")");
        }
    }

    public static r a(Object obj) {
        a aVar = new a();
        aVar.f42109b = obj;
        return aVar;
    }
}
