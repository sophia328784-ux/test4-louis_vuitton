package com.google.android.gms.common.internal;

import defpackage.d21;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Objects {

    public static final class ToStringHelper {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ArrayList f29197a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Object f29198b;

        public /* synthetic */ ToStringHelper(Object obj) {
            Preconditions.h(obj);
            this.f29198b = obj;
            this.f29197a = new ArrayList();
        }

        public final void a(Object obj, String str) {
            int length = str.length();
            String strValueOf = String.valueOf(obj);
            this.f29197a.add(d21.p(new StringBuilder(length + 1 + strValueOf.length()), str, "=", strValueOf));
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder(100);
            sb.append(this.f29198b.getClass().getSimpleName());
            sb.append('{');
            ArrayList arrayList = this.f29197a;
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                sb.append((String) arrayList.get(i2));
                if (i2 < size - 1) {
                    sb.append(", ");
                }
            }
            sb.append('}');
            return sb.toString();
        }
    }

    public static boolean a(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }
}
