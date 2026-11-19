package defpackage;

import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.animation.SharedTransitionScope;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.screen.audioplayer.model.AudioPlayerItemUiModel;
import com.vuitton.android.presentation.screen.authentication.register.components.NativeRegisterActivationComposableKt;
import com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterViewState;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.pdp.Lv3dViewerComposableKt;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.pdp.Lv3dViewerUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.podcast.CollapsedPodcastKt;
import com.vuitton.android.presentation.screen.pdp.components.subcomponents.PdpVariationImageListKt;
import com.vuitton.android.presentation.screen.privacy.components.precompliance.PrivacyPreComplianceScreenKt;
import com.vuitton.android.presentation.screen.thankyou.components.ThankYouScreenKt;
import com.vuitton.android.presentation.screen.thankyou.models.CheckoutConfirmationDetailUiModel;
import com.vuitton.android.presentation.screen.thankyou.models.ThankYouFeatureFlags;
import com.vuitton.foundation.model.domain.model.privacy.PrivacyType;
import java.util.List;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class nm implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76562b = 2;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f76563c;
    public final /* synthetic */ Function d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function0 f76564e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f76565f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f76566h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f76567i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f76568j;

    public /* synthetic */ nm(ColumnScope columnScope, NativeRegisterViewState nativeRegisterViewState, Function1 function1, Function0 function0, Function0 function2, Function1 function3, boolean z, int i2) {
        this.g = columnScope;
        this.f76566h = nativeRegisterViewState;
        this.d = function1;
        this.f76564e = function0;
        this.f76567i = function2;
        this.f76568j = function3;
        this.f76563c = z;
        this.f76565f = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f76562b;
        int i3 = this.f76565f;
        Function function = this.d;
        Object obj3 = this.f76568j;
        Object obj4 = this.f76567i;
        Object obj5 = this.f76566h;
        Object obj6 = this.g;
        switch (i2) {
            case 0:
                ((Integer) obj2).intValue();
                int iA = RecomposeScopeImplKt.a(i3 | 1);
                CollapsedPodcastKt.a((Modifier) obj6, this.f76563c, (AudioPlayerItemUiModel) obj5, (AnimatedVisibilityScope) obj4, (SharedTransitionScope) obj3, (Function1) function, this.f76564e, (Composer) obj, iA);
                break;
            case 1:
                ((Integer) obj2).getClass();
                int iA2 = RecomposeScopeImplKt.a(i3 | 1);
                Lv3dViewerComposableKt.a((Lv3dViewerUiModel) obj6, this.f76563c, (Function1) function, this.f76564e, (Function1) obj5, (Function0) obj4, (Function0) obj3, (Composer) obj, iA2);
                break;
            case 2:
                ((Integer) obj2).getClass();
                int iA3 = RecomposeScopeImplKt.a(i3 | 1);
                NativeRegisterActivationComposableKt.a((ColumnScope) obj6, (NativeRegisterViewState) obj5, (Function1) function, this.f76564e, (Function0) obj4, (Function1) obj3, this.f76563c, (Composer) obj, iA3);
                break;
            case 3:
                ((Integer) obj2).getClass();
                int iA4 = RecomposeScopeImplKt.a(i3 | 1);
                PdpVariationImageListKt.c((Modifier) obj6, (String) obj5, (String) obj4, (List) obj3, this.f76563c, this.f76564e, (Function1) function, (Composer) obj, iA4);
                break;
            case 4:
                ((Integer) obj2).intValue();
                int iA5 = RecomposeScopeImplKt.a(i3 | 1);
                PrivacyPreComplianceScreenKt.a((PaddingValues) obj6, (PrivacyType) obj5, this.f76563c, this.f76564e, (Function0) obj4, (Function0) obj3, (Function0) function, (Composer) obj, iA5);
                break;
            default:
                ((Integer) obj2).intValue();
                int iA6 = RecomposeScopeImplKt.a(i3 | 1);
                ThankYouScreenKt.i((CheckoutConfirmationDetailUiModel) obj6, (ThankYouFeatureFlags) obj5, (LVModalBottomSheetState) obj4, this.f76563c, this.f76564e, (Function0) obj3, (Function1) function, (Composer) obj, iA6);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ nm(PaddingValues paddingValues, PrivacyType privacyType, boolean z, Function0 function0, Function0 function1, Function0 function2, Function0 function3, int i2) {
        this.g = paddingValues;
        this.f76566h = privacyType;
        this.f76563c = z;
        this.f76564e = function0;
        this.f76567i = function1;
        this.f76568j = function2;
        this.d = function3;
        this.f76565f = i2;
    }

    public /* synthetic */ nm(Modifier modifier, String str, String str2, List list, boolean z, Function0 function0, Function1 function1, int i2) {
        this.g = modifier;
        this.f76566h = str;
        this.f76567i = str2;
        this.f76568j = list;
        this.f76563c = z;
        this.f76564e = function0;
        this.d = function1;
        this.f76565f = i2;
    }

    public /* synthetic */ nm(Modifier modifier, boolean z, AudioPlayerItemUiModel audioPlayerItemUiModel, AnimatedVisibilityScope animatedVisibilityScope, SharedTransitionScope sharedTransitionScope, Function1 function1, Function0 function0, int i2) {
        this.g = modifier;
        this.f76563c = z;
        this.f76566h = audioPlayerItemUiModel;
        this.f76567i = animatedVisibilityScope;
        this.f76568j = sharedTransitionScope;
        this.d = function1;
        this.f76564e = function0;
        this.f76565f = i2;
    }

    public /* synthetic */ nm(Lv3dViewerUiModel lv3dViewerUiModel, boolean z, Function1 function1, Function0 function0, Function1 function2, Function0 function3, Function0 function4, int i2) {
        this.g = lv3dViewerUiModel;
        this.f76563c = z;
        this.d = function1;
        this.f76564e = function0;
        this.f76566h = function2;
        this.f76567i = function3;
        this.f76568j = function4;
        this.f76565f = i2;
    }

    public /* synthetic */ nm(CheckoutConfirmationDetailUiModel checkoutConfirmationDetailUiModel, ThankYouFeatureFlags thankYouFeatureFlags, LVModalBottomSheetState lVModalBottomSheetState, boolean z, Function0 function0, Function0 function1, Function1 function2, int i2) {
        this.g = checkoutConfirmationDetailUiModel;
        this.f76566h = thankYouFeatureFlags;
        this.f76567i = lVModalBottomSheetState;
        this.f76563c = z;
        this.f76564e = function0;
        this.f76568j = function1;
        this.d = function2;
        this.f76565f = i2;
    }
}
