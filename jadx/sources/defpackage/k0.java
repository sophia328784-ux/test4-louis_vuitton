package defpackage;

import android.location.Location;
import androidx.compose.animation.AnimatedContentTransitionScope;
import androidx.compose.animation.SizeTransform;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.focus.FocusState;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavDestination;
import androidx.navigation.compose.ComposeNavigator;
import com.kizitonwose.calendar.compose.CalendarMonthsKt;
import com.kizitonwose.calendar.core.CalendarMonth;
import com.perfectcorp.perfectlib.CameraView;
import com.sightcall.gpslocation.datasource.GpsGmsDatasourceImpl;
import com.vuitton.android.designkit.ui.theme.atoms.LVSwitchLegalState;
import com.vuitton.android.presentation.contact.compose.ContactUsMethod;
import com.vuitton.android.presentation.screen.distantrepairs.form.components.DistantRepairFormBottomSheetScreen;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.pdp.Error3dType;
import com.vuitton.android.presentation.screen.pdp.components.PdpBottomSheetType;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductDisclaimerUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductImageUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.BeautyVtoScreenKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.TryOnProductUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductBooleanFilterUiModel;
import com.vuitton.android.presentation.screen.reinsurance.models.ReinsuranceUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class k0 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71508b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f71509c;

    public /* synthetic */ k0(Function1 function1, int i2) {
        this.f71508b = i2;
        this.f71509c = function1;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f71508b;
        final Function1 function1 = this.f71509c;
        switch (i2) {
            case 0:
                String str = (String) obj;
                str.getClass();
                function1.invoke(str);
                return Unit.f71739a;
            case 1:
                function1.invoke((String) obj);
                return Unit.f71739a;
            case 2:
                function1.invoke((String) obj);
                return Unit.f71739a;
            case 3:
                Float f2 = (Float) obj;
                f2.floatValue();
                function1.invoke(f2);
                return Unit.f71739a;
            case 4:
                TryOnProductUiModel tryOnProductUiModel = (TryOnProductUiModel) obj;
                float f3 = BeautyVtoScreenKt.f62031a;
                tryOnProductUiModel.getClass();
                function1.invoke(tryOnProductUiModel);
                return Unit.f71739a;
            case 5:
                Integer num = (Integer) obj;
                num.getClass();
                ComposableLambdaImpl composableLambdaImpl = CalendarMonthsKt.f35923a;
                return ((CalendarMonth) function1.invoke(num)).f35957b;
            case 6:
                function1.invoke(new DistantRepairFormBottomSheetScreen.BottomSheetDeletion(((Integer) obj).intValue()));
                return Unit.f71739a;
            case 7:
                function1.invoke(new DistantRepairFormBottomSheetScreen.BottomSheetDeletion(((Integer) obj).intValue()));
                return Unit.f71739a;
            case 8:
                ((DisposableEffectScope) obj).getClass();
                function1.invoke(Boolean.TRUE);
                return new DisposableEffectResult() { // from class: com.vuitton.android.presentation.screen.account.myinformation.components.edition.EditPasswordComposableKt$EditPasswordComposable$lambda$5$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void dispose() {
                        function1.invoke(Boolean.FALSE);
                    }
                };
            case 9:
                LVSwitchLegalState lVSwitchLegalState = (LVSwitchLegalState) obj;
                lVSwitchLegalState.getClass();
                LVSwitchLegalState lVSwitchLegalState2 = LVSwitchLegalState.ACCEPTED;
                function1.invoke(Boolean.valueOf((lVSwitchLegalState == lVSwitchLegalState2 ? LVSwitchLegalState.DENIED : lVSwitchLegalState2) == lVSwitchLegalState2));
                return Unit.f71739a;
            case 10:
                FocusState focusState = (FocusState) obj;
                focusState.getClass();
                function1.invoke(Boolean.valueOf(focusState.a()));
                return Unit.f71739a;
            case 11:
                ProductBooleanFilterUiModel productBooleanFilterUiModel = (ProductBooleanFilterUiModel) obj;
                productBooleanFilterUiModel.getClass();
                String str2 = productBooleanFilterUiModel.f62956c;
                if (str2 == null) {
                    str2 = "";
                }
                function1.invoke(str2);
                return Unit.f71739a;
            case 12:
                Boolean bool = (Boolean) obj;
                bool.booleanValue();
                function1.invoke(bool);
                return Unit.f71739a;
            case 13:
                FocusState focusState2 = (FocusState) obj;
                focusState2.getClass();
                function1.invoke(Boolean.valueOf(focusState2.a()));
                return Unit.f71739a;
            case 14:
                FocusState focusState3 = (FocusState) obj;
                focusState3.getClass();
                function1.invoke(Boolean.valueOf(focusState3.a()));
                return Unit.f71739a;
            case 15:
                return GpsGmsDatasourceImpl.startGps$lambda$0$0(function1, (Location) obj);
            case 16:
                Error3dType error3dType = (Error3dType) obj;
                error3dType.getClass();
                function1.invoke(error3dType);
                return Unit.f71739a;
            case 17:
                function1.invoke(Boolean.valueOf(!((Boolean) obj).booleanValue()));
                return Unit.f71739a;
            case 18:
                LayoutCoordinates layoutCoordinates = (LayoutCoordinates) obj;
                layoutCoordinates.getClass();
                function1.invoke(LayoutCoordinatesKt.b(layoutCoordinates, true));
                return Unit.f71739a;
            case 19:
                Long l = (Long) obj;
                if (l != null) {
                    function1.invoke(l);
                }
                return Unit.f71739a;
            case 20:
                AnimatedContentTransitionScope animatedContentTransitionScope = (AnimatedContentTransitionScope) obj;
                NavDestination navDestination = ((NavBackStackEntry) animatedContentTransitionScope.getF4004b()).f18113c;
                navDestination.getClass();
                NavDestination.g.getClass();
                for (NavDestination navDestination2 : NavDestination.Companion.b((ComposeNavigator.Destination) navDestination)) {
                }
                if (function1 != null) {
                    return (SizeTransform) function1.invoke(animatedContentTransitionScope);
                }
                return null;
            case 21:
                InspectorInfo inspectorInfo = (InspectorInfo) obj;
                inspectorInfo.getClass();
                inspectorInfo.f10105b.b(function1, "offset");
                return Unit.f71739a;
            case 22:
                ContactUsMethod contactUsMethod = (ContactUsMethod) obj;
                contactUsMethod.getClass();
                function1.invoke(contactUsMethod);
                return Unit.f71739a;
            case 23:
                Boolean bool2 = (Boolean) obj;
                bool2.booleanValue();
                function1.invoke(bool2);
                return Unit.f71739a;
            case 24:
                LayoutCoordinates layoutCoordinates2 = (LayoutCoordinates) obj;
                layoutCoordinates2.getClass();
                function1.invoke(LayoutCoordinatesKt.b(layoutCoordinates2, true));
                return Unit.f71739a;
            case 25:
                ProductImageUiModel productImageUiModel = (ProductImageUiModel) obj;
                productImageUiModel.getClass();
                function1.invoke(productImageUiModel);
                return Unit.f71739a;
            case 26:
                ReinsuranceUiModel reinsuranceUiModel = (ReinsuranceUiModel) obj;
                reinsuranceUiModel.getClass();
                function1.invoke(new PdpBottomSheetType.Reinsurance(reinsuranceUiModel));
                return Unit.f71739a;
            case 27:
                ProductDisclaimerUiModel productDisclaimerUiModel = (ProductDisclaimerUiModel) obj;
                productDisclaimerUiModel.getClass();
                function1.invoke(new PdpBottomSheetType.Disclaimer(productDisclaimerUiModel.f61730c, productDisclaimerUiModel.d));
                return Unit.f71739a;
            case 28:
                CameraView cameraView = (CameraView) obj;
                cameraView.getClass();
                cameraView.setScaleType(CameraView.ScaleType.CENTER_CROP);
                function1.invoke(cameraView);
                return Unit.f71739a;
            default:
                if (((Boolean) obj).booleanValue()) {
                    function1.invoke(Boolean.TRUE);
                }
                return Unit.f71739a;
        }
    }
}
