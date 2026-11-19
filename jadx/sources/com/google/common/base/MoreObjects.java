package com.google.common.base;

import defpackage.r81;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public abstract class MoreObjects {

    public static final class ToStringHelper {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f33480a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ValueHolder f33481b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public ValueHolder f33482c;

        public static class ValueHolder {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public Object f33483a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public ValueHolder f33484b;
        }

        public ToStringHelper(String str) {
            ValueHolder valueHolder = new ValueHolder();
            this.f33481b = valueHolder;
            this.f33482c = valueHolder;
            this.f33480a = str;
        }

        public final void a(Object obj) {
            ValueHolder valueHolder = new ValueHolder();
            this.f33482c.f33484b = valueHolder;
            this.f33482c = valueHolder;
            valueHolder.f33483a = obj;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder(32);
            sb.append(this.f33480a);
            sb.append('{');
            ValueHolder valueHolder = this.f33481b.f33484b;
            String str = "";
            while (valueHolder != null) {
                Object obj = valueHolder.f33483a;
                sb.append(str);
                if (obj == null || !obj.getClass().isArray()) {
                    sb.append(obj);
                } else {
                    String strDeepToString = Arrays.deepToString(new Object[]{obj});
                    sb.append((CharSequence) strDeepToString, 1, strDeepToString.length() - 1);
                }
                valueHolder = valueHolder.f33484b;
                str = ", ";
            }
            sb.append('}');
            return sb.toString();
        }
    }

    public static Object a(Object obj, Object obj2) {
        if (obj != null) {
            return obj;
        }
        if (obj2 != null) {
            return obj2;
        }
        r81.d("Both parameters are null");
        return null;
    }
}
