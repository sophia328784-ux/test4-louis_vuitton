package com.bumptech.glide.manager;

import com.bumptech.glide.request.target.Target;
import com.bumptech.glide.util.Util;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes2.dex */
public final class TargetTracker implements LifecycleListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Set f24909b = Collections.newSetFromMap(new WeakHashMap());

    @Override // com.bumptech.glide.manager.LifecycleListener
    public final void onDestroy() {
        Iterator it = Util.e(this.f24909b).iterator();
        while (it.hasNext()) {
            ((Target) it.next()).onDestroy();
        }
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public final void onStart() {
        Iterator it = Util.e(this.f24909b).iterator();
        while (it.hasNext()) {
            ((Target) it.next()).onStart();
        }
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public final void onStop() {
        Iterator it = Util.e(this.f24909b).iterator();
        while (it.hasNext()) {
            ((Target) it.next()).onStop();
        }
    }
}
