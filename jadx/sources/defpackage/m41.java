package defpackage;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxWithConstraintsKt;
import androidx.compose.foundation.layout.BoxWithConstraintsScope;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.BlurKt;
import androidx.compose.ui.draw.BlurredEdgeTreatment;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function3;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class m41 implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76177b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f76178c;
    public final /* synthetic */ long d;

    public /* synthetic */ m41(long j2, String str) {
        this.d = j2;
        this.f76178c = str;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        int i2 = this.f76177b;
        RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.f8913a;
        long j2 = this.d;
        switch (i2) {
            case 0:
                boolean zBooleanValue = ((Boolean) obj).booleanValue();
                Composer composer = (Composer) obj2;
                int iIntValue = ((Integer) obj3).intValue();
                if ((iIntValue & 6) == 0) {
                    iIntValue |= composer.b(zBooleanValue) ? 4 : 2;
                }
                if (composer.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    if (zBooleanValue) {
                        BoxWithConstraintsKt.a(BackgroundKt.b(pq0.j(1284699108, composer, "TrackDetailSubModeOverlay_3IgeMak$lambda$0").o(SizeKt.f5052c), j2, rectangleShapeKt$RectangleShape$1), null, false, ComposableLambdaKt.b(-261213453, new m41(this.f76178c, j2), composer), composer, 3072, 6);
                        composer.F();
                    } else {
                        BoxKt.a(pq0.j(1286208064, composer, "TrackDetailSubModeOverlay_3IgeMak$lambda$0").o(SizeKt.f5052c), composer, 6);
                        composer.F();
                    }
                } else {
                    composer.D();
                }
                break;
            default:
                BoxWithConstraintsScope boxWithConstraintsScope = (BoxWithConstraintsScope) obj;
                Composer composer2 = (Composer) obj2;
                int iIntValue2 = ((Integer) obj3).intValue();
                boxWithConstraintsScope.getClass();
                if ((iIntValue2 & 6) == 0) {
                    iIntValue2 |= composer2.K(boxWithConstraintsScope) ? 4 : 2;
                }
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 19) != 18)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    float fU1 = ((Density) composer2.k(CompositionLocalsKt.f10031h)).u1(boxWithConstraintsScope.i());
                    DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("TrackDetailSubModeOverlay_3IgeMak$lambda$0$0");
                    Alignment.f8582a.getClass();
                    Modifier modifierG = boxWithConstraintsScope.g(dTFunctionNameModifier, Alignment.Companion.f8587f);
                    FillElement fillElement = SizeKt.f5052c;
                    Modifier modifierO = modifierG.o(fillElement);
                    Dp.Companion companion = Dp.f11004c;
                    BlurredEdgeTreatment.f8702a.getClass();
                    Modifier modifierA = BlurKt.a(modifierO, 50.0f, 50.0f, null);
                    ContentScale.f9447a.getClass();
                    ImageLoaderKt.b(modifierA, this.f76178c, ContentScale.Companion.d, null, null, 0, false, null, null, null, composer2, KyberEngine.KyberPolyBytes, 2040);
                    BoxKt.a(BackgroundKt.b(pq0.i("TrackDetailSubModeOverlay_3IgeMak$lambda$0$0", fillElement), Color.b(0.5f, j2), rectangleShapeKt$RectangleShape$1), composer2, 0);
                    Modifier modifierO2 = new DTFunctionNameModifier("TrackDetailSubModeOverlay_3IgeMak$lambda$0$0").o(fillElement);
                    Brush.Companion companion2 = Brush.f8862a;
                    Color.f8866b.getClass();
                    BoxKt.a(BackgroundKt.a(modifierO2, Brush.Companion.b(companion2, CollectionsKt.P(new Color(Color.f8870h), new Color(j2)), 0.25f * fU1, fU1, 8)), composer2, 0);
                } else {
                    composer2.D();
                }
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ m41(String str, long j2) {
        this.f76178c = str;
        this.d = j2;
    }
}
