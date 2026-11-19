package com.networkbench.agent.impl.floatbtnmanager;

import android.app.Activity;
import android.view.MotionEvent;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.n00;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public class OverviewFloatBtn extends FloatingViewItem {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final float f37031a = 66.0f;

    public OverviewFloatBtn(Activity activity, k kVar) {
        super(activity, kVar);
        this.f37029j = true;
        setOnTouchListener(new b(this));
        setOnClickListener(new a(this));
        StringBuilder sb = new StringBuilder();
        sb.append(e.a(activity));
        this.f37030k = n00.r(File.separator, ConfigurationName.WINDOW_PNG, sb);
        this.m = "功能";
    }

    private void d() {
        for (FloatingViewItem floatingViewItem : this.f37028i.b()) {
            if (!a(floatingViewItem)) {
                floatingViewItem.l();
            }
        }
    }

    @Override // com.networkbench.agent.impl.floatbtnmanager.FloatingViewItem
    public void a() {
        f();
        if (this.l) {
            b();
            StringBuilder sb = new StringBuilder();
            sb.append(e.a(this.f37025e));
            this.f37030k = n00.r(File.separator, ConfigurationName.WINDOW_CLICK_PNG, sb);
            setViewImage();
            return;
        }
        g();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(e.a(this.f37025e));
        this.f37030k = n00.r(File.separator, ConfigurationName.WINDOW_PNG, sb2);
        setViewImage();
    }

    @Override // com.networkbench.agent.impl.floatbtnmanager.FloatingViewItem
    public float getBtnRadius() {
        return f37031a;
    }

    @Override // com.networkbench.agent.impl.floatbtnmanager.FloatingViewItem
    public boolean k() {
        return !this.l;
    }

    @Override // com.networkbench.agent.impl.floatbtnmanager.FloatingViewItem
    public boolean a(FloatingViewItem floatingViewItem) {
        return (floatingViewItem instanceof OverviewFloatBtn) || (floatingViewItem instanceof ActionFloatingViewItem);
    }

    @Override // com.networkbench.agent.impl.floatbtnmanager.FloatingViewItem
    public void a(MotionEvent motionEvent, int i2, int i3) {
        if (this.l) {
            return;
        }
        setViewXY(i2, i3);
        this.f37026f.b(this.f37027h, this.g);
        FloatingViewItem.n = i2;
        FloatingViewItem.o = i3;
        d();
    }
}
