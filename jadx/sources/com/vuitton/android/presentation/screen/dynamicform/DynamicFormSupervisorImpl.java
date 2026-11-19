package com.vuitton.android.presentation.screen.dynamicform;

import com.vuitton.android.presentation.screen.dynamicform.DynamicFormSupervisorImpl;
import com.vuitton.android.presentation.screen.dynamicform.mapper.FormUiModelMapperKt;
import com.vuitton.android.presentation.screen.dynamicform.model.FormUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.FormUiModelKt;
import com.vuitton.android.presentation.screen.dynamicform.model.ext.FormFieldGenericUiModelExtKt;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldGenericUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldPhoneUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.phone.ExtraPhoneField;
import com.vuitton.android.presentation.screen.dynamicform.model.field.phone.PhoneType;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldBooleanUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldDependentRemoteEnumUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldEnumUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldFreeformUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldReadOnlyEnumUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldReadOnlyUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldTypeUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.type.value.FormEnumValueUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.type.value.FormEnumValueUiModelKt;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.extensions.StringKtExtKt;
import com.vuitton.foundation.model.domain.model.forms.Form;
import defpackage.ck;
import defpackage.jv;
import defpackage.md;
import defpackage.mv;
import defpackage.n0;
import defpackage.re;
import defpackage.rq;
import defpackage.v40;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.builders.ListBuilder;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0006B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;", "Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;", "Lcom/vuitton/foundation/logger/Logger;", "logger", "<init>", "(Lcom/vuitton/foundation/logger/Logger;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class DynamicFormSupervisorImpl implements DynamicFormSupervisor {
    public static final /* synthetic */ int d = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f57466a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutableStateFlow f57467b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final StateFlow f57468c;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl$Companion;", "", "", "TAG", "Ljava/lang/String;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f57469a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f57470b;

        static {
            int[] iArr = new int[ExtraPhoneField.values().length];
            try {
                iArr[ExtraPhoneField.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ExtraPhoneField.ONE_EXTRA.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ExtraPhoneField.TWO_EXTRA.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f57469a = iArr;
            int[] iArr2 = new int[PhoneType.values().length];
            try {
                iArr2[PhoneType.FIRST_PHONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[PhoneType.SECOND_PHONE.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[PhoneType.THIRD_PHONE.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            f57470b = iArr2;
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public DynamicFormSupervisorImpl(Logger logger) {
        logger.getClass();
        this.f57466a = logger;
        FormUiModel.f57485b.getClass();
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(FormUiModel.Companion.a());
        this.f57467b = mutableStateFlowA;
        this.f57468c = FlowKt.b(mutableStateFlowA);
    }

    public static FormFieldUiModel k(FormFieldPhoneUiModel formFieldPhoneUiModel, FormSectionTypeUiModel formSectionTypeUiModel, FormSectionTypeUiModel formSectionTypeUiModel2) {
        Object next;
        Iterator it = formFieldPhoneUiModel.g.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (((FormFieldUiModel) next).d != formSectionTypeUiModel);
        FormFieldUiModel formFieldUiModel = (FormFieldUiModel) next;
        if (formFieldUiModel == null) {
            return null;
        }
        FormFieldTypeUiModel formFieldTypeUiModelG = formFieldUiModel.f57496e;
        if (formFieldTypeUiModelG instanceof FormFieldFreeformUiModel) {
            formFieldTypeUiModelG = FormFieldFreeformUiModel.g((FormFieldFreeformUiModel) formFieldTypeUiModelG, "");
        }
        return FormFieldUiModel.c(formFieldUiModel, false, formSectionTypeUiModel2, formFieldTypeUiModelG, null, null, null, null, false, false, 1016);
    }

    @Override // com.vuitton.android.presentation.screen.dynamicform.DynamicFormSupervisor
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getF57468c() {
        return this.f57468c;
    }

    @Override // com.vuitton.android.presentation.screen.dynamicform.DynamicFormSupervisor
    public final void a0(PhoneType phoneType) {
        Object value;
        Object value2;
        phoneType.getClass();
        MutableStateFlow mutableStateFlow = this.f57467b;
        FormFieldPhoneUiModel formFieldPhoneUiModelH = ((FormUiModel) mutableStateFlow.getValue()).h();
        if (formFieldPhoneUiModelH == null) {
            return;
        }
        int i2 = WhenMappings.f57470b[phoneType.ordinal()];
        Logger logger = this.f57466a;
        if (i2 == 1) {
            logger.getClass();
            return;
        }
        int i3 = 17;
        if (i2 != 2) {
            if (i2 != 3) {
                v40.g();
                return;
            } else if (!formFieldPhoneUiModelH.f()) {
                logger.getClass();
                return;
            } else {
                FormSectionTypeUiModel[] formSectionTypeUiModelArr = {FormSectionTypeUiModel.PHONE_NUMBER3, FormSectionTypeUiModel.PHONE_NUMBER_TYPE3, FormSectionTypeUiModel.PHONE_NUMBER_COUNTRY3};
                do {
                    value2 = mutableStateFlow.getValue();
                } while (!mutableStateFlow.i(value2, FormUiModel.a(FormFieldGenericUiModelExtKt.a(((FormUiModel) value2).f57486a, new ck(formSectionTypeUiModelArr, i3)))));
            }
        } else if (!formFieldPhoneUiModelH.e() || formFieldPhoneUiModelH.f()) {
            logger.getClass();
            return;
        } else {
            FormSectionTypeUiModel[] formSectionTypeUiModelArr2 = {FormSectionTypeUiModel.PHONE_NUMBER2, FormSectionTypeUiModel.PHONE_NUMBER_TYPE2, FormSectionTypeUiModel.PHONE_NUMBER_COUNTRY2};
            do {
                value = mutableStateFlow.getValue();
            } while (!mutableStateFlow.i(value, FormUiModel.a(FormFieldGenericUiModelExtKt.a(((FormUiModel) value).f57486a, new ck(formSectionTypeUiModelArr2, i3)))));
        }
        i();
    }

    /* JADX WARN: Code duplicated, block: B:101:0x017f A[Catch: all -> 0x0191, TryCatch #9 {all -> 0x0191, blocks: (B:98:0x016a, B:99:0x016e, B:101:0x017f, B:103:0x0187, B:116:0x01ae, B:117:0x01bb, B:119:0x01c1, B:121:0x01d1, B:123:0x01d6, B:124:0x01e5, B:126:0x01eb, B:128:0x0203, B:129:0x020b, B:130:0x0212, B:131:0x0213, B:133:0x0227, B:108:0x0194, B:109:0x0198, B:111:0x019e), top: B:183:0x016a }] */
    /* JADX WARN: Code duplicated, block: B:103:0x0187 A[Catch: all -> 0x0191, TryCatch #9 {all -> 0x0191, blocks: (B:98:0x016a, B:99:0x016e, B:101:0x017f, B:103:0x0187, B:116:0x01ae, B:117:0x01bb, B:119:0x01c1, B:121:0x01d1, B:123:0x01d6, B:124:0x01e5, B:126:0x01eb, B:128:0x0203, B:129:0x020b, B:130:0x0212, B:131:0x0213, B:133:0x0227, B:108:0x0194, B:109:0x0198, B:111:0x019e), top: B:183:0x016a }] */
    /* JADX WARN: Code duplicated, block: B:108:0x0194 A[Catch: all -> 0x0191, TryCatch #9 {all -> 0x0191, blocks: (B:98:0x016a, B:99:0x016e, B:101:0x017f, B:103:0x0187, B:116:0x01ae, B:117:0x01bb, B:119:0x01c1, B:121:0x01d1, B:123:0x01d6, B:124:0x01e5, B:126:0x01eb, B:128:0x0203, B:129:0x020b, B:130:0x0212, B:131:0x0213, B:133:0x0227, B:108:0x0194, B:109:0x0198, B:111:0x019e), top: B:183:0x016a }] */
    /* JADX WARN: Code duplicated, block: B:111:0x019e A[Catch: all -> 0x0191, TryCatch #9 {all -> 0x0191, blocks: (B:98:0x016a, B:99:0x016e, B:101:0x017f, B:103:0x0187, B:116:0x01ae, B:117:0x01bb, B:119:0x01c1, B:121:0x01d1, B:123:0x01d6, B:124:0x01e5, B:126:0x01eb, B:128:0x0203, B:129:0x020b, B:130:0x0212, B:131:0x0213, B:133:0x0227, B:108:0x0194, B:109:0x0198, B:111:0x019e), top: B:183:0x016a }] */
    /* JADX WARN: Code duplicated, block: B:115:0x01ad  */
    /* JADX WARN: Code duplicated, block: B:119:0x01c1 A[Catch: all -> 0x0191, TryCatch #9 {all -> 0x0191, blocks: (B:98:0x016a, B:99:0x016e, B:101:0x017f, B:103:0x0187, B:116:0x01ae, B:117:0x01bb, B:119:0x01c1, B:121:0x01d1, B:123:0x01d6, B:124:0x01e5, B:126:0x01eb, B:128:0x0203, B:129:0x020b, B:130:0x0212, B:131:0x0213, B:133:0x0227, B:108:0x0194, B:109:0x0198, B:111:0x019e), top: B:183:0x016a }] */
    /* JADX WARN: Code duplicated, block: B:121:0x01d1 A[Catch: all -> 0x0191, TryCatch #9 {all -> 0x0191, blocks: (B:98:0x016a, B:99:0x016e, B:101:0x017f, B:103:0x0187, B:116:0x01ae, B:117:0x01bb, B:119:0x01c1, B:121:0x01d1, B:123:0x01d6, B:124:0x01e5, B:126:0x01eb, B:128:0x0203, B:129:0x020b, B:130:0x0212, B:131:0x0213, B:133:0x0227, B:108:0x0194, B:109:0x0198, B:111:0x019e), top: B:183:0x016a }] */
    /* JADX WARN: Code duplicated, block: B:126:0x01eb A[Catch: all -> 0x0191, TryCatch #9 {all -> 0x0191, blocks: (B:98:0x016a, B:99:0x016e, B:101:0x017f, B:103:0x0187, B:116:0x01ae, B:117:0x01bb, B:119:0x01c1, B:121:0x01d1, B:123:0x01d6, B:124:0x01e5, B:126:0x01eb, B:128:0x0203, B:129:0x020b, B:130:0x0212, B:131:0x0213, B:133:0x0227, B:108:0x0194, B:109:0x0198, B:111:0x019e), top: B:183:0x016a }] */
    /* JADX WARN: Code duplicated, block: B:128:0x0203 A[Catch: all -> 0x0191, LOOP:4: B:124:0x01e5->B:128:0x0203, LOOP_END, TryCatch #9 {all -> 0x0191, blocks: (B:98:0x016a, B:99:0x016e, B:101:0x017f, B:103:0x0187, B:116:0x01ae, B:117:0x01bb, B:119:0x01c1, B:121:0x01d1, B:123:0x01d6, B:124:0x01e5, B:126:0x01eb, B:128:0x0203, B:129:0x020b, B:130:0x0212, B:131:0x0213, B:133:0x0227, B:108:0x0194, B:109:0x0198, B:111:0x019e), top: B:183:0x016a }] */
    /* JADX WARN: Code duplicated, block: B:135:0x022a A[LOOP:2: B:99:0x016e->B:135:0x022a, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:157:0x0293  */
    /* JADX WARN: Code duplicated, block: B:160:0x02a8 A[LOOP:1: B:160:0x02a8->B:198:?, LOOP_START] */
    /* JADX WARN: Code duplicated, block: B:164:0x02c6  */
    /* JADX WARN: Code duplicated, block: B:173:0x0274 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:175:0x0257 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:179:0x0239 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:183:0x016a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:194:0x012a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:199:0x0227 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:200:0x020b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:203:0x01d4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:205:0x01aa A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:206:0x01ab A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:207:? A[LOOP:5: B:109:0x0198->B:207:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:65:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:67:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:71:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:74:0x0103  */
    /* JADX WARN: Code duplicated, block: B:75:0x010d  */
    /* JADX WARN: Code duplicated, block: B:78:0x0118  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Code duplicated, block: B:84:0x013e  */
    /* JADX WARN: Code duplicated, block: B:86:0x0141  */
    /* JADX WARN: Code duplicated, block: B:88:0x0144 A[Catch: all -> 0x015d, TryCatch #15 {all -> 0x015d, blocks: (B:82:0x012a, B:88:0x0144, B:89:0x014f, B:90:0x0154, B:91:0x0155, B:92:0x015a), top: B:194:0x012a }] */
    /* JADX WARN: Code duplicated, block: B:89:0x014f A[Catch: all -> 0x015d, TryCatch #15 {all -> 0x015d, blocks: (B:82:0x012a, B:88:0x0144, B:89:0x014f, B:90:0x0154, B:91:0x0155, B:92:0x015a), top: B:194:0x012a }] */
    /* JADX WARN: Code duplicated, block: B:91:0x0155 A[Catch: all -> 0x015d, TryCatch #15 {all -> 0x015d, blocks: (B:82:0x012a, B:88:0x0144, B:89:0x014f, B:90:0x0154, B:91:0x0155, B:92:0x015a), top: B:194:0x012a }] */
    @Override // com.vuitton.android.presentation.screen.dynamicform.DynamicFormSupervisor
    public final Object b(Function1 function1, Function1 function2, Function2 function3, Function1 function4, Function0 function0, Function1 function5, Function2 function6, Function1 function7, Function1 function8, ContinuationImpl continuationImpl) {
        DynamicFormSupervisorImpl$loadDynamicForm$1 dynamicFormSupervisorImpl$loadDynamicForm$1;
        Function1 function9;
        Function2 function10;
        final Function1 function11;
        Function1 function12;
        Function2 function13;
        Function1 function14;
        final Function1 function15;
        Function1 function16;
        Function0 function17;
        Function1 function18;
        Object failure;
        Throwable thA;
        Object result;
        Throwable thA2;
        Object obj;
        Throwable thA3;
        Object failure2;
        boolean z;
        MutableStateFlow mutableStateFlow;
        int i2;
        Object value;
        FormUiModel formUiModel;
        boolean z2;
        ArrayList<FormFieldGenericUiModel> arrayList;
        ArrayList arrayList2;
        Object objInvoke;
        List list;
        Iterator it;
        boolean z3;
        Logger logger;
        Throwable thA4;
        Object value2;
        FormUiModel formUiModel2;
        Object value3;
        if (continuationImpl instanceof DynamicFormSupervisorImpl$loadDynamicForm$1) {
            dynamicFormSupervisorImpl$loadDynamicForm$1 = (DynamicFormSupervisorImpl$loadDynamicForm$1) continuationImpl;
            int i3 = dynamicFormSupervisorImpl$loadDynamicForm$1.l;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                dynamicFormSupervisorImpl$loadDynamicForm$1.l = i3 - Integer.MIN_VALUE;
            } else {
                dynamicFormSupervisorImpl$loadDynamicForm$1 = new DynamicFormSupervisorImpl$loadDynamicForm$1(this, continuationImpl);
            }
        } else {
            dynamicFormSupervisorImpl$loadDynamicForm$1 = new DynamicFormSupervisorImpl$loadDynamicForm$1(this, continuationImpl);
        }
        Object objInvoke2 = dynamicFormSupervisorImpl$loadDynamicForm$1.f57477j;
        Object obj2 = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i4 = dynamicFormSupervisorImpl$loadDynamicForm$1.l;
        boolean z4 = true;
        if (i4 == 0) {
            ResultKt.b(objInvoke2);
            try {
                Result.Companion companion = Result.INSTANCE;
                function9 = function2;
                try {
                    dynamicFormSupervisorImpl$loadDynamicForm$1.f57471b = function9;
                    function10 = function3;
                    try {
                        dynamicFormSupervisorImpl$loadDynamicForm$1.f57472c = function10;
                        function11 = function4;
                        try {
                            dynamicFormSupervisorImpl$loadDynamicForm$1.d = function11;
                            try {
                                dynamicFormSupervisorImpl$loadDynamicForm$1.f57473e = function0;
                                function12 = function5;
                                try {
                                    dynamicFormSupervisorImpl$loadDynamicForm$1.f57474f = function12;
                                    function13 = function6;
                                    try {
                                        dynamicFormSupervisorImpl$loadDynamicForm$1.g = function13;
                                        function14 = function7;
                                        try {
                                            dynamicFormSupervisorImpl$loadDynamicForm$1.f57475h = function14;
                                            function15 = function8;
                                            try {
                                                dynamicFormSupervisorImpl$loadDynamicForm$1.f57476i = function15;
                                                dynamicFormSupervisorImpl$loadDynamicForm$1.l = 1;
                                                objInvoke2 = function1.invoke(dynamicFormSupervisorImpl$loadDynamicForm$1);
                                                if (objInvoke2 == obj2) {
                                                    return obj2;
                                                }
                                                function18 = function9;
                                                function16 = function12;
                                                function17 = function0;
                                            } catch (Throwable th) {
                                                th = th;
                                                function16 = function12;
                                                function17 = function0;
                                                Result.Companion companion2 = Result.INSTANCE;
                                                failure = new Result.Failure(th);
                                                function18 = function9;
                                            }
                                        } catch (Throwable th2) {
                                            th = th2;
                                            function15 = function8;
                                            function16 = function12;
                                            function17 = function0;
                                            Result.Companion companion3 = Result.INSTANCE;
                                            failure = new Result.Failure(th);
                                            function18 = function9;
                                            thA = Result.a(failure);
                                            if (thA != null) {
                                                if (!(thA instanceof CancellationException)) {
                                                    throw thA;
                                                }
                                                failure = new Result(new Result.Failure(thA));
                                            }
                                            result = ((Result) failure).f71708b;
                                            thA2 = Result.a(result);
                                            if (thA2 != null) {
                                                result = new Result(new Result.Failure(thA2));
                                            }
                                            obj = ((Result) result).f71708b;
                                            thA3 = Result.a(obj);
                                            if (thA3 == null) {
                                                ResultKt.b(obj);
                                                failure2 = FormUiModelMapperKt.f((Form) obj);
                                            } else {
                                                failure2 = new Result.Failure(thA3);
                                            }
                                            z = failure2 instanceof Result.Failure;
                                            mutableStateFlow = this.f57467b;
                                            if (!z) {
                                                formUiModel2 = (FormUiModel) failure2;
                                                do {
                                                    value3 = mutableStateFlow.getValue();
                                                } while (!mutableStateFlow.i(value3, formUiModel2));
                                            }
                                            if (!z) {
                                                Result.Companion companion4 = Result.INSTANCE;
                                                i2 = WhenMappings.f57469a[((ExtraPhoneField) function17.mo47invoke()).ordinal()];
                                                if (i2 != 1) {
                                                    if (i2 != 2) {
                                                        e0(PhoneType.SECOND_PHONE);
                                                    } else {
                                                        if (i2 == 3) {
                                                            throw new NoWhenBranchMatchedException();
                                                        }
                                                        e0(PhoneType.SECOND_PHONE);
                                                        e0(PhoneType.THIRD_PHONE);
                                                    }
                                                }
                                                failure2 = Unit.f71739a;
                                            }
                                            if (!(failure2 instanceof Result.Failure)) {
                                                Result.Companion companion5 = Result.INSTANCE;
                                                while (true) {
                                                    value = mutableStateFlow.getValue();
                                                    formUiModel = (FormUiModel) value;
                                                    if (formUiModel.f57486a.isEmpty()) {
                                                        z2 = false;
                                                    } else {
                                                        list = formUiModel.f57486a;
                                                        if (list instanceof Collection) {
                                                            it = list.iterator();
                                                            while (true) {
                                                                if (it.hasNext()) {
                                                                    if (!((FormFieldGenericUiModel) it.next()).getF57495c()) {
                                                                        z2 = false;
                                                                    }
                                                                }
                                                            }
                                                        } else {
                                                            it = list.iterator();
                                                            while (true) {
                                                                if (it.hasNext()) {
                                                                    if (!((FormFieldGenericUiModel) it.next()).getF57495c()) {
                                                                        z2 = false;
                                                                    }
                                                                }
                                                            }
                                                        }
                                                        z2 = z4;
                                                    }
                                                    List list2 = formUiModel.f57486a;
                                                    arrayList = new ArrayList();
                                                    for (Object obj3 : list2) {
                                                        if (((Boolean) function18.invoke(obj3)).booleanValue()) {
                                                            arrayList.add(obj3);
                                                        }
                                                    }
                                                    arrayList2 = new ArrayList(CollectionsKt.t(arrayList, 10));
                                                    for (FormFieldGenericUiModel formFieldGenericUiModel : arrayList) {
                                                        objInvoke = function10.invoke(formUiModel, formFieldGenericUiModel);
                                                        if (((FormFieldGenericUiModel) objInvoke).getD() == formFieldGenericUiModel.getD()) {
                                                            throw new IllegalArgumentException("Section type mismatch during swap!");
                                                        }
                                                        arrayList2.add((FormFieldGenericUiModel) objInvoke);
                                                    }
                                                    if (mutableStateFlow.i(value, FormUiModel.a(FormFieldGenericUiModelExtKt.a(arrayList2, new mv(function14, z2, 0))))) {
                                                        failure2 = Unit.f71739a;
                                                        break;
                                                    }
                                                    z4 = true;
                                                }
                                            }
                                            if (!(failure2 instanceof Result.Failure)) {
                                                Result.Companion companion6 = Result.INSTANCE;
                                                FormUiModelKt.a(mutableStateFlow, new n0(function16, this, function13, 25));
                                                failure2 = Unit.f71739a;
                                            }
                                            if (!(failure2 instanceof Result.Failure)) {
                                                Result.Companion companion7 = Result.INSTANCE;
                                                final int i5 = 0;
                                                FormUiModelKt.a(mutableStateFlow, new Function1() { // from class: nv
                                                    @Override // kotlin.jvm.functions.Function1
                                                    public final Object invoke(Object obj4) {
                                                        int i6 = i5;
                                                        DynamicFormSupervisorImpl dynamicFormSupervisorImpl = this;
                                                        Function1 function19 = function15;
                                                        switch (i6) {
                                                            case 0:
                                                                FormFieldUiModel formFieldUiModel = (FormFieldUiModel) obj4;
                                                                int i7 = DynamicFormSupervisorImpl.d;
                                                                formFieldUiModel.getClass();
                                                                String str = (String) function19.invoke(formFieldUiModel.d);
                                                                if (str != null) {
                                                                    dynamicFormSupervisorImpl.m(FormFieldUiModel.c(formFieldUiModel, false, null, null, null, null, null, str, false, false, 959));
                                                                }
                                                                break;
                                                            default:
                                                                FormFieldUiModel formFieldUiModel2 = (FormFieldUiModel) obj4;
                                                                int i8 = DynamicFormSupervisorImpl.d;
                                                                formFieldUiModel2.getClass();
                                                                if (formFieldUiModel2.f57496e instanceof FormFieldEnumUiModel) {
                                                                    dynamicFormSupervisorImpl.m((FormFieldUiModel) function19.invoke(formFieldUiModel2));
                                                                }
                                                                break;
                                                        }
                                                        return Unit.f71739a;
                                                    }
                                                });
                                                failure2 = Unit.f71739a;
                                            }
                                            if (!(failure2 instanceof Result.Failure)) {
                                                Result.Companion companion8 = Result.INSTANCE;
                                                final int i6 = 1;
                                                FormUiModelKt.a(mutableStateFlow, new Function1() { // from class: nv
                                                    @Override // kotlin.jvm.functions.Function1
                                                    public final Object invoke(Object obj4) {
                                                        int i7 = i6;
                                                        DynamicFormSupervisorImpl dynamicFormSupervisorImpl = this;
                                                        Function1 function19 = function11;
                                                        switch (i7) {
                                                            case 0:
                                                                FormFieldUiModel formFieldUiModel = (FormFieldUiModel) obj4;
                                                                int i8 = DynamicFormSupervisorImpl.d;
                                                                formFieldUiModel.getClass();
                                                                String str = (String) function19.invoke(formFieldUiModel.d);
                                                                if (str != null) {
                                                                    dynamicFormSupervisorImpl.m(FormFieldUiModel.c(formFieldUiModel, false, null, null, null, null, null, str, false, false, 959));
                                                                }
                                                                break;
                                                            default:
                                                                FormFieldUiModel formFieldUiModel2 = (FormFieldUiModel) obj4;
                                                                int i9 = DynamicFormSupervisorImpl.d;
                                                                formFieldUiModel2.getClass();
                                                                if (formFieldUiModel2.f57496e instanceof FormFieldEnumUiModel) {
                                                                    dynamicFormSupervisorImpl.m((FormFieldUiModel) function19.invoke(formFieldUiModel2));
                                                                }
                                                                break;
                                                        }
                                                        return Unit.f71739a;
                                                    }
                                                });
                                                failure2 = Unit.f71739a;
                                            }
                                            z3 = failure2 instanceof Result.Failure;
                                            logger = this.f57466a;
                                            if (!z3) {
                                                Objects.toString(this.f57468c.getValue());
                                                logger.getClass();
                                            }
                                            thA4 = Result.a(failure2);
                                            if (thA4 != null) {
                                                do {
                                                    value2 = mutableStateFlow.getValue();
                                                    FormUiModel.f57485b.getClass();
                                                } while (!mutableStateFlow.i(value2, FormUiModel.Companion.a()));
                                                logger.c("DynamicFormSupervisor", "❌ Form loading failed", thA4);
                                            }
                                            return failure2;
                                        }
                                    } catch (Throwable th3) {
                                        th = th3;
                                        function14 = function7;
                                        function15 = function8;
                                        function16 = function12;
                                        function17 = function0;
                                        Result.Companion companion9 = Result.INSTANCE;
                                        failure = new Result.Failure(th);
                                        function18 = function9;
                                        thA = Result.a(failure);
                                        if (thA != null) {
                                            if (!(thA instanceof CancellationException)) {
                                                throw thA;
                                            }
                                            failure = new Result(new Result.Failure(thA));
                                        }
                                        result = ((Result) failure).f71708b;
                                        thA2 = Result.a(result);
                                        if (thA2 != null) {
                                            result = new Result(new Result.Failure(thA2));
                                        }
                                        obj = ((Result) result).f71708b;
                                        thA3 = Result.a(obj);
                                        if (thA3 == null) {
                                            ResultKt.b(obj);
                                            failure2 = FormUiModelMapperKt.f((Form) obj);
                                        } else {
                                            failure2 = new Result.Failure(thA3);
                                        }
                                        z = failure2 instanceof Result.Failure;
                                        mutableStateFlow = this.f57467b;
                                        if (!z) {
                                            formUiModel2 = (FormUiModel) failure2;
                                            do {
                                                value3 = mutableStateFlow.getValue();
                                            } while (!mutableStateFlow.i(value3, formUiModel2));
                                        }
                                        if (!z) {
                                            Result.Companion companion10 = Result.INSTANCE;
                                            i2 = WhenMappings.f57469a[((ExtraPhoneField) function17.mo47invoke()).ordinal()];
                                            if (i2 != 1) {
                                                if (i2 != 2) {
                                                    e0(PhoneType.SECOND_PHONE);
                                                } else {
                                                    if (i2 == 3) {
                                                        throw new NoWhenBranchMatchedException();
                                                    }
                                                    e0(PhoneType.SECOND_PHONE);
                                                    e0(PhoneType.THIRD_PHONE);
                                                }
                                            }
                                            failure2 = Unit.f71739a;
                                        }
                                        if (!(failure2 instanceof Result.Failure)) {
                                            Result.Companion companion11 = Result.INSTANCE;
                                            while (true) {
                                                value = mutableStateFlow.getValue();
                                                formUiModel = (FormUiModel) value;
                                                if (formUiModel.f57486a.isEmpty()) {
                                                    list = formUiModel.f57486a;
                                                    if (list instanceof Collection) {
                                                        it = list.iterator();
                                                        while (true) {
                                                            if (it.hasNext()) {
                                                                if (!((FormFieldGenericUiModel) it.next()).getF57495c()) {
                                                                    z2 = false;
                                                                }
                                                            }
                                                        }
                                                    } else {
                                                        it = list.iterator();
                                                        while (true) {
                                                            if (it.hasNext()) {
                                                                if (!((FormFieldGenericUiModel) it.next()).getF57495c()) {
                                                                    z2 = false;
                                                                }
                                                            }
                                                        }
                                                    }
                                                    z2 = z4;
                                                } else {
                                                    z2 = false;
                                                }
                                                List list3 = formUiModel.f57486a;
                                                arrayList = new ArrayList();
                                                while (r14.hasNext()) {
                                                    if (((Boolean) function18.invoke(obj3)).booleanValue()) {
                                                        arrayList.add(obj3);
                                                    }
                                                }
                                                arrayList2 = new ArrayList(CollectionsKt.t(arrayList, 10));
                                                while (r14.hasNext()) {
                                                    objInvoke = function10.invoke(formUiModel, formFieldGenericUiModel);
                                                    if (((FormFieldGenericUiModel) objInvoke).getD() == formFieldGenericUiModel.getD()) {
                                                        throw new IllegalArgumentException("Section type mismatch during swap!");
                                                    }
                                                    arrayList2.add((FormFieldGenericUiModel) objInvoke);
                                                }
                                                if (mutableStateFlow.i(value, FormUiModel.a(FormFieldGenericUiModelExtKt.a(arrayList2, new mv(function14, z2, 0))))) {
                                                    failure2 = Unit.f71739a;
                                                    break;
                                                }
                                                z4 = true;
                                            }
                                        }
                                        if (!(failure2 instanceof Result.Failure)) {
                                            Result.Companion companion12 = Result.INSTANCE;
                                            FormUiModelKt.a(mutableStateFlow, new n0(function16, this, function13, 25));
                                            failure2 = Unit.f71739a;
                                        }
                                        if (!(failure2 instanceof Result.Failure)) {
                                            Result.Companion companion13 = Result.INSTANCE;
                                            final int i7 = 0;
                                            FormUiModelKt.a(mutableStateFlow, new Function1() { // from class: nv
                                                @Override // kotlin.jvm.functions.Function1
                                                public final Object invoke(Object obj4) {
                                                    int i8 = i7;
                                                    DynamicFormSupervisorImpl dynamicFormSupervisorImpl = this;
                                                    Function1 function19 = function15;
                                                    switch (i8) {
                                                        case 0:
                                                            FormFieldUiModel formFieldUiModel = (FormFieldUiModel) obj4;
                                                            int i9 = DynamicFormSupervisorImpl.d;
                                                            formFieldUiModel.getClass();
                                                            String str = (String) function19.invoke(formFieldUiModel.d);
                                                            if (str != null) {
                                                                dynamicFormSupervisorImpl.m(FormFieldUiModel.c(formFieldUiModel, false, null, null, null, null, null, str, false, false, 959));
                                                            }
                                                            break;
                                                        default:
                                                            FormFieldUiModel formFieldUiModel2 = (FormFieldUiModel) obj4;
                                                            int i10 = DynamicFormSupervisorImpl.d;
                                                            formFieldUiModel2.getClass();
                                                            if (formFieldUiModel2.f57496e instanceof FormFieldEnumUiModel) {
                                                                dynamicFormSupervisorImpl.m((FormFieldUiModel) function19.invoke(formFieldUiModel2));
                                                            }
                                                            break;
                                                    }
                                                    return Unit.f71739a;
                                                }
                                            });
                                            failure2 = Unit.f71739a;
                                        }
                                        if (!(failure2 instanceof Result.Failure)) {
                                            Result.Companion companion14 = Result.INSTANCE;
                                            final int i8 = 1;
                                            FormUiModelKt.a(mutableStateFlow, new Function1() { // from class: nv
                                                @Override // kotlin.jvm.functions.Function1
                                                public final Object invoke(Object obj4) {
                                                    int i9 = i8;
                                                    DynamicFormSupervisorImpl dynamicFormSupervisorImpl = this;
                                                    Function1 function19 = function11;
                                                    switch (i9) {
                                                        case 0:
                                                            FormFieldUiModel formFieldUiModel = (FormFieldUiModel) obj4;
                                                            int i10 = DynamicFormSupervisorImpl.d;
                                                            formFieldUiModel.getClass();
                                                            String str = (String) function19.invoke(formFieldUiModel.d);
                                                            if (str != null) {
                                                                dynamicFormSupervisorImpl.m(FormFieldUiModel.c(formFieldUiModel, false, null, null, null, null, null, str, false, false, 959));
                                                            }
                                                            break;
                                                        default:
                                                            FormFieldUiModel formFieldUiModel2 = (FormFieldUiModel) obj4;
                                                            int i11 = DynamicFormSupervisorImpl.d;
                                                            formFieldUiModel2.getClass();
                                                            if (formFieldUiModel2.f57496e instanceof FormFieldEnumUiModel) {
                                                                dynamicFormSupervisorImpl.m((FormFieldUiModel) function19.invoke(formFieldUiModel2));
                                                            }
                                                            break;
                                                    }
                                                    return Unit.f71739a;
                                                }
                                            });
                                            failure2 = Unit.f71739a;
                                        }
                                        z3 = failure2 instanceof Result.Failure;
                                        logger = this.f57466a;
                                        if (!z3) {
                                            Objects.toString(this.f57468c.getValue());
                                            logger.getClass();
                                        }
                                        thA4 = Result.a(failure2);
                                        if (thA4 != null) {
                                            do {
                                                value2 = mutableStateFlow.getValue();
                                                FormUiModel.f57485b.getClass();
                                            } while (!mutableStateFlow.i(value2, FormUiModel.Companion.a()));
                                            logger.c("DynamicFormSupervisor", "❌ Form loading failed", thA4);
                                        }
                                        return failure2;
                                    }
                                } catch (Throwable th4) {
                                    th = th4;
                                    function13 = function6;
                                    function14 = function7;
                                    function15 = function8;
                                    function16 = function12;
                                    function17 = function0;
                                    Result.Companion companion15 = Result.INSTANCE;
                                    failure = new Result.Failure(th);
                                    function18 = function9;
                                    thA = Result.a(failure);
                                    if (thA != null) {
                                        if (!(thA instanceof CancellationException)) {
                                            throw thA;
                                        }
                                        failure = new Result(new Result.Failure(thA));
                                    }
                                    result = ((Result) failure).f71708b;
                                    thA2 = Result.a(result);
                                    if (thA2 != null) {
                                        result = new Result(new Result.Failure(thA2));
                                    }
                                    obj = ((Result) result).f71708b;
                                    thA3 = Result.a(obj);
                                    if (thA3 == null) {
                                        ResultKt.b(obj);
                                        failure2 = FormUiModelMapperKt.f((Form) obj);
                                    } else {
                                        failure2 = new Result.Failure(thA3);
                                    }
                                    z = failure2 instanceof Result.Failure;
                                    mutableStateFlow = this.f57467b;
                                    if (!z) {
                                        formUiModel2 = (FormUiModel) failure2;
                                        do {
                                            value3 = mutableStateFlow.getValue();
                                        } while (!mutableStateFlow.i(value3, formUiModel2));
                                    }
                                    if (!z) {
                                        Result.Companion companion16 = Result.INSTANCE;
                                        i2 = WhenMappings.f57469a[((ExtraPhoneField) function17.mo47invoke()).ordinal()];
                                        if (i2 != 1) {
                                            if (i2 != 2) {
                                                e0(PhoneType.SECOND_PHONE);
                                            } else {
                                                if (i2 == 3) {
                                                    throw new NoWhenBranchMatchedException();
                                                }
                                                e0(PhoneType.SECOND_PHONE);
                                                e0(PhoneType.THIRD_PHONE);
                                            }
                                        }
                                        failure2 = Unit.f71739a;
                                    }
                                    if (!(failure2 instanceof Result.Failure)) {
                                        Result.Companion companion17 = Result.INSTANCE;
                                        while (true) {
                                            value = mutableStateFlow.getValue();
                                            formUiModel = (FormUiModel) value;
                                            if (formUiModel.f57486a.isEmpty()) {
                                                list = formUiModel.f57486a;
                                                if (list instanceof Collection) {
                                                    it = list.iterator();
                                                    while (true) {
                                                        if (it.hasNext()) {
                                                            if (!((FormFieldGenericUiModel) it.next()).getF57495c()) {
                                                                z2 = false;
                                                            }
                                                        }
                                                    }
                                                } else {
                                                    it = list.iterator();
                                                    while (true) {
                                                        if (it.hasNext()) {
                                                            if (!((FormFieldGenericUiModel) it.next()).getF57495c()) {
                                                                z2 = false;
                                                            }
                                                        }
                                                    }
                                                }
                                                z2 = z4;
                                            } else {
                                                z2 = false;
                                            }
                                            List list4 = formUiModel.f57486a;
                                            arrayList = new ArrayList();
                                            while (r14.hasNext()) {
                                                if (((Boolean) function18.invoke(obj3)).booleanValue()) {
                                                    arrayList.add(obj3);
                                                }
                                            }
                                            arrayList2 = new ArrayList(CollectionsKt.t(arrayList, 10));
                                            while (r14.hasNext()) {
                                                objInvoke = function10.invoke(formUiModel, formFieldGenericUiModel);
                                                if (((FormFieldGenericUiModel) objInvoke).getD() == formFieldGenericUiModel.getD()) {
                                                    throw new IllegalArgumentException("Section type mismatch during swap!");
                                                }
                                                arrayList2.add((FormFieldGenericUiModel) objInvoke);
                                            }
                                            if (mutableStateFlow.i(value, FormUiModel.a(FormFieldGenericUiModelExtKt.a(arrayList2, new mv(function14, z2, 0))))) {
                                                failure2 = Unit.f71739a;
                                                break;
                                            }
                                            z4 = true;
                                        }
                                    }
                                    if (!(failure2 instanceof Result.Failure)) {
                                        Result.Companion companion18 = Result.INSTANCE;
                                        FormUiModelKt.a(mutableStateFlow, new n0(function16, this, function13, 25));
                                        failure2 = Unit.f71739a;
                                    }
                                    if (!(failure2 instanceof Result.Failure)) {
                                        Result.Companion companion19 = Result.INSTANCE;
                                        final int i9 = 0;
                                        FormUiModelKt.a(mutableStateFlow, new Function1() { // from class: nv
                                            @Override // kotlin.jvm.functions.Function1
                                            public final Object invoke(Object obj4) {
                                                int i10 = i9;
                                                DynamicFormSupervisorImpl dynamicFormSupervisorImpl = this;
                                                Function1 function19 = function15;
                                                switch (i10) {
                                                    case 0:
                                                        FormFieldUiModel formFieldUiModel = (FormFieldUiModel) obj4;
                                                        int i11 = DynamicFormSupervisorImpl.d;
                                                        formFieldUiModel.getClass();
                                                        String str = (String) function19.invoke(formFieldUiModel.d);
                                                        if (str != null) {
                                                            dynamicFormSupervisorImpl.m(FormFieldUiModel.c(formFieldUiModel, false, null, null, null, null, null, str, false, false, 959));
                                                        }
                                                        break;
                                                    default:
                                                        FormFieldUiModel formFieldUiModel2 = (FormFieldUiModel) obj4;
                                                        int i12 = DynamicFormSupervisorImpl.d;
                                                        formFieldUiModel2.getClass();
                                                        if (formFieldUiModel2.f57496e instanceof FormFieldEnumUiModel) {
                                                            dynamicFormSupervisorImpl.m((FormFieldUiModel) function19.invoke(formFieldUiModel2));
                                                        }
                                                        break;
                                                }
                                                return Unit.f71739a;
                                            }
                                        });
                                        failure2 = Unit.f71739a;
                                    }
                                    if (!(failure2 instanceof Result.Failure)) {
                                        Result.Companion companion110 = Result.INSTANCE;
                                        final int i10 = 1;
                                        FormUiModelKt.a(mutableStateFlow, new Function1() { // from class: nv
                                            @Override // kotlin.jvm.functions.Function1
                                            public final Object invoke(Object obj4) {
                                                int i11 = i10;
                                                DynamicFormSupervisorImpl dynamicFormSupervisorImpl = this;
                                                Function1 function19 = function11;
                                                switch (i11) {
                                                    case 0:
                                                        FormFieldUiModel formFieldUiModel = (FormFieldUiModel) obj4;
                                                        int i12 = DynamicFormSupervisorImpl.d;
                                                        formFieldUiModel.getClass();
                                                        String str = (String) function19.invoke(formFieldUiModel.d);
                                                        if (str != null) {
                                                            dynamicFormSupervisorImpl.m(FormFieldUiModel.c(formFieldUiModel, false, null, null, null, null, null, str, false, false, 959));
                                                        }
                                                        break;
                                                    default:
                                                        FormFieldUiModel formFieldUiModel2 = (FormFieldUiModel) obj4;
                                                        int i13 = DynamicFormSupervisorImpl.d;
                                                        formFieldUiModel2.getClass();
                                                        if (formFieldUiModel2.f57496e instanceof FormFieldEnumUiModel) {
                                                            dynamicFormSupervisorImpl.m((FormFieldUiModel) function19.invoke(formFieldUiModel2));
                                                        }
                                                        break;
                                                }
                                                return Unit.f71739a;
                                            }
                                        });
                                        failure2 = Unit.f71739a;
                                    }
                                    z3 = failure2 instanceof Result.Failure;
                                    logger = this.f57466a;
                                    if (!z3) {
                                        Objects.toString(this.f57468c.getValue());
                                        logger.getClass();
                                    }
                                    thA4 = Result.a(failure2);
                                    if (thA4 != null) {
                                        do {
                                            value2 = mutableStateFlow.getValue();
                                            FormUiModel.f57485b.getClass();
                                        } while (!mutableStateFlow.i(value2, FormUiModel.Companion.a()));
                                        logger.c("DynamicFormSupervisor", "❌ Form loading failed", thA4);
                                    }
                                    return failure2;
                                }
                            } catch (Throwable th5) {
                                th = th5;
                                function12 = function5;
                                function13 = function6;
                                function14 = function7;
                            }
                        } catch (Throwable th6) {
                            th = th6;
                            function12 = function5;
                            function13 = function6;
                            function14 = function7;
                            function15 = function8;
                            function16 = function12;
                            function17 = function0;
                            Result.Companion companion111 = Result.INSTANCE;
                            failure = new Result.Failure(th);
                            function18 = function9;
                            thA = Result.a(failure);
                            if (thA != null) {
                                if (!(thA instanceof CancellationException)) {
                                    throw thA;
                                }
                                failure = new Result(new Result.Failure(thA));
                            }
                            result = ((Result) failure).f71708b;
                            thA2 = Result.a(result);
                            if (thA2 != null) {
                                result = new Result(new Result.Failure(thA2));
                            }
                            obj = ((Result) result).f71708b;
                            thA3 = Result.a(obj);
                            if (thA3 == null) {
                                ResultKt.b(obj);
                                failure2 = FormUiModelMapperKt.f((Form) obj);
                            } else {
                                failure2 = new Result.Failure(thA3);
                            }
                            z = failure2 instanceof Result.Failure;
                            mutableStateFlow = this.f57467b;
                            if (!z) {
                                formUiModel2 = (FormUiModel) failure2;
                                do {
                                    value3 = mutableStateFlow.getValue();
                                } while (!mutableStateFlow.i(value3, formUiModel2));
                            }
                            if (!z) {
                                Result.Companion companion112 = Result.INSTANCE;
                                i2 = WhenMappings.f57469a[((ExtraPhoneField) function17.mo47invoke()).ordinal()];
                                if (i2 != 1) {
                                    if (i2 != 2) {
                                        e0(PhoneType.SECOND_PHONE);
                                    } else {
                                        if (i2 == 3) {
                                            throw new NoWhenBranchMatchedException();
                                        }
                                        e0(PhoneType.SECOND_PHONE);
                                        e0(PhoneType.THIRD_PHONE);
                                    }
                                }
                                failure2 = Unit.f71739a;
                            }
                            if (!(failure2 instanceof Result.Failure)) {
                                Result.Companion companion113 = Result.INSTANCE;
                                while (true) {
                                    value = mutableStateFlow.getValue();
                                    formUiModel = (FormUiModel) value;
                                    if (formUiModel.f57486a.isEmpty()) {
                                        list = formUiModel.f57486a;
                                        if (list instanceof Collection) {
                                            it = list.iterator();
                                            while (true) {
                                                if (it.hasNext()) {
                                                    if (!((FormFieldGenericUiModel) it.next()).getF57495c()) {
                                                        z2 = false;
                                                    }
                                                }
                                            }
                                        } else {
                                            it = list.iterator();
                                            while (true) {
                                                if (it.hasNext()) {
                                                    if (!((FormFieldGenericUiModel) it.next()).getF57495c()) {
                                                        z2 = false;
                                                    }
                                                }
                                            }
                                        }
                                        z2 = z4;
                                    } else {
                                        z2 = false;
                                    }
                                    List list5 = formUiModel.f57486a;
                                    arrayList = new ArrayList();
                                    while (r14.hasNext()) {
                                        if (((Boolean) function18.invoke(obj3)).booleanValue()) {
                                            arrayList.add(obj3);
                                        }
                                    }
                                    arrayList2 = new ArrayList(CollectionsKt.t(arrayList, 10));
                                    while (r14.hasNext()) {
                                        objInvoke = function10.invoke(formUiModel, formFieldGenericUiModel);
                                        if (((FormFieldGenericUiModel) objInvoke).getD() == formFieldGenericUiModel.getD()) {
                                            throw new IllegalArgumentException("Section type mismatch during swap!");
                                        }
                                        arrayList2.add((FormFieldGenericUiModel) objInvoke);
                                    }
                                    if (mutableStateFlow.i(value, FormUiModel.a(FormFieldGenericUiModelExtKt.a(arrayList2, new mv(function14, z2, 0))))) {
                                        failure2 = Unit.f71739a;
                                        break;
                                    }
                                    z4 = true;
                                }
                            }
                            if (!(failure2 instanceof Result.Failure)) {
                                Result.Companion companion114 = Result.INSTANCE;
                                FormUiModelKt.a(mutableStateFlow, new n0(function16, this, function13, 25));
                                failure2 = Unit.f71739a;
                            }
                            if (!(failure2 instanceof Result.Failure)) {
                                Result.Companion companion115 = Result.INSTANCE;
                                final int i11 = 0;
                                FormUiModelKt.a(mutableStateFlow, new Function1() { // from class: nv
                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object invoke(Object obj4) {
                                        int i12 = i11;
                                        DynamicFormSupervisorImpl dynamicFormSupervisorImpl = this;
                                        Function1 function19 = function15;
                                        switch (i12) {
                                            case 0:
                                                FormFieldUiModel formFieldUiModel = (FormFieldUiModel) obj4;
                                                int i13 = DynamicFormSupervisorImpl.d;
                                                formFieldUiModel.getClass();
                                                String str = (String) function19.invoke(formFieldUiModel.d);
                                                if (str != null) {
                                                    dynamicFormSupervisorImpl.m(FormFieldUiModel.c(formFieldUiModel, false, null, null, null, null, null, str, false, false, 959));
                                                }
                                                break;
                                            default:
                                                FormFieldUiModel formFieldUiModel2 = (FormFieldUiModel) obj4;
                                                int i14 = DynamicFormSupervisorImpl.d;
                                                formFieldUiModel2.getClass();
                                                if (formFieldUiModel2.f57496e instanceof FormFieldEnumUiModel) {
                                                    dynamicFormSupervisorImpl.m((FormFieldUiModel) function19.invoke(formFieldUiModel2));
                                                }
                                                break;
                                        }
                                        return Unit.f71739a;
                                    }
                                });
                                failure2 = Unit.f71739a;
                            }
                            if (!(failure2 instanceof Result.Failure)) {
                                Result.Companion companion116 = Result.INSTANCE;
                                final int i12 = 1;
                                FormUiModelKt.a(mutableStateFlow, new Function1() { // from class: nv
                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object invoke(Object obj4) {
                                        int i13 = i12;
                                        DynamicFormSupervisorImpl dynamicFormSupervisorImpl = this;
                                        Function1 function19 = function11;
                                        switch (i13) {
                                            case 0:
                                                FormFieldUiModel formFieldUiModel = (FormFieldUiModel) obj4;
                                                int i14 = DynamicFormSupervisorImpl.d;
                                                formFieldUiModel.getClass();
                                                String str = (String) function19.invoke(formFieldUiModel.d);
                                                if (str != null) {
                                                    dynamicFormSupervisorImpl.m(FormFieldUiModel.c(formFieldUiModel, false, null, null, null, null, null, str, false, false, 959));
                                                }
                                                break;
                                            default:
                                                FormFieldUiModel formFieldUiModel2 = (FormFieldUiModel) obj4;
                                                int i15 = DynamicFormSupervisorImpl.d;
                                                formFieldUiModel2.getClass();
                                                if (formFieldUiModel2.f57496e instanceof FormFieldEnumUiModel) {
                                                    dynamicFormSupervisorImpl.m((FormFieldUiModel) function19.invoke(formFieldUiModel2));
                                                }
                                                break;
                                        }
                                        return Unit.f71739a;
                                    }
                                });
                                failure2 = Unit.f71739a;
                            }
                            z3 = failure2 instanceof Result.Failure;
                            logger = this.f57466a;
                            if (!z3) {
                                Objects.toString(this.f57468c.getValue());
                                logger.getClass();
                            }
                            thA4 = Result.a(failure2);
                            if (thA4 != null) {
                                do {
                                    value2 = mutableStateFlow.getValue();
                                    FormUiModel.f57485b.getClass();
                                } while (!mutableStateFlow.i(value2, FormUiModel.Companion.a()));
                                logger.c("DynamicFormSupervisor", "❌ Form loading failed", thA4);
                            }
                            return failure2;
                        }
                    } catch (Throwable th7) {
                        th = th7;
                        function11 = function4;
                        function12 = function5;
                        function13 = function6;
                        function14 = function7;
                        function15 = function8;
                        function16 = function12;
                        function17 = function0;
                        Result.Companion companion117 = Result.INSTANCE;
                        failure = new Result.Failure(th);
                        function18 = function9;
                        thA = Result.a(failure);
                        if (thA != null) {
                            if (!(thA instanceof CancellationException)) {
                                throw thA;
                            }
                            failure = new Result(new Result.Failure(thA));
                        }
                        result = ((Result) failure).f71708b;
                        thA2 = Result.a(result);
                        if (thA2 != null) {
                            result = new Result(new Result.Failure(thA2));
                        }
                        obj = ((Result) result).f71708b;
                        thA3 = Result.a(obj);
                        if (thA3 == null) {
                            ResultKt.b(obj);
                            failure2 = FormUiModelMapperKt.f((Form) obj);
                        } else {
                            failure2 = new Result.Failure(thA3);
                        }
                        z = failure2 instanceof Result.Failure;
                        mutableStateFlow = this.f57467b;
                        if (!z) {
                            formUiModel2 = (FormUiModel) failure2;
                            do {
                                value3 = mutableStateFlow.getValue();
                            } while (!mutableStateFlow.i(value3, formUiModel2));
                        }
                        if (!z) {
                            Result.Companion companion118 = Result.INSTANCE;
                            i2 = WhenMappings.f57469a[((ExtraPhoneField) function17.mo47invoke()).ordinal()];
                            if (i2 != 1) {
                                if (i2 != 2) {
                                    e0(PhoneType.SECOND_PHONE);
                                } else {
                                    if (i2 == 3) {
                                        throw new NoWhenBranchMatchedException();
                                    }
                                    e0(PhoneType.SECOND_PHONE);
                                    e0(PhoneType.THIRD_PHONE);
                                }
                            }
                            failure2 = Unit.f71739a;
                        }
                        if (!(failure2 instanceof Result.Failure)) {
                            Result.Companion companion119 = Result.INSTANCE;
                            while (true) {
                                value = mutableStateFlow.getValue();
                                formUiModel = (FormUiModel) value;
                                if (formUiModel.f57486a.isEmpty()) {
                                    list = formUiModel.f57486a;
                                    if (list instanceof Collection) {
                                        it = list.iterator();
                                        while (true) {
                                            if (it.hasNext()) {
                                                if (!((FormFieldGenericUiModel) it.next()).getF57495c()) {
                                                    z2 = false;
                                                }
                                            }
                                        }
                                    } else {
                                        it = list.iterator();
                                        while (true) {
                                            if (it.hasNext()) {
                                                if (!((FormFieldGenericUiModel) it.next()).getF57495c()) {
                                                    z2 = false;
                                                }
                                            }
                                        }
                                    }
                                    z2 = z4;
                                } else {
                                    z2 = false;
                                }
                                List list6 = formUiModel.f57486a;
                                arrayList = new ArrayList();
                                while (r14.hasNext()) {
                                    if (((Boolean) function18.invoke(obj3)).booleanValue()) {
                                        arrayList.add(obj3);
                                    }
                                }
                                arrayList2 = new ArrayList(CollectionsKt.t(arrayList, 10));
                                while (r14.hasNext()) {
                                    objInvoke = function10.invoke(formUiModel, formFieldGenericUiModel);
                                    if (((FormFieldGenericUiModel) objInvoke).getD() == formFieldGenericUiModel.getD()) {
                                        throw new IllegalArgumentException("Section type mismatch during swap!");
                                    }
                                    arrayList2.add((FormFieldGenericUiModel) objInvoke);
                                }
                                if (mutableStateFlow.i(value, FormUiModel.a(FormFieldGenericUiModelExtKt.a(arrayList2, new mv(function14, z2, 0))))) {
                                    failure2 = Unit.f71739a;
                                    break;
                                }
                                z4 = true;
                            }
                        }
                        if (!(failure2 instanceof Result.Failure)) {
                            Result.Companion companion1110 = Result.INSTANCE;
                            FormUiModelKt.a(mutableStateFlow, new n0(function16, this, function13, 25));
                            failure2 = Unit.f71739a;
                        }
                        if (!(failure2 instanceof Result.Failure)) {
                            Result.Companion companion1111 = Result.INSTANCE;
                            final int i13 = 0;
                            FormUiModelKt.a(mutableStateFlow, new Function1() { // from class: nv
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj4) {
                                    int i14 = i13;
                                    DynamicFormSupervisorImpl dynamicFormSupervisorImpl = this;
                                    Function1 function19 = function15;
                                    switch (i14) {
                                        case 0:
                                            FormFieldUiModel formFieldUiModel = (FormFieldUiModel) obj4;
                                            int i15 = DynamicFormSupervisorImpl.d;
                                            formFieldUiModel.getClass();
                                            String str = (String) function19.invoke(formFieldUiModel.d);
                                            if (str != null) {
                                                dynamicFormSupervisorImpl.m(FormFieldUiModel.c(formFieldUiModel, false, null, null, null, null, null, str, false, false, 959));
                                            }
                                            break;
                                        default:
                                            FormFieldUiModel formFieldUiModel2 = (FormFieldUiModel) obj4;
                                            int i16 = DynamicFormSupervisorImpl.d;
                                            formFieldUiModel2.getClass();
                                            if (formFieldUiModel2.f57496e instanceof FormFieldEnumUiModel) {
                                                dynamicFormSupervisorImpl.m((FormFieldUiModel) function19.invoke(formFieldUiModel2));
                                            }
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            });
                            failure2 = Unit.f71739a;
                        }
                        if (!(failure2 instanceof Result.Failure)) {
                            Result.Companion companion1112 = Result.INSTANCE;
                            final int i14 = 1;
                            FormUiModelKt.a(mutableStateFlow, new Function1() { // from class: nv
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj4) {
                                    int i15 = i14;
                                    DynamicFormSupervisorImpl dynamicFormSupervisorImpl = this;
                                    Function1 function19 = function11;
                                    switch (i15) {
                                        case 0:
                                            FormFieldUiModel formFieldUiModel = (FormFieldUiModel) obj4;
                                            int i16 = DynamicFormSupervisorImpl.d;
                                            formFieldUiModel.getClass();
                                            String str = (String) function19.invoke(formFieldUiModel.d);
                                            if (str != null) {
                                                dynamicFormSupervisorImpl.m(FormFieldUiModel.c(formFieldUiModel, false, null, null, null, null, null, str, false, false, 959));
                                            }
                                            break;
                                        default:
                                            FormFieldUiModel formFieldUiModel2 = (FormFieldUiModel) obj4;
                                            int i17 = DynamicFormSupervisorImpl.d;
                                            formFieldUiModel2.getClass();
                                            if (formFieldUiModel2.f57496e instanceof FormFieldEnumUiModel) {
                                                dynamicFormSupervisorImpl.m((FormFieldUiModel) function19.invoke(formFieldUiModel2));
                                            }
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            });
                            failure2 = Unit.f71739a;
                        }
                        z3 = failure2 instanceof Result.Failure;
                        logger = this.f57466a;
                        if (!z3) {
                            Objects.toString(this.f57468c.getValue());
                            logger.getClass();
                        }
                        thA4 = Result.a(failure2);
                        if (thA4 != null) {
                            do {
                                value2 = mutableStateFlow.getValue();
                                FormUiModel.f57485b.getClass();
                            } while (!mutableStateFlow.i(value2, FormUiModel.Companion.a()));
                            logger.c("DynamicFormSupervisor", "❌ Form loading failed", thA4);
                        }
                        return failure2;
                    }
                } catch (Throwable th8) {
                    th = th8;
                    function10 = function3;
                    function11 = function4;
                    function12 = function5;
                    function13 = function6;
                    function14 = function7;
                    function15 = function8;
                    function16 = function12;
                    function17 = function0;
                    Result.Companion companion1113 = Result.INSTANCE;
                    failure = new Result.Failure(th);
                    function18 = function9;
                    thA = Result.a(failure);
                    if (thA != null) {
                        if (!(thA instanceof CancellationException)) {
                            throw thA;
                        }
                        failure = new Result(new Result.Failure(thA));
                    }
                    result = ((Result) failure).f71708b;
                    thA2 = Result.a(result);
                    if (thA2 != null) {
                        result = new Result(new Result.Failure(thA2));
                    }
                    obj = ((Result) result).f71708b;
                    thA3 = Result.a(obj);
                    if (thA3 == null) {
                        ResultKt.b(obj);
                        failure2 = FormUiModelMapperKt.f((Form) obj);
                    } else {
                        failure2 = new Result.Failure(thA3);
                    }
                    z = failure2 instanceof Result.Failure;
                    mutableStateFlow = this.f57467b;
                    if (!z) {
                        formUiModel2 = (FormUiModel) failure2;
                        do {
                            value3 = mutableStateFlow.getValue();
                        } while (!mutableStateFlow.i(value3, formUiModel2));
                    }
                    if (!z) {
                        Result.Companion companion1114 = Result.INSTANCE;
                        i2 = WhenMappings.f57469a[((ExtraPhoneField) function17.mo47invoke()).ordinal()];
                        if (i2 != 1) {
                            if (i2 != 2) {
                                e0(PhoneType.SECOND_PHONE);
                            } else {
                                if (i2 == 3) {
                                    throw new NoWhenBranchMatchedException();
                                }
                                e0(PhoneType.SECOND_PHONE);
                                e0(PhoneType.THIRD_PHONE);
                            }
                        }
                        failure2 = Unit.f71739a;
                    }
                    if (!(failure2 instanceof Result.Failure)) {
                        Result.Companion companion1115 = Result.INSTANCE;
                        while (true) {
                            value = mutableStateFlow.getValue();
                            formUiModel = (FormUiModel) value;
                            if (formUiModel.f57486a.isEmpty()) {
                                list = formUiModel.f57486a;
                                if (list instanceof Collection) {
                                    it = list.iterator();
                                    while (true) {
                                        if (it.hasNext()) {
                                            if (!((FormFieldGenericUiModel) it.next()).getF57495c()) {
                                                z2 = false;
                                            }
                                        }
                                    }
                                } else {
                                    it = list.iterator();
                                    while (true) {
                                        if (it.hasNext()) {
                                            if (!((FormFieldGenericUiModel) it.next()).getF57495c()) {
                                                z2 = false;
                                            }
                                        }
                                    }
                                }
                                z2 = z4;
                            } else {
                                z2 = false;
                            }
                            List list7 = formUiModel.f57486a;
                            arrayList = new ArrayList();
                            while (r14.hasNext()) {
                                if (((Boolean) function18.invoke(obj3)).booleanValue()) {
                                    arrayList.add(obj3);
                                }
                            }
                            arrayList2 = new ArrayList(CollectionsKt.t(arrayList, 10));
                            while (r14.hasNext()) {
                                objInvoke = function10.invoke(formUiModel, formFieldGenericUiModel);
                                if (((FormFieldGenericUiModel) objInvoke).getD() == formFieldGenericUiModel.getD()) {
                                    throw new IllegalArgumentException("Section type mismatch during swap!");
                                }
                                arrayList2.add((FormFieldGenericUiModel) objInvoke);
                            }
                            if (mutableStateFlow.i(value, FormUiModel.a(FormFieldGenericUiModelExtKt.a(arrayList2, new mv(function14, z2, 0))))) {
                                failure2 = Unit.f71739a;
                                break;
                            }
                            z4 = true;
                        }
                    }
                    if (!(failure2 instanceof Result.Failure)) {
                        Result.Companion companion1116 = Result.INSTANCE;
                        FormUiModelKt.a(mutableStateFlow, new n0(function16, this, function13, 25));
                        failure2 = Unit.f71739a;
                    }
                    if (!(failure2 instanceof Result.Failure)) {
                        Result.Companion companion1117 = Result.INSTANCE;
                        final int i15 = 0;
                        FormUiModelKt.a(mutableStateFlow, new Function1() { // from class: nv
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj4) {
                                int i16 = i15;
                                DynamicFormSupervisorImpl dynamicFormSupervisorImpl = this;
                                Function1 function19 = function15;
                                switch (i16) {
                                    case 0:
                                        FormFieldUiModel formFieldUiModel = (FormFieldUiModel) obj4;
                                        int i17 = DynamicFormSupervisorImpl.d;
                                        formFieldUiModel.getClass();
                                        String str = (String) function19.invoke(formFieldUiModel.d);
                                        if (str != null) {
                                            dynamicFormSupervisorImpl.m(FormFieldUiModel.c(formFieldUiModel, false, null, null, null, null, null, str, false, false, 959));
                                        }
                                        break;
                                    default:
                                        FormFieldUiModel formFieldUiModel2 = (FormFieldUiModel) obj4;
                                        int i18 = DynamicFormSupervisorImpl.d;
                                        formFieldUiModel2.getClass();
                                        if (formFieldUiModel2.f57496e instanceof FormFieldEnumUiModel) {
                                            dynamicFormSupervisorImpl.m((FormFieldUiModel) function19.invoke(formFieldUiModel2));
                                        }
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        });
                        failure2 = Unit.f71739a;
                    }
                    if (!(failure2 instanceof Result.Failure)) {
                        Result.Companion companion1118 = Result.INSTANCE;
                        final int i16 = 1;
                        FormUiModelKt.a(mutableStateFlow, new Function1() { // from class: nv
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj4) {
                                int i17 = i16;
                                DynamicFormSupervisorImpl dynamicFormSupervisorImpl = this;
                                Function1 function19 = function11;
                                switch (i17) {
                                    case 0:
                                        FormFieldUiModel formFieldUiModel = (FormFieldUiModel) obj4;
                                        int i18 = DynamicFormSupervisorImpl.d;
                                        formFieldUiModel.getClass();
                                        String str = (String) function19.invoke(formFieldUiModel.d);
                                        if (str != null) {
                                            dynamicFormSupervisorImpl.m(FormFieldUiModel.c(formFieldUiModel, false, null, null, null, null, null, str, false, false, 959));
                                        }
                                        break;
                                    default:
                                        FormFieldUiModel formFieldUiModel2 = (FormFieldUiModel) obj4;
                                        int i19 = DynamicFormSupervisorImpl.d;
                                        formFieldUiModel2.getClass();
                                        if (formFieldUiModel2.f57496e instanceof FormFieldEnumUiModel) {
                                            dynamicFormSupervisorImpl.m((FormFieldUiModel) function19.invoke(formFieldUiModel2));
                                        }
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        });
                        failure2 = Unit.f71739a;
                    }
                    z3 = failure2 instanceof Result.Failure;
                    logger = this.f57466a;
                    if (!z3) {
                        Objects.toString(this.f57468c.getValue());
                        logger.getClass();
                    }
                    thA4 = Result.a(failure2);
                    if (thA4 != null) {
                        do {
                            value2 = mutableStateFlow.getValue();
                            FormUiModel.f57485b.getClass();
                        } while (!mutableStateFlow.i(value2, FormUiModel.Companion.a()));
                        logger.c("DynamicFormSupervisor", "❌ Form loading failed", thA4);
                    }
                    return failure2;
                }
            } catch (Throwable th9) {
                th = th9;
                function9 = function2;
            }
        } else {
            if (i4 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            Function1 function19 = dynamicFormSupervisorImpl$loadDynamicForm$1.f57476i;
            Function1 function20 = dynamicFormSupervisorImpl$loadDynamicForm$1.f57475h;
            Function2 function21 = dynamicFormSupervisorImpl$loadDynamicForm$1.g;
            Function1 function22 = dynamicFormSupervisorImpl$loadDynamicForm$1.f57474f;
            function17 = dynamicFormSupervisorImpl$loadDynamicForm$1.f57473e;
            Function1 function23 = dynamicFormSupervisorImpl$loadDynamicForm$1.d;
            Function2 function24 = dynamicFormSupervisorImpl$loadDynamicForm$1.f57472c;
            function18 = dynamicFormSupervisorImpl$loadDynamicForm$1.f57471b;
            try {
                ResultKt.b(objInvoke2);
                function15 = function19;
                function16 = function22;
                function11 = function23;
                function13 = function21;
                function10 = function24;
                function14 = function20;
            } catch (Throwable th10) {
                th = th10;
                function15 = function19;
                function16 = function22;
                function11 = function23;
                function13 = function21;
                function10 = function24;
                function14 = function20;
                function9 = function18;
                Result.Companion companion1119 = Result.INSTANCE;
                failure = new Result.Failure(th);
                function18 = function9;
                thA = Result.a(failure);
                if (thA != null) {
                    if (!(thA instanceof CancellationException)) {
                        throw thA;
                    }
                    failure = new Result(new Result.Failure(thA));
                }
                result = ((Result) failure).f71708b;
                thA2 = Result.a(result);
                if (thA2 != null) {
                    result = new Result(new Result.Failure(thA2));
                }
                obj = ((Result) result).f71708b;
                thA3 = Result.a(obj);
                if (thA3 == null) {
                    ResultKt.b(obj);
                    failure2 = FormUiModelMapperKt.f((Form) obj);
                } else {
                    failure2 = new Result.Failure(thA3);
                }
                z = failure2 instanceof Result.Failure;
                mutableStateFlow = this.f57467b;
                if (!z) {
                    formUiModel2 = (FormUiModel) failure2;
                    do {
                        value3 = mutableStateFlow.getValue();
                    } while (!mutableStateFlow.i(value3, formUiModel2));
                }
                if (!z) {
                    try {
                        Result.Companion companion11110 = Result.INSTANCE;
                        i2 = WhenMappings.f57469a[((ExtraPhoneField) function17.mo47invoke()).ordinal()];
                        if (i2 != 1) {
                            if (i2 != 2) {
                                e0(PhoneType.SECOND_PHONE);
                            } else {
                                if (i2 == 3) {
                                    throw new NoWhenBranchMatchedException();
                                }
                                e0(PhoneType.SECOND_PHONE);
                                e0(PhoneType.THIRD_PHONE);
                            }
                        }
                        failure2 = Unit.f71739a;
                    } catch (Throwable th11) {
                        Result.Companion companion20 = Result.INSTANCE;
                        failure2 = new Result.Failure(th11);
                    }
                }
                if (!(failure2 instanceof Result.Failure)) {
                    try {
                        Result.Companion companion11111 = Result.INSTANCE;
                        while (true) {
                            value = mutableStateFlow.getValue();
                            formUiModel = (FormUiModel) value;
                            if (formUiModel.f57486a.isEmpty()) {
                                list = formUiModel.f57486a;
                                if (list instanceof Collection) {
                                    it = list.iterator();
                                    while (true) {
                                        if (it.hasNext()) {
                                            if (!((FormFieldGenericUiModel) it.next()).getF57495c()) {
                                                z2 = false;
                                            }
                                        }
                                    }
                                } else {
                                    it = list.iterator();
                                    while (true) {
                                        if (it.hasNext()) {
                                            if (!((FormFieldGenericUiModel) it.next()).getF57495c()) {
                                                z2 = false;
                                            }
                                        }
                                    }
                                }
                                z2 = z4;
                            } else {
                                z2 = false;
                            }
                            List list8 = formUiModel.f57486a;
                            arrayList = new ArrayList();
                            while (r14.hasNext()) {
                                if (((Boolean) function18.invoke(obj3)).booleanValue()) {
                                    arrayList.add(obj3);
                                }
                            }
                            arrayList2 = new ArrayList(CollectionsKt.t(arrayList, 10));
                            while (r14.hasNext()) {
                                objInvoke = function10.invoke(formUiModel, formFieldGenericUiModel);
                                if (((FormFieldGenericUiModel) objInvoke).getD() == formFieldGenericUiModel.getD()) {
                                    throw new IllegalArgumentException("Section type mismatch during swap!");
                                }
                                arrayList2.add((FormFieldGenericUiModel) objInvoke);
                            }
                            if (mutableStateFlow.i(value, FormUiModel.a(FormFieldGenericUiModelExtKt.a(arrayList2, new mv(function14, z2, 0))))) {
                                failure2 = Unit.f71739a;
                                break;
                            }
                            z4 = true;
                        }
                    } catch (Throwable th12) {
                        Result.Companion companion21 = Result.INSTANCE;
                        failure2 = new Result.Failure(th12);
                    }
                }
                if (!(failure2 instanceof Result.Failure)) {
                    try {
                        Result.Companion companion11112 = Result.INSTANCE;
                        FormUiModelKt.a(mutableStateFlow, new n0(function16, this, function13, 25));
                        failure2 = Unit.f71739a;
                    } catch (Throwable th13) {
                        Result.Companion companion22 = Result.INSTANCE;
                        failure2 = new Result.Failure(th13);
                    }
                }
                if (!(failure2 instanceof Result.Failure)) {
                    try {
                        Result.Companion companion11113 = Result.INSTANCE;
                        final int i17 = 0;
                        FormUiModelKt.a(mutableStateFlow, new Function1() { // from class: nv
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj4) {
                                int i18 = i17;
                                DynamicFormSupervisorImpl dynamicFormSupervisorImpl = this;
                                Function1 function110 = function15;
                                switch (i18) {
                                    case 0:
                                        FormFieldUiModel formFieldUiModel = (FormFieldUiModel) obj4;
                                        int i19 = DynamicFormSupervisorImpl.d;
                                        formFieldUiModel.getClass();
                                        String str = (String) function110.invoke(formFieldUiModel.d);
                                        if (str != null) {
                                            dynamicFormSupervisorImpl.m(FormFieldUiModel.c(formFieldUiModel, false, null, null, null, null, null, str, false, false, 959));
                                        }
                                        break;
                                    default:
                                        FormFieldUiModel formFieldUiModel2 = (FormFieldUiModel) obj4;
                                        int i110 = DynamicFormSupervisorImpl.d;
                                        formFieldUiModel2.getClass();
                                        if (formFieldUiModel2.f57496e instanceof FormFieldEnumUiModel) {
                                            dynamicFormSupervisorImpl.m((FormFieldUiModel) function110.invoke(formFieldUiModel2));
                                        }
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        });
                        failure2 = Unit.f71739a;
                    } catch (Throwable th14) {
                        Result.Companion companion23 = Result.INSTANCE;
                        failure2 = new Result.Failure(th14);
                    }
                }
                if (!(failure2 instanceof Result.Failure)) {
                    try {
                        Result.Companion companion11114 = Result.INSTANCE;
                        final int i18 = 1;
                        FormUiModelKt.a(mutableStateFlow, new Function1() { // from class: nv
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj4) {
                                int i19 = i18;
                                DynamicFormSupervisorImpl dynamicFormSupervisorImpl = this;
                                Function1 function110 = function11;
                                switch (i19) {
                                    case 0:
                                        FormFieldUiModel formFieldUiModel = (FormFieldUiModel) obj4;
                                        int i110 = DynamicFormSupervisorImpl.d;
                                        formFieldUiModel.getClass();
                                        String str = (String) function110.invoke(formFieldUiModel.d);
                                        if (str != null) {
                                            dynamicFormSupervisorImpl.m(FormFieldUiModel.c(formFieldUiModel, false, null, null, null, null, null, str, false, false, 959));
                                        }
                                        break;
                                    default:
                                        FormFieldUiModel formFieldUiModel2 = (FormFieldUiModel) obj4;
                                        int i111 = DynamicFormSupervisorImpl.d;
                                        formFieldUiModel2.getClass();
                                        if (formFieldUiModel2.f57496e instanceof FormFieldEnumUiModel) {
                                            dynamicFormSupervisorImpl.m((FormFieldUiModel) function110.invoke(formFieldUiModel2));
                                        }
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        });
                        failure2 = Unit.f71739a;
                    } catch (Throwable th15) {
                        Result.Companion companion24 = Result.INSTANCE;
                        failure2 = new Result.Failure(th15);
                    }
                }
                z3 = failure2 instanceof Result.Failure;
                logger = this.f57466a;
                if (!z3) {
                    Objects.toString(this.f57468c.getValue());
                    logger.getClass();
                }
                thA4 = Result.a(failure2);
                if (thA4 != null) {
                    do {
                        value2 = mutableStateFlow.getValue();
                        FormUiModel.f57485b.getClass();
                    } while (!mutableStateFlow.i(value2, FormUiModel.Companion.a()));
                    logger.c("DynamicFormSupervisor", "❌ Form loading failed", thA4);
                }
                return failure2;
            }
        }
        try {
            failure = new Result(new Result(((Result) objInvoke2).f71708b));
        } catch (Throwable th16) {
            th = th16;
            function9 = function18;
            Result.Companion companion11115 = Result.INSTANCE;
            failure = new Result.Failure(th);
            function18 = function9;
        }
        thA = Result.a(failure);
        if (thA != null) {
            if (!(thA instanceof CancellationException)) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        result = ((Result) failure).f71708b;
        thA2 = Result.a(result);
        if (thA2 != null) {
            result = new Result(new Result.Failure(thA2));
        }
        obj = ((Result) result).f71708b;
        thA3 = Result.a(obj);
        if (thA3 == null) {
            ResultKt.b(obj);
            failure2 = FormUiModelMapperKt.f((Form) obj);
        } else {
            failure2 = new Result.Failure(thA3);
        }
        z = failure2 instanceof Result.Failure;
        mutableStateFlow = this.f57467b;
        if (!z) {
            formUiModel2 = (FormUiModel) failure2;
            do {
                value3 = mutableStateFlow.getValue();
            } while (!mutableStateFlow.i(value3, formUiModel2));
        }
        if (!z) {
            Result.Companion companion11116 = Result.INSTANCE;
            i2 = WhenMappings.f57469a[((ExtraPhoneField) function17.mo47invoke()).ordinal()];
            if (i2 != 1) {
                if (i2 != 2) {
                    e0(PhoneType.SECOND_PHONE);
                } else {
                    if (i2 == 3) {
                        throw new NoWhenBranchMatchedException();
                    }
                    e0(PhoneType.SECOND_PHONE);
                    e0(PhoneType.THIRD_PHONE);
                }
            }
            failure2 = Unit.f71739a;
        }
        if (!(failure2 instanceof Result.Failure)) {
            Result.Companion companion11117 = Result.INSTANCE;
            while (true) {
                value = mutableStateFlow.getValue();
                formUiModel = (FormUiModel) value;
                if (formUiModel.f57486a.isEmpty()) {
                    list = formUiModel.f57486a;
                    if ((list instanceof Collection) || !list.isEmpty()) {
                        it = list.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                if (!((FormFieldGenericUiModel) it.next()).getF57495c()) {
                                    z2 = false;
                                }
                            }
                        }
                    }
                    z2 = z4;
                } else {
                    z2 = false;
                }
                List list9 = formUiModel.f57486a;
                arrayList = new ArrayList();
                while (r14.hasNext()) {
                    if (((Boolean) function18.invoke(obj3)).booleanValue()) {
                        arrayList.add(obj3);
                    }
                }
                arrayList2 = new ArrayList(CollectionsKt.t(arrayList, 10));
                while (r14.hasNext()) {
                    objInvoke = function10.invoke(formUiModel, formFieldGenericUiModel);
                    if (((FormFieldGenericUiModel) objInvoke).getD() == formFieldGenericUiModel.getD()) {
                        throw new IllegalArgumentException("Section type mismatch during swap!");
                    }
                    arrayList2.add((FormFieldGenericUiModel) objInvoke);
                }
                if (mutableStateFlow.i(value, FormUiModel.a(FormFieldGenericUiModelExtKt.a(arrayList2, new mv(function14, z2, 0))))) {
                    failure2 = Unit.f71739a;
                    break;
                }
                z4 = true;
            }
        }
        if (!(failure2 instanceof Result.Failure)) {
            Result.Companion companion11118 = Result.INSTANCE;
            FormUiModelKt.a(mutableStateFlow, new n0(function16, this, function13, 25));
            failure2 = Unit.f71739a;
        }
        if (!(failure2 instanceof Result.Failure)) {
            Result.Companion companion11119 = Result.INSTANCE;
            final int i19 = 0;
            FormUiModelKt.a(mutableStateFlow, new Function1() { // from class: nv
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj4) {
                    int i110 = i19;
                    DynamicFormSupervisorImpl dynamicFormSupervisorImpl = this;
                    Function1 function110 = function15;
                    switch (i110) {
                        case 0:
                            FormFieldUiModel formFieldUiModel = (FormFieldUiModel) obj4;
                            int i111 = DynamicFormSupervisorImpl.d;
                            formFieldUiModel.getClass();
                            String str = (String) function110.invoke(formFieldUiModel.d);
                            if (str != null) {
                                dynamicFormSupervisorImpl.m(FormFieldUiModel.c(formFieldUiModel, false, null, null, null, null, null, str, false, false, 959));
                            }
                            break;
                        default:
                            FormFieldUiModel formFieldUiModel2 = (FormFieldUiModel) obj4;
                            int i112 = DynamicFormSupervisorImpl.d;
                            formFieldUiModel2.getClass();
                            if (formFieldUiModel2.f57496e instanceof FormFieldEnumUiModel) {
                                dynamicFormSupervisorImpl.m((FormFieldUiModel) function110.invoke(formFieldUiModel2));
                            }
                            break;
                    }
                    return Unit.f71739a;
                }
            });
            failure2 = Unit.f71739a;
        }
        if (!(failure2 instanceof Result.Failure)) {
            Result.Companion companion111110 = Result.INSTANCE;
            final int i110 = 1;
            FormUiModelKt.a(mutableStateFlow, new Function1() { // from class: nv
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj4) {
                    int i111 = i110;
                    DynamicFormSupervisorImpl dynamicFormSupervisorImpl = this;
                    Function1 function110 = function11;
                    switch (i111) {
                        case 0:
                            FormFieldUiModel formFieldUiModel = (FormFieldUiModel) obj4;
                            int i112 = DynamicFormSupervisorImpl.d;
                            formFieldUiModel.getClass();
                            String str = (String) function110.invoke(formFieldUiModel.d);
                            if (str != null) {
                                dynamicFormSupervisorImpl.m(FormFieldUiModel.c(formFieldUiModel, false, null, null, null, null, null, str, false, false, 959));
                            }
                            break;
                        default:
                            FormFieldUiModel formFieldUiModel2 = (FormFieldUiModel) obj4;
                            int i113 = DynamicFormSupervisorImpl.d;
                            formFieldUiModel2.getClass();
                            if (formFieldUiModel2.f57496e instanceof FormFieldEnumUiModel) {
                                dynamicFormSupervisorImpl.m((FormFieldUiModel) function110.invoke(formFieldUiModel2));
                            }
                            break;
                    }
                    return Unit.f71739a;
                }
            });
            failure2 = Unit.f71739a;
        }
        z3 = failure2 instanceof Result.Failure;
        logger = this.f57466a;
        if (!z3) {
            Objects.toString(this.f57468c.getValue());
            logger.getClass();
        }
        thA4 = Result.a(failure2);
        if (thA4 != null) {
            do {
                value2 = mutableStateFlow.getValue();
                FormUiModel.f57485b.getClass();
            } while (!mutableStateFlow.i(value2, FormUiModel.Companion.a()));
            logger.c("DynamicFormSupervisor", "❌ Form loading failed", thA4);
        }
        return failure2;
    }

    @Override // com.vuitton.android.presentation.screen.dynamicform.DynamicFormSupervisor
    public final void d(FormSectionTypeUiModel formSectionTypeUiModel, List list) {
        Object next;
        formSectionTypeUiModel.getClass();
        list.getClass();
        FormFieldUiModel formFieldUiModelC = ((FormUiModel) this.f57468c.getValue()).c(formSectionTypeUiModel);
        if (formFieldUiModelC == null) {
            return;
        }
        FormFieldTypeUiModel formFieldTypeUiModel = formFieldUiModelC.f57496e;
        FormEnumValueUiModel formEnumValueUiModel = null;
        FormFieldDependentRemoteEnumUiModel formFieldDependentRemoteEnumUiModel = formFieldTypeUiModel instanceof FormFieldDependentRemoteEnumUiModel ? (FormFieldDependentRemoteEnumUiModel) formFieldTypeUiModel : null;
        if (formFieldDependentRemoteEnumUiModel == null) {
            return;
        }
        FormEnumValueUiModel formEnumValueUiModel2 = formFieldDependentRemoteEnumUiModel.f57511c;
        List<String> list2 = list;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
        for (String str : list2) {
            str.getClass();
            arrayList.add(new FormEnumValueUiModel(str, str));
        }
        if (formEnumValueUiModel2 != null) {
            Iterator it = list2.iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                String str2 = (String) next;
                str2.getClass();
                if ((!StringsKt.w(str2) && str2.equals(formEnumValueUiModel2.f57525b)) || (!StringsKt.w(str2) && str2.equals(formEnumValueUiModel2.f57524a))) {
                    break;
                }
            }
            if (((String) next) != null) {
                formEnumValueUiModel = formEnumValueUiModel2;
            }
        }
        m(FormFieldUiModel.c(formFieldUiModelC, false, null, FormFieldDependentRemoteEnumUiModel.g(formFieldDependentRemoteEnumUiModel, arrayList, formEnumValueUiModel, 1), null, null, null, null, false, false, 1019));
    }

    @Override // com.vuitton.android.presentation.screen.dynamicform.DynamicFormSupervisor
    public final void e0(PhoneType phoneType) {
        phoneType.getClass();
        FormFieldPhoneUiModel formFieldPhoneUiModelH = ((FormUiModel) this.f57467b.getValue()).h();
        if (formFieldPhoneUiModelH == null) {
            return;
        }
        int i2 = WhenMappings.f57470b[phoneType.ordinal()];
        Logger logger = this.f57466a;
        if (i2 == 1) {
            logger.getClass();
            return;
        }
        if (i2 != 2) {
            if (i2 != 3) {
                v40.g();
                return;
            } else {
                if (!formFieldPhoneUiModelH.d() || !formFieldPhoneUiModelH.e() || formFieldPhoneUiModelH.f()) {
                    logger.getClass();
                    return;
                }
                l(formFieldPhoneUiModelH, FormSectionTypeUiModel.PHONE_NUMBER_TYPE3, FormSectionTypeUiModel.PHONE_NUMBER_COUNTRY3, FormSectionTypeUiModel.PHONE_NUMBER3);
            }
        } else {
            if (!formFieldPhoneUiModelH.d() || formFieldPhoneUiModelH.e()) {
                logger.getClass();
                return;
            }
            l(formFieldPhoneUiModelH, FormSectionTypeUiModel.PHONE_NUMBER_TYPE2, FormSectionTypeUiModel.PHONE_NUMBER_COUNTRY2, FormSectionTypeUiModel.PHONE_NUMBER2);
        }
        i();
    }

    @Override // com.vuitton.android.presentation.screen.dynamicform.DynamicFormSupervisor
    public final void f(FormFieldUiModel formFieldUiModel, rq rqVar) {
        m(formFieldUiModel);
        FormUiModelKt.a(this.f57467b, new n0(formFieldUiModel.d, this, rqVar, 24));
    }

    @Override // com.vuitton.android.presentation.screen.dynamicform.DynamicFormSupervisor
    public final void g(re reVar) {
        MutableStateFlow mutableStateFlow;
        Object value;
        do {
            mutableStateFlow = this.f57467b;
            value = mutableStateFlow.getValue();
        } while (!mutableStateFlow.i(value, FormUiModel.a(FormFieldGenericUiModelExtKt.a(((FormUiModel) value).f57486a, new ck(reVar, 15)))));
        i();
    }

    @Override // com.vuitton.android.presentation.screen.dynamicform.DynamicFormSupervisor
    public final void h(FormSectionTypeUiModel formSectionTypeUiModel, boolean z) {
        formSectionTypeUiModel.getClass();
        FormFieldUiModel formFieldUiModelC = ((FormUiModel) this.f57468c.getValue()).c(formSectionTypeUiModel);
        if (formFieldUiModelC == null) {
            return;
        }
        m(FormFieldUiModel.c(formFieldUiModelC, z, null, null, null, null, null, null, false, false, 1022));
    }

    @Override // com.vuitton.android.presentation.screen.dynamicform.DynamicFormSupervisor
    public final void i() {
        MutableStateFlow mutableStateFlow;
        Object value;
        FormUiModel formUiModel;
        do {
            mutableStateFlow = this.f57467b;
            value = mutableStateFlow.getValue();
            formUiModel = (FormUiModel) value;
        } while (!mutableStateFlow.i(value, FormUiModel.a(FormFieldGenericUiModelExtKt.a(formUiModel.f57486a, new jv(formUiModel, 1)))));
    }

    @Override // com.vuitton.android.presentation.screen.dynamicform.DynamicFormSupervisor
    public final void j(FormSectionTypeUiModel formSectionTypeUiModel, Object obj, Function2 function2) {
        formSectionTypeUiModel.getClass();
        if (((FormUiModel) this.f57468c.getValue()).c(formSectionTypeUiModel) == null) {
            return;
        }
        n(formSectionTypeUiModel, obj);
        FormUiModelKt.a(this.f57467b, new n0(formSectionTypeUiModel, this, function2, 24));
    }

    public final void l(FormFieldPhoneUiModel formFieldPhoneUiModel, FormSectionTypeUiModel formSectionTypeUiModel, FormSectionTypeUiModel formSectionTypeUiModel2, FormSectionTypeUiModel formSectionTypeUiModel3) {
        MutableStateFlow mutableStateFlow;
        Object value;
        ArrayList arrayList;
        FormFieldUiModel formFieldUiModelK = k(formFieldPhoneUiModel, FormSectionTypeUiModel.PHONE_NUMBER_TYPE1, formSectionTypeUiModel);
        FormFieldUiModel formFieldUiModelK2 = k(formFieldPhoneUiModel, FormSectionTypeUiModel.PHONE_NUMBER_COUNTRY1, formSectionTypeUiModel2);
        FormFieldUiModel formFieldUiModelK3 = k(formFieldPhoneUiModel, FormSectionTypeUiModel.PHONE_NUMBER1, formSectionTypeUiModel3);
        if (formFieldUiModelK3 == null || !(formFieldUiModelK3.f57496e instanceof FormFieldFreeformUiModel)) {
            formFieldUiModelK3 = null;
        }
        if (formFieldUiModelK == null || formFieldUiModelK2 == null || formFieldUiModelK3 == null) {
            return;
        }
        do {
            mutableStateFlow = this.f57467b;
            value = mutableStateFlow.getValue();
            List<Object> list = ((FormUiModel) value).f57486a;
            arrayList = new ArrayList(CollectionsKt.t(list, 10));
            for (Object objC : list) {
                if (objC instanceof FormFieldPhoneUiModel) {
                    ListBuilder listBuilderV = CollectionsKt.v();
                    listBuilderV.addAll(formFieldPhoneUiModel.g);
                    listBuilderV.addAll(CollectionsKt.P(formFieldUiModelK, formFieldUiModelK2, formFieldUiModelK3));
                    objC = FormFieldPhoneUiModel.c((FormFieldPhoneUiModel) objC, CollectionsKt.r(listBuilderV));
                }
                arrayList.add(objC);
            }
        } while (!mutableStateFlow.i(value, new FormUiModel(arrayList)));
    }

    public final void m(FormFieldUiModel formFieldUiModel) {
        MutableStateFlow mutableStateFlow;
        Object value;
        do {
            mutableStateFlow = this.f57467b;
            value = mutableStateFlow.getValue();
        } while (!mutableStateFlow.i(value, FormUiModel.a(FormFieldGenericUiModelExtKt.a(((FormUiModel) value).f57486a, new ck(formFieldUiModel, 16)))));
        i();
    }

    /* JADX WARN: Code duplicated, block: B:53:0x00b4 A[PHI: r14
      0x00b4: PHI (r14v11 java.lang.Object) = (r14v7 java.lang.Object), (r14v19 java.lang.Object) binds: [B:74:0x00f1, B:51:0x00b1] A[DONT_GENERATE, DONT_INLINE]] */
    public final void n(FormSectionTypeUiModel formSectionTypeUiModel, Object obj) {
        Object objH;
        Boolean boolW;
        FormFieldTypeUiModel formFieldTypeUiModelF;
        FormEnumValueUiModel formEnumValueUiModel;
        Object next;
        FormFieldUiModel formFieldUiModelC = ((FormUiModel) this.f57468c.getValue()).c(formSectionTypeUiModel);
        if (formFieldUiModelC == null) {
            return;
        }
        FormFieldTypeUiModel formFieldTypeUiModel = formFieldUiModelC.f57496e;
        formFieldTypeUiModel.getClass();
        Object obj2 = null;
        if (formFieldTypeUiModel instanceof FormFieldTypeUiModel.EnumBasedFormField) {
            FormFieldTypeUiModel.EnumBasedFormField enumBasedFormField = (FormFieldTypeUiModel.EnumBasedFormField) formFieldTypeUiModel;
            if (obj instanceof Boolean) {
                Boolean bool = (Boolean) obj;
                formEnumValueUiModel = new FormEnumValueUiModel(String.valueOf(bool.booleanValue()), String.valueOf(bool.booleanValue()));
            } else if (obj instanceof String) {
                String str = (String) obj;
                formEnumValueUiModel = new FormEnumValueUiModel(str, str);
            } else {
                formEnumValueUiModel = obj instanceof FormEnumValueUiModel ? (FormEnumValueUiModel) obj : null;
            }
            if (formEnumValueUiModel == null) {
                formEnumValueUiModel = null;
            }
            Iterator it = enumBasedFormField.getF57518b().iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!FormEnumValueUiModelKt.a((FormEnumValueUiModel) next, formEnumValueUiModel));
            FormEnumValueUiModel formEnumValueUiModel2 = (FormEnumValueUiModel) next;
            if (formEnumValueUiModel2 != null) {
                obj2 = formEnumValueUiModel2;
            } else if (formEnumValueUiModel != null && (enumBasedFormField instanceof FormFieldReadOnlyEnumUiModel)) {
                obj2 = formEnumValueUiModel;
            }
        } else if (formFieldTypeUiModel instanceof FormFieldBooleanUiModel) {
            if (obj instanceof Boolean) {
                objH = (Boolean) obj;
            } else if (obj instanceof String) {
                objH = StringsKt.W((String) obj);
            } else if (obj instanceof FormEnumValueUiModel) {
                FormEnumValueUiModel formEnumValueUiModel3 = (FormEnumValueUiModel) obj;
                String str2 = formEnumValueUiModel3.f57525b;
                objH = (str2 == null || (boolW = StringsKt.W(str2)) == null) ? StringsKt.W(formEnumValueUiModel3.f57524a) : boolW;
            } else {
                objH = null;
            }
            if (objH != null) {
                obj2 = objH;
            }
        } else {
            if (!(formFieldTypeUiModel instanceof FormFieldFreeformUiModel) && !(formFieldTypeUiModel instanceof FormFieldReadOnlyUiModel)) {
                v40.g();
                return;
            }
            if (obj instanceof Boolean) {
                objH = String.valueOf(((Boolean) obj).booleanValue());
            } else if (obj instanceof String) {
                objH = (String) obj;
            } else if (obj instanceof FormEnumValueUiModel) {
                FormEnumValueUiModel formEnumValueUiModel4 = (FormEnumValueUiModel) obj;
                String strH = StringKtExtKt.h(formEnumValueUiModel4.f57525b);
                objH = strH == null ? StringKtExtKt.h(formEnumValueUiModel4.f57524a) : strH;
            } else {
                objH = null;
            }
            if (objH != null) {
                obj2 = objH;
            }
        }
        if (obj2 == null || (formFieldTypeUiModelF = formFieldTypeUiModel.f(obj2)) == null) {
            return;
        }
        m(FormFieldUiModel.c(formFieldUiModelC, false, null, formFieldTypeUiModelF, null, null, null, null, false, false, 1019));
    }
}
