package defpackage;

import androidx.compose.material3.IconButtonColors;
import androidx.compose.material3.IconButtonKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.material3.TooltipKt;
import androidx.compose.material3.TooltipState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.window.PopupPositionProvider;
import androidx.paging.compose.LazyPagingItems;
import com.vuitton.android.designkit.components.components.LVSwipeToRevealKt;
import com.vuitton.android.presentation.contact.compose.ContactUsIconKt;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.components.cards.ImmersiveArticleAssetViewKt;
import com.vuitton.android.presentation.screen.immersivearticle.components.cards.ImmersiveArticleVideoCtaViewKt;
import com.vuitton.android.presentation.screen.immersivearticle.models.AssetArticleSectionUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleType;
import com.vuitton.android.presentation.screen.immersivearticle.models.VideoCtaArticleSectionUiModel;
import com.vuitton.android.presentation.screen.pdp.components.subcomponents.PdpVariationTextListKt;
import com.vuitton.android.presentation.screen.plp.components.composables.PLPSimpleComposableKt;
import com.vuitton.android.presentation.screen.plp.components.subcomponents.PLPSnackBarKt;
import com.vuitton.android.presentation.screen.plp.viewmodels.PLPViewModel;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class rp implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79585b = 6;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f79586c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f79587e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f79588f;
    public final /* synthetic */ int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f79589h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f79590i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f79591j;

    public /* synthetic */ rp(PopupPositionProvider popupPositionProvider, ComposableLambdaImpl composableLambdaImpl, TooltipState tooltipState, Modifier modifier, boolean z, ComposableLambdaImpl composableLambdaImpl2, int i2, int i3) {
        this.f79589h = popupPositionProvider;
        this.f79586c = composableLambdaImpl;
        this.f79590i = tooltipState;
        this.d = modifier;
        this.f79587e = z;
        this.f79591j = composableLambdaImpl2;
        this.f79588f = i2;
        this.g = i3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f79585b;
        int i3 = this.g;
        int i4 = this.f79588f;
        Object obj3 = this.f79591j;
        Object obj4 = this.d;
        Object obj5 = this.f79590i;
        Object obj6 = this.f79586c;
        Object obj7 = this.f79589h;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(i4 | 1);
                ContactUsIconKt.a((Modifier) obj4, (ContactUsUiModel) obj7, (Function0) obj6, (Function0) obj5, this.f79587e, (String) obj3, (Composer) obj, iA, this.g);
                break;
            case 1:
                ((Integer) obj2).getClass();
                int iA2 = RecomposeScopeImplKt.a(i4 | 1);
                IconButtonKt.a((Function0) obj6, (Modifier) obj4, this.f79587e, (IconButtonColors) obj7, (Shape) obj5, (Function2) obj3, (Composer) obj, iA2, this.g);
                break;
            case 2:
                ((Integer) obj2).getClass();
                int iA3 = RecomposeScopeImplKt.a(i3 | 1);
                ImmersiveArticleAssetViewKt.b((Modifier) obj4, (AssetArticleSectionUiModel) obj7, this.f79588f, (ImmersiveArticleType) obj5, this.f79587e, (Function0) obj6, (Function1) obj3, (Composer) obj, iA3);
                break;
            case 3:
                ((Integer) obj2).getClass();
                int iA4 = RecomposeScopeImplKt.a(i3 | 1);
                ImmersiveArticleVideoCtaViewKt.b((Modifier) obj4, (VideoCtaArticleSectionUiModel) obj7, this.f79588f, this.f79587e, (Function1) obj3, (Function0) obj6, (Function0) obj5, (Composer) obj, iA4);
                break;
            case 4:
                ((Integer) obj2).getClass();
                int iA5 = RecomposeScopeImplKt.a(i4 | 1);
                LVSwipeToRevealKt.a((Modifier) obj4, (List) obj7, this.f79587e, (Function0) obj6, (Function0) obj5, (ComposableLambdaImpl) obj3, (Composer) obj, iA5, this.g);
                break;
            case 5:
                ((Integer) obj2).getClass();
                int iA6 = RecomposeScopeImplKt.a(i4 | 1);
                PLPSimpleComposableKt.a((PLPViewModel) obj4, (String) obj3, (Function0) obj6, (Function0) obj5, (Function1) obj7, this.f79587e, (Composer) obj, iA6, this.g);
                break;
            case 6:
                ((Integer) obj2).getClass();
                int iA7 = RecomposeScopeImplKt.a(i4 | 1);
                PLPSnackBarKt.a((SnackbarHostState) obj4, (LazyPagingItems) obj7, this.f79587e, (Flow) obj3, (Function0) obj6, (Function0) obj5, (Composer) obj, iA7, this.g);
                break;
            case 7:
                ((Integer) obj2).getClass();
                int iA8 = RecomposeScopeImplKt.a(i4 | 1);
                PdpVariationTextListKt.b((Modifier) obj4, (String) obj3, (String) obj7, this.f79587e, (List) obj6, (Function1) obj5, (Composer) obj, iA8, this.g);
                break;
            default:
                ((Integer) obj2).getClass();
                int iA9 = RecomposeScopeImplKt.a(i4 | 1);
                TooltipKt.b((PopupPositionProvider) obj7, (ComposableLambdaImpl) obj6, (TooltipState) obj5, (Modifier) obj4, this.f79587e, (ComposableLambdaImpl) obj3, (Composer) obj, iA9, this.g);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ rp(Modifier modifier, ContactUsUiModel contactUsUiModel, Function0 function0, Function0 function1, boolean z, String str, int i2, int i3) {
        this.d = modifier;
        this.f79589h = contactUsUiModel;
        this.f79586c = function0;
        this.f79590i = function1;
        this.f79587e = z;
        this.f79591j = str;
        this.f79588f = i2;
        this.g = i3;
    }

    public /* synthetic */ rp(Modifier modifier, AssetArticleSectionUiModel assetArticleSectionUiModel, int i2, ImmersiveArticleType immersiveArticleType, boolean z, Function0 function0, Function1 function1, int i3) {
        this.d = modifier;
        this.f79589h = assetArticleSectionUiModel;
        this.f79588f = i2;
        this.f79590i = immersiveArticleType;
        this.f79587e = z;
        this.f79586c = function0;
        this.f79591j = function1;
        this.g = i3;
    }

    public /* synthetic */ rp(Modifier modifier, VideoCtaArticleSectionUiModel videoCtaArticleSectionUiModel, int i2, boolean z, Function1 function1, Function0 function0, Function0 function2, int i3) {
        this.d = modifier;
        this.f79589h = videoCtaArticleSectionUiModel;
        this.f79588f = i2;
        this.f79587e = z;
        this.f79591j = function1;
        this.f79586c = function0;
        this.f79590i = function2;
        this.g = i3;
    }

    public /* synthetic */ rp(Modifier modifier, String str, String str2, boolean z, List list, Function1 function1, int i2, int i3) {
        this.d = modifier;
        this.f79591j = str;
        this.f79589h = str2;
        this.f79587e = z;
        this.f79586c = list;
        this.f79590i = function1;
        this.f79588f = i2;
        this.g = i3;
    }

    public /* synthetic */ rp(Modifier modifier, List list, boolean z, Function0 function0, Function0 function1, ComposableLambdaImpl composableLambdaImpl, int i2, int i3) {
        this.d = modifier;
        this.f79589h = list;
        this.f79587e = z;
        this.f79586c = function0;
        this.f79590i = function1;
        this.f79591j = composableLambdaImpl;
        this.f79588f = i2;
        this.g = i3;
    }

    public /* synthetic */ rp(SnackbarHostState snackbarHostState, LazyPagingItems lazyPagingItems, boolean z, Flow flow, Function0 function0, Function0 function1, int i2, int i3) {
        this.d = snackbarHostState;
        this.f79589h = lazyPagingItems;
        this.f79587e = z;
        this.f79591j = flow;
        this.f79586c = function0;
        this.f79590i = function1;
        this.f79588f = i2;
        this.g = i3;
    }

    public /* synthetic */ rp(PLPViewModel pLPViewModel, String str, Function0 function0, Function0 function1, Function1 function2, boolean z, int i2, int i3) {
        this.d = pLPViewModel;
        this.f79591j = str;
        this.f79586c = function0;
        this.f79590i = function1;
        this.f79589h = function2;
        this.f79587e = z;
        this.f79588f = i2;
        this.g = i3;
    }

    public /* synthetic */ rp(Function0 function0, Modifier modifier, boolean z, IconButtonColors iconButtonColors, Shape shape, Function2 function2, int i2, int i3) {
        this.f79586c = function0;
        this.d = modifier;
        this.f79587e = z;
        this.f79589h = iconButtonColors;
        this.f79590i = shape;
        this.f79591j = function2;
        this.f79588f = i2;
        this.g = i3;
    }
}
