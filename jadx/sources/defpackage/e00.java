package defpackage;

import androidx.compose.runtime.MutableState;
import com.vuitton.android.presentation.screen.dynamicform.model.field.phone.PhoneType;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class e00 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68714b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f68715c;
    public final /* synthetic */ MutableState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MutableState f68716e;

    public /* synthetic */ e00(Function1 function1, MutableState mutableState, MutableState mutableState2, int i2) {
        this.f68714b = i2;
        this.f68715c = function1;
        this.d = mutableState;
        this.f68716e = mutableState2;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f68714b;
        MutableState mutableState = this.f68716e;
        MutableState mutableState2 = this.d;
        Function1 function1 = this.f68715c;
        switch (i2) {
            case 0:
                if (!((Boolean) mutableState2.getF10755b()).booleanValue()) {
                    function1.invoke(PhoneType.SECOND_PHONE);
                } else if (!((Boolean) mutableState.getF10755b()).booleanValue()) {
                    function1.invoke(PhoneType.THIRD_PHONE);
                }
                break;
            default:
                mutableState2.setValue(Boolean.TRUE);
                function1.invoke((String) mutableState.getF10755b());
                break;
        }
        return Unit.f71739a;
    }
}
