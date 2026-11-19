package defpackage;

import android.view.View;
import androidx.compose.material3.ExposedDropdownMenuKt;
import androidx.compose.material3.WindowBoundsCalculator;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RectKt;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.hapticfeedback.HapticFeedbackType;
import androidx.compose.ui.hapticfeedback.PlatformHapticFeedbackType;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.IntSizeKt;
import com.vuitton.android.designkit.ui.theme.molecules.LVSegmentedControlKt;
import com.vuitton.android.designkit.ui.theme.molecules.SegmentedControlState;
import com.vuitton.android.presentation.model.onboarding.IconLauncherType;
import com.vuitton.android.presentation.screen.spotlight.components.SpotlightHotspotsKt;
import com.vuitton.android.presentation.screen.thelookimmersivearticle.models.TheLookImmersiveArticleViewState;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class qw implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79175b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f79176c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f79177e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f79178f;

    public /* synthetic */ qw(WindowBoundsCalculator windowBoundsCalculator, int i2, MutableState mutableState, MutableIntState mutableIntState) {
        this.f79175b = 0;
        this.f79177e = windowBoundsCalculator;
        this.f79176c = i2;
        this.d = mutableState;
        this.f79178f = mutableIntState;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        Rect rectA;
        int i2 = this.f79175b;
        int i3 = this.f79176c;
        Object obj = this.f79178f;
        Object obj2 = this.d;
        Object obj3 = this.f79177e;
        switch (i2) {
            case 0:
                MutableIntState mutableIntState = (MutableIntState) obj;
                int i4 = ExposedDropdownMenuKt.f6925a;
                View view = ((WindowBoundsCalculator) obj3).f7453a;
                android.graphics.Rect rect = new android.graphics.Rect();
                view.getWindowVisibleDisplayFrame(rect);
                IntRect intRect = new IntRect(rect.left, rect.top, rect.right, rect.bottom);
                LayoutCoordinates layoutCoordinates = (LayoutCoordinates) ((MutableState) obj2).getF10755b();
                if (layoutCoordinates == null || !layoutCoordinates.c()) {
                    Rect.f8809e.getClass();
                    rectA = Rect.f8810f;
                } else {
                    rectA = RectKt.a(LayoutCoordinatesKt.f(layoutCoordinates), IntSizeKt.d(layoutCoordinates.a()));
                }
                mutableIntState.i(ExposedDropdownMenuKt.b(intRect, rectA, i3));
                break;
            case 1:
                IconLauncherType iconLauncherType = (IconLauncherType) obj;
                ((Function2) obj3).invoke(iconLauncherType, Integer.valueOf(i3));
                ((MutableState) obj2).setValue(iconLauncherType);
                break;
            case 2:
                SegmentedControlState segmentedControlState = (SegmentedControlState) obj2;
                Function0 function0 = (Function0) obj;
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = LVSegmentedControlKt.f48661b;
                HapticFeedbackType.f9193b.getClass();
                int i5 = PlatformHapticFeedbackType.f9196a;
                ((HapticFeedback) obj3).a(0);
                segmentedControlState.b(i3);
                if (((Float) ((SnapshotMutableStateImpl) segmentedControlState.f48700c).getF10755b()) != null) {
                    function0.mo47invoke();
                }
                break;
            case 3:
                Function1 function1 = (Function1) obj;
                MutableState mutableState = (MutableState) obj2;
                float f2 = SpotlightHotspotsKt.f64588a;
                int size = ((List) obj3).size();
                ArrayList arrayList = new ArrayList(size);
                for (int i6 = 0; i6 < size; i6++) {
                    arrayList.add(Boolean.FALSE);
                }
                arrayList.set(i3, Boolean.TRUE);
                mutableState.setValue(arrayList);
                function1.invoke(Integer.valueOf(i3));
                break;
            default:
                ((Function2) obj3).invoke(((TheLookImmersiveArticleViewState) obj2).f65392a, ((ArrayList) obj).get(i3));
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ qw(HapticFeedback hapticFeedback, SegmentedControlState segmentedControlState, int i2, Function0 function0) {
        this.f79175b = 2;
        this.f79177e = hapticFeedback;
        this.d = segmentedControlState;
        this.f79176c = i2;
        this.f79178f = function0;
    }

    public /* synthetic */ qw(Object obj, Object obj2, int i2, MutableState mutableState, int i3) {
        this.f79175b = i3;
        this.f79177e = obj;
        this.f79178f = obj2;
        this.f79176c = i2;
        this.d = mutableState;
    }

    public /* synthetic */ qw(Function2 function2, TheLookImmersiveArticleViewState theLookImmersiveArticleViewState, ArrayList arrayList, int i2) {
        this.f79175b = 4;
        this.f79177e = function2;
        this.d = theLookImmersiveArticleViewState;
        this.f79178f = arrayList;
        this.f79176c = i2;
    }
}
