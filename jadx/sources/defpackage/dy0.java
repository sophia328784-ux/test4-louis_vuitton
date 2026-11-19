package defpackage;

import com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.sku.b;
import com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.sku.f;
import com.perfectcorp.thirdparty.com.google.common.base.Predicate;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class dy0 implements Predicate {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68700b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Map f68701c;

    public /* synthetic */ dy0(Map map, int i2) {
        this.f68700b = i2;
        this.f68701c = map;
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.base.Predicate
    public final boolean apply(Object obj) {
        int i2 = this.f68700b;
        Map map = this.f68701c;
        switch (i2) {
            case 0:
                b.a aVar = (b.a) obj;
                Objects.requireNonNull(aVar);
                Long l = (Long) map.get(aVar.a());
                return l == null || l.longValue() < aVar.b();
            default:
                f.a aVar2 = (f.a) obj;
                Objects.requireNonNull(aVar2);
                Long l2 = (Long) map.get(aVar2.a());
                return l2 == null || l2.longValue() < aVar2.b();
        }
    }
}
