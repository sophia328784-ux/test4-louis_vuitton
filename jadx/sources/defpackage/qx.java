package defpackage;

import com.vuitton.android.presentation.common.editorial.models.EditorialModuleUiModel;
import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class qx implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79181b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f79182c;
    public final /* synthetic */ EditorialModuleUiModel d;

    public /* synthetic */ qx(EditorialModuleUiModel editorialModuleUiModel, Function1 function1) {
        this.f79181b = 4;
        this.d = editorialModuleUiModel;
        this.f79182c = function1;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f79181b;
        Function1 function1 = this.f79182c;
        EditorialModuleUiModel editorialModuleUiModel = this.d;
        switch (i2) {
            case 0:
                function1.invoke(editorialModuleUiModel.getF50852a());
                break;
            case 1:
                function1.invoke(editorialModuleUiModel.getF50852a());
                break;
            case 2:
                function1.invoke(((EditorialModuleUiModel.CardUiModel) editorialModuleUiModel).f50813a);
                break;
            case 3:
                function1.invoke(((EditorialModuleUiModel.CardUiModel) editorialModuleUiModel).f50813a);
                break;
            default:
                ContributionLinkUiModel contributionLinkUiModel = ((EditorialModuleUiModel.CardUiModel) editorialModuleUiModel).f50815c;
                if (contributionLinkUiModel != null) {
                    function1.invoke(contributionLinkUiModel);
                }
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ qx(Function1 function1, EditorialModuleUiModel editorialModuleUiModel, int i2) {
        this.f79181b = i2;
        this.f79182c = function1;
        this.d = editorialModuleUiModel;
    }
}
