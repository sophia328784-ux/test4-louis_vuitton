package defpackage;

import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.foundation.text.selection.TextFieldSelectionManagerKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import androidx.media3.exoplayer.ExoPlayer;
import com.vuitton.android.presentation.screen.cart.components.NativeCartComponentsKt;
import com.vuitton.android.presentation.screen.livevideo.component.LiveVideoPlayerComponentKt;
import com.vuitton.android.presentation.screen.mylv.MyLvViewModel;
import com.vuitton.android.presentation.screen.mylv.components.MyLvComposableKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.BeautyDualColorComparatorKt;
import com.vuitton.android.presentation.screen.spotlight.components.SpotlightBottomStepperKt;
import com.vuitton.android.presentation.screen.storemode.filters.components.ResetFilterTagListKt;
import com.vuitton.android.presentation.screen.storemode.filters.model.ResetFilterTag;
import com.vuitton.android.presentation.screen.thankyou.components.ThankYouScreenKt;
import com.vuitton.android.presentation.screen.thankyou.models.CheckoutItemUiModel;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class vd implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80554b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f80555c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f80556e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f80557f;

    public /* synthetic */ vd(Modifier modifier, int i2, boolean z, String str, int i3) {
        this.f80554b = 3;
        this.d = modifier;
        this.f80556e = i2;
        this.f80555c = z;
        this.f80557f = str;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f80554b;
        int i3 = this.f80556e;
        boolean z = this.f80555c;
        Object obj3 = this.d;
        Object obj4 = this.f80557f;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(49);
                BeautyDualColorComparatorKt.c((String) obj4, this.f80555c, (Function0) obj3, (Composer) obj, iA, this.f80556e);
                break;
            case 1:
                ((Integer) obj2).getClass();
                LiveVideoPlayerComponentKt.a((ExoPlayer) obj4, z, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 2:
                ((Integer) obj2).getClass();
                MyLvComposableKt.a((MyLvViewModel) obj4, z, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 3:
                ((Integer) obj2).getClass();
                int iA2 = RecomposeScopeImplKt.a(1);
                NativeCartComponentsKt.d((Modifier) obj3, this.f80556e, this.f80555c, (String) obj4, (Composer) obj, iA2);
                break;
            case 4:
                ((Integer) obj2).getClass();
                ResetFilterTagListKt.a((ResetFilterTag) obj4, z, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 5:
                ((Integer) obj2).getClass();
                SpotlightBottomStepperKt.a((Modifier) obj4, z, (Function2) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            case 6:
                ((Integer) obj2).getClass();
                TextFieldSelectionManagerKt.a(z, (ResolvedTextDirection) obj4, (TextFieldSelectionManager) obj3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
            default:
                ((Integer) obj2).getClass();
                ThankYouScreenKt.k((Modifier) obj4, (CheckoutItemUiModel) obj3, z, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1));
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ vd(Modifier modifier, CheckoutItemUiModel checkoutItemUiModel, boolean z, int i2) {
        this.f80554b = 7;
        this.f80557f = modifier;
        this.d = checkoutItemUiModel;
        this.f80555c = z;
        this.f80556e = i2;
    }

    public /* synthetic */ vd(Object obj, boolean z, Function function, int i2, int i3) {
        this.f80554b = i3;
        this.f80557f = obj;
        this.f80555c = z;
        this.d = function;
        this.f80556e = i2;
    }

    public /* synthetic */ vd(String str, boolean z, Function0 function0, int i2, int i3) {
        this.f80554b = 0;
        this.f80557f = str;
        this.f80555c = z;
        this.d = function0;
        this.f80556e = i3;
    }

    public /* synthetic */ vd(boolean z, ResolvedTextDirection resolvedTextDirection, TextFieldSelectionManager textFieldSelectionManager, int i2) {
        this.f80554b = 6;
        this.f80555c = z;
        this.f80557f = resolvedTextDirection;
        this.d = textFieldSelectionManager;
        this.f80556e = i2;
    }
}
