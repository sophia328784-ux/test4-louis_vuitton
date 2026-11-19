package defpackage;

import androidx.compose.runtime.MutableState;
import com.vuitton.android.presentation.screen.aicompanion.components.entrypoint.AICompanionTooltipKt;
import com.vuitton.android.presentation.screen.immersivearticle.components.ImmersiveArticleContentKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class t1 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79933b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MutableState f79934c;
    public final /* synthetic */ MutableState d;

    public /* synthetic */ t1(MutableState mutableState, MutableState mutableState2, int i2) {
        this.f79933b = i2;
        this.f79934c = mutableState;
        this.d = mutableState2;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f79933b;
        MutableState mutableState = this.d;
        MutableState mutableState2 = this.f79934c;
        switch (i2) {
            case 0:
                float f2 = AICompanionTooltipKt.f52836a;
                mutableState2.setValue(Boolean.TRUE);
                mutableState.setValue(Boolean.FALSE);
                return Unit.f71739a;
            default:
                float f3 = ImmersiveArticleContentKt.f58386a;
                return Boolean.valueOf(((Boolean) mutableState2.getF10755b()).booleanValue() && !((Boolean) mutableState.getF10755b()).booleanValue());
        }
    }
}
