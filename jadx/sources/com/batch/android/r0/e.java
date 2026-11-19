package com.batch.android.r0;

import android.content.Context;
import android.view.View;
import android.widget.LinearLayout;
import com.batch.android.e.t;

/* JADX INFO: loaded from: classes2.dex */
public final class e extends View implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f23987a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(Context context, View view) {
        super(context);
        context.getClass();
        view.getClass();
        this.f23987a = view;
    }

    @Override // com.batch.android.r0.f
    public void a(com.batch.android.g0.c cVar) {
        cVar.getClass();
        if (!(cVar instanceof com.batch.android.g0.c.h)) {
            t.c(com.batch.android.v0.g.f24103i, "Trying to apply a non-spacer style");
            return;
        }
        com.batch.android.g0.c.h hVar = (com.batch.android.g0.c.h) cVar;
        if (hVar.l().f()) {
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, 0, 1.0f);
            View view = this.f23987a;
            view.getClass();
            if (((LinearLayout) view).getOrientation() == 1) {
                layoutParams.height = 0;
                layoutParams.width = -1;
            } else {
                layoutParams.width = 0;
                layoutParams.height = -1;
            }
            setLayoutParams(layoutParams);
        } else if (hVar.l().h()) {
            setLayoutParams(new LinearLayout.LayoutParams(-1, com.batch.android.k0.a.a(hVar.l().b())));
        } else {
            t.c(com.batch.android.v0.g.f24103i, "Spacer component added to a non-LinearLayout. It might not behave as expected.");
        }
        setBackgroundColor(0);
    }
}
