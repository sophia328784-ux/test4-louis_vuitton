package com.perfectcorp.thirdparty.com.google.common.base;

import defpackage.r81;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public abstract class MoreObjects {

    public static final class ToStringHelper {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f42070a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final a f42071b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public a f42072c;

        public static final class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public String f42073a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public Object f42074b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public a f42075c;
        }

        public ToStringHelper(String str) {
            a aVar = new a();
            this.f42071b = aVar;
            this.f42072c = aVar;
            this.f42070a = str;
        }

        public final void a(Object obj) {
            a aVar = new a();
            this.f42072c.f42075c = aVar;
            this.f42072c = aVar;
            aVar.f42074b = obj;
        }

        public final void b(String str, Object obj) {
            a aVar = new a();
            this.f42072c.f42075c = aVar;
            this.f42072c = aVar;
            aVar.f42074b = obj;
            aVar.f42073a = str;
        }

        public final void c(String str, boolean z) {
            b(str, String.valueOf(z));
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder(32);
            sb.append(this.f42070a);
            sb.append('{');
            a aVar = this.f42071b.f42075c;
            String str = "";
            while (aVar != null) {
                Object obj = aVar.f42074b;
                sb.append(str);
                String str2 = aVar.f42073a;
                if (str2 != null) {
                    sb.append(str2);
                    sb.append('=');
                }
                if (obj == null || !obj.getClass().isArray()) {
                    sb.append(obj);
                } else {
                    String strDeepToString = Arrays.deepToString(new Object[]{obj});
                    sb.append((CharSequence) strDeepToString, 1, strDeepToString.length() - 1);
                }
                aVar = aVar.f42075c;
                str = ", ";
            }
            sb.append('}');
            return sb.toString();
        }
    }

    public static Object a(Object obj) {
        if (obj != null) {
            return obj;
        }
        r81.d("Both parameters are null");
        return null;
    }
}
