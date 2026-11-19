package defpackage;

import android.content.Context;
import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.animation.CrossfadeKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.foundation.layout.BoxWithConstraintsScope;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.text.TextMeasurer;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.presentation.model.common.FeatureThemeUiModel;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModelKt;
import com.vuitton.android.presentation.screen.authentication.common.models.NativeAuthenticationTitle;
import com.vuitton.android.presentation.screen.spotlight.components.SpotlightHotspotsKt;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ne0 implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76506b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ List f76507c;
    public final /* synthetic */ int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f76508e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f76509f;
    public final /* synthetic */ Object g;

    public /* synthetic */ ne0(FeatureThemeUiModel featureThemeUiModel, List list, int i2, Function1 function1, MutableState mutableState) {
        this.f76508e = featureThemeUiModel;
        this.f76507c = list;
        this.d = i2;
        this.f76509f = function1;
        this.g = mutableState;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        TextStyle textStyle;
        int i2 = this.f76506b;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        Object obj4 = this.g;
        Object obj5 = this.f76509f;
        Object obj6 = this.f76508e;
        switch (i2) {
            case 0:
                TextStyle textStyle2 = (TextStyle) obj6;
                TextMeasurer textMeasurer = (TextMeasurer) obj5;
                Context context = (Context) obj4;
                BoxWithConstraintsScope boxWithConstraintsScope = (BoxWithConstraintsScope) obj;
                Composer composer = (Composer) obj2;
                int iIntValue = ((Integer) obj3).intValue();
                boxWithConstraintsScope.getClass();
                if ((iIntValue & 6) == 0) {
                    iIntValue |= composer.K(boxWithConstraintsScope) ? 4 : 2;
                }
                if (composer.p(1 & iIntValue, (iIntValue & 19) != 18)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    long f4940b = boxWithConstraintsScope.getF4940b();
                    List list = this.f76507c;
                    boolean zK = composer.K(list) | composer.K(textStyle2) | composer.K(textMeasurer) | composer.e(f4940b);
                    Object objX = composer.x();
                    if (zK || objX == composer$Companion$Empty$1) {
                        Iterator it = list.iterator();
                        if (!it.hasNext()) {
                            b21.x();
                            return null;
                        }
                        int i3 = 13;
                        textStyle = textStyle2;
                        int i4 = (int) (TextMeasurer.a(textMeasurer, StringResourceUiModelKt.a(((NativeAuthenticationTitle) it.next()).f53483b, context), textStyle, ConstraintsKt.b(0, Constraints.h(boxWithConstraintsScope.getF4940b()), 0, 0, 13), 988).f10554c & BodyPartID.bodyIdMax);
                        while (it.hasNext()) {
                            int i5 = i4;
                            i4 = (int) (TextMeasurer.a(textMeasurer, StringResourceUiModelKt.a(((NativeAuthenticationTitle) it.next()).f53483b, context), textStyle, ConstraintsKt.b(0, Constraints.h(boxWithConstraintsScope.getF4940b()), 0, 0, i3), 988).f10554c & BodyPartID.bodyIdMax);
                            if (i5 >= i4) {
                                i4 = i5;
                            }
                            i3 = 13;
                        }
                        objX = Integer.valueOf(i4);
                        composer.q(objX);
                    } else {
                        textStyle = textStyle2;
                    }
                    CrossfadeKt.b(Integer.valueOf(this.d), null, AnimationSpecKt.c(500, 0, null, 6), "header_content_slide", ComposableLambdaKt.b(-391769988, new tk(list, context, ((Density) composer.k(CompositionLocalsKt.f10031h)).k1(((Number) objX).intValue()), textStyle, 1), composer), composer, 28032, 2);
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            default:
                FeatureThemeUiModel featureThemeUiModel = (FeatureThemeUiModel) obj6;
                Function1 function1 = (Function1) obj5;
                MutableState mutableState = (MutableState) obj4;
                Composer composer2 = (Composer) obj2;
                ((Integer) obj3).getClass();
                float f2 = SpotlightHotspotsKt.f64588a;
                ((AnimatedVisibilityScope) obj).getClass();
                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("SpotlightHotSpots$lambda$27$4$0");
                List list2 = this.f76507c;
                boolean zY = composer2.y(list2);
                int i6 = this.d;
                boolean zD = composer2.d(i6) | zY | composer2.K(function1);
                Object objX2 = composer2.x();
                if (zD || objX2 == composer$Companion$Empty$1) {
                    qw qwVar = new qw(list2, function1, i6, mutableState, 3);
                    composer2.q(qwVar);
                    objX2 = qwVar;
                }
                Function0 function0 = (Function0) objX2;
                boolean zY2 = composer2.y(list2);
                Object objX3 = composer2.x();
                if (zY2 || objX3 == composer$Companion$Empty$1) {
                    objX3 = new p01(list2, mutableState, 1);
                    composer2.q(objX3);
                }
                SpotlightHotspotsKt.a(dTFunctionNameModifier, featureThemeUiModel, function0, (Function0) objX3, composer2, 6);
                return Unit.f71739a;
        }
    }

    public /* synthetic */ ne0(List list, TextStyle textStyle, TextMeasurer textMeasurer, int i2, Context context) {
        this.f76507c = list;
        this.f76508e = textStyle;
        this.f76509f = textMeasurer;
        this.d = i2;
        this.g = context;
    }
}
