package defpackage;

import androidx.compose.ui.semantics.CollectionInfo;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import com.vuitton.android.presentation.screen.dynamicform.DynamicFormSupervisorImpl;
import com.vuitton.android.presentation.screen.dynamicform.model.FormUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.FormUiModelKt;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class jv implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71472b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ FormUiModel f71473c;

    public /* synthetic */ jv(FormUiModel formUiModel, int i2) {
        this.f71472b = i2;
        this.f71473c = formUiModel;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f71472b;
        FormUiModel formUiModel = this.f71473c;
        switch (i2) {
            case 0:
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver.getClass();
                SemanticsPropertiesKt.f(semanticsPropertyReceiver, new CollectionInfo(formUiModel.f57486a.size(), 1));
                return Unit.f71739a;
            default:
                FormFieldUiModel formFieldUiModel = (FormFieldUiModel) obj;
                int i3 = DynamicFormSupervisorImpl.d;
                formFieldUiModel.getClass();
                FormFieldUiModel formFieldUiModelH = formFieldUiModel.h(false);
                FormSectionTypeUiModel formSectionTypeUiModel = formFieldUiModel.d;
                formSectionTypeUiModel.getClass();
                int i4 = FormUiModelKt.WhenMappings.f57488a[formSectionTypeUiModel.ordinal()];
                return ((i4 == 1 || i4 == 2 || i4 == 3) && !formUiModel.k(formSectionTypeUiModel)) ? FormFieldUiModel.c(formFieldUiModelH, false, null, null, null, null, null, null, true, false, 895) : formFieldUiModelH;
        }
    }
}
