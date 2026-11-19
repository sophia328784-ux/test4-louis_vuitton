package defpackage;

import com.vuitton.android.presentation.model.storelocator.StoreUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class xy implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81224b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f81225c;
    public final /* synthetic */ StoreUiModel d;

    public /* synthetic */ xy(Function1 function1, StoreUiModel storeUiModel, int i2) {
        this.f81224b = i2;
        this.f81225c = function1;
        this.d = storeUiModel;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        switch (this.f81224b) {
            case 0:
                this.f81225c.invoke(this.d);
                break;
            default:
                this.f81225c.invoke(this.d.d);
                break;
        }
        return Unit.f71739a;
    }
}
