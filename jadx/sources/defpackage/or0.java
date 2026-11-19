package defpackage;

import androidx.compose.foundation.lazy.grid.LazyGridItemScope;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import com.vuitton.android.presentation.screen.catalog.thematicplp.components.BottomScrollIndicationKt;
import com.vuitton.android.presentation.screen.catalog.thematicplp.helper.ColorHelperKt;
import com.vuitton.android.presentation.screen.catalog.thematicplp.models.CurrentThemeUiModel;
import com.vuitton.android.presentation.screen.catalog.thematicplp.models.ThemeUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class or0 implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f77527b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CurrentThemeUiModel f77528c;
    public final /* synthetic */ float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ float f77529e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f77530f;

    public /* synthetic */ or0(CurrentThemeUiModel currentThemeUiModel, Object obj, float f2, float f3, int i2) {
        this.f77527b = i2;
        this.f77528c = currentThemeUiModel;
        this.f77530f = obj;
        this.d = f2;
        this.f77529e = f3;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        String str;
        int i2 = this.f77527b;
        Object obj4 = this.f77530f;
        CurrentThemeUiModel currentThemeUiModel = this.f77528c;
        switch (i2) {
            case 0:
                String str2 = (String) obj4;
                Composer composer = (Composer) obj2;
                int iIntValue = ((Integer) obj3).intValue();
                ((LazyGridItemScope) obj).getClass();
                if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    BottomScrollIndicationKt.a(null, currentThemeUiModel.f55427b != null, ColorHelperKt.a(str2, composer), this.d, this.f77529e, composer, 0);
                } else {
                    composer.D();
                }
                break;
            default:
                ThemeUiModel themeUiModel = (ThemeUiModel) obj4;
                Composer composer2 = (Composer) obj2;
                int iIntValue2 = ((Integer) obj3).intValue();
                ((LazyGridItemScope) obj).getClass();
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 17) != 16)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    boolean z = currentThemeUiModel.f55427b != null;
                    if (themeUiModel == null || (str = themeUiModel.f55438e) == null) {
                        str = "";
                    }
                    BottomScrollIndicationKt.a(null, z, ColorHelperKt.a(str, composer2), this.d, this.f77529e, composer2, 0);
                } else {
                    composer2.D();
                }
                break;
        }
        return Unit.f71739a;
    }
}
