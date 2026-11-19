package defpackage;

import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import com.vuitton.android.presentation.screen.account.myinformation.components.edition.EditMyInfoScreenKt;
import com.vuitton.android.presentation.screen.account.myinformation.models.MyInformationViewState;
import com.vuitton.android.presentation.screen.storemode.components.plp.SearchResultCountBarStoreModeKt;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class tv implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80150b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f80151c;
    public final /* synthetic */ boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f80152e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f80153f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f80154h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f80155i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Function f80156j;

    public /* synthetic */ tv(PaddingValues paddingValues, MyInformationViewState myInformationViewState, boolean z, boolean z2, Function2 function2, Function1 function1, boolean z3, int i2) {
        this.g = paddingValues;
        this.f80154h = myInformationViewState;
        this.f80151c = z;
        this.d = z2;
        this.f80155i = function2;
        this.f80156j = function1;
        this.f80152e = z3;
        this.f80153f = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f80150b) {
            case 0:
                ((Integer) obj2).getClass();
                EditMyInfoScreenKt.a((PaddingValues) this.g, (MyInformationViewState) this.f80154h, this.f80151c, this.d, (Function2) this.f80155i, (Function1) this.f80156j, this.f80152e, (Composer) obj, RecomposeScopeImplKt.a(this.f80153f | 1));
                break;
            default:
                ((Integer) obj2).getClass();
                SearchResultCountBarStoreModeKt.a((Modifier) this.g, (Integer) this.f80154h, (String) this.f80155i, this.f80151c, (Function0) this.f80156j, this.d, this.f80152e, (Composer) obj, RecomposeScopeImplKt.a(this.f80153f | 1));
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ tv(Modifier modifier, Integer num, String str, boolean z, Function0 function0, boolean z2, boolean z3, int i2) {
        this.g = modifier;
        this.f80154h = num;
        this.f80155i = str;
        this.f80151c = z;
        this.f80156j = function0;
        this.d = z2;
        this.f80152e = z3;
        this.f80153f = i2;
    }
}
