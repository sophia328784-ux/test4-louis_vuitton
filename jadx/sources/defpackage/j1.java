package defpackage;

import androidx.compose.foundation.MagnifierElement;
import androidx.compose.foundation.Magnifier_androidKt;
import androidx.compose.foundation.PlatformMagnifierFactoryApi29Impl;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpSize;
import androidx.compose.ui.unit.IntSize;
import com.vuitton.android.presentation.screen.aicompanion.components.chat.AICompanionPromptSuggestionsKt;
import java.util.Iterator;
import kotlin.Unit;
import kotlin.collections.IntIterator;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.ranges.IntProgressionIterator;
import kotlin.ranges.RangesKt;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class j1 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71252b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Density f71253c;
    public final /* synthetic */ MutableState d;

    public /* synthetic */ j1(Density density, MutableState mutableState, int i2) {
        this.f71252b = i2;
        this.f71253c = density;
        this.d = mutableState;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f71252b;
        MutableState mutableState = this.d;
        Density density = this.f71253c;
        switch (i2) {
            case 0:
                TextLayoutResult textLayoutResult = (TextLayoutResult) obj;
                float f2 = AICompanionPromptSuggestionsKt.f52814a;
                textLayoutResult.getClass();
                Iterator<Integer> it = RangesKt.j(0, textLayoutResult.f10553b.f10465f).iterator();
                IntProgressionIterator intProgressionIterator = (IntProgressionIterator) it;
                if (!intProgressionIterator.d) {
                    b21.x();
                    return null;
                }
                IntIterator intIterator = (IntIterator) it;
                int iNextInt = intIterator.nextInt();
                float fG = textLayoutResult.g(iNextInt) - textLayoutResult.f(iNextInt);
                while (intProgressionIterator.d) {
                    int iNextInt2 = intIterator.nextInt();
                    fG = Math.max(fG, textLayoutResult.g(iNextInt2) - textLayoutResult.f(iNextInt2));
                }
                float fCeil = (float) Math.ceil(fG / density.getF11002b());
                Dp.Companion companion = Dp.f11004c;
                if (Dp.a(fCeil, ((Dp) mutableState.getF10755b()).f11006b) < 0) {
                    mutableState.setValue(new Dp(fCeil));
                }
                return Unit.f71739a;
            case 1:
                LayoutCoordinates layoutCoordinates = (LayoutCoordinates) obj;
                layoutCoordinates.getClass();
                mutableState.setValue(new Dp(density.k1((int) (layoutCoordinates.a() & BodyPartID.bodyIdMax))));
                return Unit.f71739a;
            case 2:
                LayoutCoordinates layoutCoordinates2 = (LayoutCoordinates) obj;
                layoutCoordinates2.getClass();
                mutableState.setValue(new Dp(density.k1((int) (layoutCoordinates2.a() & BodyPartID.bodyIdMax))));
                return Unit.f71739a;
            case 3:
                mutableState.setValue(new Dp(density.k1(((Integer) obj).intValue())));
                return Unit.f71739a;
            case 4:
                bo0 bo0Var = new bo0((Function0) obj, 11);
                j1 j1Var = new j1(density, mutableState, 5);
                SemanticsPropertyKey semanticsPropertyKey = Magnifier_androidKt.f4245a;
                DpSize.f11009b.getClass();
                long j2 = DpSize.f11010c;
                Dp.f11004c.getClass();
                float f3 = Dp.f11005e;
                return new MagnifierElement(bo0Var, null, j1Var, Float.NaN, true, j2, f3, f3, true, PlatformMagnifierFactoryApi29Impl.f4287a, null);
            case 5:
                DpSize dpSize = (DpSize) obj;
                mutableState.setValue(new IntSize((((long) density.B0(DpSize.b(dpSize.f11011a))) << 32) | (BodyPartID.bodyIdMax & ((long) density.B0(DpSize.a(dpSize.f11011a))))));
                return Unit.f71739a;
            case 6:
                IntSize intSize = (IntSize) obj;
                if (((Dp) mutableState.getF10755b()) == null) {
                    mutableState.setValue(new Dp(density.k1((int) (intSize.f11021a & BodyPartID.bodyIdMax))));
                }
                return Unit.f71739a;
            default:
                LayoutCoordinates layoutCoordinates3 = (LayoutCoordinates) obj;
                layoutCoordinates3.getClass();
                if (((Dp) mutableState.getF10755b()) == null) {
                    mutableState.setValue(new Dp(density.k1((int) (layoutCoordinates3.a() >> 32))));
                }
                return Unit.f71739a;
        }
    }
}
