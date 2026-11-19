package com.batch.android.r0;

import android.content.Context;
import android.text.TextUtils;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.batch.android.e.t;

/* JADX INFO: loaded from: classes2.dex */
public final class g extends AppCompatTextView implements f {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(Context context) {
        super(context);
        context.getClass();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.batch.android.r0.f
    public void a(com.batch.android.g0.c cVar) {
        cVar.getClass();
        if (!(cVar instanceof com.batch.android.g0.c.i)) {
            t.c(com.batch.android.v0.g.f24103i, "Trying to apply a non-text style");
            return;
        }
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        com.batch.android.g0.c.i iVar = (com.batch.android.g0.c.i) cVar;
        layoutParams.setMargins(com.batch.android.k0.a.a(iVar.u().c()), com.batch.android.k0.a.a(iVar.u().f()), com.batch.android.k0.a.a(iVar.u().e()), com.batch.android.k0.a.a(iVar.u().b()));
        setLayoutParams(layoutParams);
        if (iVar.v() > 0) {
            setMaxLines(iVar.v());
            setEllipsize(TextUtils.TruncateAt.END);
        }
        com.batch.android.g0.d.h hVarR = iVar.r();
        Context context = getContext();
        context.getClass();
        setTextColor(com.batch.android.o0.b.c(hVarR.a(context)));
        setTextSize(2, iVar.s());
        setGravity(iVar.w().c());
        com.batch.android.g0.c.f.f23339a.a(this, (com.batch.android.g0.c.f) cVar);
    }
}
