package com.google.ar.core;

import android.app.Activity;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
final class af implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ AtomicBoolean f33371a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ Activity f33372b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ ag f33373c;
    final /* synthetic */ w d;

    public af(ag agVar, AtomicBoolean atomicBoolean, Activity activity, w wVar) {
        this.f33371a = atomicBoolean;
        this.f33372b = activity;
        this.d = wVar;
        Objects.requireNonNull(agVar);
        this.f33373c = agVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f33371a.getAndSet(true)) {
            return;
        }
        ag agVar = this.f33373c;
        Activity activity = this.f33372b;
        w wVar = this.d;
        agVar.f33376c.getClass();
        y.e(activity, wVar);
    }
}
