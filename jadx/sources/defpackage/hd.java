package defpackage;

import android.content.Context;
import com.batch.android.Batch;
import com.batch.android.e.c0;
import com.batch.android.n0.b;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class hd implements c0.f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f69682a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f69683b;

    public /* synthetic */ hd(Object obj, int i2) {
        this.f69682a = i2;
        this.f69683b = obj;
    }

    @Override // com.batch.android.e.c0.f
    public final void a(Object obj) {
        int i2 = this.f69682a;
        Object obj2 = this.f69683b;
        switch (i2) {
            case 0:
                Batch.a((Context) obj2, (Void) obj);
                break;
            default:
                ((b) obj2).a((Void) obj);
                break;
        }
    }
}
