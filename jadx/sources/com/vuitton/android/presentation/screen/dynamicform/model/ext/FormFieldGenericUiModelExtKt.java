package com.vuitton.android.presentation.screen.dynamicform.model.ext;

import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldGenericUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldPhoneUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldUiModel;
import defpackage.v40;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.builders.ListBuilder;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class FormFieldGenericUiModelExtKt {
    public static final ListBuilder a(List list, Function1 function1) {
        list.getClass();
        ListBuilder listBuilderV = CollectionsKt.v();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            FormFieldGenericUiModel formFieldGenericUiModel = (FormFieldGenericUiModel) it.next();
            if (formFieldGenericUiModel instanceof FormFieldPhoneUiModel) {
                FormFieldPhoneUiModel formFieldPhoneUiModel = (FormFieldPhoneUiModel) formFieldGenericUiModel;
                List list2 = formFieldPhoneUiModel.g;
                ArrayList arrayList = new ArrayList();
                Iterator it2 = list2.iterator();
                while (it2.hasNext()) {
                    Object objInvoke = function1.invoke(it2.next());
                    if (objInvoke != null) {
                        arrayList.add(objInvoke);
                    }
                }
                if (!arrayList.isEmpty()) {
                    listBuilderV.add(FormFieldPhoneUiModel.c(formFieldPhoneUiModel, arrayList));
                }
            } else {
                if (!(formFieldGenericUiModel instanceof FormFieldUiModel)) {
                    v40.g();
                    return null;
                }
                FormFieldUiModel formFieldUiModel = (FormFieldUiModel) function1.invoke(formFieldGenericUiModel);
                if (formFieldUiModel != null) {
                    listBuilderV.add(formFieldUiModel);
                }
            }
        }
        return CollectionsKt.r(listBuilderV);
    }
}
