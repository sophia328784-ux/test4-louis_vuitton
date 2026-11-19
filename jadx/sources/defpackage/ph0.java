package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.hilt.lifecycle.viewmodel.compose.HiltViewModelKt;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.lifecycle.viewmodel.compose.ViewModelKt;
import com.vuitton.android.designkit.ui.theme.ThemeKt;
import com.vuitton.android.presentation.screen.options.optoutprivacymenu.OptOutPrivacyMenuActivity;
import com.vuitton.android.presentation.screen.options.optoutprivacymenu.OptOutPrivacyMenuViewModel;
import com.vuitton.android.presentation.screen.options.optoutprivacymenu.OptOutPrivacyMenuViewModelImpl;
import com.vuitton.android.presentation.screen.options.optoutprivacymenu.components.OptOutPrivacyMenuComposableKt;
import com.vuitton.android.presentation.screen.webview.WebViewRouter;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ph0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f78856b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ OptOutPrivacyMenuActivity f78857c;

    public /* synthetic */ ph0(OptOutPrivacyMenuActivity optOutPrivacyMenuActivity, int i2) {
        this.f78856b = i2;
        this.f78857c = optOutPrivacyMenuActivity;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f78856b;
        OptOutPrivacyMenuActivity optOutPrivacyMenuActivity = this.f78857c;
        int i3 = 1;
        switch (i2) {
            case 0:
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                OptOutPrivacyMenuActivity.Companion companion = OptOutPrivacyMenuActivity.q;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    ThemeKt.a(null, ComposableLambdaKt.b(-961661779, new ph0(optOutPrivacyMenuActivity, i3), composer), composer, 48);
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            default:
                Composer composer2 = (Composer) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                OptOutPrivacyMenuActivity.Companion companion2 = OptOutPrivacyMenuActivity.q;
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    ViewModelStoreOwner viewModelStoreOwnerA = LocalViewModelStoreOwner.a(composer2);
                    if (viewModelStoreOwnerA == null) {
                        md.k("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                        return null;
                    }
                    OptOutPrivacyMenuViewModel optOutPrivacyMenuViewModel = (OptOutPrivacyMenuViewModel) ViewModelKt.a(Reflection.f71922a.b(OptOutPrivacyMenuViewModelImpl.class), viewModelStoreOwnerA, null, HiltViewModelKt.a(viewModelStoreOwnerA, composer2), viewModelStoreOwnerA instanceof HasDefaultViewModelProviderFactory ? ((HasDefaultViewModelProviderFactory) viewModelStoreOwnerA).getDefaultViewModelCreationExtras() : CreationExtras.Empty.f13578c, composer2);
                    WebViewRouter webViewRouter = optOutPrivacyMenuActivity.p;
                    if (webViewRouter == null) {
                        Intrinsics.h("webViewRouter");
                        throw null;
                    }
                    OptOutPrivacyMenuComposableKt.a(optOutPrivacyMenuViewModel, webViewRouter, composer2, 0);
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
        }
    }
}
