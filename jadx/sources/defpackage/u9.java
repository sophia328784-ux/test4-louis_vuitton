package defpackage;

import android.view.View;
import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.foundation.gestures.DragGestureDetectorKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.layout.OnGloballyPositionedModifierKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import com.vuitton.android.presentation.compose.components.CollapsingDetailListKt;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.sections.AssessmentSendComponentKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.PanelInfoHtmlItem;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.CancellableContinuationImpl;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class u9 implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80265b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f80266c;

    public /* synthetic */ u9(Function1 function1, int i2) {
        this.f80265b = i2;
        this.f80266c = function1;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        int i2 = this.f80265b;
        Function1 function1 = this.f80266c;
        switch (i2) {
            case 0:
                ((Integer) obj3).intValue();
                ((AnimatedVisibilityScope) obj).getClass();
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                AssessmentSendComponentKt.b(function1, (Composer) obj2, 0);
                return Unit.f71739a;
            case 1:
                ((Integer) obj3).intValue();
                ((AnimatedVisibilityScope) obj).getClass();
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                AssessmentSendComponentKt.c(function1, (Composer) obj2, 0);
                return Unit.f71739a;
            case 2:
                return CancellableContinuationImpl.resume$lambda$0$0(function1, (Throwable) obj, obj2, (CoroutineContext) obj3);
            case 3:
                float f2 = DragGestureDetectorKt.f4487a;
                function1.invoke(new Offset(((PointerInputChange) obj2).f9330c));
                return Unit.f71739a;
            case 4:
                Modifier modifierE = (Modifier) obj;
                Composer composer = (Composer) obj2;
                ((Integer) obj3).getClass();
                if (modifierE != null) {
                    modifierE = a.e(modifierE, "isVisibleOnScreen$lambda$0");
                }
                modifierE.getClass();
                composer.L(1257979667);
                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                View view = (View) composer.k(AndroidCompositionLocals_androidKt.f9939f);
                boolean zY = composer.y(view) | composer.K(function1);
                Object objX = composer.x();
                if (zY || objX == Composer.Companion.f7939a) {
                    objX = new k60(view, function1, 12);
                    composer.q(objX);
                }
                Modifier modifierA = OnGloballyPositionedModifierKt.a(modifierE, (Function1) objX);
                composer.F();
                return modifierA;
            default:
                PanelInfoHtmlItem panelInfoHtmlItem = (PanelInfoHtmlItem) obj;
                Composer composer2 = (Composer) obj2;
                int iIntValue = ((Integer) obj3).intValue();
                panelInfoHtmlItem.getClass();
                if ((iIntValue & 6) == 0) {
                    iIntValue |= composer2.K(panelInfoHtmlItem) ? 4 : 2;
                }
                if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    CollapsingDetailListKt.d(panelInfoHtmlItem, function1, composer2, iIntValue & 14);
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
        }
    }
}
