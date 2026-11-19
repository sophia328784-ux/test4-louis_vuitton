package com.google.android.gms.common.api.internal;

import android.content.Intent;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes2.dex */
public final class zzd extends Fragment implements LifecycleFragment {
    public static final WeakHashMap B = new WeakHashMap();
    public final zzc A = new zzc();

    @Override // androidx.fragment.app.Fragment
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        Iterator it = this.A.f29133a.values().iterator();
        while (it.hasNext()) {
            ((LifecycleCallback) it.next()).getClass();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onActivityResult(int i2, int i3, Intent intent) {
        super.onActivityResult(i2, i3, intent);
        this.A.c(i2, i3, intent);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.A.b(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        zzc zzcVar = this.A;
        zzcVar.f29134b = 5;
        Iterator it = zzcVar.f29133a.values().iterator();
        while (it.hasNext()) {
            ((LifecycleCallback) it.next()).getClass();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        zzc zzcVar = this.A;
        zzcVar.f29134b = 3;
        Iterator it = zzcVar.f29133a.values().iterator();
        while (it.hasNext()) {
            ((zaab) ((LifecycleCallback) it.next())).e();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        this.A.d(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onStart() {
        super.onStart();
        zzc zzcVar = this.A;
        zzcVar.f29134b = 2;
        Iterator it = zzcVar.f29133a.values().iterator();
        while (it.hasNext()) {
            zaab zaabVar = (zaab) ((LifecycleCallback) it.next());
            zaabVar.f29123c = true;
            zaabVar.e();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onStop() {
        super.onStop();
        zzc zzcVar = this.A;
        zzcVar.f29134b = 4;
        Iterator it = zzcVar.f29133a.values().iterator();
        while (it.hasNext()) {
            ((LifecycleCallback) it.next()).c();
        }
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleFragment
    public final LifecycleCallback w() {
        return (LifecycleCallback) zaab.class.cast(this.A.f29133a.get("ConnectionlessLifecycleHelper"));
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleFragment
    public final void z(zaab zaabVar) {
        this.A.a(zaabVar);
    }
}
