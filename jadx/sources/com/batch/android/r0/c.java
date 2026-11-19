package com.batch.android.r0;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.batch.android.e.t;
import defpackage.v40;

/* JADX INFO: loaded from: classes2.dex */
public final class c extends View implements f {

    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f23982a;

        static {
            int[] iArr = new int[com.batch.android.g0.d.g.b.values().length];
            try {
                iArr[com.batch.android.g0.d.g.b.PIXEL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[com.batch.android.g0.d.g.b.PERCENTAGE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[com.batch.android.g0.d.g.b.AUTO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[com.batch.android.g0.d.g.b.FILL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f23982a = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(Context context) {
        super(context);
        context.getClass();
    }

    @Override // com.batch.android.r0.f
    public void a(com.batch.android.g0.c cVar) {
        ViewGroup.MarginLayoutParams layoutParams;
        cVar.getClass();
        if (!(cVar instanceof com.batch.android.g0.c.d)) {
            t.c(com.batch.android.v0.g.f24103i, "Trying to apply a non-divider style");
            return;
        }
        com.batch.android.g0.c.d dVar = (com.batch.android.g0.c.d) cVar;
        int i2 = a.f23982a[dVar.t().c().ordinal()];
        if (i2 == 1) {
            layoutParams = new LinearLayout.LayoutParams(com.batch.android.k0.a.a(dVar.t().b()), com.batch.android.k0.a.a(dVar.s()));
        } else if (i2 == 2) {
            com.batch.android.p0.c.a aVar = new com.batch.android.p0.c.a(-2, com.batch.android.k0.a.a(dVar.s()));
            aVar.a().f23895a = dVar.t().b() / 100.0f;
            layoutParams = aVar;
        } else {
            if (i2 != 3 && i2 != 4) {
                v40.g();
                return;
            }
            layoutParams = new LinearLayout.LayoutParams(-2, com.batch.android.k0.a.a(dVar.s()));
        }
        layoutParams.setMargins(com.batch.android.k0.a.a(dVar.r().c()), com.batch.android.k0.a.a(dVar.r().f()), com.batch.android.k0.a.a(dVar.r().e()), com.batch.android.k0.a.a(dVar.r().b()));
        setLayoutParams(layoutParams);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadii(new com.batch.android.g0.d.b(com.batch.android.k0.a.a(dVar.s()) / 2).d());
        com.batch.android.g0.d.h hVarQ = dVar.q();
        Context context = getContext();
        context.getClass();
        gradientDrawable.setColor(ColorStateList.valueOf(com.batch.android.o0.b.c(hVarQ.a(context))));
        setBackground(gradientDrawable);
    }
}
