package defpackage;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.lazy.LazyListIntervalContent;
import androidx.compose.foundation.lazy.grid.LazyGridIntervalContent;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemProvider;
import androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridIntervalContent;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.layout.LayoutCoordinates;
import com.vuitton.android.presentation.screen.spotlight.components.SpotlightHotspotsKt;
import com.vuitton.android.presentation.screen.spotlight.components.SpotlightScreenKt;
import com.vuitton.android.presentation.screen.spotlight.models.SpotlightSlideUiModel;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class u00 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80188b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MutableState f80189c;

    public /* synthetic */ u00(int i2, MutableState mutableState) {
        this.f80188b = i2;
        this.f80189c = mutableState;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        List list;
        int i2 = this.f80188b;
        MutableState mutableState = this.f80189c;
        switch (i2) {
            case 0:
                mutableState.setValue(Boolean.valueOf(!((Boolean) mutableState.getF10755b()).booleanValue()));
                return Unit.f71739a;
            case 1:
                mutableState.setValue(Boolean.TRUE);
                return Unit.f71739a;
            case 2:
                mutableState.setValue(Boolean.FALSE);
                return Unit.f71739a;
            case 3:
                mutableState.setValue(Boolean.TRUE);
                return Unit.f71739a;
            case 4:
                mutableState.setValue(Boolean.FALSE);
                return Unit.f71739a;
            case 5:
                return new LazyGridIntervalContent((Function1) mutableState.getF10755b());
            case 6:
                return (LazyLayoutItemProvider) ((Function0) mutableState.getF10755b()).mo47invoke();
            case 7:
                return new LazyListIntervalContent((Function1) mutableState.getF10755b());
            case 8:
                return new LazyStaggeredGridIntervalContent((Function1) mutableState.getF10755b());
            case 9:
                mutableState.setValue(Boolean.valueOf(!((Boolean) mutableState.getF10755b()).booleanValue()));
                return Unit.f71739a;
            case 10:
                mutableState.setValue(Boolean.FALSE);
                return Unit.f71739a;
            case 11:
                mutableState.setValue(null);
                return Unit.f71739a;
            case 12:
                mutableState.setValue(null);
                return Unit.f71739a;
            case 13:
                mutableState.setValue(Boolean.valueOf(!((Boolean) mutableState.getF10755b()).booleanValue()));
                return Unit.f71739a;
            case 14:
                ((Function0) mutableState.getF10755b()).mo47invoke();
                return Unit.f71739a;
            case 15:
                mutableState.setValue(Boolean.valueOf(!((Boolean) mutableState.getF10755b()).booleanValue()));
                return Unit.f71739a;
            case 16:
                mutableState.setValue(null);
                return Unit.f71739a;
            case 17:
                mutableState.setValue(null);
                return Unit.f71739a;
            case 18:
                mutableState.setValue(Boolean.FALSE);
                return Unit.f71739a;
            case 19:
                mutableState.setValue(Boolean.valueOf(!((Boolean) mutableState.getF10755b()).booleanValue()));
                return Unit.f71739a;
            case 20:
                LayoutCoordinates layoutCoordinates = (LayoutCoordinates) mutableState.getF10755b();
                if (layoutCoordinates != null) {
                    return layoutCoordinates;
                }
                InlineClassHelperKt.d("Required value was null.");
                os.d();
                return null;
            case 21:
                mutableState.setValue(Boolean.valueOf(!((Boolean) mutableState.getF10755b()).booleanValue()));
                return Unit.f71739a;
            case 22:
                mutableState.setValue(Boolean.valueOf(!((Boolean) mutableState.getF10755b()).booleanValue()));
                return Unit.f71739a;
            case 23:
                mutableState.setValue(Boolean.TRUE);
                return Unit.f71739a;
            case 24:
                mutableState.setValue(Boolean.TRUE);
                return Unit.f71739a;
            case 25:
                mutableState.setValue(null);
                return Unit.f71739a;
            case 26:
                mutableState.setValue(null);
                return Unit.f71739a;
            case 27:
                ((Function0) mutableState.getF10755b()).mo47invoke();
                return Unit.f71739a;
            case 28:
                float f2 = SpotlightHotspotsKt.f64588a;
                mutableState.setValue(Boolean.TRUE);
                return Unit.f71739a;
            default:
                float f3 = SpotlightScreenKt.f64602a;
                SpotlightSlideUiModel spotlightSlideUiModel = (SpotlightSlideUiModel) mutableState.getF10755b();
                return Integer.valueOf((spotlightSlideUiModel == null || (list = spotlightSlideUiModel.g) == null) ? 0 : list.size());
        }
    }
}
