package defpackage;

import com.vuitton.android.presentation.screen.catalog.thematicplp.models.ThemeItemUiModel;
import com.vuitton.android.presentation.screen.catalog.thematicplp.tracking.TrackingClickType;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class lr0 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76078b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function2 f76079c;
    public final /* synthetic */ ThemeItemUiModel d;

    public /* synthetic */ lr0(ThemeItemUiModel themeItemUiModel, Function2 function2) {
        this.f76078b = 2;
        this.d = themeItemUiModel;
        this.f76079c = function2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f76078b;
        ThemeItemUiModel themeItemUiModel = this.d;
        Function2 function2 = this.f76079c;
        switch (i2) {
            case 0:
                function2.invoke(new SkuIdUiModel(themeItemUiModel.f55432a.f62987e), TrackingClickType.DOUBLE_CLICK);
                break;
            case 1:
                function2.invoke(themeItemUiModel.f55432a, Boolean.FALSE);
                break;
            case 2:
                if (themeItemUiModel.f55433b == null) {
                    function2.invoke(new SkuIdUiModel(themeItemUiModel.f55432a.f62987e), TrackingClickType.DOUBLE_CLICK);
                }
                break;
            default:
                function2.invoke(themeItemUiModel.f55432a, Boolean.valueOf(themeItemUiModel.f55433b != null));
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ lr0(Function2 function2, ThemeItemUiModel themeItemUiModel, int i2) {
        this.f76078b = i2;
        this.f76079c = function2;
        this.d = themeItemUiModel;
    }
}
