package com.perfectcorp.thirdparty.io.reactivex.internal.functions;

import defpackage.cj;
import defpackage.md;
import defpackage.r81;

/* JADX INFO: loaded from: classes3.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final com.perfectcorp.thirdparty.io.reactivex.functions.a f42615a = new C0213a();

    /* JADX INFO: renamed from: com.perfectcorp.thirdparty.io.reactivex.internal.functions.a$a, reason: collision with other inner class name */
    public static final class C0213a implements com.perfectcorp.thirdparty.io.reactivex.functions.a<Object, Object> {
        @Override // com.perfectcorp.thirdparty.io.reactivex.functions.a
        public final boolean i(Object obj, Object obj2) {
            if (obj != obj2) {
                return obj != null && obj.equals(obj2);
            }
            return true;
        }
    }

    public static void a(int i2, String str) {
        if (i2 > 0) {
            return;
        }
        md.n(cj.e(i2, str, " > 0 required but it was "));
    }

    public static void b(Object obj, String str) {
        if (obj != null) {
            return;
        }
        r81.d(str);
    }
}
