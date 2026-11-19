package com.google.android.gms.cloudmessaging;

import android.os.Bundle;

/* JADX INFO: loaded from: classes2.dex */
final class zzr extends zzs {
    @Override // com.google.android.gms.cloudmessaging.zzs
    public final boolean a() {
        return true;
    }

    @Override // com.google.android.gms.cloudmessaging.zzs
    public final void b(Bundle bundle) {
        if (bundle.getBoolean("ack", false)) {
            c(null);
        } else {
            d(new zzt("Invalid response to one way request", null));
        }
    }
}
