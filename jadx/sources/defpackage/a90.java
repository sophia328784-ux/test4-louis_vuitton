package defpackage;

import androidx.compose.foundation.OverscrollEffect;
import androidx.compose.foundation.gestures.FlingBehavior;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.lazy.grid.GridCells;
import androidx.compose.foundation.lazy.grid.LazyGridDslKt;
import androidx.compose.foundation.lazy.grid.LazyGridState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import com.vuitton.android.presentation.screen.audioplayer.model.AudioPlayerControllerUiState;
import com.vuitton.android.presentation.screen.audioplayer.model.AudioPlayerItemUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleType;
import com.vuitton.android.presentation.screen.immersivearticle.podcast.PodcastComposableKt;
import com.vuitton.android.presentation.screen.osa.form.storeselection.components.OsaLocationFormBottomSheetScreen;
import com.vuitton.android.presentation.screen.osa.form.storeselection.components.OsaLocationFormBottomSheetScreenKt;
import com.vuitton.android.presentation.screen.pdp.components.subcomponents.PdpServicesKt;
import com.vuitton.android.presentation.screen.reinsurance.models.ReinsuranceUiModel;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import java.time.LocalDate;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.collections.immutable.ImmutableList;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class a90 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f449b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f450c;
    public final /* synthetic */ Function1 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f451e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f452f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f453h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f454i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f455j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Object f456k;
    public final /* synthetic */ Object l;

    public /* synthetic */ a90(GridCells.Fixed fixed, Modifier modifier, LazyGridState lazyGridState, PaddingValuesImpl paddingValuesImpl, Arrangement.Horizontal horizontal, Arrangement.Vertical vertical, FlingBehavior flingBehavior, boolean z, OverscrollEffect overscrollEffect, Function1 function1, int i2) {
        this.f451e = fixed;
        this.f452f = modifier;
        this.g = lazyGridState;
        this.f453h = paddingValuesImpl;
        this.f454i = horizontal;
        this.f455j = vertical;
        this.f456k = flingBehavior;
        this.f450c = z;
        this.l = overscrollEffect;
        this.d = function1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f449b;
        Object obj3 = this.l;
        Object obj4 = this.f456k;
        Object obj5 = this.f455j;
        Object obj6 = this.f454i;
        Object obj7 = this.f453h;
        Object obj8 = this.g;
        Object obj9 = this.f451e;
        Object obj10 = this.f452f;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(196609);
                LazyGridDslKt.a((GridCells.Fixed) obj9, (Modifier) obj10, (LazyGridState) obj8, (PaddingValuesImpl) obj7, (Arrangement.Horizontal) obj6, (Arrangement.Vertical) obj5, (FlingBehavior) obj4, this.f450c, (OverscrollEffect) obj3, this.d, (Composer) obj, iA);
                break;
            case 1:
                ((Integer) obj2).getClass();
                int iA2 = RecomposeScopeImplKt.a(1);
                OsaLocationFormBottomSheetScreenKt.b((InAppDispatch) obj9, (OsaLocationFormBottomSheetScreen) obj10, this.f450c, (List) obj8, (LocalDate) obj7, (Function0) obj6, this.d, (Function0) obj5, (Function0) obj4, (Function0) obj3, (Composer) obj, iA2);
                break;
            case 2:
                ((Integer) obj2).getClass();
                int iA3 = RecomposeScopeImplKt.a(1);
                PdpServicesKt.a((Modifier) obj10, this.f450c, (ReinsuranceUiModel) obj9, (ImmutableList) obj8, (List) obj7, (Function0) obj6, (Function0) obj5, (Function0) obj4, this.d, (Function2) obj3, (Composer) obj, iA3);
                break;
            default:
                ((Integer) obj2).getClass();
                int iA4 = RecomposeScopeImplKt.a(1);
                PodcastComposableKt.a((Modifier) obj10, this.f450c, (String) obj9, (ImmersiveArticleType) obj8, (AudioPlayerControllerUiState) obj7, (AudioPlayerItemUiModel) obj6, this.d, (Function0) obj5, (Function0) obj4, (Function1) obj3, (Composer) obj, iA4);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ a90(Modifier modifier, boolean z, ReinsuranceUiModel reinsuranceUiModel, ImmutableList immutableList, List list, Function0 function0, Function0 function1, Function0 function2, Function1 function3, Function2 function4, int i2) {
        this.f452f = modifier;
        this.f450c = z;
        this.f451e = reinsuranceUiModel;
        this.g = immutableList;
        this.f453h = list;
        this.f454i = function0;
        this.f455j = function1;
        this.f456k = function2;
        this.d = function3;
        this.l = function4;
    }

    public /* synthetic */ a90(Modifier modifier, boolean z, String str, ImmersiveArticleType immersiveArticleType, AudioPlayerControllerUiState audioPlayerControllerUiState, AudioPlayerItemUiModel audioPlayerItemUiModel, Function1 function1, Function0 function0, Function0 function2, Function1 function3, int i2) {
        this.f452f = modifier;
        this.f450c = z;
        this.f451e = str;
        this.g = immersiveArticleType;
        this.f453h = audioPlayerControllerUiState;
        this.f454i = audioPlayerItemUiModel;
        this.d = function1;
        this.f455j = function0;
        this.f456k = function2;
        this.l = function3;
    }

    public /* synthetic */ a90(InAppDispatch inAppDispatch, OsaLocationFormBottomSheetScreen osaLocationFormBottomSheetScreen, boolean z, List list, LocalDate localDate, Function0 function0, Function1 function1, Function0 function2, Function0 function3, Function0 function4, int i2) {
        this.f451e = inAppDispatch;
        this.f452f = osaLocationFormBottomSheetScreen;
        this.f450c = z;
        this.g = list;
        this.f453h = localDate;
        this.f454i = function0;
        this.d = function1;
        this.f455j = function2;
        this.f456k = function3;
        this.l = function4;
    }
}
