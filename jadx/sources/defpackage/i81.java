package defpackage;

import com.batch.android.l1.c;
import com.batch.android.l1.f;
import com.batch.android.l1.i;
import java.net.URI;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class i81 implements i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f69905a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f69906b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f69907c;

    public /* synthetic */ i81(String str, int i2, Object obj) {
        this.f69905a = i2;
        this.f69906b = str;
        this.f69907c = obj;
    }

    @Override // com.batch.android.l1.i
    public final void a(c cVar) throws f {
        switch (this.f69905a) {
            case 0:
                cVar.a(this.f69906b, (Date) this.f69907c);
                break;
            default:
                cVar.a(this.f69906b, (URI) this.f69907c);
                break;
        }
    }
}
