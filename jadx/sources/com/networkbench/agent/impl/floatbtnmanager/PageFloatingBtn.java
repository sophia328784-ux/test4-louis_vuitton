package com.networkbench.agent.impl.floatbtnmanager;

import android.app.Activity;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.n00;
import defpackage.o60;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public class PageFloatingBtn extends FloatingViewItem {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static Bitmap f37032a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f37033b = "PageFloatingBtn";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static com.networkbench.agent.impl.data.a.a f37034c = null;
    private static final int p = 1193048;
    private static final com.networkbench.agent.impl.c.e r = com.networkbench.agent.impl.c.f.a();
    private SubmitPageVisualFragment d;
    private int q;

    public PageFloatingBtn(Activity activity, k kVar) {
        super(activity, kVar);
        setOnClickListener(new a(this));
        setId(p);
        StringBuilder sb = new StringBuilder();
        sb.append(e.a(activity));
        this.f37030k = n00.r(File.separator, ConfigurationName.PAGE_PNG, sb);
        this.m = "页面";
    }

    private void d() {
        com.networkbench.agent.impl.data.d.j.c();
        Bitmap bitmapA = o.a((View[]) null);
        f37032a = bitmapA;
        if (bitmapA == null) {
            return;
        }
        final FragmentManager fragmentManager = this.f37025e.getFragmentManager();
        FragmentTransaction fragmentTransactionBeginTransaction = fragmentManager.beginTransaction();
        SubmitPageVisualFragment submitPageVisualFragment = this.d;
        if (submitPageVisualFragment != null) {
            fragmentTransactionBeginTransaction.remove(submitPageVisualFragment);
        }
        this.d = new SubmitPageVisualFragment();
        if (f37034c != null) {
            Bundle bundle = new Bundle();
            bundle.putSerializable(ActionFloatingViewItem.f37019b, f37034c);
            this.d.setArguments(bundle);
        }
        this.q = fragmentManager.getBackStackEntryCount();
        fragmentManager.addOnBackStackChangedListener(new FragmentManager.OnBackStackChangedListener() { // from class: com.networkbench.agent.impl.floatbtnmanager.PageFloatingBtn.1
            @Override // android.app.FragmentManager.OnBackStackChangedListener
            public void onBackStackChanged() {
                if (PageFloatingBtn.this.q >= fragmentManager.getBackStackEntryCount()) {
                    PageFloatingBtn.this.b();
                }
            }
        });
        try {
            fragmentTransactionBeginTransaction.replace(p, this.d).addToBackStack(null).commitAllowingStateLoss();
        } catch (Throwable th) {
            o60.C(th, new StringBuilder("action floating view item add fragment failed:"), r);
        }
    }

    public static void setActionFeatures(com.networkbench.agent.impl.data.a.a aVar) {
        f37034c = aVar;
    }

    @Override // com.networkbench.agent.impl.floatbtnmanager.FloatingViewItem
    public void a(MotionEvent motionEvent, int i2, int i3) {
        throw new UnsupportedOperationException("OverviewFloatBtn not support this operation");
    }

    @Override // com.networkbench.agent.impl.floatbtnmanager.FloatingViewItem
    public void b() {
        for (FloatingViewItem floatingViewItem : this.f37028i.b()) {
            if (floatingViewItem instanceof OverviewFloatBtn) {
                floatingViewItem.setVisible(0);
                floatingViewItem.l = false;
                StringBuilder sb = new StringBuilder();
                sb.append(e.a(this.f37025e));
                floatingViewItem.f37030k = n00.r(File.separator, ConfigurationName.WINDOW_PNG, sb);
                floatingViewItem.setViewImage();
            } else {
                floatingViewItem.setVisible(4);
            }
        }
    }

    @Override // com.networkbench.agent.impl.floatbtnmanager.FloatingViewItem
    public int getPosBeginX() {
        return super.getPosBeginX();
    }

    @Override // com.networkbench.agent.impl.floatbtnmanager.FloatingViewItem
    public int getPosBeginY() {
        return super.getPosBeginY() - 180;
    }

    @Override // com.networkbench.agent.impl.floatbtnmanager.FloatingViewItem
    public void a() {
        g();
        d();
    }
}
