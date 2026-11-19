package defpackage;

import androidx.compose.material3.internal.AnchoredDragScope;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$FloatRef;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class k5 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71563b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AnchoredDragScope f71564c;
    public final /* synthetic */ Ref$FloatRef d;

    public /* synthetic */ k5(AnchoredDragScope anchoredDragScope, Ref$FloatRef ref$FloatRef, int i2) {
        this.f71563b = i2;
        this.f71564c = anchoredDragScope;
        this.d = ref$FloatRef;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f71563b;
        Ref$FloatRef ref$FloatRef = this.d;
        AnchoredDragScope anchoredDragScope = this.f71564c;
        float fFloatValue = ((Float) obj).floatValue();
        float fFloatValue2 = ((Float) obj2).floatValue();
        switch (i2) {
            case 0:
                anchoredDragScope.a(fFloatValue, fFloatValue2);
                ref$FloatRef.f71918b = fFloatValue;
                break;
            default:
                anchoredDragScope.a(fFloatValue, fFloatValue2);
                ref$FloatRef.f71918b = fFloatValue;
                break;
        }
        return Unit.f71739a;
    }
}
