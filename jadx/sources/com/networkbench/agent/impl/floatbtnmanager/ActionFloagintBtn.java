package com.networkbench.agent.impl.floatbtnmanager;

import android.app.Activity;
import android.view.MotionEvent;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.n00;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public class ActionFloagintBtn extends FloatingViewItem {
    public ActionFloagintBtn(Activity activity, k kVar) {
        super(activity, kVar);
        setOnClickListener(new a(this));
        StringBuilder sb = new StringBuilder();
        sb.append(e.a(activity));
        this.f37030k = n00.r(File.separator, ConfigurationName.HAND_PNG, sb);
        this.m = "点选";
    }

    private void d() {
        for (FloatingViewItem floatingViewItem : this.f37028i.b()) {
            if (floatingViewItem instanceof ActionFloatingViewItem) {
                floatingViewItem.setVisible(0);
            }
        }
    }

    @Override // com.networkbench.agent.impl.floatbtnmanager.FloatingViewItem
    public void a(MotionEvent motionEvent, int i2, int i3) {
        throw new UnsupportedOperationException("OverviewFloatBtn not support this operation");
    }

    @Override // com.networkbench.agent.impl.floatbtnmanager.FloatingViewItem
    public int getPosBeginX() {
        return super.getPosBeginX() - 150;
    }

    @Override // com.networkbench.agent.impl.floatbtnmanager.FloatingViewItem
    public int getPosBeginY() {
        return super.getPosBeginY() - 150;
    }

    @Override // com.networkbench.agent.impl.floatbtnmanager.FloatingViewItem
    public void a() {
        g();
        d();
    }
}
