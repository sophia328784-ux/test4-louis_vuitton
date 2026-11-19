package defpackage;

import android.util.Pair;
import com.perfectcorp.perfectlib.SkuSetInfo;
import com.perfectcorp.perfectlib.ph.database.ymk.skuset.a;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class hx0 implements Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69801b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ a f69802c;

    public /* synthetic */ hx0(a aVar, int i2) {
        this.f69801b = i2;
        this.f69802c = aVar;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public final Object apply(Object obj) {
        int i2 = this.f69801b;
        a aVar = this.f69802c;
        Pair pair = (Pair) obj;
        switch (i2) {
            case 0:
                break;
        }
        return new SkuSetInfo(aVar, (String) pair.first, (List) pair.second);
    }
}
