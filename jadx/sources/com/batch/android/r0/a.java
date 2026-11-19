package com.batch.android.r0;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.RippleDrawable;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatButton;
import com.batch.android.e.t;
import defpackage.v40;

/* JADX INFO: loaded from: classes2.dex */
public final class a extends AppCompatButton implements f {

    /* JADX INFO: renamed from: com.batch.android.r0.a$a, reason: collision with other inner class name */
    public /* synthetic */ class C0070a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f23981a;

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
            f23981a = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(Context context) {
        super(context);
        context.getClass();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.batch.android.r0.f
    public void a(com.batch.android.g0.c cVar) {
        ViewGroup.MarginLayoutParams layoutParams;
        ViewGroup.MarginLayoutParams layoutParams2;
        cVar.getClass();
        if (!(cVar instanceof com.batch.android.g0.c.a)) {
            t.c(com.batch.android.v0.g.f24103i, "Trying to apply a non-button style");
            return;
        }
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        com.batch.android.g0.c.a aVar = (com.batch.android.g0.c.a) cVar;
        com.batch.android.g0.d.b bVarF = aVar.F();
        Context context = getContext();
        context.getClass();
        gradientDrawable.setCornerRadii(bVarF.a(context));
        com.batch.android.g0.d.h hVarY = aVar.y();
        Context context2 = getContext();
        context2.getClass();
        gradientDrawable.setColor(ColorStateList.valueOf(com.batch.android.o0.b.c(hVarY.a(context2))));
        com.batch.android.g0.d.a aVarZ = aVar.z();
        if (aVarZ != null) {
            int iD = aVarZ.d();
            com.batch.android.g0.d.h hVarC = aVarZ.c();
            Context context3 = getContext();
            context3.getClass();
            gradientDrawable.setStroke(iD, ColorStateList.valueOf(com.batch.android.o0.b.c(hVarC.a(context3))));
        }
        setMinHeight(0);
        setMinimumHeight(0);
        setAllCaps(false);
        setStateListAnimator(null);
        com.batch.android.g0.d.g gVarI = aVar.I();
        if (gVarI != null) {
            int i2 = C0070a.f23981a[aVar.I().c().ordinal()];
            if (i2 != 1) {
                if (i2 == 2) {
                    com.batch.android.p0.c.a aVar2 = new com.batch.android.p0.c.a(-2, -2);
                    aVar2.a().f23895a = gVarI.b() / 100.0f;
                    layoutParams = aVar2;
                } else {
                    if (i2 != 3 && i2 != 4) {
                        v40.g();
                        return;
                    }
                    layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
                }
                layoutParams2.setMargins(com.batch.android.k0.a.a(aVar.C().c()), com.batch.android.k0.a.a(aVar.C().f()), com.batch.android.k0.a.a(aVar.C().e()), com.batch.android.k0.a.a(aVar.C().b()));
                setPadding(com.batch.android.k0.a.a(aVar.E().c()), com.batch.android.k0.a.a(aVar.E().f()), com.batch.android.k0.a.a(aVar.E().e()), com.batch.android.k0.a.a(aVar.E().b()));
                setLayoutParams(layoutParams2);
            } else {
                layoutParams = new LinearLayout.LayoutParams(com.batch.android.k0.a.a(gVarI.b()), -2);
            }
            layoutParams2 = layoutParams;
            layoutParams2.setMargins(com.batch.android.k0.a.a(aVar.C().c()), com.batch.android.k0.a.a(aVar.C().f()), com.batch.android.k0.a.a(aVar.C().e()), com.batch.android.k0.a.a(aVar.C().b()));
            setPadding(com.batch.android.k0.a.a(aVar.E().c()), com.batch.android.k0.a.a(aVar.E().f()), com.batch.android.k0.a.a(aVar.E().e()), com.batch.android.k0.a.a(aVar.E().b()));
            setLayoutParams(layoutParams2);
        }
        setGravity(aVar.G().c() | 16);
        setBackground(new RippleDrawable(ColorStateList.valueOf(com.batch.android.o0.b.c("#80FFFFFF")), gradientDrawable, gradientDrawable));
        com.batch.android.g0.d.h hVarH = aVar.H();
        Context context4 = getContext();
        context4.getClass();
        setTextColor(com.batch.android.o0.b.c(hVarH.a(context4)));
        if (aVar.D() > 0) {
            setMaxLines(aVar.D());
            setEllipsize(TextUtils.TruncateAt.END);
        }
        com.batch.android.g0.c.f.f23339a.a(this, (com.batch.android.g0.c.f) cVar);
    }
}
