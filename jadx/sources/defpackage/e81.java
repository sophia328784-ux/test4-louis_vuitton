package defpackage;

import com.perfectcorp.perfectlib.hc.database.ymk.ad$e$b;
import com.perfectcorp.perfectlib.hc.database.ymk.ad$e$c;
import com.perfectcorp.perfectlib.hc.database.ymk.ad$e$e;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.h;
import com.perfectcorp.perfectlib.ph.template.o;
import com.perfectcorp.thirdparty.com.google.common.base.Predicate;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class e81 implements Predicate {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68798b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f68799c;

    public /* synthetic */ e81(String str, int i2) {
        this.f68798b = i2;
        this.f68799c = str;
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.base.Predicate
    public final boolean apply(Object obj) {
        int i2 = this.f68798b;
        String str = this.f68799c;
        switch (i2) {
            case 0:
                ad$e$c ad_e_c = (ad$e$c) obj;
                Objects.requireNonNull(ad_e_c);
                return str.equals(ad_e_c.attr_name);
            case 1:
                ad$e$e ad_e_e = (ad$e$e) obj;
                Objects.requireNonNull(ad_e_e);
                return str.equals(ad_e_e.attr_name);
            case 2:
                ad$e$b ad_e_b = (ad$e$b) obj;
                Objects.requireNonNull(ad_e_b);
                return str.equals(ad_e_b.attr_name);
            case 3:
                o.c cVar = (o.c) obj;
                h.d.a.C0155a c0155a = h.d.a.C0155a.f41322a;
                Objects.requireNonNull(cVar);
                return str.equals(cVar.attr_name);
            case 4:
                o.g gVar = (o.g) obj;
                h.d.a.C0155a c0155a2 = h.d.a.C0155a.f41322a;
                Objects.requireNonNull(gVar);
                return str.equals(gVar.attr_name);
            case 5:
                o.b bVar = (o.b) obj;
                h.d.a.C0155a c0155a3 = h.d.a.C0155a.f41322a;
                Objects.requireNonNull(bVar);
                return str.equals(bVar.attr_name);
            default:
                o.b bVar2 = (o.b) obj;
                o.e eVar = o.e.f41701a;
                Objects.requireNonNull(bVar2);
                return str.equals(bVar2.attr_name);
        }
    }
}
