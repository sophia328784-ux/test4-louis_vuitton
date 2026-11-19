package defpackage;

import androidx.compose.runtime.MutableState;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import com.vuitton.android.presentation.screen.spotlight.components.SpotlightHotspotsKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class u30 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80217b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Density f80218c;
    public final /* synthetic */ MutableState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MutableState f80219e;

    public /* synthetic */ u30(Density density, MutableState mutableState, MutableState mutableState2, int i2) {
        this.f80217b = i2;
        this.f80218c = density;
        this.d = mutableState;
        this.f80219e = mutableState2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f80217b;
        MutableState mutableState = this.f80219e;
        MutableState mutableState2 = this.d;
        Density density = this.f80218c;
        LayoutCoordinates layoutCoordinates = (LayoutCoordinates) obj;
        switch (i2) {
            case 0:
                layoutCoordinates.getClass();
                mutableState2.setValue(new Dp(density.k1((int) (BodyPartID.bodyIdMax & layoutCoordinates.a()))));
                mutableState.setValue(new Dp(density.k1((int) (layoutCoordinates.a() >> 32))));
                break;
            case 1:
                float f2 = SpotlightHotspotsKt.f64588a;
                layoutCoordinates.getClass();
                mutableState2.setValue(new Dp(density.k1((int) (BodyPartID.bodyIdMax & layoutCoordinates.a()))));
                mutableState.setValue(new Dp(density.k1((int) (layoutCoordinates.a() >> 32))));
                break;
            default:
                float f3 = SpotlightHotspotsKt.f64588a;
                layoutCoordinates.getClass();
                mutableState2.setValue(new Dp(density.k1((int) (BodyPartID.bodyIdMax & layoutCoordinates.a()))));
                mutableState.setValue(new Dp(density.k1((int) (layoutCoordinates.a() >> 32))));
                break;
        }
        return Unit.f71739a;
    }
}
