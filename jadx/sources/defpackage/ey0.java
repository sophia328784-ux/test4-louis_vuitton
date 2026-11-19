package defpackage;

import android.util.Pair;
import com.perfectcorp.thirdparty.com.google.common.collect.Multimap;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class ey0 implements Consumer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f68977a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Multimap f68978b;

    public /* synthetic */ ey0(Multimap multimap, int i2) {
        this.f68977a = i2;
        this.f68978b = multimap;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        int i2 = this.f68977a;
        Multimap multimap = this.f68978b;
        Pair pair = (Pair) obj;
        switch (i2) {
            case 0:
                if (((Integer) pair.first).intValue() > 0) {
                    multimap.n((Iterable) pair.second, (Integer) pair.first);
                }
                break;
            case 1:
                if (((Integer) pair.first).intValue() > 0) {
                    multimap.n((Iterable) pair.second, (Integer) pair.first);
                }
                break;
            case 2:
                if (((Integer) pair.first).intValue() > 0) {
                    multimap.n((Iterable) pair.second, (Integer) pair.first);
                }
                break;
            default:
                if (((Integer) pair.first).intValue() > 0) {
                    multimap.n((Iterable) pair.second, (Integer) pair.first);
                }
                break;
        }
    }
}
