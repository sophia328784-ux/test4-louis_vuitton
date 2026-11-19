package defpackage;

import androidx.compose.material3.SnackbarData;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import com.vuitton.android.designkit.ui.theme.molecules.LVSnackbarKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class u70 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80249b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SnackbarData f80250c;

    public /* synthetic */ u70(SnackbarData snackbarData, int i2) {
        this.f80249b = i2;
        this.f80250c = snackbarData;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f80249b;
        SnackbarData snackbarData = this.f80250c;
        switch (i2) {
            case 0:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = LVSnackbarKt.f48665a;
                snackbarData.b();
                return Boolean.TRUE;
            case 1:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = LVSnackbarKt.f48665a;
                snackbarData.dismiss();
                return Boolean.TRUE;
            case 2:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal3 = LVSnackbarKt.f48665a;
                snackbarData.b();
                return Unit.f71739a;
            case 3:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal4 = LVSnackbarKt.f48665a;
                snackbarData.dismiss();
                return Unit.f71739a;
            case 4:
                snackbarData.dismiss();
                return Boolean.TRUE;
            case 5:
                snackbarData.b();
                return Unit.f71739a;
            default:
                snackbarData.dismiss();
                return Unit.f71739a;
        }
    }
}
