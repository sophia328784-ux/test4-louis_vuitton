package defpackage;

import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.navigation3.runtime.NavBackStack;
import com.vuitton.android.presentation.link.navigation.ContributionLinkNavigator;
import com.vuitton.android.presentation.screen.audioplayer.AudioPlayerViewModel;
import com.vuitton.android.presentation.screen.feed.components.FeedDiscoverScreenKt;
import com.vuitton.android.presentation.screen.feed.models.FeedViewState;
import com.vuitton.android.presentation.screen.filter.quickaccess.QuickAccessFiltersViewModel;
import com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleViewModel;
import com.vuitton.android.presentation.screen.immersivearticle.components.ImmersiveArticleComposableKt;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleType;
import com.vuitton.android.presentation.screen.permissions.PermissionsViewModel;
import com.vuitton.android.presentation.screen.plp.viewmodels.PSPViewModel;
import com.vuitton.android.presentation.screen.search.SearchViewModel;
import com.vuitton.android.presentation.screen.search.components.SearchNavDisplayKt;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class kx implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f75883b = 2;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f75884c;
    public final /* synthetic */ Function0 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function1 f75885e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f75886f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f75887h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f75888i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f75889j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Object f75890k;
    public final /* synthetic */ Object l;
    public final /* synthetic */ Object m;
    public final /* synthetic */ Object n;
    public final /* synthetic */ Function o;

    public /* synthetic */ kx(NavBackStack navBackStack, boolean z, SearchViewModel searchViewModel, PSPViewModel pSPViewModel, QuickAccessFiltersViewModel quickAccessFiltersViewModel, ContributionLinkNavigator contributionLinkNavigator, Function1 function1, Function0 function0, Function0 function2, Function0 function3, Function0 function4, String str, Function0 function5, int i2) {
        this.f75888i = navBackStack;
        this.f75884c = z;
        this.f75889j = searchViewModel;
        this.f75886f = pSPViewModel;
        this.g = quickAccessFiltersViewModel;
        this.f75887h = contributionLinkNavigator;
        this.f75885e = function1;
        this.d = function0;
        this.f75890k = function2;
        this.l = function3;
        this.m = function4;
        this.n = str;
        this.o = function5;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f75883b;
        Function function = this.o;
        Object obj3 = this.n;
        Object obj4 = this.m;
        Object obj5 = this.l;
        Object obj6 = this.f75890k;
        Object obj7 = this.f75887h;
        Object obj8 = this.g;
        Object obj9 = this.f75886f;
        Object obj10 = this.f75889j;
        Object obj11 = this.f75888i;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(1);
                FeedDiscoverScreenKt.a((FeedViewState) obj11, this.f75884c, (SnackbarHostState) obj10, this.d, this.f75885e, (qb0) obj5, (Function1) obj9, (Function1) obj8, (d1) obj4, (Function2) obj3, (Function1) obj7, (Function2) function, (Function1) obj6, (Composer) obj, iA);
                break;
            case 1:
                ((Integer) obj2).getClass();
                int iA2 = RecomposeScopeImplKt.a(1);
                ImmersiveArticleComposableKt.a((ImmersiveArticleViewModel) obj11, (PermissionsViewModel) obj10, (AudioPlayerViewModel) obj6, (String) obj5, this.f75884c, (ImmersiveArticleType) obj4, (SnapshotStateList) obj3, this.d, (Function0) function, this.f75885e, (Function1) obj9, (Function1) obj8, (Function1) obj7, (Composer) obj, iA2);
                break;
            default:
                ((Integer) obj2).getClass();
                int iA3 = RecomposeScopeImplKt.a(1);
                SearchNavDisplayKt.a((NavBackStack) obj11, this.f75884c, (SearchViewModel) obj10, (PSPViewModel) obj9, (QuickAccessFiltersViewModel) obj8, (ContributionLinkNavigator) obj7, this.f75885e, this.d, (Function0) obj6, (Function0) obj5, (Function0) obj4, (String) obj3, (Function0) function, (Composer) obj, iA3);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ kx(FeedViewState feedViewState, boolean z, SnackbarHostState snackbarHostState, Function0 function0, Function1 function1, qb0 qb0Var, Function1 function2, Function1 function3, d1 d1Var, Function2 function4, Function1 function5, Function2 function6, Function1 function7, int i2) {
        this.f75888i = feedViewState;
        this.f75884c = z;
        this.f75889j = snackbarHostState;
        this.d = function0;
        this.f75885e = function1;
        this.l = qb0Var;
        this.f75886f = function2;
        this.g = function3;
        this.m = d1Var;
        this.n = function4;
        this.f75887h = function5;
        this.o = function6;
        this.f75890k = function7;
    }

    public /* synthetic */ kx(ImmersiveArticleViewModel immersiveArticleViewModel, PermissionsViewModel permissionsViewModel, AudioPlayerViewModel audioPlayerViewModel, String str, boolean z, ImmersiveArticleType immersiveArticleType, SnapshotStateList snapshotStateList, Function0 function0, Function0 function1, Function1 function2, Function1 function3, Function1 function4, Function1 function5, int i2) {
        this.f75888i = immersiveArticleViewModel;
        this.f75889j = permissionsViewModel;
        this.f75890k = audioPlayerViewModel;
        this.l = str;
        this.f75884c = z;
        this.m = immersiveArticleType;
        this.n = snapshotStateList;
        this.d = function0;
        this.o = function1;
        this.f75885e = function2;
        this.f75886f = function3;
        this.g = function4;
        this.f75887h = function5;
    }
}
