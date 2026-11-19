package defpackage;

import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductFilterValueUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class kw0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f75881b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f75882c;
    public final /* synthetic */ ProductFilterValueUiModel d;

    public /* synthetic */ kw0(Function1 function1, ProductFilterValueUiModel productFilterValueUiModel, int i2) {
        this.f75881b = i2;
        this.f75882c = function1;
        this.d = productFilterValueUiModel;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f75881b;
        ProductFilterValueUiModel productFilterValueUiModel = this.d;
        Function1 function1 = this.f75882c;
        switch (i2) {
            case 0:
                String str = productFilterValueUiModel.d;
                function1.invoke(str != null ? str : "");
                return Unit.f71739a;
            default:
                String str2 = productFilterValueUiModel.d;
                function1.invoke(str2 != null ? str2 : "");
                return Boolean.TRUE;
        }
    }
}
