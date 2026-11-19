package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.ContextWrapper;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public class LifecycleActivity {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Activity f29035a;

    public LifecycleActivity(Activity activity) {
        Preconditions.i(activity, "Activity must not be null");
        this.f29035a = activity;
    }

    @Deprecated
    public LifecycleActivity(ContextWrapper contextWrapper) {
        throw new UnsupportedOperationException();
    }
}
