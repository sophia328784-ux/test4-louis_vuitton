package defpackage;

import android.content.Context;
import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.animation.ExitTransition;
import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.State;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.graphics.TransformOriginKt;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.templates.LVEmptyViewKt;
import com.vuitton.android.presentation.compose.components.LVTagFilterKt;
import com.vuitton.android.presentation.compose.components.TagFilterType;
import com.vuitton.android.presentation.extensions.ModifierExtKt;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.screen.booking.confirmation.components.BookingConfirmationScreenKt;
import com.vuitton.android.presentation.screen.booking.confirmation.models.BookingConfirmationViewState;
import com.vuitton.android.presentation.screen.filter.quickaccess.components.ActiveFiltersSliderKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class o3 implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76675b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function0 f76676c;
    public final /* synthetic */ float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function1 f76677e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function1 f76678f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f76679h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f76680i;

    public /* synthetic */ o3(BookingConfirmationViewState bookingConfirmationViewState, Function0 function0, float f2, Function1 function1, Function1 function2, Function2 function3, Function1 function4) {
        this.g = bookingConfirmationViewState;
        this.f76676c = function0;
        this.d = f2;
        this.f76677e = function1;
        this.f76678f = function2;
        this.f76679h = function3;
        this.f76680i = function4;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        int i2 = this.f76675b;
        Object obj4 = this.f76680i;
        Object obj5 = this.f76679h;
        switch (i2) {
            case 0:
                Context context = (Context) obj5;
                MutableState mutableState = (MutableState) obj4;
                Composer composer = (Composer) obj2;
                ((Integer) obj3).getClass();
                ExitTransition exitTransition = ActiveFiltersSliderKt.f58051a;
                ((AnimatedVisibilityScope) obj).getClass();
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                State stateB = AnimateAsStateKt.b(((Boolean) mutableState.getF10755b()).booleanValue() ? 1.0f : 0.0f, AnimationSpecKt.c(300, 0, null, 6), null, composer, 48, 28);
                Function1 function1 = this.f76677e;
                Object obj6 = this.g;
                String str = (String) function1.invoke(obj6);
                boolean zBooleanValue = ((Boolean) mutableState.getF10755b()).booleanValue();
                AssetImageUiModel assetImageUiModel = (AssetImageUiModel) this.f76678f.invoke(obj6);
                String str2 = assetImageUiModel != null ? assetImageUiModel.f51778b : null;
                if (str2 == null) {
                    str2 = "";
                }
                String str3 = str2;
                TagFilterType tagFilterType = TagFilterType.ACTIVE_DELETABLE;
                Modifier modifierC = GraphicsLayerModifierKt.c(PaddingKt.k(new DTFunctionNameModifier("AnimatedActiveFilterList_PfoAEA0$lambda$2$4"), this.d, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), ((Number) stateB.getF10755b()).floatValue(), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, TransformOriginKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM, 0.5f), null, 0, 523262);
                boolean zY = composer.y(context) | composer.K(function1) | composer.y(obj6);
                Function0 function0 = this.f76676c;
                boolean zK = composer.K(function0) | zY;
                Object objX = composer.x();
                if (zK || objX == Composer.Companion.f7939a) {
                    k3 k3Var = new k3(context, function1, obj6, function0, 0);
                    composer.q(k3Var);
                    objX = k3Var;
                }
                LVTagFilterKt.a(ModifierExtKt.a(modifierC, "QAF_ActiveFilterItem_button", (Function1) objX, 2), str, "QAF_ActiveFilterNameItem_text", tagFilterType, str3, zBooleanValue, null, true, function0, composer, 12586368, 64);
                break;
            default:
                BookingConfirmationViewState bookingConfirmationViewState = (BookingConfirmationViewState) this.g;
                Function2 function2 = (Function2) obj5;
                Function1 function3 = (Function1) obj4;
                PaddingValues paddingValues = (PaddingValues) obj;
                Composer composer2 = (Composer) obj2;
                int iIntValue = ((Integer) obj3).intValue();
                float f2 = BookingConfirmationScreenKt.f54386a;
                paddingValues.getClass();
                if ((iIntValue & 6) == 0) {
                    iIntValue |= composer2.K(paddingValues) ? 4 : 2;
                }
                if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    if (bookingConfirmationViewState instanceof BookingConfirmationViewState.Error) {
                        LVEmptyViewKt.e(PaddingKt.h(pq0.j(1757508281, composer2, "BookingConfirmationScreen$lambda$6").o(SizeKt.f5052c), paddingValues), null, StringResources_androidKt.c(composer2, R.string.error_generic), null, null, StringResources_androidKt.c(composer2, R.string.button_try_again), this.f76676c, composer2, 0, 122);
                        composer2.F();
                    } else {
                        composer2.L(1758019192);
                        BookingConfirmationScreenKt.a(this.d, bookingConfirmationViewState, this.f76677e, this.f76678f, function2, function3, composer2, 0);
                        composer2.F();
                    }
                } else {
                    composer2.D();
                }
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ o3(Function1 function1, Object obj, Function1 function2, float f2, Context context, Function0 function0, MutableState mutableState) {
        this.f76677e = function1;
        this.g = obj;
        this.f76678f = function2;
        this.d = f2;
        this.f76679h = context;
        this.f76676c = function0;
        this.f76680i = mutableState;
    }
}
