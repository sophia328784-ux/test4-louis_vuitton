package defpackage;

import androidx.navigation3.runtime.NavBackStack;
import com.vuitton.android.presentation.extensions.Nav3ExtKt;
import com.vuitton.android.presentation.screen.aicompanion.AICompanionRoutes;
import com.vuitton.android.presentation.screen.aicompanion.AICompanionViewModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class u0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80186b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ NavBackStack f80187c;
    public final /* synthetic */ AICompanionViewModel d;

    public /* synthetic */ u0(NavBackStack navBackStack, AICompanionViewModel aICompanionViewModel) {
        this.f80187c = navBackStack;
        this.d = aICompanionViewModel;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        switch (this.f80186b) {
            case 0:
                this.d.S8();
                this.f80187c.a(AICompanionRoutes.History.INSTANCE);
                break;
            default:
                Nav3ExtKt.a(this.f80187c, AICompanionRoutes.Chat.INSTANCE);
                this.d.z5();
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ u0(AICompanionViewModel aICompanionViewModel, NavBackStack navBackStack) {
        this.d = aICompanionViewModel;
        this.f80187c = navBackStack;
    }
}
