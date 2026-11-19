package com.networkbench.agent.impl.instrumentation.io;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f37387a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ArrayList<NBSStreamCompleteListener> f37388b = new ArrayList<>();

    private List<NBSStreamCompleteListener> c() {
        ArrayList arrayList;
        synchronized (this.f37388b) {
            arrayList = new ArrayList(this.f37388b);
            this.f37388b.clear();
        }
        return arrayList;
    }

    public void a(NBSStreamCompleteEvent nBSStreamCompleteEvent) {
        if (b()) {
            return;
        }
        List<NBSStreamCompleteListener> listC = c();
        if (listC != null || listC.size() > 0) {
            Iterator<NBSStreamCompleteListener> it = listC.iterator();
            while (it.hasNext()) {
                it.next().streamComplete(nBSStreamCompleteEvent);
            }
        }
    }

    public void b(NBSStreamCompleteEvent nBSStreamCompleteEvent) {
        if (b()) {
            return;
        }
        List<NBSStreamCompleteListener> listC = c();
        if (listC != null || listC.size() > 0) {
            Iterator<NBSStreamCompleteListener> it = listC.iterator();
            while (it.hasNext()) {
                it.next().streamError(nBSStreamCompleteEvent);
            }
        }
    }

    public void a(NBSStreamCompleteListener nBSStreamCompleteListener) {
        ArrayList<NBSStreamCompleteListener> arrayList = this.f37388b;
        if (arrayList == null) {
            return;
        }
        synchronized (arrayList) {
            this.f37388b.add(nBSStreamCompleteListener);
        }
    }

    public void b(NBSStreamCompleteListener nBSStreamCompleteListener) {
        ArrayList<NBSStreamCompleteListener> arrayList = this.f37388b;
        if (arrayList == null) {
            return;
        }
        synchronized (arrayList) {
            this.f37388b.remove(nBSStreamCompleteListener);
        }
    }

    private boolean b() {
        boolean zA;
        synchronized (this) {
            try {
                zA = a();
                if (!zA) {
                    this.f37387a = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zA;
    }

    public boolean a() {
        boolean z;
        synchronized (this) {
            z = this.f37387a;
        }
        return z;
    }
}
