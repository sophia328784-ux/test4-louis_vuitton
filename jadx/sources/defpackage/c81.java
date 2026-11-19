package defpackage;

import android.view.View;
import android.widget.RelativeLayout;
import com.batch.android.f0.b;
import com.batch.android.n0.a;
import com.batch.android.n0.d;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class c81 implements View.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21092b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f21093c;
    public final /* synthetic */ b d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ RelativeLayout f21094e;

    public /* synthetic */ c81(RelativeLayout relativeLayout, int i2, b bVar, int i3) {
        this.f21092b = i3;
        this.f21094e = relativeLayout;
        this.f21093c = i2;
        this.d = bVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i2 = this.f21092b;
        b bVar = this.d;
        int i3 = this.f21093c;
        RelativeLayout relativeLayout = this.f21094e;
        switch (i2) {
            case 0:
                a.m23instrumented$0$b$LjavautilMapLcombatchandroids0a((a) relativeLayout, i3, bVar, view);
                break;
            default:
                d.m29instrumented$0$f$V((d) relativeLayout, i3, bVar, view);
                break;
        }
    }
}
