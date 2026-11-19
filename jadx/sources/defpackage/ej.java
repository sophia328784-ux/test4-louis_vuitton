package defpackage;

import androidx.compose.runtime.MutableState;
import androidx.compose.ui.text.TextLayoutResult;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ej implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68871b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MutableState f68872c;
    public final /* synthetic */ MutableState d;

    public /* synthetic */ ej(MutableState mutableState, MutableState mutableState2, int i2) {
        this.f68871b = i2;
        this.f68872c = mutableState;
        this.d = mutableState2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f68871b;
        MutableState mutableState = this.d;
        MutableState mutableState2 = this.f68872c;
        switch (i2) {
            case 0:
                TextLayoutResult textLayoutResult = (TextLayoutResult) obj;
                textLayoutResult.getClass();
                if (!((Boolean) mutableState2.getF10755b()).booleanValue()) {
                    mutableState.setValue(Boolean.valueOf(textLayoutResult.e()));
                }
                break;
            case 1:
                String str = (String) obj;
                str.getClass();
                mutableState2.setValue(str);
                mutableState.setValue(null);
                break;
            default:
                String str2 = (String) obj;
                str2.getClass();
                mutableState2.setValue(str2);
                mutableState.setValue(null);
                break;
        }
        return Unit.f71739a;
    }
}
