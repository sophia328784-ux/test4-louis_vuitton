package com.google.ar.core;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import com.google.ar.core.exceptions.FatalException;
import defpackage.z81;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
final class ae extends com.google.ar.core.dependencies.i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AtomicBoolean f33367a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Activity f33368b;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ ag f33369j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ w f33370k;

    public ae(ag agVar, AtomicBoolean atomicBoolean, Activity activity, w wVar) {
        this.f33367a = atomicBoolean;
        this.f33370k = wVar;
        this.f33368b = activity;
        this.f33369j = agVar;
    }

    @Override // com.google.ar.core.dependencies.j
    public final void b(Bundle bundle) {
        if (this.f33367a.getAndSet(true)) {
        }
        int i2 = bundle.getInt("error.code", -100);
        int i3 = bundle.getInt("install.status", 0);
        w wVar = this.f33370k;
        if (i3 == 4) {
            wVar.a(x.f33448c);
            return;
        }
        Activity activity = this.f33368b;
        ag agVar = this.f33369j;
        if (i2 != 0) {
            new StringBuilder(String.valueOf(i2).length() + 40);
            agVar.f33376c.getClass();
            y.e(activity, wVar);
            return;
        }
        if (bundle.containsKey("resolution.intent")) {
            agVar.f33376c.getClass();
            PendingIntent pendingIntent = (PendingIntent) bundle.getParcelable("resolution.intent");
            if (pendingIntent == null) {
                wVar.b(new FatalException("Installation intent failed to unparcel."));
                return;
            }
            try {
                activity.startIntentSenderForResult(pendingIntent.getIntentSender(), 1234, new Intent(activity, activity.getClass()), 0, 0, 0);
                return;
            } catch (IntentSender.SendIntentException e2) {
                wVar.b(new FatalException("Installation Intent failed", e2));
                return;
            }
        }
        if (i3 == 10) {
            wVar.b(new FatalException("Unexpected REQUIRES_UI_INTENT install status without an intent."));
            return;
        }
        switch (i3) {
            case 1:
            case 2:
            case 3:
                wVar.a(x.f33446a);
                break;
            case 4:
                wVar.a(x.f33448c);
                break;
            case 5:
                wVar.b(new FatalException("Unexpected FAILED install status without error."));
                break;
            case 6:
                wVar.a(x.f33447b);
                break;
            default:
                wVar.b(new FatalException(z81.f(String.valueOf(i3).length() + (byte) 27, i3, "Unexpected install status: ")));
                break;
        }
    }

    @Override // com.google.ar.core.dependencies.j
    public final void c(Bundle bundle) {
    }
}
