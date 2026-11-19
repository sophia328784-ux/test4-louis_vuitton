package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public abstract class LifecycleCallback {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LifecycleFragment f29036b;

    public LifecycleCallback(LifecycleFragment lifecycleFragment) {
        this.f29036b = lifecycleFragment;
    }

    public final Activity a() {
        Activity activityF = this.f29036b.F();
        Preconditions.h(activityF);
        return activityF;
    }

    public abstract void b(Bundle bundle);

    public abstract void c();
}
