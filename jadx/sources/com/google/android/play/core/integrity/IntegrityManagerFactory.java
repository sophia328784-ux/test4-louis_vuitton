package com.google.android.play.core.integrity;

import android.content.Context;

/* JADX INFO: loaded from: classes2.dex */
public class IntegrityManagerFactory {
    public static IntegrityManager create(Context context) {
        s sVar;
        synchronized (z.class) {
            try {
                if (z.f33309a == null) {
                    Context applicationContext = context.getApplicationContext();
                    if (applicationContext != null) {
                        context = applicationContext;
                    }
                    z.f33309a = new s(context);
                }
                sVar = z.f33309a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return (IntegrityManager) sVar.f33308a.a();
    }
}
