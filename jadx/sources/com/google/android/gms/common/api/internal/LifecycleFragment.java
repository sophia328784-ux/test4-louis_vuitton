package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.Intent;

/* JADX INFO: loaded from: classes2.dex */
public interface LifecycleFragment {
    Activity F();

    void startActivityForResult(Intent intent, int i2);

    LifecycleCallback w();

    void z(zaab zaabVar);
}
