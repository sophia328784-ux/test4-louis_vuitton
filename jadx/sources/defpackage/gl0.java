package defpackage;

import com.vuitton.android.presentation.screen.storemode.filters.ProductFilterViewModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function5;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class gl0 implements Function5 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69442b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ProductFilterViewModel f69443c;

    public /* synthetic */ gl0(ProductFilterViewModel productFilterViewModel, int i2) {
        this.f69442b = i2;
        this.f69443c = productFilterViewModel;
    }

    @Override // kotlin.jvm.functions.Function5
    public final Object D(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        switch (this.f69442b) {
            case 0:
                String str = (String) obj;
                String str2 = (String) obj2;
                boolean zBooleanValue = ((Boolean) obj5).booleanValue();
                str.getClass();
                str2.getClass();
                this.f69443c.Dc(str, str2, (String) obj3, (String) obj4, false, zBooleanValue);
                break;
            default:
                String str3 = (String) obj;
                String str4 = (String) obj2;
                boolean zBooleanValue2 = ((Boolean) obj5).booleanValue();
                str3.getClass();
                str4.getClass();
                this.f69443c.Dc(str3, str4, (String) obj3, (String) obj4, true, zBooleanValue2);
                break;
        }
        return Unit.f71739a;
    }
}
