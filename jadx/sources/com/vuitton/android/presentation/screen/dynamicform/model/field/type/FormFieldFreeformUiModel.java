package com.vuitton.android.presentation.screen.dynamicform.model.field.type;

import androidx.compose.ui.autofill.ContentType;
import androidx.compose.ui.text.input.KeyboardType;
import defpackage.fc;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B+\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldFreeformUiModel;", "Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel;", "", "validationRegex", "userInput", "Landroidx/compose/ui/text/input/KeyboardType;", "keyboardType", "Landroidx/compose/ui/autofill/ContentType;", "fieldContentType", "<init>", "(Ljava/lang/String;Ljava/lang/String;ILandroidx/compose/ui/autofill/ContentType;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class FormFieldFreeformUiModel implements FormFieldTypeUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f57514a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f57515b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f57516c;
    public final ContentType d;

    public FormFieldFreeformUiModel(String str, String str2, int i2, ContentType contentType, DefaultConstructorMarker defaultConstructorMarker) {
        str2.getClass();
        this.f57514a = str;
        this.f57515b = str2;
        this.f57516c = i2;
        this.d = contentType;
    }

    public static FormFieldFreeformUiModel g(FormFieldFreeformUiModel formFieldFreeformUiModel, String str) {
        String str2 = formFieldFreeformUiModel.f57514a;
        int i2 = formFieldFreeformUiModel.f57516c;
        ContentType contentType = formFieldFreeformUiModel.d;
        formFieldFreeformUiModel.getClass();
        return new FormFieldFreeformUiModel(str2, str, i2, contentType, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FormFieldFreeformUiModel)) {
            return false;
        }
        FormFieldFreeformUiModel formFieldFreeformUiModel = (FormFieldFreeformUiModel) obj;
        if (!Intrinsics.c(this.f57514a, formFieldFreeformUiModel.f57514a) || !this.f57515b.equals(formFieldFreeformUiModel.f57515b)) {
            return false;
        }
        int i2 = formFieldFreeformUiModel.f57516c;
        KeyboardType.Companion companion = KeyboardType.f10809b;
        return this.f57516c == i2 && Intrinsics.c(this.d, formFieldFreeformUiModel.d);
    }

    @Override // com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldTypeUiModel
    public final FormFieldTypeUiModel f(Object obj) {
        if (obj instanceof String) {
            return g(this, (String) obj);
        }
        return null;
    }

    public final int hashCode() {
        String str = this.f57514a;
        int iB = fc.b((str == null ? 0 : str.hashCode()) * 31, 31, this.f57515b);
        KeyboardType.Companion companion = KeyboardType.f10809b;
        int iB2 = tr.b(this.f57516c, iB, 31);
        ContentType contentType = this.d;
        return iB2 + (contentType != null ? contentType.hashCode() : 0);
    }

    public final String toString() {
        String strA = KeyboardType.a(this.f57516c);
        StringBuilder sbS = fc.s("FormFieldFreeformUiModel(validationRegex=", this.f57514a, ", userInput=", this.f57515b, ", keyboardType=");
        sbS.append(strA);
        sbS.append(", fieldContentType=");
        sbS.append(this.d);
        sbS.append(")");
        return sbS.toString();
    }
}
