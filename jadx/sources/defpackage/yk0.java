package defpackage;

import androidx.compose.animation.AnimatedContentKt;
import androidx.compose.animation.AnimatedContentTransitionScope;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.EnterTransition;
import androidx.compose.animation.ExitTransition;
import androidx.compose.foundation.lazy.LazyListScope;
import androidx.compose.foundation.lazy.grid.GridItemSpan;
import androidx.compose.foundation.lazy.grid.LazyGridItemSpanScope;
import androidx.compose.foundation.lazy.grid.LazyGridSpanKt;
import androidx.compose.ui.graphics.CompositingStrategy;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import com.vuitton.android.presentation.compose.animation.EnterTransitionKt;
import com.vuitton.android.presentation.compose.animation.Nav3TransitionsKt;
import com.vuitton.android.presentation.contact.compose.ContactUsMethod;
import com.vuitton.android.presentation.extensions.SemanticsPropertyReceiverExtKt;
import com.vuitton.android.presentation.screen.connectivity.PairingBottomSheetDialogFragment;
import com.vuitton.android.presentation.screen.connectivity.lightup.models.LVLightUpTrackingUiModel;
import com.vuitton.android.presentation.screen.filter.quickaccess.models.FiltersButtonState;
import com.vuitton.android.presentation.screen.personalselections.list.models.PersonalSharingUiModel;
import com.vuitton.android.presentation.screen.plp.models.plp.PlpSectionUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModel;
import com.vuitton.android.presentation.screen.storemode.components.plp.ComposableSingletons$StoreModeItemsKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class yk0 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81380b;

    public /* synthetic */ yk0(int i2) {
        this.f81380b = i2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.f81380b) {
            case 0:
                return Integer.valueOf(((Integer) obj).intValue() * 2);
            case 1:
                ((PlpSectionUiModel) obj).getClass();
                return Unit.f71739a;
            case 2:
                ((String) obj).getClass();
                return Unit.f71739a;
            case 3:
                ((Integer) obj).intValue();
                return Unit.f71739a;
            case 4:
                ((String) obj).getClass();
                return Unit.f71739a;
            case 5:
                ((ContactUsMethod) obj).getClass();
                return Unit.f71739a;
            case 6:
                return Unit.f71739a;
            case 7:
                ((Boolean) obj).booleanValue();
                return Unit.f71739a;
            case 8:
                ((FiltersButtonState) obj).getClass();
                return Unit.f71739a;
            case 9:
                LazyListScope lazyListScope = (LazyListScope) obj;
                lazyListScope.getClass();
                ComposableSingletons$StoreModeItemsKt.f64896a.getClass();
                LazyListScope.f(lazyListScope, null, ComposableSingletons$StoreModeItemsKt.f64897b, 3);
                return Unit.f71739a;
            case 10:
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver.getClass();
                SemanticsPropertiesKt.w(semanticsPropertyReceiver, 1.0f);
                return Unit.f71739a;
            case 11:
                ((PlpProductUiModel) obj).getClass();
                return Unit.f71739a;
            case 12:
                ((InspectorInfo) obj).getClass();
                return Unit.f71739a;
            case 13:
                return Unit.f71739a;
            case 14:
                PairingBottomSheetDialogFragment.Companion companion = PairingBottomSheetDialogFragment.S;
                ((LVLightUpTrackingUiModel) obj).getClass();
                return Unit.f71739a;
            case 15:
                ((LVLightUpTrackingUiModel) obj).getClass();
                return Unit.f71739a;
            case 16:
                ((SemanticsPropertyReceiver) obj).getClass();
                return Unit.f71739a;
            case 17:
                GraphicsLayerScope graphicsLayerScope = (GraphicsLayerScope) obj;
                graphicsLayerScope.getClass();
                CompositingStrategy.f8875a.getClass();
                graphicsLayerScope.g0(CompositingStrategy.f8876b);
                return Unit.f71739a;
            case 18:
                AnimatedContentTransitionScope animatedContentTransitionScope = (AnimatedContentTransitionScope) obj;
                animatedContentTransitionScope.getClass();
                return Nav3TransitionsKt.a(animatedContentTransitionScope);
            case 19:
                AnimatedContentTransitionScope animatedContentTransitionScope2 = (AnimatedContentTransitionScope) obj;
                animatedContentTransitionScope2.getClass();
                return Nav3TransitionsKt.b(animatedContentTransitionScope2);
            case 20:
                SemanticsPropertyReceiver semanticsPropertyReceiver2 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver2.getClass();
                SemanticsPropertiesKt.d(semanticsPropertyReceiver2);
                return Unit.f71739a;
            case 21:
                return Unit.f71739a;
            case 22:
                SemanticsPropertyReceiver semanticsPropertyReceiver3 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver3.getClass();
                SemanticsPropertiesKt.d(semanticsPropertyReceiver3);
                return Unit.f71739a;
            case 23:
                AnimatedContentTransitionScope animatedContentTransitionScope3 = (AnimatedContentTransitionScope) obj;
                animatedContentTransitionScope3.getClass();
                if (((Boolean) animatedContentTransitionScope3.getF4004b()).booleanValue()) {
                    EnterTransition.f3626a.getClass();
                    return AnimatedContentKt.e(EnterTransition.f3627b, EnterExitTransitionKt.h(null, 3));
                }
                EnterTransition enterTransitionF = EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3);
                ExitTransition.f3629a.getClass();
                return AnimatedContentKt.e(enterTransitionF, ExitTransition.f3630b);
            case 24:
                SemanticsPropertyReceiver semanticsPropertyReceiver4 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver4.getClass();
                SemanticsPropertyReceiverExtKt.a(semanticsPropertyReceiver4);
                return Unit.f71739a;
            case 25:
                LazyGridItemSpanScope lazyGridItemSpanScope = (LazyGridItemSpanScope) obj;
                lazyGridItemSpanScope.getClass();
                return new GridItemSpan(LazyGridSpanKt.a(lazyGridItemSpanScope.a()));
            case 26:
                ((PlpProductUiModel) obj).getClass();
                return Unit.f71739a;
            case 27:
                ((PlpProductUiModel) obj).getClass();
                return Unit.f71739a;
            case 28:
                PersonalSharingUiModel personalSharingUiModel = (PersonalSharingUiModel) obj;
                personalSharingUiModel.getClass();
                return personalSharingUiModel.f62648a;
            default:
                AnimatedContentTransitionScope animatedContentTransitionScope4 = (AnimatedContentTransitionScope) obj;
                animatedContentTransitionScope4.getClass();
                return EnterTransitionKt.a(animatedContentTransitionScope4, 0, 3);
        }
    }
}
