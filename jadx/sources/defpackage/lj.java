package defpackage;

import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class lj implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76038b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f76039c;
    public final /* synthetic */ ContributionLinkUiModel d;

    public /* synthetic */ lj(Function1 function1, ContributionLinkUiModel contributionLinkUiModel, int i2) {
        this.f76038b = i2;
        this.f76039c = function1;
        this.d = contributionLinkUiModel;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f76038b;
        ContributionLinkUiModel contributionLinkUiModel = this.d;
        Function1 function1 = this.f76039c;
        switch (i2) {
            case 0:
                function1.invoke(contributionLinkUiModel);
                break;
            case 1:
                function1.invoke(contributionLinkUiModel);
                break;
            case 2:
                function1.invoke(contributionLinkUiModel);
                break;
            case 3:
                function1.invoke(contributionLinkUiModel);
                break;
            case 4:
                function1.invoke(contributionLinkUiModel);
                break;
            default:
                function1.invoke(contributionLinkUiModel);
                break;
        }
        return Unit.f71739a;
    }
}
