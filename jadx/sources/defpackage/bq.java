package defpackage;

import com.vuitton.android.presentation.screen.portal.models.PortalCtaUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class bq implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f20920b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f20921c;
    public final /* synthetic */ PortalCtaUiModel d;

    public /* synthetic */ bq(Function1 function1, PortalCtaUiModel portalCtaUiModel, int i2) {
        this.f20920b = i2;
        this.f20921c = function1;
        this.d = portalCtaUiModel;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        switch (this.f20920b) {
            case 0:
                this.f20921c.invoke(this.d.f63306b);
                break;
            default:
                this.f20921c.invoke(this.d.f63306b);
                break;
        }
        return Unit.f71739a;
    }
}
