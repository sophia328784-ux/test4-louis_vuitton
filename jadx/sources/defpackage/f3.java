package defpackage;

import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.animation.SharedTransitionScope;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.navigation3.runtime.a;
import androidx.navigation3.ui.NavDisplayKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.link.LinkHandler;
import com.vuitton.android.presentation.screen.audioplayer.model.AudioPlayerControllerUiState;
import com.vuitton.android.presentation.screen.audioplayer.model.AudioPlayerItemUiModel;
import com.vuitton.android.presentation.screen.authentication.AuthenticationViewModel;
import com.vuitton.android.presentation.screen.authentication.accountactivation.components.AccountActivationScreenKt;
import com.vuitton.android.presentation.screen.authentication.accountactivation.models.AccountActivationViewState;
import com.vuitton.android.presentation.screen.authentication.register.legacy.WebViewRegisterScreenKt;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.components.AssessmentFormBffComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.models.AssessmentBffViewState;
import com.vuitton.android.presentation.screen.immersivearticle.podcast.ExpandedPodcastKt;
import com.vuitton.android.presentation.screen.webview.AnalyticsWebInterface;
import com.vuitton.android.presentation.security.AkamaiSecurityHelper;
import com.vuitton.foundation.logger.Logger;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class f3 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69020b = 2;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f69021c;
    public final /* synthetic */ Function0 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f69022e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f69023f;
    public final /* synthetic */ int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f69024h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f69025i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f69026j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Object f69027k;
    public final /* synthetic */ Object l;
    public final /* synthetic */ Object m;
    public final /* synthetic */ Object n;

    public /* synthetic */ f3(Modifier modifier, AudioPlayerControllerUiState audioPlayerControllerUiState, AudioPlayerItemUiModel audioPlayerItemUiModel, AnimatedVisibilityScope animatedVisibilityScope, SharedTransitionScope sharedTransitionScope, Function1 function1, Function1 function2, Function0 function0, Function0 function3, Function0 function4, Function1 function5, int i2) {
        this.f69024h = modifier;
        this.f69025i = audioPlayerControllerUiState;
        this.f69026j = audioPlayerItemUiModel;
        this.f69027k = animatedVisibilityScope;
        this.l = sharedTransitionScope;
        this.f69021c = function1;
        this.m = function2;
        this.d = function0;
        this.f69022e = function3;
        this.f69023f = function4;
        this.n = function5;
        this.g = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f69020b;
        int i3 = this.g;
        Object obj3 = this.f69022e;
        Object obj4 = this.n;
        Object obj5 = this.m;
        Object obj6 = this.l;
        Object obj7 = this.f69023f;
        Object obj8 = this.f69027k;
        Object obj9 = this.f69026j;
        Object obj10 = this.f69025i;
        Object obj11 = this.f69024h;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(i3 | 1);
                AccountActivationScreenKt.a((AccountActivationViewState) obj11, (PagerState) obj10, (SnackbarHostState) obj9, (Function2) obj8, this.d, this.f69021c, (Function0) obj3, (Function0) obj7, (Function0) obj6, (Function0) obj5, (Function0) obj4, (Composer) obj, iA);
                break;
            case 1:
                ((Integer) obj2).getClass();
                int iA2 = RecomposeScopeImplKt.a(1);
                int iA3 = RecomposeScopeImplKt.a(i3);
                AssessmentFormBffComponentKt.a((AssessmentBffViewState) obj11, (CoroutineScope) obj10, this.f69021c, (Function1) obj9, (Function1) obj8, (Function1) obj6, (Function1) obj5, this.d, (Function0) obj3, (Function0) obj7, (LVModalBottomSheetState) obj4, (Composer) obj, iA2, iA3);
                break;
            case 2:
                ((Integer) obj2).getClass();
                int iA4 = RecomposeScopeImplKt.a(i3 | 1);
                ExpandedPodcastKt.a((Modifier) obj11, (AudioPlayerControllerUiState) obj10, (AudioPlayerItemUiModel) obj9, (AnimatedVisibilityScope) obj8, (SharedTransitionScope) obj6, this.f69021c, (Function1) obj5, this.d, (Function0) obj3, (Function0) obj7, (Function1) obj4, (Composer) obj, iA4);
                break;
            case 3:
                ((Integer) obj2).getClass();
                int iA5 = RecomposeScopeImplKt.a(i3 | 1);
                NavDisplayKt.c((List) obj11, (Modifier) obj10, (Alignment) obj9, this.d, (List) obj3, (List) obj7, (List) obj6, this.f69021c, (Function1) obj5, (Function2) obj8, (a) obj4, (Composer) obj, iA5);
                break;
            default:
                ((Integer) obj2).getClass();
                int iA6 = RecomposeScopeImplKt.a(1);
                WebViewRegisterScreenKt.a((AuthenticationViewModel) obj11, (AkamaiSecurityHelper) obj10, (AnalyticsWebInterface) obj9, (LinkHandler) obj8, (Logger) obj7, (String) obj6, (String) obj5, (String) obj4, this.d, this.f69021c, (Function0) obj3, (Composer) obj, iA6, this.g);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ f3(AuthenticationViewModel authenticationViewModel, AkamaiSecurityHelper akamaiSecurityHelper, AnalyticsWebInterface analyticsWebInterface, LinkHandler linkHandler, Logger logger, String str, String str2, String str3, Function0 function0, Function1 function1, Function0 function2, int i2, int i3) {
        this.f69024h = authenticationViewModel;
        this.f69025i = akamaiSecurityHelper;
        this.f69026j = analyticsWebInterface;
        this.f69027k = linkHandler;
        this.f69023f = logger;
        this.l = str;
        this.m = str2;
        this.n = str3;
        this.d = function0;
        this.f69021c = function1;
        this.f69022e = function2;
        this.g = i3;
    }

    public /* synthetic */ f3(AccountActivationViewState accountActivationViewState, PagerState pagerState, SnackbarHostState snackbarHostState, Function2 function2, Function0 function0, Function1 function1, Function0 function3, Function0 function4, Function0 function5, Function0 function6, Function0 function7, int i2) {
        this.f69024h = accountActivationViewState;
        this.f69025i = pagerState;
        this.f69026j = snackbarHostState;
        this.f69027k = function2;
        this.d = function0;
        this.f69021c = function1;
        this.f69022e = function3;
        this.f69023f = function4;
        this.l = function5;
        this.m = function6;
        this.n = function7;
        this.g = i2;
    }

    public /* synthetic */ f3(AssessmentBffViewState assessmentBffViewState, CoroutineScope coroutineScope, Function1 function1, Function1 function2, Function1 function3, Function1 function4, Function1 function5, Function0 function0, Function0 function6, Function0 function7, LVModalBottomSheetState lVModalBottomSheetState, int i2, int i3) {
        this.f69024h = assessmentBffViewState;
        this.f69025i = coroutineScope;
        this.f69021c = function1;
        this.f69026j = function2;
        this.f69027k = function3;
        this.l = function4;
        this.m = function5;
        this.d = function0;
        this.f69022e = function6;
        this.f69023f = function7;
        this.n = lVModalBottomSheetState;
        this.g = i3;
    }

    public /* synthetic */ f3(List list, Modifier modifier, Alignment alignment, Function0 function0, List list2, List list3, List list4, Function1 function1, Function1 function2, Function2 function3, a aVar, int i2) {
        this.f69024h = list;
        this.f69025i = modifier;
        this.f69026j = alignment;
        this.d = function0;
        this.f69022e = list2;
        this.f69023f = list3;
        this.l = list4;
        this.f69021c = function1;
        this.m = function2;
        this.f69027k = function3;
        this.n = aVar;
        this.g = i2;
    }
}
