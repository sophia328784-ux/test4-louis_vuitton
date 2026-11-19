package defpackage;

import androidx.compose.material3.OutlinedTextFieldKt;
import androidx.compose.material3.TextFieldKt;
import androidx.compose.material3.internal.FloatProducer;
import androidx.compose.material3.internal.TextFieldImplKt;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.util.MathHelpersKt;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class bk0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f20894b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ FloatProducer f20895c;

    public /* synthetic */ bk0(FloatProducer floatProducer, int i2) {
        this.f20894b = i2;
        this.f20895c = floatProducer;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f20894b;
        FloatProducer floatProducer = this.f20895c;
        switch (i2) {
            case 0:
                float f2 = OutlinedTextFieldKt.f7123a;
                break;
            default:
                int i3 = TextFieldKt.f7374a;
                break;
        }
        return new Dp(MathHelpersKt.b(TextFieldImplKt.f7651f, TextFieldImplKt.g, floatProducer.invoke()));
    }
}
