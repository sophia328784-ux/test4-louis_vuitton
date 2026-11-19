package defpackage;

import android.view.View;
import com.batch.android.n0.b;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class h81 implements View.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69655b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ b f69656c;

    public /* synthetic */ h81(b bVar, int i2) {
        this.f69655b = i2;
        this.f69656c = bVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i2 = this.f69655b;
        b bVar = this.f69656c;
        switch (i2) {
            case 0:
                b.m27x703cffe5(bVar, view);
                break;
            default:
                b.m26x31b85bfd(bVar, view);
                break;
        }
    }
}
