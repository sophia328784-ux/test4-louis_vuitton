package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import com.vuitton.android.presentation.screen.aicompanion.components.chat.AICompanionPromptSuggestionsKt;
import com.vuitton.android.presentation.screen.pdp.components.subcomponents.VirtualStudioCardKt;
import com.vuitton.android.presentation.screen.pdp.contextualsizing.components.ContextualSizingPushCardKt;
import com.vuitton.android.presentation.screen.storemode.components.StoreModeHomeTopBarKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class k1 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71514b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Modifier f71515c;
    public final /* synthetic */ String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function0 f71516e;

    public /* synthetic */ k1(int i2, int i3, Modifier modifier, String str, Function0 function0) {
        this.f71514b = i3;
        this.f71515c = modifier;
        this.d = str;
        this.f71516e = function0;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f71514b;
        Composer composer = (Composer) obj;
        ((Integer) obj2).getClass();
        switch (i2) {
            case 0:
                AICompanionPromptSuggestionsKt.a(this.f71515c, this.d, this.f71516e, composer, RecomposeScopeImplKt.a(7));
                break;
            case 1:
                ContextualSizingPushCardKt.a(this.f71515c, this.d, this.f71516e, composer, RecomposeScopeImplKt.a(1));
                break;
            case 2:
                StoreModeHomeTopBarKt.a(this.f71515c, this.d, this.f71516e, composer, RecomposeScopeImplKt.a(1));
                break;
            default:
                VirtualStudioCardKt.a(this.f71515c, this.d, this.f71516e, composer, RecomposeScopeImplKt.a(1));
                break;
        }
        return Unit.f71739a;
    }
}
