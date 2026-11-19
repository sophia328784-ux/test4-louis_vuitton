package com.google.android.gms.common.internal;

import android.content.Intent;
import com.google.android.gms.common.api.internal.LifecycleFragment;

/* JADX INFO: loaded from: classes2.dex */
final class zai extends zaj {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Intent f29228b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LifecycleFragment f29229c;

    public zai(Intent intent, LifecycleFragment lifecycleFragment) {
        this.f29228b = intent;
        this.f29229c = lifecycleFragment;
    }

    @Override // com.google.android.gms.common.internal.zaj
    public final void a() {
        Intent intent = this.f29228b;
        if (intent != null) {
            this.f29229c.startActivityForResult(intent, 2);
        }
    }
}
