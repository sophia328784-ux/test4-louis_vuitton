package defpackage;

import com.batch.android.j1.g;
import com.batch.android.j1.h;
import com.batch.android.v0.k;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class h91 implements h {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69665b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ k f69666c;
    public final /* synthetic */ List d;

    public /* synthetic */ h91(k kVar, List list, int i2) {
        this.f69665b = i2;
        this.f69666c = kVar;
        this.d = list;
    }

    @Override // com.batch.android.j1.h
    public final void a(g gVar) {
        int i2 = this.f69665b;
        List list = this.d;
        k kVar = this.f69666c;
        switch (i2) {
            case 0:
                kVar.b(list, gVar);
                break;
            default:
                kVar.a(list, gVar);
                break;
        }
    }
}
