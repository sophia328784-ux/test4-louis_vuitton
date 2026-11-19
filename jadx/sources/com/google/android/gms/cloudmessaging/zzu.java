package com.google.android.gms.cloudmessaging;

import android.os.Bundle;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;

/* JADX INFO: loaded from: classes2.dex */
final class zzu extends zzs {
    @Override // com.google.android.gms.cloudmessaging.zzs
    public final boolean a() {
        return false;
    }

    @Override // com.google.android.gms.cloudmessaging.zzs
    public final void b(Bundle bundle) {
        Bundle bundle2 = bundle.getBundle(DbParams.KEY_DATA);
        if (bundle2 == null) {
            bundle2 = Bundle.EMPTY;
        }
        c(bundle2);
    }
}
