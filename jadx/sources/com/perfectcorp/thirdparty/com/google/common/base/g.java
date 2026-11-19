package com.perfectcorp.thirdparty.com.google.common.base;

import java.util.logging.Logger;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes3.dex */
public abstract class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f42098a = 0;

    public static final class a {
        public static boolean a(Object obj, Object obj2) {
            if (obj != obj2) {
                return obj != null && obj.equals(obj2);
            }
            return true;
        }
    }

    static {
        Logger.getLogger(g.class.getName());
    }
}
