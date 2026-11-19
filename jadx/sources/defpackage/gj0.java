package defpackage;

import com.vuitton.android.presentation.screen.osa.reasons.models.OsaReasonsFormViewState;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class gj0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69426b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f69427c;
    public final /* synthetic */ OsaReasonsFormViewState d;

    public /* synthetic */ gj0(Function1 function1, OsaReasonsFormViewState osaReasonsFormViewState, int i2) {
        this.f69426b = i2;
        this.f69427c = function1;
        this.d = osaReasonsFormViewState;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        switch (this.f69426b) {
            case 0:
                this.f69427c.invoke(this.d.d);
                break;
            default:
                this.f69427c.invoke(this.d.d);
                break;
        }
        return Unit.f71739a;
    }
}
