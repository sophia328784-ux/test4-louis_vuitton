package com.google.android.play.core.integrity;

import android.os.Bundle;
import android.os.ResultReceiver;

/* JADX INFO: loaded from: classes2.dex */
final class ar extends ResultReceiver {
    @Override // android.os.ResultReceiver
    public final void onReceiveResult(int i2, Bundle bundle) {
        if (i2 == 1 || i2 == 2 || i2 == 3) {
            throw null;
        }
    }
}
