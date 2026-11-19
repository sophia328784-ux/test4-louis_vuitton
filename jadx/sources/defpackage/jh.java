package defpackage;

import android.content.Context;
import androidx.compose.animation.AnimatedContentKt;
import androidx.compose.animation.AnimatedContentTransitionScope;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.EnterTransition;
import androidx.compose.animation.ExitTransition;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.foundation.gestures.BringIntoViewSpec;
import androidx.compose.foundation.gestures.BringIntoViewSpec_androidKt;
import androidx.compose.material3.SheetValue;
import androidx.compose.material3.internal.ParentSemanticsNode;
import androidx.compose.runtime.CompositionLocalAccessorScope;
import androidx.compose.runtime.ComputedProvidableCompositionLocal;
import androidx.compose.ui.node.SemanticsModifierNodeKt;
import androidx.compose.ui.node.TraversableNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import com.kizitonwose.calendar.compose.CalendarState;
import com.kizitonwose.calendar.compose.VisibleItemState;
import com.kizitonwose.calendar.core.OutDateStyle;
import com.vuitton.android.presentation.compose.animation.EnterTransitionKt;
import com.vuitton.android.presentation.compose.animation.ExitTransitionKt;
import com.vuitton.android.presentation.screen.cart.models.CartItemUiModel;
import com.vuitton.android.presentation.screen.storemode.components.catalog.CatalogStoreModeKt;
import java.time.DayOfWeek;
import java.time.YearMonth;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class jh implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71398b;

    public /* synthetic */ jh(int i2) {
        this.f71398b = i2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = 17;
        switch (this.f71398b) {
            case 0:
                return Boolean.TRUE;
            case 1:
                return Unit.f71739a;
            case 2:
                return Unit.f71739a;
            case 3:
                ComputedProvidableCompositionLocal computedProvidableCompositionLocal = BringIntoViewSpec_androidKt.f4428a;
                if (((Context) ((CompositionLocalAccessorScope) obj).b(AndroidCompositionLocals_androidKt.f9936b)).getPackageManager().hasSystemFeature("android.software.leanback")) {
                    return BringIntoViewSpec_androidKt.f4429b;
                }
                BringIntoViewSpec.f4424a.getClass();
                return BringIntoViewSpec.Companion.f4427c;
            case 4:
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o((SemanticsPropertyReceiver) obj, 0);
                return Unit.f71739a;
            case 5:
                List list = (List) obj;
                CalendarState.Companion companion = CalendarState.f35926k;
                list.getClass();
                Object obj2 = list.get(0);
                obj2.getClass();
                YearMonth yearMonth = (YearMonth) obj2;
                Object obj3 = list.get(1);
                obj3.getClass();
                YearMonth yearMonth2 = (YearMonth) obj3;
                Object obj4 = list.get(2);
                obj4.getClass();
                YearMonth yearMonth3 = (YearMonth) obj4;
                Object obj5 = list.get(3);
                obj5.getClass();
                DayOfWeek dayOfWeek = (DayOfWeek) obj5;
                Object obj6 = list.get(4);
                obj6.getClass();
                OutDateStyle outDateStyle = (OutDateStyle) obj6;
                Object obj7 = list.get(5);
                obj7.getClass();
                int iIntValue = ((Integer) obj7).intValue();
                Object obj8 = list.get(6);
                obj8.getClass();
                return new CalendarState(yearMonth, yearMonth2, dayOfWeek, yearMonth3, outDateStyle, new VisibleItemState(iIntValue, ((Integer) obj8).intValue()));
            case 6:
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver.getClass();
                SemanticsPropertiesKt.d(semanticsPropertyReceiver);
                return Unit.f71739a;
            case 7:
                SemanticsPropertyReceiver semanticsPropertyReceiver2 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver2.getClass();
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver2, 0);
                return Unit.f71739a;
            case 8:
                SemanticsPropertyReceiver semanticsPropertyReceiver3 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver3.getClass();
                SemanticsPropertiesKt.d(semanticsPropertyReceiver3);
                return Unit.f71739a;
            case 9:
                SemanticsPropertyReceiver semanticsPropertyReceiver4 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver4.getClass();
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver4, 0);
                return Unit.f71739a;
            case 10:
                ((AnimatedContentTransitionScope) obj).getClass();
                EnterTransition.f3626a.getClass();
                return EnterTransition.f3627b;
            case 11:
                ((AnimatedContentTransitionScope) obj).getClass();
                ExitTransition.f3629a.getClass();
                return ExitTransition.f3630b;
            case 12:
                CartItemUiModel cartItemUiModel = (CartItemUiModel) obj;
                cartItemUiModel.getClass();
                return cartItemUiModel.f55144a;
            case 13:
                ((AnimatedContentTransitionScope) obj).getClass();
                EnterTransition.f3626a.getClass();
                return EnterTransition.f3627b;
            case 14:
                ((AnimatedContentTransitionScope) obj).getClass();
                ExitTransition.f3629a.getClass();
                return ExitTransition.f3630b;
            case 15:
                float f2 = CatalogStoreModeKt.f64850a;
                ((AnimatedContentTransitionScope) obj).getClass();
                return EnterExitTransitionKt.p(new jh(i2));
            case 16:
                int iIntValue2 = ((Integer) obj).intValue();
                float f3 = CatalogStoreModeKt.f64850a;
                return Integer.valueOf(-iIntValue2);
            case 17:
                Integer num = (Integer) obj;
                num.intValue();
                float f4 = CatalogStoreModeKt.f64850a;
                return num;
            case 18:
                int iIntValue3 = ((Integer) obj).intValue();
                float f5 = CatalogStoreModeKt.f64850a;
                return Integer.valueOf(-iIntValue3);
            case 19:
                float f6 = CatalogStoreModeKt.f64850a;
                ((AnimatedContentTransitionScope) obj).getClass();
                return EnterExitTransitionKt.p(new jh(18));
            case 20:
                float f7 = CatalogStoreModeKt.f64850a;
                ((AnimatedContentTransitionScope) obj).getClass();
                return EnterExitTransitionKt.t(new jh(16));
            case 21:
                float f8 = CatalogStoreModeKt.f64850a;
                ((AnimatedContentTransitionScope) obj).getClass();
                return EnterExitTransitionKt.t(new jh(i2));
            case 22:
                AnimatedContentTransitionScope animatedContentTransitionScope = (AnimatedContentTransitionScope) obj;
                animatedContentTransitionScope.getClass();
                return EnterTransitionKt.a(animatedContentTransitionScope, 0, 3);
            case 23:
                AnimatedContentTransitionScope animatedContentTransitionScope2 = (AnimatedContentTransitionScope) obj;
                animatedContentTransitionScope2.getClass();
                return ExitTransitionKt.a(animatedContentTransitionScope2, 0, 3);
            case 24:
                AnimatedContentTransitionScope animatedContentTransitionScope3 = (AnimatedContentTransitionScope) obj;
                animatedContentTransitionScope3.getClass();
                return EnterTransitionKt.b(animatedContentTransitionScope3, 0, 3);
            case 25:
                AnimatedContentTransitionScope animatedContentTransitionScope4 = (AnimatedContentTransitionScope) obj;
                animatedContentTransitionScope4.getClass();
                return ExitTransitionKt.b(animatedContentTransitionScope4, 0, 3);
            case 26:
                ((AnimatedContentTransitionScope) obj).getClass();
                return AnimatedContentKt.e(EnterExitTransitionKt.f(AnimationSpecKt.c(300, 0, null, 6), Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), EnterExitTransitionKt.h(AnimationSpecKt.c(300, 0, null, 6), 2));
            case 27:
                SheetValue sheetValue = (SheetValue) obj;
                sheetValue.getClass();
                return Boolean.valueOf(sheetValue != SheetValue.Hidden);
            case 28:
                return Unit.f71739a;
            default:
                TraversableNode traversableNode = (TraversableNode) obj;
                traversableNode.getClass();
                ParentSemanticsNode parentSemanticsNode = (ParentSemanticsNode) traversableNode;
                parentSemanticsNode.q = false;
                SemanticsModifierNodeKt.b(parentSemanticsNode);
                return Boolean.FALSE;
        }
    }
}
