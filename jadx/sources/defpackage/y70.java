package defpackage;

import androidx.compose.foundation.gestures.AnchoredDraggableState;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffset;
import com.vuitton.android.designkit.components.components.LVSwipeToRevealKt;
import kotlin.jvm.functions.Function1;
import kotlin.math.MathKt;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class y70 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81318b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AnchoredDraggableState f81319c;

    public /* synthetic */ y70(AnchoredDraggableState anchoredDraggableState, int i2) {
        this.f81318b = i2;
        this.f81319c = anchoredDraggableState;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f81318b;
        AnchoredDraggableState anchoredDraggableState = this.f81319c;
        Density density = (Density) obj;
        switch (i2) {
            case 0:
                float f2 = LVSwipeToRevealKt.f48255a;
                density.getClass();
                return new IntOffset(((long) MathKt.c(anchoredDraggableState.e())) << 32);
            default:
                density.getClass();
                return new IntOffset(((long) MathKt.c(anchoredDraggableState.e())) & BodyPartID.bodyIdMax);
        }
    }
}
