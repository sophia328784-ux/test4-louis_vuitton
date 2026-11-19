package defpackage;

import com.perfectcorp.thirdparty.com.google.common.base.Predicate;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class uw implements Predicate {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80412b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Set f80413c;

    public /* synthetic */ uw(int i2, Set set) {
        this.f80412b = i2;
        this.f80413c = set;
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.base.Predicate
    public final boolean apply(Object obj) {
        int i2 = this.f80412b;
        Set set = this.f80413c;
        switch (i2) {
            case 0:
                return set.contains((String) obj);
            case 1:
                Map.Entry entry = (Map.Entry) obj;
                Objects.requireNonNull(entry);
                return !set.contains(entry.getValue());
            case 2:
                return !set.contains((String) obj);
            default:
                return !set.contains((String) obj);
        }
    }
}
