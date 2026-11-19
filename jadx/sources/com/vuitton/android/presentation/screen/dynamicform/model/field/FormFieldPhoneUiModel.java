package com.vuitton.android.presentation.screen.dynamicform.model.field;

import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import defpackage.fc;
import defpackage.n00;
import defpackage.tr;
import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u0001:\u0001\u000fB?\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t\u0012\b\b\u0002\u0010\f\u001a\u00020\u0002¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;", "Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldGenericUiModel;", "", "isMandatory", "Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;", "sectionType", "", "maxCount", "minCount", "", "Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;", "phoneFieldList", "isMobileOnly", "<init>", "(ZLcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;IILjava/util/List;Z)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class FormFieldPhoneUiModel extends FormFieldGenericUiModel {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f57491c;
    public final FormSectionTypeUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f57492e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f57493f;
    public final List g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f57494h;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel$Companion;", "", "", "CAN_DELETE_PRIMARY_PHONE", "Z", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FormFieldPhoneUiModel(boolean z, FormSectionTypeUiModel formSectionTypeUiModel, int i2, int i3, List<FormFieldUiModel> list, boolean z2) {
        super(z, formSectionTypeUiModel, null);
        formSectionTypeUiModel.getClass();
        list.getClass();
        this.f57491c = z;
        this.d = formSectionTypeUiModel;
        this.f57492e = i2;
        this.f57493f = i3;
        this.g = list;
        this.f57494h = z2;
    }

    public static FormFieldPhoneUiModel c(FormFieldPhoneUiModel formFieldPhoneUiModel, AbstractList abstractList) {
        boolean z = formFieldPhoneUiModel.f57491c;
        FormSectionTypeUiModel formSectionTypeUiModel = formFieldPhoneUiModel.d;
        int i2 = formFieldPhoneUiModel.f57492e;
        int i3 = formFieldPhoneUiModel.f57493f;
        boolean z2 = formFieldPhoneUiModel.f57494h;
        formFieldPhoneUiModel.getClass();
        formSectionTypeUiModel.getClass();
        abstractList.getClass();
        return new FormFieldPhoneUiModel(z, formSectionTypeUiModel, i2, i3, abstractList, z2);
    }

    @Override // com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldGenericUiModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final FormSectionTypeUiModel getD() {
        return this.d;
    }

    @Override // com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldGenericUiModel
    /* JADX INFO: renamed from: b, reason: from getter */
    public final boolean getF57491c() {
        return this.f57491c;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x005e A[RETURN] */
    public final boolean d() {
        List list = this.g;
        Iterator it = list.iterator();
        int i2 = 0;
        while (true) {
            if (!it.hasNext()) {
                i2 = -1;
                break;
            }
            if (((FormFieldUiModel) it.next()).d == FormSectionTypeUiModel.PHONE_NUMBER1) {
                break;
            }
            i2++;
        }
        if (i2 != -1) {
            Iterator it2 = list.iterator();
            int i3 = 0;
            while (true) {
                if (!it2.hasNext()) {
                    i3 = -1;
                    break;
                }
                if (((FormFieldUiModel) it2.next()).d == FormSectionTypeUiModel.PHONE_NUMBER_COUNTRY1) {
                    break;
                }
                i3++;
            }
            if (i3 != -1) {
                Iterator it3 = list.iterator();
                int i4 = 0;
                while (it3.hasNext()) {
                    if (((FormFieldUiModel) it3.next()).d != FormSectionTypeUiModel.PHONE_NUMBER_TYPE1) {
                        i4++;
                    } else if (i4 != -1) {
                        return true;
                    }
                }
                i4 = -1;
                if (i4 != -1) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x005e A[RETURN] */
    public final boolean e() {
        List list = this.g;
        Iterator it = list.iterator();
        int i2 = 0;
        while (true) {
            if (!it.hasNext()) {
                i2 = -1;
                break;
            }
            if (((FormFieldUiModel) it.next()).d == FormSectionTypeUiModel.PHONE_NUMBER2) {
                break;
            }
            i2++;
        }
        if (i2 != -1) {
            Iterator it2 = list.iterator();
            int i3 = 0;
            while (true) {
                if (!it2.hasNext()) {
                    i3 = -1;
                    break;
                }
                if (((FormFieldUiModel) it2.next()).d == FormSectionTypeUiModel.PHONE_NUMBER_COUNTRY2) {
                    break;
                }
                i3++;
            }
            if (i3 != -1) {
                Iterator it3 = list.iterator();
                int i4 = 0;
                while (it3.hasNext()) {
                    if (((FormFieldUiModel) it3.next()).d != FormSectionTypeUiModel.PHONE_NUMBER_TYPE2) {
                        i4++;
                    } else if (i4 != -1) {
                        return true;
                    }
                }
                i4 = -1;
                if (i4 != -1) {
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FormFieldPhoneUiModel)) {
            return false;
        }
        FormFieldPhoneUiModel formFieldPhoneUiModel = (FormFieldPhoneUiModel) obj;
        return this.f57491c == formFieldPhoneUiModel.f57491c && this.d == formFieldPhoneUiModel.d && this.f57492e == formFieldPhoneUiModel.f57492e && this.f57493f == formFieldPhoneUiModel.f57493f && Intrinsics.c(this.g, formFieldPhoneUiModel.g) && this.f57494h == formFieldPhoneUiModel.f57494h;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x005e A[RETURN] */
    public final boolean f() {
        List list = this.g;
        Iterator it = list.iterator();
        int i2 = 0;
        while (true) {
            if (!it.hasNext()) {
                i2 = -1;
                break;
            }
            if (((FormFieldUiModel) it.next()).d == FormSectionTypeUiModel.PHONE_NUMBER3) {
                break;
            }
            i2++;
        }
        if (i2 != -1) {
            Iterator it2 = list.iterator();
            int i3 = 0;
            while (true) {
                if (!it2.hasNext()) {
                    i3 = -1;
                    break;
                }
                if (((FormFieldUiModel) it2.next()).d == FormSectionTypeUiModel.PHONE_NUMBER_COUNTRY3) {
                    break;
                }
                i3++;
            }
            if (i3 != -1) {
                Iterator it3 = list.iterator();
                int i4 = 0;
                while (it3.hasNext()) {
                    if (((FormFieldUiModel) it3.next()).d != FormSectionTypeUiModel.PHONE_NUMBER_TYPE3) {
                        i4++;
                    } else if (i4 != -1) {
                        return true;
                    }
                }
                i4 = -1;
                if (i4 != -1) {
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean g() {
        return this.f57493f == 1 && this.f57492e == 1;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f57494h) + n00.a(tr.b(this.f57493f, tr.b(this.f57492e, (this.d.hashCode() + (Boolean.hashCode(this.f57491c) * 31)) * 31, 31), 31), 31, this.g);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("FormFieldPhoneUiModel(isMandatory=");
        sb.append(this.f57491c);
        sb.append(", sectionType=");
        sb.append(this.d);
        sb.append(", maxCount=");
        fc.x(this.f57492e, this.f57493f, ", minCount=", ", phoneFieldList=", sb);
        sb.append(this.g);
        sb.append(", isMobileOnly=");
        sb.append(this.f57494h);
        sb.append(")");
        return sb.toString();
    }

    public /* synthetic */ FormFieldPhoneUiModel(boolean z, FormSectionTypeUiModel formSectionTypeUiModel, int i2, int i3, List list, boolean z2, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(z, formSectionTypeUiModel, i2, i3, list, (i4 & 32) != 0 ? false : z2);
    }
}
