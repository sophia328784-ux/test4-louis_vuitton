package defpackage;

import com.vuitton.android.presentation.screen.orders.models.TransactionItemUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class yh0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81367b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f81368c;
    public final /* synthetic */ TransactionItemUiModel d;

    public /* synthetic */ yh0(Function1 function1, TransactionItemUiModel transactionItemUiModel, int i2) {
        this.f81367b = i2;
        this.f81368c = function1;
        this.d = transactionItemUiModel;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        switch (this.f81367b) {
            case 0:
                this.f81368c.invoke(this.d.f60417h);
                break;
            default:
                this.f81368c.invoke(this.d);
                break;
        }
        return Unit.f71739a;
    }
}
