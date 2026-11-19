package com.networkbench.agent.impl.floatbtnmanager;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.widget.RelativeLayout;

/* JADX INFO: loaded from: classes2.dex */
public class j {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f37111b = -591618;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f37112a;

    public j(Context context) {
        this.f37112a = context;
    }

    public RelativeLayout a() {
        RelativeLayout relativeLayout = new RelativeLayout(this.f37112a);
        relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        relativeLayout.setPadding(0, 0, 0, 0);
        relativeLayout.setBackgroundColor(f37111b);
        relativeLayout.setOnTouchListener(new View.OnTouchListener() { // from class: com.networkbench.agent.impl.floatbtnmanager.j.1
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        });
        return relativeLayout;
    }
}
