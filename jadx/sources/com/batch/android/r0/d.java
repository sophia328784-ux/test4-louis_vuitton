package com.batch.android.r0;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.batch.android.e.t;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import defpackage.v40;
import kotlin.text.StringsKt;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public final class d extends RelativeLayout implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ProgressBar f23983a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.batch.android.p0.c f23984b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ImageView f23985c;

    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f23986a;

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
            f23986a = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(Context context) {
        super(context);
        context.getClass();
        ProgressBar progressBar = new ProgressBar(context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13);
        progressBar.setLayoutParams(layoutParams);
        progressBar.setIndeterminateTintList(ColorStateList.valueOf(com.batch.android.q0.b.v));
        this.f23983a = progressBar;
        com.batch.android.p0.c cVar = new com.batch.android.p0.c(context);
        cVar.setLayoutParams(new com.batch.android.p0.c.a(-1, -1));
        cVar.setGravity(17);
        cVar.setClipToOutline(true);
        this.f23984b = cVar;
        ImageView imageView = new ImageView(context);
        this.f23985c = imageView;
        setGravity(17);
        addView(progressBar);
        cVar.addView(imageView);
        addView(cVar);
    }

    @Override // com.batch.android.r0.f
    public void a(com.batch.android.g0.c cVar) {
        cVar.getClass();
        if (!(cVar instanceof com.batch.android.g0.c.g)) {
            t.c(com.batch.android.v0.g.f24103i, "Trying to apply a non-image style");
            return;
        }
        com.batch.android.g0.c.g gVar = (com.batch.android.g0.c.g) cVar;
        setLayoutParams(gVar.q().f() ? new LinearLayout.LayoutParams(-1, 0, 1.0f) : new RelativeLayout.LayoutParams(-2, -2));
        this.f23985c.setScaleType(gVar.p().c());
        com.batch.android.p0.c cVar2 = this.f23984b;
        com.batch.android.p0.c.a aVar = new com.batch.android.p0.c.a(-1, -2);
        aVar.setMargins(com.batch.android.k0.a.a(gVar.s().c()), com.batch.android.k0.a.a(gVar.s().f()), com.batch.android.k0.a.a(gVar.s().e()), com.batch.android.k0.a.a(gVar.s().b()));
        cVar2.setLayoutParams(aVar);
        com.batch.android.p0.c cVar3 = this.f23984b;
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        com.batch.android.g0.d.b bVarT = gVar.t();
        Context context = getContext();
        context.getClass();
        gradientDrawable.setCornerRadii(bVarT.a(context));
        gradientDrawable.setColor(ColorStateList.valueOf(0));
        cVar3.setBackground(gradientDrawable);
    }

    public final void b() {
        this.f23983a.setVisibility(0);
    }

    public final void setImageContentDescription(String str) {
        this.f23985c.setContentDescription(str);
        this.f23985c.setImportantForAccessibility(1);
    }

    public final void a(com.batch.android.g0.c.g gVar, com.batch.android.z.a.d<?> dVar) {
        gVar.getClass();
        if (gVar.q().f()) {
            a(gVar, Integer.valueOf(getHeight()));
        } else {
            a(this, gVar, null, 2, null);
        }
        if (dVar == null) {
            this.f23985c.setImageDrawable(null);
        } else if (!gVar.q().e() && !gVar.q().f()) {
            com.batch.android.o0.a.a(this.f23985c, dVar);
        } else {
            com.batch.android.o0.a.a(this.f23985c, dVar, this.f23984b.getWidth());
        }
    }

    public static /* synthetic */ void a(d dVar, com.batch.android.g0.c.g gVar, Integer num, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            num = null;
        }
        dVar.a(gVar, num);
    }

    private final void a(com.batch.android.g0.c.g gVar, Integer num) {
        RelativeLayout.LayoutParams layoutParams;
        RelativeLayout.LayoutParams layoutParams2;
        ImageView imageView = this.f23985c;
        int i2 = a.f23986a[gVar.q().c().ordinal()];
        if (i2 == 1) {
            layoutParams = new RelativeLayout.LayoutParams(-1, com.batch.android.k0.a.a(gVar.q().b()));
        } else {
            if (i2 == 2) {
                com.batch.android.p0.c.a aVar = new com.batch.android.p0.c.a(-1, -2);
                aVar.a().f23896b = gVar.q().b() / 100.0f;
                layoutParams = aVar;
            } else if (i2 == 3) {
                layoutParams2 = new RelativeLayout.LayoutParams(-1, num != null ? num.intValue() : -2);
            } else {
                if (i2 != 4) {
                    v40.g();
                    return;
                }
                layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
            }
            imageView.setLayoutParams(layoutParams2);
        }
        layoutParams2 = layoutParams;
        imageView.setLayoutParams(layoutParams2);
    }

    public final void a() {
        this.f23983a.setVisibility(8);
    }

    public final void a(com.batch.android.g0.c.g gVar, String str) {
        Float fY;
        Float fY2;
        gVar.getClass();
        if (str == null) {
            return;
        }
        Uri uri = Uri.parse(str);
        String queryParameter = uri.getQueryParameter(NBSSpanMetricUnit.Hour);
        float fFloatValue = (queryParameter == null || (fY2 = StringsKt.Y(queryParameter)) == null) ? 0.0f : fY2.floatValue();
        String queryParameter2 = uri.getQueryParameter("w");
        float fFloatValue2 = (queryParameter2 == null || (fY = StringsKt.Y(queryParameter2)) == null) ? 0.0f : fY.floatValue();
        if (fFloatValue == Call.Parameters.DEFAULT_CAMERA_ZOOM || fFloatValue2 == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            a(gVar, (Integer) null);
        } else {
            a(gVar, Integer.valueOf((int) ((this.f23984b.getWidth() / fFloatValue2) * fFloatValue)));
        }
    }
}
