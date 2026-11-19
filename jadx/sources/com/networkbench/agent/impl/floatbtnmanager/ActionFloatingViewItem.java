package com.networkbench.agent.impl.floatbtnmanager;

import android.app.Activity;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.drawable.shapes.RectShape;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.networkbench.agent.impl.harvest.ScreenNameManager;
import com.networkbench.agent.impl.util.Logger;
import defpackage.n00;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public class ActionFloatingViewItem extends FloatingViewItem {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f37018a = "activity";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f37019b = "actionFetures";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Bitmap f37020c = null;
    public static final String d = "viewid";
    private static final String p = "ActionFloatingViewItem";
    private static final com.networkbench.agent.impl.c.e v = com.networkbench.agent.impl.c.f.a();
    private static final int w = 1193046;
    private View q;
    private boolean r;
    private View s;
    private WindowManager.LayoutParams t;
    private SubmitFragment u;
    private int x;

    public ActionFloatingViewItem(Activity activity, k kVar) {
        super(activity, kVar);
        this.r = false;
        View view = new View(activity);
        this.s = view;
        view.setBackground(a(2013200384, new RectShape()));
        StringBuilder sb = new StringBuilder();
        sb.append(e.a(activity));
        this.f37030k = n00.r(File.separator, ConfigurationName.HANDLE_ENABLE_NEW_PNG, sb);
        setId(w);
        setOnTouchListener(new b(this));
        setOnClickListener(new a(this));
        this.m = "点选";
    }

    private String m() {
        return ScreenNameManager.getCurrentScreenName();
    }

    @Override // com.networkbench.agent.impl.floatbtnmanager.FloatingViewItem
    public void a(MotionEvent motionEvent, int i2, int i3) {
        setViewXY(i2, i3);
        this.f37026f.b(this.f37027h, this.g);
        View viewA = q.a(this.f37025e.getWindow().getDecorView(), motionEvent);
        if (viewA == null) {
            d();
            this.r = false;
            this.q = null;
            return;
        }
        View view = this.q;
        if (view == null || view != viewA) {
            d();
            Rect rect = new Rect();
            viewA.getGlobalVisibleRect(rect);
            Activity activity = this.f37025e;
            int i4 = rect.left;
            int i5 = rect.top;
            a(activity, i4, i5, rect.right - i4, rect.bottom - i5);
            this.r = true;
            this.q = viewA;
        }
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
    public void c() {
        try {
            View view = this.q;
            if (view == null || !this.r) {
                return;
            }
            Bitmap bitmapA = o.a((View[]) null);
            f37020c = bitmapA;
            if (bitmapA == null) {
                return;
            }
            final FragmentManager fragmentManager = this.f37025e.getFragmentManager();
            FragmentTransaction fragmentTransactionBeginTransaction = fragmentManager.beginTransaction();
            SubmitFragment submitFragment = this.u;
            if (submitFragment != null) {
                fragmentTransactionBeginTransaction.remove(submitFragment);
            }
            this.u = new SubmitFragment();
            Bundle bundle = new Bundle();
            bundle.putString(d, com.networkbench.agent.impl.data.a.h.c(view));
            bundle.putString(f37018a, m());
            bundle.putSerializable(f37019b, new com.networkbench.agent.impl.data.a.a(view));
            this.u.setArguments(bundle);
            this.x = fragmentManager.getBackStackEntryCount();
            fragmentManager.addOnBackStackChangedListener(new FragmentManager.OnBackStackChangedListener() { // from class: com.networkbench.agent.impl.floatbtnmanager.ActionFloatingViewItem.1
                @Override // android.app.FragmentManager.OnBackStackChangedListener
                public void onBackStackChanged() {
                    if (ActionFloatingViewItem.this.x >= fragmentManager.getBackStackEntryCount()) {
                        ActionFloatingViewItem.this.b();
                    }
                }
            });
            try {
                fragmentTransactionBeginTransaction.replace(w, this.u).addToBackStack(null).commitAllowingStateLoss();
            } catch (Throwable th) {
                v.f("action floating view item add fragment failed:" + th.getMessage());
            }
            setVisible(4);
            e();
        } catch (Throwable th2) {
            Logger.error(p, "error doTouchUp", th2);
        }
    }

    public void d() {
        e();
    }

    public void e() {
        this.f37026f.a(this.s);
    }

    @Override // com.networkbench.agent.impl.floatbtnmanager.FloatingViewItem
    public int getPosBeginX() {
        return 500;
    }

    @Override // com.networkbench.agent.impl.floatbtnmanager.FloatingViewItem
    public int getPosBeginY() {
        return 1000;
    }

    @Override // com.networkbench.agent.impl.floatbtnmanager.FloatingViewItem
    public boolean a(FloatingViewItem floatingViewItem) {
        return floatingViewItem instanceof ActionFloatingViewItem;
    }

    @Override // com.networkbench.agent.impl.floatbtnmanager.FloatingViewItem
    public void a() {
    }

    public void a(Context context, int i2, int i3, int i4, int i5) {
        a(i2, i3, i4, i5);
    }

    public void a(int i2, int i3, int i4, int i5) {
        WindowManager.LayoutParams layoutParamsJ = j();
        this.t = layoutParamsJ;
        layoutParamsJ.flags = 327992;
        layoutParamsJ.width = i4;
        layoutParamsJ.height = i5;
        layoutParamsJ.x = i2;
        layoutParamsJ.y = i3;
        this.f37026f.a(this.s, layoutParamsJ);
    }
}
