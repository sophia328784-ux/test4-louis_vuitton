package defpackage;

import com.vuitton.android.presentation.screen.authentication.common.validation.FieldErrorUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class x00 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80982b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ FieldErrorUiModel f80983c;

    public /* synthetic */ x00(FieldErrorUiModel fieldErrorUiModel, int i2) {
        this.f80982b = i2;
        this.f80983c = fieldErrorUiModel;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        boolean zB;
        int i2 = this.f80982b;
        FieldErrorUiModel fieldErrorUiModel = this.f80983c;
        FormSectionTypeUiModel formSectionTypeUiModel = (FormSectionTypeUiModel) obj;
        switch (i2) {
            case 0:
                formSectionTypeUiModel.getClass();
                zB = fieldErrorUiModel.b();
                break;
            default:
                formSectionTypeUiModel.getClass();
                zB = fieldErrorUiModel.b();
                break;
        }
        return Boolean.valueOf(!zB);
    }
}
