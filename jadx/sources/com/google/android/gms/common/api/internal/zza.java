package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.app.Fragment;
import android.content.Intent;
import android.os.Bundle;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes2.dex */
public final class zza extends Fragment implements LifecycleFragment {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final WeakHashMap f29131c = new WeakHashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final zzc f29132b = new zzc();

    @Override // com.google.android.gms.common.api.internal.LifecycleFragment
    public final Activity F() {
        return getActivity();
    }

    @Override // android.app.Fragment
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        Iterator it = this.f29132b.f29133a.values().iterator();
        while (it.hasNext()) {
            ((LifecycleCallback) it.next()).getClass();
        }
    }

    @Override // android.app.Fragment
    public final void onActivityResult(int i2, int i3, Intent intent) {
        super.onActivityResult(i2, i3, intent);
        this.f29132b.c(i2, i3, intent);
    }

    @Override // android.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f29132b.b(bundle);
    }

    @Override // android.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        zzc zzcVar = this.f29132b;
        zzcVar.f29134b = 5;
        Iterator it = zzcVar.f29133a.values().iterator();
        while (it.hasNext()) {
            ((LifecycleCallback) it.next()).getClass();
        }
    }

    @Override // android.app.Fragment
    public final void onResume() {
        super.onResume();
        zzc zzcVar = this.f29132b;
        zzcVar.f29134b = 3;
        Iterator it = zzcVar.f29133a.values().iterator();
        while (it.hasNext()) {
            ((zaab) ((LifecycleCallback) it.next())).e();
        }
    }

    @Override // android.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        this.f29132b.d(bundle);
    }

    @Override // android.app.Fragment
    public final void onStart() {
        super.onStart();
        zzc zzcVar = this.f29132b;
        zzcVar.f29134b = 2;
        Iterator it = zzcVar.f29133a.values().iterator();
        while (it.hasNext()) {
            zaab zaabVar = (zaab) ((LifecycleCallback) it.next());
            zaabVar.f29123c = true;
            zaabVar.e();
        }
    }

    @Override // android.app.Fragment
    public final void onStop() {
        super.onStop();
        zzc zzcVar = this.f29132b;
        zzcVar.f29134b = 4;
        Iterator it = zzcVar.f29133a.values().iterator();
        while (it.hasNext()) {
            ((LifecycleCallback) it.next()).c();
        }
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleFragment
    public final LifecycleCallback w() {
        return (LifecycleCallback) zaab.class.cast(this.f29132b.f29133a.get("ConnectionlessLifecycleHelper"));
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleFragment
    public final void z(zaab zaabVar) {
        this.f29132b.a(zaabVar);
    }
}
