package com.dynatrace.android.agent;

import java.util.Collection;
import java.util.Vector;

/* JADX INFO: loaded from: classes2.dex */
public final class ActionThreadLocal {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ThreadLocal f27245a;

    /* JADX INFO: renamed from: com.dynatrace.android.agent.ActionThreadLocal$1, reason: invalid class name */
    public class AnonymousClass1 extends ThreadLocal<Vector<DTXActionImpl>> {
        @Override // java.lang.ThreadLocal
        public final Vector<DTXActionImpl> initialValue() {
            return new Vector<>();
        }
    }

    static {
        boolean z = Global.f27307a;
        f27245a = new AnonymousClass1();
    }

    public static final synchronized void a() {
        try {
            Vector vector = new Vector((Collection) f27245a.get());
            for (int i2 = 0; i2 < vector.size(); i2++) {
                try {
                    ThreadLocal threadLocal = f27245a;
                    DTXActionImpl dTXActionImpl = (DTXActionImpl) ((Vector) threadLocal.get()).get(i2);
                    if (dTXActionImpl != null && dTXActionImpl.f27295e) {
                        ((Vector) threadLocal.get()).remove(dTXActionImpl);
                    }
                } catch (ArrayIndexOutOfBoundsException unused) {
                }
            }
            vector.clear();
        } catch (Throwable th) {
            throw th;
        }
    }
}
