package com.google.android.gms.common.internal;

import android.content.Intent;
import com.google.android.gms.common.api.GoogleApiActivity;

/* JADX INFO: loaded from: classes2.dex */
final class zag extends zaj {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Intent f29226b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ GoogleApiActivity f29227c;

    public zag(Intent intent, GoogleApiActivity googleApiActivity) {
        this.f29226b = intent;
        this.f29227c = googleApiActivity;
    }

    @Override // com.google.android.gms.common.internal.zaj
    public final void a() {
        Intent intent = this.f29226b;
        if (intent != null) {
            this.f29227c.startActivityForResult(intent, 2);
        }
    }
}
