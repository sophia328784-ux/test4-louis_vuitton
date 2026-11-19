package com.vuitton.android.presentation.screen.dynamicform.model;

import com.vuitton.android.presentation.helper.PhoneNumberHelper;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldGenericUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldPhoneUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldBooleanUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldTypeUiModel;
import defpackage.d21;
import defpackage.gv;
import defpackage.v40;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001:\u0001\u0007B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;", "", "", "Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldGenericUiModel;", "fieldList", "<init>", "(Ljava/util/List;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class FormUiModel {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f57485b = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f57486a;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel$Companion;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static FormUiModel a() {
            return new FormUiModel(EmptyList.f71768b);
        }
    }

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f57487a;

        static {
            int[] iArr = new int[FormSectionTypeUiModel.values().length];
            try {
                iArr[FormSectionTypeUiModel.PHONE_NUMBER1.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FormSectionTypeUiModel.PHONE_NUMBER2.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[FormSectionTypeUiModel.PHONE_NUMBER3.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f57487a = iArr;
        }
    }

    public FormUiModel(List<? extends FormFieldGenericUiModel> list) {
        list.getClass();
        this.f57486a = list;
    }

    public static FormUiModel a(List list) {
        list.getClass();
        return new FormUiModel(list);
    }

    public static Boolean d(FormUiModel formUiModel, FormSectionTypeUiModel formSectionTypeUiModel) {
        formUiModel.getClass();
        formSectionTypeUiModel.getClass();
        FormFieldUiModel formFieldUiModelC = formUiModel.c(formSectionTypeUiModel);
        FormFieldTypeUiModel formFieldTypeUiModel = formFieldUiModelC != null ? formFieldUiModelC.f57496e : null;
        FormFieldBooleanUiModel formFieldBooleanUiModel = formFieldTypeUiModel instanceof FormFieldBooleanUiModel ? (FormFieldBooleanUiModel) formFieldTypeUiModel : null;
        if (formFieldBooleanUiModel != null) {
            return Boolean.valueOf(formFieldBooleanUiModel.f57505a);
        }
        return null;
    }

    public static String f(FormUiModel formUiModel, FormSectionTypeUiModel formSectionTypeUiModel, String str) {
        formSectionTypeUiModel.getClass();
        String strE = formUiModel.e(formSectionTypeUiModel, true);
        return StringsKt.w(strE) ? str : strE;
    }

    public static String g(FormUiModel formUiModel, FormSectionTypeUiModel formSectionTypeUiModel, String str, boolean z, int i2) {
        if ((i2 & 2) != 0) {
            str = null;
        }
        if ((i2 & 4) != 0) {
            z = true;
        }
        formUiModel.getClass();
        formSectionTypeUiModel.getClass();
        if (str == null) {
            str = "";
        }
        String strE = formUiModel.e(formSectionTypeUiModel, z);
        if (!StringsKt.w(strE)) {
            str = strE;
        }
        if (StringsKt.w(str)) {
            return null;
        }
        return str;
    }

    public final void b(Function1 function1) {
        for (FormFieldGenericUiModel formFieldGenericUiModel : this.f57486a) {
            if (formFieldGenericUiModel instanceof FormFieldPhoneUiModel) {
                Iterator it = ((FormFieldPhoneUiModel) formFieldGenericUiModel).g.iterator();
                while (it.hasNext()) {
                    function1.invoke(it.next());
                }
            } else {
                if (!(formFieldGenericUiModel instanceof FormFieldUiModel)) {
                    v40.g();
                    return;
                }
                function1.invoke(formFieldGenericUiModel);
            }
        }
    }

    public final FormFieldUiModel c(FormSectionTypeUiModel formSectionTypeUiModel) {
        formSectionTypeUiModel.getClass();
        Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        b(new gv(formSectionTypeUiModel, ref$ObjectRef, 17));
        return (FormFieldUiModel) ref$ObjectRef.f71921b;
    }

    public final String e(FormSectionTypeUiModel formSectionTypeUiModel, boolean z) {
        formSectionTypeUiModel.getClass();
        FormFieldUiModel formFieldUiModelC = c(formSectionTypeUiModel);
        String strI = formFieldUiModelC != null ? formFieldUiModelC.i(z) : null;
        return strI == null ? "" : strI;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof FormUiModel) && Intrinsics.c(this.f57486a, ((FormUiModel) obj).f57486a);
    }

    public final FormFieldPhoneUiModel h() {
        List list = this.f57486a;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (obj instanceof FormFieldPhoneUiModel) {
                arrayList.add(obj);
            }
        }
        return (FormFieldPhoneUiModel) CollectionsKt.firstOrNull(arrayList);
    }

    public final int hashCode() {
        return this.f57486a.hashCode();
    }

    /* JADX WARN: Code duplicated, block: B:31:0x007e  */
    /* JADX WARN: Code duplicated, block: B:34:0x0088  */
    /* JADX WARN: Code duplicated, block: B:36:0x0098  */
    /* JADX WARN: Code duplicated, block: B:37:0x009a  */
    /* JADX WARN: Code duplicated, block: B:53:0x00a2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:54:0x00a0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:57:? A[LOOP:1: B:32:0x0082->B:57:?, LOOP_END, SYNTHETIC] */
    public final boolean i() throws Throwable {
        boolean zG;
        List listP;
        Iterator it;
        FormSectionTypeUiModel formSectionTypeUiModel;
        boolean zK;
        List<FormFieldGenericUiModel> list = this.f57486a;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            for (FormFieldGenericUiModel formFieldGenericUiModel : list) {
                if (formFieldGenericUiModel instanceof FormFieldUiModel) {
                    zG = ((FormFieldUiModel) formFieldGenericUiModel).g();
                } else {
                    if (!(formFieldGenericUiModel instanceof FormFieldPhoneUiModel)) {
                        v40.g();
                        return false;
                    }
                    List list2 = ((FormFieldPhoneUiModel) formFieldGenericUiModel).g;
                    if ((list2 instanceof Collection) && list2.isEmpty()) {
                        listP = CollectionsKt.P(FormSectionTypeUiModel.PHONE_NUMBER1, FormSectionTypeUiModel.PHONE_NUMBER2, FormSectionTypeUiModel.PHONE_NUMBER3);
                        if (listP instanceof Collection) {
                            it = listP.iterator();
                            while (true) {
                                if (it.hasNext()) {
                                    formSectionTypeUiModel = (FormSectionTypeUiModel) it.next();
                                    if (StringsKt.w(e(formSectionTypeUiModel, true))) {
                                        zK = true;
                                    } else {
                                        zK = k(formSectionTypeUiModel);
                                    }
                                    if (!zK) {
                                        zG = false;
                                    }
                                }
                            }
                        } else {
                            it = listP.iterator();
                            while (true) {
                                if (it.hasNext()) {
                                    formSectionTypeUiModel = (FormSectionTypeUiModel) it.next();
                                    if (StringsKt.w(e(formSectionTypeUiModel, true))) {
                                        zK = true;
                                    } else {
                                        zK = k(formSectionTypeUiModel);
                                    }
                                    if (!zK) {
                                        zG = false;
                                    }
                                }
                            }
                        }
                        zG = true;
                    } else {
                        Iterator it2 = list2.iterator();
                        while (true) {
                            if (!it2.hasNext()) {
                                listP = CollectionsKt.P(FormSectionTypeUiModel.PHONE_NUMBER1, FormSectionTypeUiModel.PHONE_NUMBER2, FormSectionTypeUiModel.PHONE_NUMBER3);
                                if ((listP instanceof Collection) || !listP.isEmpty()) {
                                    it = listP.iterator();
                                    while (true) {
                                        if (it.hasNext()) {
                                            formSectionTypeUiModel = (FormSectionTypeUiModel) it.next();
                                            if (StringsKt.w(e(formSectionTypeUiModel, true))) {
                                                zK = true;
                                            } else {
                                                zK = k(formSectionTypeUiModel);
                                            }
                                            if (!zK) {
                                            }
                                        }
                                    }
                                }
                                zG = true;
                            } else if (!((FormFieldUiModel) it2.next()).g()) {
                            }
                            zG = false;
                        }
                    }
                }
                if (!zG) {
                    return false;
                }
            }
        }
        return true;
    }

    public final boolean j() {
        FormFieldPhoneUiModel formFieldPhoneUiModelH = h();
        return formFieldPhoneUiModelH != null && formFieldPhoneUiModelH.f57494h;
    }

    public final boolean k(FormSectionTypeUiModel formSectionTypeUiModel) {
        FormSectionTypeUiModel formSectionTypeUiModel2;
        formSectionTypeUiModel.getClass();
        String strE = e(formSectionTypeUiModel, true);
        if (!StringsKt.w(strE)) {
            int i2 = WhenMappings.f57487a[formSectionTypeUiModel.ordinal()];
            if (i2 == 1) {
                formSectionTypeUiModel2 = FormSectionTypeUiModel.PHONE_NUMBER_COUNTRY1;
            } else if (i2 == 2) {
                formSectionTypeUiModel2 = FormSectionTypeUiModel.PHONE_NUMBER_COUNTRY2;
            } else if (i2 == 3) {
                formSectionTypeUiModel2 = FormSectionTypeUiModel.PHONE_NUMBER_COUNTRY3;
            }
            String strG = g(this, formSectionTypeUiModel2, null, true, 2);
            if (strG == null || StringsKt.w(strG)) {
                return false;
            }
            return j() ? PhoneNumberHelper.a(strG, strE) : PhoneNumberHelper.b(strG, strE);
        }
        return true;
    }

    public final String toString() {
        return d21.o("FormUiModel(fieldList=", ")", this.f57486a);
    }
}
