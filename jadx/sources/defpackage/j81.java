package defpackage;

import com.batch.android.l1.c;
import com.batch.android.l1.f;
import com.batch.android.l1.i;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class j81 implements i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f71338a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f71339b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f71340c;

    public /* synthetic */ j81(String str, String str2, int i2) {
        this.f71338a = i2;
        this.f71339b = str;
        this.f71340c = str2;
    }

    @Override // com.batch.android.l1.i
    public final void a(c cVar) throws f {
        switch (this.f71338a) {
            case 0:
                cVar.b(this.f71339b, this.f71340c);
                break;
            case 1:
                cVar.c(this.f71339b, this.f71340c);
                break;
            default:
                cVar.a(this.f71339b, this.f71340c);
                break;
        }
    }
}
