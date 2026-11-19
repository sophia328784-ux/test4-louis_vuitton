package com.google.ar.core;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.os.RemoteException;
import com.networkbench.agent.impl.harvest.HarvestConfiguration;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
final class ag implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Activity f33374a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ w f33375b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ y f33376c;

    public ag(y yVar, Activity activity, w wVar) {
        this.f33374a = activity;
        this.f33375b = wVar;
        Objects.requireNonNull(yVar);
        this.f33376c = yVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            AtomicBoolean atomicBoolean = new AtomicBoolean(false);
            com.google.ar.core.dependencies.h hVar = this.f33376c.f33451c;
            Activity activity = this.f33374a;
            String str = activity.getApplicationInfo().packageName;
            Bundle bundle = new Bundle();
            bundle.putCharSequence("package.name", "com.google.ar.core");
            List listSingletonList = Collections.singletonList(bundle);
            Bundle bundle2 = new Bundle();
            w wVar = this.f33375b;
            hVar.d(str, listSingletonList, bundle2, new ae(this, atomicBoolean, activity, wVar));
            new Handler().postDelayed(new af(this, atomicBoolean, activity, wVar), HarvestConfiguration.SLOW_USER_ACTION_THRESHOLD);
        } catch (RemoteException unused) {
            y yVar = this.f33376c;
            Activity activity2 = this.f33374a;
            w wVar2 = this.f33375b;
            yVar.getClass();
            y.e(activity2, wVar2);
        }
    }
}
