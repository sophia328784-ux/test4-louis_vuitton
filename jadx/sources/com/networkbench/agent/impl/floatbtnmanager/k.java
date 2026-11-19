package com.networkbench.agent.impl.floatbtnmanager;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class k implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.networkbench.agent.impl.c.e f37114a = com.networkbench.agent.impl.c.f.a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List<FloatingViewItem> f37115b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private WeakReference<Activity> f37116c;

    @Override // com.networkbench.agent.impl.floatbtnmanager.d
    public void a(WeakReference<Activity> weakReference) {
        if (this.f37115b != null) {
            this.f37115b = null;
        }
        this.f37115b = i.a(weakReference.get(), this);
        this.f37116c = weakReference;
        c();
    }

    public List<FloatingViewItem> b() {
        return this.f37115b;
    }

    public void c() {
        View decorView = this.f37116c.get().getWindow().getDecorView();
        for (FloatingViewItem floatingViewItem : this.f37115b) {
            if (decorView instanceof FrameLayout) {
                ((FrameLayout) decorView).addView(floatingViewItem, new ViewGroup.LayoutParams(-1, -1));
            }
            floatingViewItem.h();
        }
    }

    public void d() {
        View decorView = this.f37116c.get().getWindow().getDecorView();
        for (FloatingViewItem floatingViewItem : this.f37115b) {
            floatingViewItem.i();
            if (decorView instanceof FrameLayout) {
                ((FrameLayout) decorView).removeView(floatingViewItem);
            }
        }
    }

    @Override // com.networkbench.agent.impl.floatbtnmanager.d
    public void a() {
        d();
    }
}
