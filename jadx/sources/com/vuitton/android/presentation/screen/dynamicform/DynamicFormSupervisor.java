package com.vuitton.android.presentation.screen.dynamicform;

import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.phone.PhoneType;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import defpackage.re;
import defpackage.rq;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface DynamicFormSupervisor {
    /* JADX INFO: renamed from: a */
    StateFlow getF57468c();

    void a0(PhoneType phoneType);

    Object b(Function1 function1, Function1 function2, Function2 function3, Function1 function4, Function0 function0, Function1 function5, Function2 function6, Function1 function7, Function1 function8, ContinuationImpl continuationImpl);

    void d(FormSectionTypeUiModel formSectionTypeUiModel, List list);

    void e0(PhoneType phoneType);

    void f(FormFieldUiModel formFieldUiModel, rq rqVar);

    void g(re reVar);

    void h(FormSectionTypeUiModel formSectionTypeUiModel, boolean z);

    void i();

    void j(FormSectionTypeUiModel formSectionTypeUiModel, Object obj, Function2 function2);
}
