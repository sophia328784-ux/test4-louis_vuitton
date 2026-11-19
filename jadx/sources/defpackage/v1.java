package defpackage;

import android.view.View;
import androidx.compose.foundation.contextmenu.ContextMenuColors;
import androidx.compose.foundation.contextmenu.ContextMenuUiKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemContentFactoryKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemProvider;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSession;
import androidx.compose.foundation.text.contextmenu.internal.DefaultTextContextMenuDropdownProvider_androidKt;
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuDataProvider;
import androidx.compose.foundation.text.selection.AndroidSelectionHandles_androidKt;
import androidx.compose.foundation.text.selection.OffsetProvider;
import androidx.compose.material3.DatePickerColors;
import androidx.compose.material3.DatePickerKt;
import androidx.compose.material3.ExposedDropdownMenu_androidKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.unit.Density;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.compose.LifecycleEffectKt;
import androidx.lifecycle.compose.LifecycleResumePauseEffectScope;
import androidx.lifecycle.compose.LifecycleStartStopEffectScope;
import com.vuitton.android.designkit.components.components.LVVerticalGridKt;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVDragHandleKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVNavBarKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVPageNumberIndicatorKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVTagKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationTag;
import com.vuitton.android.designkit.ui.theme.molecules.LVSnackbarKt;
import com.vuitton.android.presentation.compose.components.LVCalendarKt;
import com.vuitton.android.presentation.screen.aicompanion.components.entrypoint.AICompanionTooltipKt;
import com.vuitton.android.presentation.screen.booking.details.components.BookingDetailsScreenKt;
import com.vuitton.android.presentation.screen.booking.list.models.BookingUiModel;
import com.vuitton.android.presentation.screen.booking.personalinfo.infoform.components.BookingLegalSectionKt;
import com.vuitton.android.presentation.screen.cart.components.NativeCartEmptyScreenKt;
import com.vuitton.android.presentation.screen.certificates.components.CertificateFormField;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.sections.AssessmentSendComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.components.DistantRepairFormBottomSheetScreenKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.StepState;
import com.vuitton.android.presentation.screen.feed.components.card.FeedNotifyIconButtonsKt;
import com.vuitton.android.presentation.screen.immersivearticle.components.cards.ImmersiveArticleVideoCtaViewKt;
import com.vuitton.android.presentation.screen.immersivearticle.models.VideoCtaArticleSectionUiModel;
import com.vuitton.android.presentation.screen.pdp.components.findinstore.FindInStoreNoResultKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.BeautyDualColorComparatorKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.TryOnProductUiModel;
import com.vuitton.android.presentation.screen.search.components.NoResultSearchComposableKt;
import com.vuitton.android.presentation.screen.search.models.SearchListState;
import com.vuitton.foundation.model.domain.model.booking.BookingExternalContent;
import java.util.List;
import java.util.Locale;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function5;
import kotlin.text.Regex;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class v1 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80468b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f80469c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f80470e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f80471f;

    public /* synthetic */ v1(LazyLayoutItemProvider lazyLayoutItemProvider, Object obj, int i2, Object obj2, int i3) {
        this.f80468b = 24;
        this.d = lazyLayoutItemProvider;
        this.f80470e = obj;
        this.f80469c = i2;
        this.f80471f = obj2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f80468b;
        int i3 = this.f80469c;
        Object obj3 = this.f80471f;
        Object obj4 = this.f80470e;
        Object obj5 = this.d;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                AICompanionTooltipKt.a((Rect) obj5, (Function0) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 1:
                ((Integer) obj2).getClass();
                AndroidSelectionHandles_androidKt.a((OffsetProvider) obj5, (Alignment) obj4, (ComposableLambdaImpl) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 2:
                ((Integer) obj2).getClass();
                AssessmentSendComponentKt.a((StepState) obj5, (Function1) obj4, (Function1) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 3:
                ((Integer) obj2).getClass();
                BeautyDualColorComparatorKt.d((Modifier) obj5, (TryOnProductUiModel) obj3, (Function0) obj4, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 4:
                ((Integer) obj2).getClass();
                BookingDetailsScreenKt.c((BookingUiModel) obj5, (Function1) obj4, (Function1) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 5:
                ((Integer) obj2).intValue();
                BookingLegalSectionKt.c((BookingExternalContent) obj5, (Function1) obj3, (Function0) obj4, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 6:
                ((Integer) obj2).getClass();
                Regex regex = CertificateFormField.l;
                ((CertificateFormField) obj5).c((Modifier) obj4, (Function1) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 7:
                ((Integer) obj2).getClass();
                ((ComposableLambdaImpl) obj5).c(obj4, obj3, (Composer) obj, RecomposeScopeImplKt.a(i3) | 1);
                break;
            case 8:
                ((Integer) obj2).getClass();
                ContextMenuUiKt.b((Modifier) obj5, (ContextMenuColors) obj4, (Function1) obj3, (Composer) obj, RecomposeScopeImplKt.a(1), this.f80469c);
                break;
            case 9:
                ((Integer) obj2).getClass();
                ContextMenuUiKt.a((ContextMenuColors) obj5, (Modifier) obj4, (ComposableLambdaImpl) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 10:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(7);
                DatePickerKt.f((Modifier) obj5, this.f80469c, (Function1) obj4, (DatePickerColors) obj3, (Composer) obj, iA);
                break;
            case 11:
                ((Integer) obj2).intValue();
                DefaultTextContextMenuDropdownProvider_androidKt.c((TextContextMenuSession) obj5, (TextContextMenuDataProvider) obj3, (Function0) obj4, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 12:
                ((Integer) obj2).getClass();
                DistantRepairFormBottomSheetScreenKt.d((Function0) obj4, (Function0) obj3, (Function1) obj5, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 13:
                ((Integer) obj2).intValue();
                ExposedDropdownMenu_androidKt.b((View) obj5, (Density) obj3, (Function0) obj4, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 14:
                ((Integer) obj2).getClass();
                FeedNotifyIconButtonsKt.b((Modifier) obj5, (LVColorScheme) obj3, (Function0) obj4, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 15:
                ((Integer) obj2).getClass();
                FindInStoreNoResultKt.a((Modifier) obj5, (String) obj4, (Function1) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 16:
                ((Integer) obj2).getClass();
                ImmersiveArticleVideoCtaViewKt.a((VideoCtaArticleSectionUiModel) obj5, (Function1) obj4, (ComposableLambdaImpl) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 17:
                ((Integer) obj2).getClass();
                LVCalendarKt.b((Modifier) obj5, (List) obj4, (Locale) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 18:
                ((Integer) obj2).getClass();
                LVDragHandleKt.a((Color) obj5, (String) obj3, (Function0) obj4, (Composer) obj, RecomposeScopeImplKt.a(1), this.f80469c);
                break;
            case 19:
                ((Integer) obj2).getClass();
                LVNavBarKt.a((Modifier) obj5, (List) obj4, (Function5) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 20:
                ((Integer) obj2).getClass();
                LVPageNumberIndicatorKt.a((Modifier) obj5, (PagerState) obj4, (LVColorScheme) obj3, (Composer) obj, RecomposeScopeImplKt.a(1), this.f80469c);
                break;
            case 21:
                ((Integer) obj2).getClass();
                LVSnackbarKt.b((SnackbarHostState) obj5, (Modifier) obj4, (Function3) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 22:
                ((Integer) obj2).getClass();
                LVTagKt.b((Modifier) obj5, (String) obj4, (ConfigurationTag) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 23:
                ((Integer) obj2).getClass();
                LVVerticalGridKt.a((Modifier) obj5, (List) obj4, (ComposableLambdaImpl) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 24:
                ((Integer) obj2).getClass();
                int iA2 = RecomposeScopeImplKt.a(1);
                LazyLayoutItemContentFactoryKt.a((LazyLayoutItemProvider) obj5, this.f80470e, this.f80469c, this.f80471f, (Composer) obj, iA2);
                break;
            case 25:
                ((Integer) obj2).getClass();
                LifecycleEffectKt.a((Lifecycle.Event) obj5, (LifecycleOwner) obj3, (Function0) obj4, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 26:
                ((Integer) obj2).intValue();
                LifecycleEffectKt.c((LifecycleOwner) obj5, (LifecycleResumePauseEffectScope) obj4, (Function1) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 27:
                ((Integer) obj2).intValue();
                LifecycleEffectKt.e((LifecycleOwner) obj5, (LifecycleStartStopEffectScope) obj4, (Function1) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 28:
                ((Integer) obj2).intValue();
                NativeCartEmptyScreenKt.a((SnackbarHostState) obj5, (Function2) obj3, (Function0) obj4, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            default:
                ((Integer) obj2).getClass();
                NoResultSearchComposableKt.d((Modifier) obj5, (SearchListState) obj4, (Function1) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ v1(int i2, int i3, Object obj, Object obj2, Object obj3) {
        this.f80468b = i3;
        this.d = obj;
        this.f80470e = obj2;
        this.f80471f = obj3;
        this.f80469c = i2;
    }

    public /* synthetic */ v1(Modifier modifier, int i2, Function1 function1, DatePickerColors datePickerColors, int i3) {
        this.f80468b = 10;
        this.d = modifier;
        this.f80469c = i2;
        this.f80470e = function1;
        this.f80471f = datePickerColors;
    }

    public /* synthetic */ v1(Modifier modifier, Object obj, Object obj2, int i2, int i3, int i4) {
        this.f80468b = i4;
        this.d = modifier;
        this.f80470e = obj;
        this.f80471f = obj2;
        this.f80469c = i3;
    }

    public /* synthetic */ v1(Color color, String str, Function0 function0, int i2, int i3) {
        this.f80468b = 18;
        this.d = color;
        this.f80471f = str;
        this.f80470e = function0;
        this.f80469c = i3;
    }

    public /* synthetic */ v1(Object obj, Object obj2, Function0 function0, int i2, int i3) {
        this.f80468b = i3;
        this.d = obj;
        this.f80471f = obj2;
        this.f80470e = function0;
        this.f80469c = i2;
    }

    public /* synthetic */ v1(Function0 function0, Function0 function1, Function1 function2, int i2) {
        this.f80468b = 12;
        this.f80470e = function0;
        this.f80471f = function1;
        this.d = function2;
        this.f80469c = i2;
    }
}
