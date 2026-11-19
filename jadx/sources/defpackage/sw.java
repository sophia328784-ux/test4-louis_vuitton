package defpackage;

import androidx.compose.material3.ColorScheme;
import androidx.compose.material3.MaterialThemeKt;
import androidx.compose.material3.Shapes;
import androidx.compose.material3.Typography;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.compose.components.FabNoElevationKt;
import com.vuitton.android.presentation.compose.components.FabStyle;
import com.vuitton.android.presentation.contact.compose.ContactUsBottomSheetKt;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.screen.account.myinformation.components.MyInformationScreenKt;
import com.vuitton.android.presentation.screen.cart.components.giftmessage.SelectableItemsCardKt;
import com.vuitton.android.presentation.screen.feed.components.subcomponents.FeedWelcomeKt;
import com.vuitton.android.presentation.screen.options.notifications.components.NotificationPreferencesKt;
import com.vuitton.android.presentation.screen.options.notifications.models.NotificationsPreferencesViewState;
import com.vuitton.android.presentation.screen.reinsurance.components.ReinsuranceListKt;
import com.vuitton.android.presentation.screen.webview.WebViewFragment;
import com.vuitton.android.presentation.screen.webview.WebViewUiModel;
import com.vuitton.android.presentation.screen.webview.b;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class sw implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79886b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f79887c;
    public final /* synthetic */ int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f79888e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f79889f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f79890h;

    public /* synthetic */ sw(int i2, int i3, String str, String str2, String str3, Function0 function0) {
        this.f79886b = 3;
        this.d = i2;
        this.f79887c = str;
        this.g = function0;
        this.f79889f = str2;
        this.f79890h = str3;
        this.f79888e = i3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f79886b;
        int i3 = this.f79888e;
        int i4 = this.d;
        Object obj3 = this.f79890h;
        Object obj4 = this.g;
        Object obj5 = this.f79889f;
        Object obj6 = this.f79887c;
        int i5 = 1;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                FabNoElevationKt.a((Modifier) obj6, (FabStyle) obj5, (Function0) obj4, (ComposableLambdaImpl) obj3, (Composer) obj, RecomposeScopeImplKt.a(i4 | 1), this.f79888e);
                break;
            case 1:
                ((Integer) obj2).getClass();
                FeedWelcomeKt.a((Modifier) obj6, (String) obj5, (String) obj4, (LVColorScheme) obj3, (Composer) obj, RecomposeScopeImplKt.a(i4 | 1), this.f79888e);
                break;
            case 2:
                ((Integer) obj2).getClass();
                MaterialThemeKt.b((ColorScheme) obj6, (Shapes) obj5, (Typography) obj4, (Function2) obj3, (Composer) obj, RecomposeScopeImplKt.a(i4 | 1), this.f79888e);
                break;
            case 3:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(i3 | 1);
                int i6 = this.d;
                MyInformationScreenKt.a(i6, iA, (Composer) obj, (String) obj6, (String) obj5, (String) obj3, (Function0) obj4);
                break;
            case 4:
                ((Integer) obj2).getClass();
                NotificationPreferencesKt.a((Modifier) obj6, (NotificationsPreferencesViewState) obj5, (Function2) obj3, (Function0) obj4, (Composer) obj, RecomposeScopeImplKt.a(i4 | 1), this.f79888e);
                break;
            case 5:
                ((Integer) obj2).getClass();
                ReinsuranceListKt.a((Modifier) obj6, (String) obj5, (String) obj3, this.d, (Function0) obj4, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 6:
                ((Integer) obj2).getClass();
                SelectableItemsCardKt.a((Modifier) obj6, (String) obj5, (List) obj4, (Function1) obj3, (Composer) obj, RecomposeScopeImplKt.a(i4 | 1), this.f79888e);
                break;
            default:
                LVModalBottomSheetState lVModalBottomSheetState = (LVModalBottomSheetState) obj6;
                LVModalBottomSheetState lVModalBottomSheetState2 = (LVModalBottomSheetState) obj5;
                WebViewFragment webViewFragment = (WebViewFragment) obj4;
                State state = (State) obj3;
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                WebViewFragment.Companion companion = WebViewFragment.n1;
                int i7 = 0;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    ContactUsUiModel contactUsUiModel = ((WebViewUiModel) state.getF10755b()).f65535a;
                    boolean zY = composer.y(webViewFragment) | composer.d(i4) | composer.d(i3);
                    Object objX = composer.x();
                    Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (zY || objX == composer$Companion$Empty$1) {
                        objX = new md0(i4, i3, i5, webViewFragment);
                        composer.q(objX);
                    }
                    Function1 function1 = (Function1) objX;
                    boolean zY2 = composer.y(webViewFragment);
                    Object objX2 = composer.x();
                    if (zY2 || objX2 == composer$Companion$Empty$1) {
                        objX2 = new b(webViewFragment, i7);
                        composer.q(objX2);
                    }
                    int i8 = LVModalBottomSheetState.f48797e;
                    ContactUsBottomSheetKt.a(contactUsUiModel, lVModalBottomSheetState, lVModalBottomSheetState2, function1, (Function0) objX2, composer, (i8 << 3) | (i8 << 6));
                } else {
                    composer.D();
                }
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ sw(Modifier modifier, NotificationsPreferencesViewState notificationsPreferencesViewState, Function2 function2, Function0 function0, int i2, int i3) {
        this.f79886b = 4;
        this.f79887c = modifier;
        this.f79889f = notificationsPreferencesViewState;
        this.f79890h = function2;
        this.g = function0;
        this.d = i2;
        this.f79888e = i3;
    }

    public /* synthetic */ sw(Modifier modifier, String str, String str2, int i2, Function0 function0, int i3) {
        this.f79886b = 5;
        this.f79887c = modifier;
        this.f79889f = str;
        this.f79890h = str2;
        this.d = i2;
        this.g = function0;
        this.f79888e = i3;
    }

    public /* synthetic */ sw(LVModalBottomSheetState lVModalBottomSheetState, LVModalBottomSheetState lVModalBottomSheetState2, WebViewFragment webViewFragment, int i2, int i3, MutableState mutableState) {
        this.f79886b = 7;
        this.f79887c = lVModalBottomSheetState;
        this.f79889f = lVModalBottomSheetState2;
        this.g = webViewFragment;
        this.d = i2;
        this.f79888e = i3;
        this.f79890h = mutableState;
    }

    public /* synthetic */ sw(Object obj, Object obj2, Object obj3, Object obj4, int i2, int i3, int i4) {
        this.f79886b = i4;
        this.f79887c = obj;
        this.f79889f = obj2;
        this.g = obj3;
        this.f79890h = obj4;
        this.d = i2;
        this.f79888e = i3;
    }
}
