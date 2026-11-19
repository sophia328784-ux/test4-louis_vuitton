package defpackage;

import android.os.Bundle;
import androidx.compose.foundation.gestures.ScrollableState;
import androidx.compose.foundation.lazy.LazyListItemInfo;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.grid.LazyGridItemInfo;
import androidx.compose.foundation.lazy.grid.LazyGridState;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuData;
import androidx.compose.foundation.text.contextmenu.modifier.TextContextMenuModifierKt;
import androidx.compose.foundation.text.contextmenu.modifier.TextContextMenuToolbarHandlerNode;
import androidx.compose.foundation.text.modifiers.TextAnnotatedStringNode;
import androidx.compose.foundation.text.modifiers.TextStringSimpleNode;
import androidx.compose.material3.SheetState;
import androidx.compose.material3.SliderState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DrawModifierNodeKt;
import androidx.compose.ui.node.SemanticsModifierNodeKt;
import androidx.compose.ui.text.platform.style.ShaderBrushSpan;
import androidx.compose.ui.text.style.TextForegroundStyle;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntRect;
import androidx.room.RoomDatabase;
import androidx.room.SharedSQLiteStatement;
import com.dynatrace.android.agent.util.Utility;
import com.sightcall.advancedannotations.domain.drawer.annotation.TextAnnotation;
import com.sightcall.universal.util.StepLink;
import com.vuitton.android.presentation.screen.connectivity.travel.FlightUiModel;
import com.vuitton.android.presentation.screen.connectivity.travel.HotelUiModel;
import com.vuitton.android.presentation.screen.connectivity.travel.TrainUiModel;
import com.vuitton.android.presentation.screen.connectivity.travel.TravelUiModel;
import com.vuitton.android.presentation.screen.connectivity.travel.detail.TravelDetailsFragment;
import com.vuitton.android.presentation.screen.connectivity.travel.list.TravelListAdapter;
import com.vuitton.android.presentation.screen.connectivity.travel.list.TravelListFragment;
import com.vuitton.android.presentation.screen.connectivity.tutorial.TutorialFragment;
import com.vuitton.android.presentation.screen.connectivity.watch.detail.WatchDetailsFragment;
import com.vuitton.android.presentation.screen.connectivity.watch.settings.WatchSettingsFragment;
import com.vuitton.android.presentation.screen.connectivity.watch.tutorial.detail.WatchTutorialDetailsFragment;
import com.vuitton.android.presentation.screen.connectivity.watchface.WatchfacePresentationFragment;
import com.vuitton.android.presentation.screen.options.OptionsDestinations;
import com.vuitton.android.presentation.screen.options.OptionsDestinationsKt;
import com.vuitton.android.presentation.screen.options.settings.SettingsActivity;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.ConsentRequirementUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.TutorialSectionDataUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.tracking.ShadeFinderTracker;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.tracking.ShadeFinderTrackingUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.tracking.ShadeFinderTrackingUiModelKt;
import com.vuitton.android.presentation.screen.plp.activities.PLPDestinations;
import com.vuitton.android.presentation.screen.plp.activities.PLPDestinationsKt;
import com.vuitton.android.presentation.screen.plp.activities.SkusPLPActivity;
import com.vuitton.android.presentation.screen.splash.SplashScreenActivity;
import com.vuitton.android.presentation.screen.spotlight.components.SpotlightScreenKt;
import com.vuitton.android.presentation.screen.spotlight.models.SpotlightViewState;
import com.vuitton.android.presentation.screen.thankyou.ThankYouActivity;
import com.vuitton.android.presentation.screen.thankyou.models.ThankYouTrackingUiModel;
import com.vuitton.android.presentation.screen.thelookimmersivearticle.models.TheLookImmersiveArticleViewState;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class hv0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69791b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f69792c;

    public /* synthetic */ hv0(Object obj, int i2) {
        this.f69791b = i2;
        this.f69792c = obj;
    }

    /* JADX WARN: Code duplicated, block: B:61:0x010d  */
    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        Function0 function0;
        String str;
        int i2 = this.f69791b;
        boolean z = false;
        String str2 = null;
        Object obj = this.f69792c;
        switch (i2) {
            case 0:
                SettingsActivity settingsActivity = (SettingsActivity) obj;
                SettingsActivity.Companion companion = SettingsActivity.p;
                settingsActivity.startActivity(OptionsDestinationsKt.a(OptionsDestinations.ToPrivacyPolicyPage.f59625a, settingsActivity));
                return Unit.f71739a;
            case 1:
                ((ShadeFinderTracker) obj).f62294a.a(ShadeFinderTrackingUiModelKt.a(ShadeFinderTrackingUiModel.OnTryAgainClickedEvent.f62307a));
                return Unit.f71739a;
            case 2:
                ShaderBrushSpan shaderBrushSpan = (ShaderBrushSpan) obj;
                int i3 = ShaderBrushSpan.f10918f;
                MutableState mutableState = shaderBrushSpan.d;
                if (((Size) ((SnapshotMutableStateImpl) mutableState).getF10755b()).f8822a == 9205357640488583168L || Size.e(((Size) ((SnapshotMutableStateImpl) mutableState).getF10755b()).f8822a)) {
                    return null;
                }
                return shaderBrushSpan.f10919b.b(((Size) ((SnapshotMutableStateImpl) mutableState).getF10755b()).f8822a);
            case 3:
                SharedSQLiteStatement sharedSQLiteStatement = (SharedSQLiteStatement) obj;
                String strB = sharedSQLiteStatement.b();
                RoomDatabase roomDatabase = sharedSQLiteStatement.f19511a;
                roomDatabase.getClass();
                roomDatabase.a();
                roomDatabase.b();
                return roomDatabase.l().getWritableDatabase().T0(strB);
            case 4:
                return ((SheetState) obj).d;
            case 5:
                SkusPLPActivity skusPLPActivity = (SkusPLPActivity) obj;
                SkusPLPActivity.Companion companion2 = SkusPLPActivity.p;
                skusPLPActivity.startActivity(PLPDestinationsKt.a(PLPDestinations.ToAICompanionPage.f62716a, skusPLPActivity));
                return Unit.f71739a;
            case 6:
                SliderState sliderState = (SliderState) obj;
                int i4 = SliderState.t;
                if (!((Boolean) ((SnapshotMutableStateImpl) sliderState.n).getF10755b()).booleanValue() && (function0 = sliderState.f7263b) != null) {
                    function0.mo47invoke();
                }
                return Unit.f71739a;
            case 7:
                int i5 = SplashScreenActivity.q;
                ((SplashScreenActivity) obj).B().A7();
                return Unit.f71739a;
            case 8:
                float f2 = SpotlightScreenKt.f64602a;
                return Integer.valueOf(((SpotlightViewState) obj).f64679a.size());
            case 9:
                return ((StepLink) obj).createStep();
            case 10:
                TextAnnotatedStringNode textAnnotatedStringNode = (TextAnnotatedStringNode) obj;
                textAnnotatedStringNode.G = null;
                SemanticsModifierNodeKt.b(textAnnotatedStringNode);
                DelegatableNodeKt.f(textAnnotatedStringNode).X();
                DrawModifierNodeKt.a(textAnnotatedStringNode);
                return Boolean.TRUE;
            case 11:
                return TextAnnotation.lambda$0$0((TextAnnotation) obj);
            case 12:
                TextContextMenuToolbarHandlerNode textContextMenuToolbarHandlerNode = (TextContextMenuToolbarHandlerNode) obj;
                if (textContextMenuToolbarHandlerNode.o) {
                    return TextContextMenuModifierKt.a(textContextMenuToolbarHandlerNode);
                }
                TextContextMenuData.f6066b.getClass();
                return TextContextMenuData.f6067c;
            case 13:
                return (TextForegroundStyle) obj;
            case 14:
                return new IntOffset(((IntRect) obj).c());
            case 15:
                TextStringSimpleNode textStringSimpleNode = (TextStringSimpleNode) obj;
                textStringSimpleNode.A = null;
                SemanticsModifierNodeKt.b(textStringSimpleNode);
                DelegatableNodeKt.f(textStringSimpleNode).X();
                DrawModifierNodeKt.a(textStringSimpleNode);
                return Boolean.TRUE;
            case 16:
                ThankYouActivity thankYouActivity = (ThankYouActivity) obj;
                ThankYouActivity.Companion companion3 = ThankYouActivity.q;
                thankYouActivity.H().Ba(ThankYouTrackingUiModel.CloseFeedbackScreen.f65290a);
                thankYouActivity.H().V3(null);
                return Unit.f71739a;
            case 17:
                return Integer.valueOf(((TheLookImmersiveArticleViewState) obj).f65395e.size());
            case 18:
                ScrollableState scrollableState = (ScrollableState) obj;
                if (scrollableState instanceof LazyGridState) {
                    LazyGridState lazyGridState = (LazyGridState) scrollableState;
                    LazyGridItemInfo lazyGridItemInfo = (LazyGridItemInfo) CollectionsKt.N(lazyGridState.h().getM());
                    if (lazyGridItemInfo != null && lazyGridItemInfo.getF5212a() == lazyGridState.h().getP() - 1) {
                        z = true;
                    }
                } else if (scrollableState instanceof LazyListState) {
                    LazyListState lazyListState = (LazyListState) scrollableState;
                    LazyListItemInfo lazyListItemInfo = (LazyListItemInfo) CollectionsKt.N(lazyListState.j().getF5211k());
                    if (lazyListItemInfo != null && lazyListItemInfo.getF5212a() == lazyListState.j().getN() - 1) {
                        z = true;
                    }
                }
                return Boolean.valueOf(z);
            case 19:
                TravelUiModel travelUiModel = ((TravelDetailsFragment) obj).I;
                if (travelUiModel != null) {
                    if (travelUiModel instanceof FlightUiModel) {
                        str = "plane";
                    } else if (travelUiModel instanceof TrainUiModel) {
                        str = "train";
                    } else {
                        if (!(travelUiModel instanceof HotelUiModel)) {
                            v40.g();
                            return null;
                        }
                        str = "hotel";
                    }
                    str2 = str;
                }
                return str2 == null ? "" : str2;
            case 20:
                TravelListFragment.Companion companion4 = TravelListFragment.L;
                return new TravelListAdapter(true, new p11((TravelListFragment) obj, 9));
            case 21:
                ((tt0) obj).mo47invoke();
                return Unit.f71739a;
            case 22:
                return Integer.valueOf(((TutorialSectionDataUiModel.AssetListSectionUiModel) obj).f62193a.size());
            case 23:
                return TutorialFragment.O((TutorialFragment) obj);
            case 24:
                Utility.b("end delay fired");
                ((p01) obj).mo47invoke();
                return Unit.f71739a;
            case 25:
                MutableState mutableState2 = ((ConsentRequirementUiModel) obj).f62164e;
                mutableState2.setValue(Boolean.valueOf(!((Boolean) mutableState2.getF10755b()).booleanValue()));
                return Boolean.TRUE;
            case 26:
                WatchDetailsFragment.Companion companion5 = WatchDetailsFragment.O;
                String string = ((WatchDetailsFragment) obj).requireArguments().getString("WATCH_ID");
                if (string != null) {
                    return string;
                }
                md.n("Required value was null.");
                return null;
            case 27:
                return WatchSettingsFragment.O((WatchSettingsFragment) obj);
            case 28:
                return WatchTutorialDetailsFragment.O((WatchTutorialDetailsFragment) obj);
            default:
                WatchfacePresentationFragment.Companion companion6 = WatchfacePresentationFragment.L;
                Bundle arguments = ((WatchfacePresentationFragment) obj).getArguments();
                if (arguments != null && arguments.getBoolean("HOW_TO_GET")) {
                    z = true;
                }
                return Boolean.valueOf(z);
        }
    }
}
