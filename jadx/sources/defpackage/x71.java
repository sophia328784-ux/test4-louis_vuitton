package defpackage;

import android.view.View;
import com.batch.android.n0.a;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class x71 implements View.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81048b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ a f81049c;

    public /* synthetic */ x71(a aVar, int i2) {
        this.f81048b = i2;
        this.f81049c = aVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i2 = this.f81048b;
        a aVar = this.f81049c;
        switch (i2) {
            case 0:
                a.m24instrumented$0$c$LjavautilMapLcombatchandroids0a(aVar, view);
                break;
            case 1:
                a.m22instrumented$0$a$V(aVar, view);
                break;
            default:
                a.m25x75c05ec4(aVar, view);
                break;
        }
    }
}
