package com.sensorsdata.analytics.android.sdk.visual.snap;

import android.os.Looper;
import defpackage.v7;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public class UIThreadSet<T> {
    private Set<T> mSet = new HashSet();

    public void add(T t) {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            this.mSet.add(t);
        } else {
            v7.h("Can't add an activity when not on the UI thread");
        }
    }

    public Set<T> getAll() {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            return Collections.unmodifiableSet(this.mSet);
        }
        v7.h("Can't remove an activity when not on the UI thread");
        return null;
    }

    public boolean isEmpty() {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            return this.mSet.isEmpty();
        }
        v7.h("Can't check isEmpty() when not on the UI thread");
        return false;
    }

    public void remove(T t) {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            this.mSet.remove(t);
        } else {
            v7.h("Can't remove an activity when not on the UI thread");
        }
    }
}
