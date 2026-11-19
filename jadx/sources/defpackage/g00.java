package defpackage;

import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldPhoneUiModel;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class g00 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69242b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ FormFieldPhoneUiModel f69243c;

    public /* synthetic */ g00(FormFieldPhoneUiModel formFieldPhoneUiModel, int i2) {
        this.f69242b = i2;
        this.f69243c = formFieldPhoneUiModel;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f69242b;
        FormFieldPhoneUiModel formFieldPhoneUiModel = this.f69243c;
        switch (i2) {
            case 0:
                return Boolean.valueOf(formFieldPhoneUiModel.e() && !formFieldPhoneUiModel.f());
            default:
                return Boolean.valueOf(formFieldPhoneUiModel.f());
        }
    }
}
