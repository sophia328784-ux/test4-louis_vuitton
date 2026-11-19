package com.networkbench.agent.impl.floatbtnmanager;

import android.view.View;
import com.dynatrace.android.callback.Callback;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;

/* JADX INFO: loaded from: classes2.dex */
public class a implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private FloatingViewItem f37065a;

    public a(FloatingViewItem floatingViewItem) {
        this.f37065a = floatingViewItem;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Callback.n(view);
        try {
            try {
                this.f37065a.a();
            } catch (Throwable th) {
                th.printStackTrace();
            }
        } finally {
            Callback.o();
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }
    }
}
