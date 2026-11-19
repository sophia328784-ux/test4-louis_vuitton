package defpackage;

import android.content.DialogInterface;
import com.batch.android.c0.b;
import com.batch.android.c0.h;
import com.batch.android.d0.a;
import com.batch.android.f0.d;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b81 implements DialogInterface.OnDismissListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f20789b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ d f20790c;
    public final /* synthetic */ b d;

    public /* synthetic */ b81(b bVar, d dVar, int i2) {
        this.f20789b = i2;
        this.d = bVar;
        this.f20790c = dVar;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        int i2 = this.f20789b;
        d dVar = this.f20790c;
        b bVar = this.d;
        switch (i2) {
            case 0:
                a.a((a) bVar, dVar, dialogInterface);
                break;
            default:
                ((h) bVar).a(dVar, dialogInterface);
                break;
        }
    }
}
