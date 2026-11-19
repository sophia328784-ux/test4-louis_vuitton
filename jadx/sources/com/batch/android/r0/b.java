package com.batch.android.r0;

import android.content.Context;
import android.widget.LinearLayout;
import com.batch.android.e.t;
import defpackage.v40;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes2.dex */
public final class b extends LinearLayout implements f {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(Context context) {
        super(context);
        context.getClass();
    }

    @Override // com.batch.android.r0.f
    public void a(com.batch.android.g0.c cVar) {
        LinearLayout.LayoutParams layoutParams;
        cVar.getClass();
        if (!(cVar instanceof com.batch.android.g0.c.C0050c)) {
            t.c(com.batch.android.v0.g.f24103i, "Trying to apply a non-columns style");
            return;
        }
        setClipChildren(false);
        com.batch.android.g0.c.C0050c c0050c = (com.batch.android.g0.c.C0050c) cVar;
        boolean zU = c0050c.u();
        if (zU) {
            layoutParams = new LinearLayout.LayoutParams(-1, 0, 1.0f);
        } else {
            if (zU) {
                v40.g();
                return;
            }
            layoutParams = new LinearLayout.LayoutParams(-1, -2);
        }
        layoutParams.setMargins(com.batch.android.k0.a.a(c0050c.r().c()), com.batch.android.k0.a.a(c0050c.r().f()), com.batch.android.k0.a.a(c0050c.r().e()), com.batch.android.k0.a.a(c0050c.r().b()));
        setLayoutParams(layoutParams);
        setGravity(c0050c.q().c());
    }

    public final void a(com.batch.android.g0.c.C0050c c0050c, Function2<? super com.batch.android.g0.c, ? super LinearLayout, Unit> function2) {
        c0050c.getClass();
        function2.getClass();
        int length = c0050c.s().length;
        int i2 = 0;
        while (i2 < length) {
            LinearLayout linearLayout = new LinearLayout(getContext());
            linearLayout.setClipChildren(false);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -2, c0050c.s()[i2]);
            layoutParams.setMargins(0, 0, i2 != c0050c.s().length - 1 ? com.batch.android.k0.a.a(c0050c.t()) : 0, 0);
            linearLayout.setLayoutParams(layoutParams);
            linearLayout.setOrientation(1);
            if (!c0050c.p().get(i2).isEmpty()) {
                Object obj = c0050c.p().get(i2);
                obj.getClass();
                function2.invoke((com.batch.android.g0.c) obj, linearLayout);
            }
            addView(linearLayout);
            i2++;
        }
    }
}
