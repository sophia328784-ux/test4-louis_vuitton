package com.appsflyer.internal;

import android.content.SharedPreferences;
import com.appsflyer.AFLogger;
import com.appsflyer.sdk_base.logger.AFLoggerBase;
import com.appsflyer.sdk_base.logger.LogTag;
import defpackage.tr;
import kotlin.Lazy;
import kotlin.LazyKt;

/* JADX INFO: loaded from: classes.dex */
public final class AFc1gSDK implements AFc1kSDK {
    private final AFc1dSDK<SharedPreferences> d;
    private final Lazy registerClient;

    public AFc1gSDK(AFc1dSDK<SharedPreferences> aFc1dSDK) {
        aFc1dSDK.getClass();
        this.d = aFc1dSDK;
        this.registerClient = LazyKt.b(new d(this, 1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SharedPreferences q_(AFc1gSDK aFc1gSDK) {
        return (SharedPreferences) aFc1gSDK.d.AFKeystoreWrapper.mo47invoke();
    }

    @Override // com.appsflyer.internal.AFc1kSDK
    public final boolean AFKeystoreWrapper(String str) {
        try {
            return ((SharedPreferences) this.registerClient.getF71699b()).getBoolean(str, false);
        } catch (ClassCastException e2) {
            AFLoggerBase.e$default(AFLogger.INSTANCE, LogTag.PREFERENCES, tr.g("Unexpected data type found for key ", str), e2, false, false, false, false, 120, null);
            return false;
        }
    }

    @Override // com.appsflyer.internal.AFc1kSDK
    public final int AFLogger(String str, int i2) {
        try {
            return ((SharedPreferences) this.registerClient.getF71699b()).getInt(str, i2);
        } catch (ClassCastException e2) {
            AFLoggerBase.e$default(AFLogger.INSTANCE, LogTag.PREFERENCES, tr.g("Unexpected data type found for key ", str), e2, false, false, false, false, 120, null);
            return i2;
        }
    }

    @Override // com.appsflyer.internal.AFc1kSDK
    public final String d(String str) {
        try {
            return ((SharedPreferences) this.registerClient.getF71699b()).getString(str, null);
        } catch (ClassCastException e2) {
            AFLoggerBase.e$default(AFLogger.INSTANCE, LogTag.PREFERENCES, tr.g("Unexpected data type found for key ", str), e2, false, false, false, false, 120, null);
            return null;
        }
    }

    @Override // com.appsflyer.internal.AFc1kSDK
    public final SharedPreferences p_() {
        return (SharedPreferences) this.registerClient.getF71699b();
    }

    @Override // com.appsflyer.internal.AFc1kSDK
    public final void registerClient(String str, boolean z) {
        ((SharedPreferences) this.registerClient.getF71699b()).edit().putBoolean(str, z).apply();
    }

    @Override // com.appsflyer.internal.AFc1kSDK
    public final long unregisterClient(String str, long j2) {
        try {
            return ((SharedPreferences) this.registerClient.getF71699b()).getLong(str, j2);
        } catch (ClassCastException e2) {
            AFLoggerBase.e$default(AFLogger.INSTANCE, LogTag.PREFERENCES, tr.g("Unexpected data type found for key ", str), e2, false, false, false, false, 120, null);
            return j2;
        }
    }

    @Override // com.appsflyer.internal.AFc1kSDK
    public final boolean registerClient(String str) {
        return ((SharedPreferences) this.registerClient.getF71699b()).contains(str);
    }

    @Override // com.appsflyer.internal.AFc1kSDK
    public final void AFLogger(String str, long j2) {
        ((SharedPreferences) this.registerClient.getF71699b()).edit().putLong(str, j2).apply();
    }

    @Override // com.appsflyer.internal.AFc1kSDK
    public final void d(String str, String str2) {
        ((SharedPreferences) this.registerClient.getF71699b()).edit().putString(str, str2).apply();
    }

    @Override // com.appsflyer.internal.AFc1kSDK
    public final void AFLogger(String str) {
        ((SharedPreferences) this.registerClient.getF71699b()).edit().remove(str).apply();
    }

    @Override // com.appsflyer.internal.AFc1kSDK
    public final void d(String str, int i2) {
        ((SharedPreferences) this.registerClient.getF71699b()).edit().putInt(str, i2).apply();
    }
}
