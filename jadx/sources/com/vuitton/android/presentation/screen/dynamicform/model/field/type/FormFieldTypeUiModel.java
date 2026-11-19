package com.vuitton.android.presentation.screen.dynamicform.model.field.type;

import com.vuitton.android.designkit.ui.theme.atoms.DropdownItem;
import com.vuitton.android.presentation.screen.dynamicform.model.field.type.value.FormEnumValueUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.type.value.FormEnumValueUiModelKt;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0001\u0002\u0082\u0001\u0004\u0003\u0004\u0005\u0006¨\u0006\u0007À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel;", "", "EnumBasedFormField", "Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldBooleanUiModel;", "Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldFreeformUiModel;", "Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldReadOnlyUiModel;", "Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel$EnumBasedFormField;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface FormFieldTypeUiModel {

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001\u0082\u0001\u0004\u0002\u0003\u0004\u0005¨\u0006\u0006À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel$EnumBasedFormField;", "Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel;", "Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldDependentEnumUiModel;", "Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldDependentRemoteEnumUiModel;", "Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldEnumUiModel;", "Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldReadOnlyEnumUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface EnumBasedFormField extends FormFieldTypeUiModel {
        List a();

        default Integer b(List list) {
            FormEnumValueUiModel formEnumValueUiModelE = e();
            if (formEnumValueUiModelE == null || list == null) {
                return null;
            }
            Iterator it = list.iterator();
            int i2 = 0;
            while (true) {
                if (!it.hasNext()) {
                    i2 = -1;
                    break;
                }
                if (FormEnumValueUiModelKt.a((FormEnumValueUiModel) it.next(), formEnumValueUiModelE)) {
                    break;
                }
                i2++;
            }
            Integer numValueOf = Integer.valueOf(i2);
            if (i2 != -1) {
                return numValueOf;
            }
            return null;
        }

        Integer c();

        default ArrayList d() {
            List<FormEnumValueUiModel> listA = a();
            ArrayList arrayList = new ArrayList(CollectionsKt.t(listA, 10));
            for (FormEnumValueUiModel formEnumValueUiModel : listA) {
                formEnumValueUiModel.getClass();
                arrayList.add(new DropdownItem(formEnumValueUiModel.f57524a, false, 2, null));
            }
            return arrayList;
        }

        FormEnumValueUiModel e();

        boolean isEnabled();
    }

    FormFieldTypeUiModel f(Object obj);
}
