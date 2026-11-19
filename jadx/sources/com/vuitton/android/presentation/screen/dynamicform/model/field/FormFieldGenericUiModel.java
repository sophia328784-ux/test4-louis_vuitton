package com.vuitton.android.presentation.screen.dynamicform.model.field;

import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001\u0082\u0001\u0002\u0002\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldGenericUiModel;", "", "Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;", "Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class FormFieldGenericUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f57489a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FormSectionTypeUiModel f57490b;

    public FormFieldGenericUiModel(boolean z, FormSectionTypeUiModel formSectionTypeUiModel, DefaultConstructorMarker defaultConstructorMarker) {
        this.f57489a = z;
        this.f57490b = formSectionTypeUiModel;
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public FormSectionTypeUiModel getF57490b() {
        return this.f57490b;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public boolean getF57489a() {
        return this.f57489a;
    }
}
