package defpackage;

import com.batch.android.l1.c;
import com.batch.android.l1.f;
import com.batch.android.l1.i;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class k81 implements i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f71594a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f71595b;

    public /* synthetic */ k81(String str, int i2) {
        this.f71594a = i2;
        this.f71595b = str;
    }

    @Override // com.batch.android.l1.i
    public final void a(c cVar) throws f {
        int i2 = this.f71594a;
        String str = this.f71595b;
        switch (i2) {
            case 0:
                cVar.b(str);
                break;
            default:
                cVar.a(str);
                break;
        }
    }
}
