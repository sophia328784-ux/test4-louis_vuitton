package defpackage;

import com.vuitton.android.presentation.screen.dynamicform.DynamicFormSupervisorImpl;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.customvalidation.FieldValidationRule;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class mv implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76368b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f76369c;
    public final /* synthetic */ boolean d;

    public /* synthetic */ mv(Function1 function1, boolean z, int i2) {
        this.f76368b = i2;
        this.f76369c = function1;
        this.d = z;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f76368b;
        boolean z = this.d;
        Function1 function1 = this.f76369c;
        switch (i2) {
            case 0:
                FormFieldUiModel formFieldUiModel = (FormFieldUiModel) obj;
                int i3 = DynamicFormSupervisorImpl.d;
                formFieldUiModel.getClass();
                FieldValidationRule fieldValidationRule = (FieldValidationRule) function1.invoke(formFieldUiModel.d);
                boolean z2 = !z;
                if (fieldValidationRule == null) {
                    fieldValidationRule = formFieldUiModel.f57500j;
                }
                return FormFieldUiModel.c(formFieldUiModel, false, null, null, null, null, fieldValidationRule, null, false, z2, 735);
            default:
                ((Boolean) obj).booleanValue();
                function1.invoke(Boolean.valueOf(!z));
                return Unit.f71739a;
        }
    }
}
