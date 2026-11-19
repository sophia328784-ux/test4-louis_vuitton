package defpackage;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.foundation.pager.f;
import androidx.compose.material3.SnackbarData;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.ui.semantics.AccessibilityAction;
import androidx.compose.ui.semantics.LiveRegionMode;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.core.content.ContextCompat;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.ui.CaptionStyleCompat;
import androidx.media3.ui.PlayerControlView;
import androidx.media3.ui.PlayerView;
import androidx.media3.ui.SubtitleView;
import androidx.navigation.NavBackStackEntry;
import com.linkplay.core.status.LPPlayChannel;
import com.lp.ble.manager.ApItem;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.molecules.LVSnackbarKt;
import com.vuitton.android.presentation.compose.components.LVCalendarKt;
import com.vuitton.android.presentation.screen.account.addresseditor.mappers.ProfileFormMapperKt;
import com.vuitton.android.presentation.screen.booking.form.models.BookingFormModuleUiModel;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.disposition.DispositionListAdapter;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial.wifilist.WifiListAdapter;
import com.vuitton.android.presentation.screen.dynamicform.model.FormUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModelImpl;
import com.vuitton.foundation.model.domain.model.profile.Profile;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.KProperty;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ag implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f505b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f506c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f507e;

    public /* synthetic */ ag(Context context, String str, boolean z) {
        this.f505b = 8;
        this.d = str;
        this.f507e = context;
        this.f506c = z;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f505b;
        final int i3 = 1;
        final int i4 = 0;
        Object obj2 = this.f507e;
        Object obj3 = this.d;
        final boolean z = this.f506c;
        switch (i2) {
            case 0:
                final BookingFormModuleUiModel bookingFormModuleUiModel = (BookingFormModuleUiModel) obj3;
                final Function1 function1 = (Function1) obj2;
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver.getClass();
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver, 0);
                if (bookingFormModuleUiModel.f54540f) {
                    semanticsPropertyReceiver.a(SemanticsActions.u, new AccessibilityAction(null, new Function0() { // from class: zf
                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            int i5 = i4;
                            BookingFormModuleUiModel bookingFormModuleUiModel2 = bookingFormModuleUiModel;
                            Function1 function2 = function1;
                            boolean z2 = z;
                            switch (i5) {
                                case 0:
                                    if (z2) {
                                        function2.invoke(bookingFormModuleUiModel2.f54536a);
                                    }
                                    break;
                                default:
                                    if (z2) {
                                        function2.invoke(bookingFormModuleUiModel2.f54536a);
                                    }
                                    break;
                            }
                            return Boolean.valueOf(z2);
                        }
                    }));
                } else {
                    semanticsPropertyReceiver.a(SemanticsActions.t, new AccessibilityAction(null, new Function0() { // from class: zf
                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            int i5 = i3;
                            BookingFormModuleUiModel bookingFormModuleUiModel2 = bookingFormModuleUiModel;
                            Function1 function2 = function1;
                            boolean z2 = z;
                            switch (i5) {
                                case 0:
                                    if (z2) {
                                        function2.invoke(bookingFormModuleUiModel2.f54536a);
                                    }
                                    break;
                                default:
                                    if (z2) {
                                        function2.invoke(bookingFormModuleUiModel2.f54536a);
                                    }
                                    break;
                            }
                            return Boolean.valueOf(z2);
                        }
                    }));
                }
                return Unit.f71739a;
            case 1:
                final NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj3;
                final qt qtVar = new qt(z, (List) obj2, navBackStackEntry);
                navBackStackEntry.f18117i.f18326k.a(qtVar);
                return new DisposableEffectResult() { // from class: androidx.navigation.compose.DialogHostKt$PopulateVisibleList$lambda$12$lambda$11$lambda$10$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void dispose() {
                        navBackStackEntry.f18117i.f18326k.d(qtVar);
                    }
                };
            case 2:
                DispositionListAdapter dispositionListAdapter = (DispositionListAdapter) obj3;
                LPPlayChannel lPPlayChannel = (LPPlayChannel) obj2;
                int i5 = DispositionListAdapter.DispositionViewHolder.d;
                ((View) obj).getClass();
                if (!z) {
                    dispositionListAdapter.d.invoke(lPPlayChannel);
                }
                return Unit.f71739a;
            case 3:
                String strValueOf = (String) obj3;
                String str = (String) obj2;
                SemanticsPropertyReceiver semanticsPropertyReceiver2 = (SemanticsPropertyReceiver) obj;
                float f2 = LVCalendarKt.f50961a;
                semanticsPropertyReceiver2.getClass();
                SemanticsPropertiesKt.a(semanticsPropertyReceiver2);
                if (!z) {
                    strValueOf = String.valueOf(str);
                }
                SemanticsPropertiesKt.r(semanticsPropertyReceiver2, strValueOf);
                return Unit.f71739a;
            case 4:
                SnackbarData snackbarData = (SnackbarData) obj3;
                SemanticsPropertyReceiver semanticsPropertyReceiver3 = (SemanticsPropertyReceiver) obj;
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = LVSnackbarKt.f48665a;
                semanticsPropertyReceiver3.getClass();
                if (((Boolean) ((MutableState) obj2).getF10755b()).booleanValue()) {
                    LiveRegionMode.f10281b.getClass();
                    SemanticsPropertiesKt.m(semanticsPropertyReceiver3, 0);
                }
                if (z) {
                    Role.f10289b.getClass();
                    SemanticsPropertiesKt.o(semanticsPropertyReceiver3, 0);
                    SemanticsPropertiesKt.e(semanticsPropertyReceiver3, snackbarData.getF7292a().getD(), new u70(snackbarData, 0));
                }
                return Unit.f71739a;
            case 5:
                MutableState mutableState = (MutableState) obj2;
                Context context = (Context) obj;
                context.getClass();
                PlayerView playerView = new PlayerView(context);
                playerView.setPlayer((ExoPlayer) obj3);
                playerView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                playerView.setKeepScreenOn(true);
                PlayerControlView playerControlView = (PlayerControlView) playerView.findViewById(R.id.exo_controller);
                if (playerControlView != null) {
                    playerControlView.setLayerType(1, null);
                }
                if (z) {
                    playerView.setUseController(false);
                }
                playerView.setShowNextButton(false);
                playerView.setShowPreviousButton(false);
                playerView.setControllerVisibilityListener(new q3(1, mutableState));
                SubtitleView subtitleView = playerView.getSubtitleView();
                if (subtitleView != null) {
                    subtitleView.setApplyEmbeddedFontSizes(false);
                    subtitleView.a();
                    subtitleView.setStyle(new CaptionStyleCompat(-1, ContextCompat.getColor(context, R.color.transparent_background), 0, 0, 0, null));
                }
                return playerView;
            case 6:
                OsaContactFormViewModelImpl osaContactFormViewModelImpl = (OsaContactFormViewModelImpl) obj2;
                FormSectionTypeUiModel formSectionTypeUiModel = (FormSectionTypeUiModel) obj;
                String strG = (z && ArraysKt.Z(new FormSectionTypeUiModel[]{FormSectionTypeUiModel.PHONE_NUMBER1, FormSectionTypeUiModel.PHONE_NUMBER_COUNTRY1, FormSectionTypeUiModel.PHONE_NUMBER_TYPE1}).contains(formSectionTypeUiModel)) ? FormUiModel.g((FormUiModel) obj3, formSectionTypeUiModel, null, false, 6) : null;
                if (strG != null) {
                    return strG;
                }
                Profile profile = (Profile) osaContactFormViewModelImpl.P.getValue();
                if (profile != null) {
                    return ProfileFormMapperKt.a(formSectionTypeUiModel, profile, osaContactFormViewModelImpl.z, true, true, ((FormUiModel) osaContactFormViewModelImpl.f60628h.getF57468c().getValue()).j());
                }
                return null;
            case 7:
                PagerState pagerState = (PagerState) obj3;
                CoroutineScope coroutineScope = (CoroutineScope) obj2;
                SemanticsPropertyReceiver semanticsPropertyReceiver4 = (SemanticsPropertyReceiver) obj;
                if (z) {
                    f fVar = new f(i4, pagerState, coroutineScope);
                    KProperty[] kPropertyArr = SemanticsPropertiesKt.f10359a;
                    semanticsPropertyReceiver4.a(SemanticsActions.y, new AccessibilityAction(null, fVar));
                    semanticsPropertyReceiver4.a(SemanticsActions.A, new AccessibilityAction(null, new f(i3, pagerState, coroutineScope)));
                } else {
                    f fVar2 = new f(2, pagerState, coroutineScope);
                    KProperty[] kPropertyArr2 = SemanticsPropertiesKt.f10359a;
                    semanticsPropertyReceiver4.a(SemanticsActions.z, new AccessibilityAction(null, fVar2));
                    semanticsPropertyReceiver4.a(SemanticsActions.B, new AccessibilityAction(null, new f(3, pagerState, coroutineScope)));
                }
                return Unit.f71739a;
            case 8:
                String str2 = (String) obj3;
                Context context2 = (Context) obj2;
                SemanticsPropertyReceiver semanticsPropertyReceiver5 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver5.getClass();
                SemanticsPropertiesKt.i(semanticsPropertyReceiver5, str2 + " : " + context2.getString(z ? R.string.alt_status_validated : R.string.alt_status_not_validated));
                return Unit.f71739a;
            case 9:
                String str3 = (String) obj3;
                SnackbarData snackbarData2 = (SnackbarData) obj2;
                SemanticsPropertyReceiver semanticsPropertyReceiver6 = (SemanticsPropertyReceiver) obj;
                if (z) {
                    LiveRegionMode.f10281b.getClass();
                    SemanticsPropertiesKt.m(semanticsPropertyReceiver6, 0);
                }
                u70 u70Var = new u70(snackbarData2, 4);
                KProperty[] kPropertyArr3 = SemanticsPropertiesKt.f10359a;
                semanticsPropertyReceiver6.a(SemanticsActions.v, new AccessibilityAction(null, u70Var));
                SemanticsPropertiesKt.n(semanticsPropertyReceiver6, str3);
                return Unit.f71739a;
            default:
                WifiListAdapter wifiListAdapter = (WifiListAdapter) obj3;
                ApItem apItem = (ApItem) obj2;
                int i6 = WifiListAdapter.WifiViewHolder.d;
                ((View) obj).getClass();
                if (!z) {
                    wifiListAdapter.d.invoke(apItem);
                }
                return Unit.f71739a;
        }
    }

    public /* synthetic */ ag(Object obj, boolean z, Object obj2, int i2) {
        this.f505b = i2;
        this.d = obj;
        this.f506c = z;
        this.f507e = obj2;
    }

    public /* synthetic */ ag(boolean z, Object obj, Object obj2, int i2) {
        this.f505b = i2;
        this.f506c = z;
        this.d = obj;
        this.f507e = obj2;
    }
}
