package defpackage;

import androidx.compose.runtime.MutableState;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class mw0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76374b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function2 f76375c;
    public final /* synthetic */ String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MutableState f76376e;

    public /* synthetic */ mw0(Function2 function2, String str, MutableState mutableState, int i2) {
        this.f76374b = i2;
        this.f76375c = function2;
        this.d = str;
        this.f76376e = mutableState;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f76374b;
        MutableState mutableState = this.f76376e;
        String str = this.d;
        Function2 function2 = this.f76375c;
        switch (i2) {
            case 0:
                mutableState.setValue(Boolean.valueOf(!((Boolean) mutableState.getF10755b()).booleanValue()));
                Boolean bool = (Boolean) mutableState.getF10755b();
                bool.getClass();
                function2.invoke(bool, new SkuIdUiModel(str));
                break;
            default:
                function2.invoke(str, (String) mutableState.getF10755b());
                break;
        }
        return Unit.f71739a;
    }
}
