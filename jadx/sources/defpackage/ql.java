package defpackage;

import androidx.compose.foundation.layout.FlowLayoutKt;
import androidx.compose.foundation.layout.FlowRowScopeInstance;
import androidx.compose.foundation.lazy.layout.LazySaveableStateHolderKt;
import androidx.compose.material3.SheetDefaultsKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import com.vuitton.android.designkit.components.LeftToRightLayoutKt;
import com.vuitton.android.designkit.components.components.LVSwipeToRevealKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVCheckboxKt;
import com.vuitton.android.presentation.compose.components.compositionlocalprovider.LVAICompanionCompositionLocalProviderKt;
import com.vuitton.android.presentation.compose.components.compositionlocalprovider.LVAudioGuideCompositionLocalProviderKt;
import com.vuitton.android.presentation.compose.components.compositionlocalprovider.LVCartLocalProviderKt;
import com.vuitton.android.presentation.compose.components.compositionlocalprovider.LVCatalogLocalProviderKt;
import com.vuitton.android.presentation.compose.components.compositionlocalprovider.LVCertificatesLocalProviderKt;
import com.vuitton.android.presentation.compose.components.compositionlocalprovider.LVCheckoutLocalProviderKt;
import com.vuitton.android.presentation.compose.components.compositionlocalprovider.LVContextualSizingLocalProviderKt;
import com.vuitton.android.presentation.compose.components.compositionlocalprovider.LVDistantCareLocalProviderKt;
import com.vuitton.android.presentation.compose.components.compositionlocalprovider.LVFeedCompositionLocalProviderKt;
import com.vuitton.android.presentation.compose.components.compositionlocalprovider.LVMainCompositionLocalProviderKt;
import com.vuitton.android.presentation.compose.components.compositionlocalprovider.LVPassLocalProviderKt;
import com.vuitton.android.presentation.compose.components.compositionlocalprovider.LVPdpLocalProviderKt;
import com.vuitton.android.presentation.compose.components.compositionlocalprovider.LVPlpCompositionLocalProviderKt;
import com.vuitton.android.presentation.compose.components.compositionlocalprovider.LVSearchCompositionLocalProviderKt;
import com.vuitton.android.presentation.compose.components.compositionlocalprovider.LVServiceLocalProviderKt;
import com.vuitton.android.presentation.compose.components.compositionlocalprovider.LVShadeFinderLocalProviderKt;
import com.vuitton.android.presentation.compose.components.compositionlocalprovider.LVWishlistLocalProviderKt;
import com.vuitton.android.presentation.screen.account.inbox.components.InboxLoadingScreenKt;
import com.vuitton.android.presentation.screen.certificates.components.list.CertificateLoadingScreenKt;
import com.vuitton.android.presentation.screen.options.settings.components.SettingsComposableKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ql implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79105b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ComposableLambdaImpl f79106c;

    public /* synthetic */ ql(ComposableLambdaImpl composableLambdaImpl, int i2) {
        this.f79105b = i2;
        this.f79106c = composableLambdaImpl;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f79105b;
        ComposableLambdaImpl composableLambdaImpl = this.f79106c;
        Composer composer = (Composer) obj;
        Integer num = (Integer) obj2;
        switch (i2) {
            case 0:
                num.getClass();
                CertificateLoadingScreenKt.a(composableLambdaImpl, composer, RecomposeScopeImplKt.a(7));
                break;
            case 1:
                int iIntValue = num.intValue();
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    composableLambdaImpl.invoke(composer, 0);
                } else {
                    composer.D();
                }
                break;
            case 2:
                int iIntValue2 = num.intValue();
                int i3 = FlowLayoutKt.f4978a;
                if (composer.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    composableLambdaImpl.A(FlowRowScopeInstance.f5000a, composer, 6);
                } else {
                    composer.D();
                }
                break;
            case 3:
                num.getClass();
                InboxLoadingScreenKt.a(composableLambdaImpl, composer, RecomposeScopeImplKt.a(7));
                break;
            case 4:
                num.getClass();
                LVAICompanionCompositionLocalProviderKt.a(composableLambdaImpl, composer, RecomposeScopeImplKt.a(7));
                break;
            case 5:
                num.getClass();
                LVAudioGuideCompositionLocalProviderKt.a(composableLambdaImpl, composer, RecomposeScopeImplKt.a(7));
                break;
            case 6:
                num.getClass();
                LVCartLocalProviderKt.a(composableLambdaImpl, composer, RecomposeScopeImplKt.a(7));
                break;
            case 7:
                num.getClass();
                LVCatalogLocalProviderKt.a(composableLambdaImpl, composer, RecomposeScopeImplKt.a(7));
                break;
            case 8:
                num.getClass();
                LVCertificatesLocalProviderKt.a(composableLambdaImpl, composer, RecomposeScopeImplKt.a(7));
                break;
            case 9:
                int iIntValue3 = num.intValue();
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = LVCheckboxKt.f48456a;
                if (composer.p(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    composableLambdaImpl.invoke(composer, 6);
                } else {
                    composer.D();
                }
                break;
            case 10:
                num.getClass();
                LVCheckoutLocalProviderKt.a(composableLambdaImpl, composer, RecomposeScopeImplKt.a(7));
                break;
            case 11:
                num.getClass();
                LVContextualSizingLocalProviderKt.a(composableLambdaImpl, composer, RecomposeScopeImplKt.a(7));
                break;
            case 12:
                num.getClass();
                LVDistantCareLocalProviderKt.a(composableLambdaImpl, composer, RecomposeScopeImplKt.a(7));
                break;
            case 13:
                num.getClass();
                LVFeedCompositionLocalProviderKt.b(composableLambdaImpl, composer, RecomposeScopeImplKt.a(7));
                break;
            case 14:
                num.getClass();
                LVMainCompositionLocalProviderKt.a(composableLambdaImpl, composer, RecomposeScopeImplKt.a(7));
                break;
            case 15:
                num.getClass();
                LVPassLocalProviderKt.a(composableLambdaImpl, composer, RecomposeScopeImplKt.a(7));
                break;
            case 16:
                num.getClass();
                LVPdpLocalProviderKt.a(composableLambdaImpl, composer, RecomposeScopeImplKt.a(7));
                break;
            case 17:
                num.getClass();
                LVPlpCompositionLocalProviderKt.a(composableLambdaImpl, composer, RecomposeScopeImplKt.a(7));
                break;
            case 18:
                num.getClass();
                LVSearchCompositionLocalProviderKt.a(composableLambdaImpl, composer, RecomposeScopeImplKt.a(7));
                break;
            case 19:
                num.getClass();
                LVServiceLocalProviderKt.a(composableLambdaImpl, composer, RecomposeScopeImplKt.a(7));
                break;
            case 20:
                num.getClass();
                LVShadeFinderLocalProviderKt.a(composableLambdaImpl, composer, RecomposeScopeImplKt.a(7));
                break;
            case 21:
                int iIntValue4 = num.intValue();
                float f2 = LVSwipeToRevealKt.f48255a;
                if (composer.p(iIntValue4 & 1, (iIntValue4 & 3) != 2)) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    composableLambdaImpl.A(Modifier.Companion.f8607b, composer, 6);
                } else {
                    composer.D();
                }
                break;
            case 22:
                num.getClass();
                LVWishlistLocalProviderKt.a(composableLambdaImpl, composer, RecomposeScopeImplKt.a(7));
                break;
            case 23:
                num.getClass();
                LazySaveableStateHolderKt.a(composableLambdaImpl, composer, RecomposeScopeImplKt.a(7));
                break;
            case 24:
                int iIntValue5 = num.intValue();
                if (composer.p(iIntValue5 & 1, (iIntValue5 & 3) != 2)) {
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                    composableLambdaImpl.invoke(composer, 0);
                } else {
                    composer.D();
                }
                break;
            case 25:
                num.getClass();
                LeftToRightLayoutKt.a(composableLambdaImpl, composer, RecomposeScopeImplKt.a(7));
                break;
            case 26:
                num.getClass();
                SettingsComposableKt.d(composableLambdaImpl, composer, RecomposeScopeImplKt.a(7));
                break;
            default:
                num.getClass();
                SheetDefaultsKt.a(composableLambdaImpl, composer, RecomposeScopeImplKt.a(55));
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ ql(ComposableLambdaImpl composableLambdaImpl, int i2, int i3) {
        this.f79105b = i3;
        this.f79106c = composableLambdaImpl;
    }
}
