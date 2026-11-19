package com.vuitton.android.presentation.screen.dynamicform.model.field.customvalidation;

import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import defpackage.tx;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B;\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002\u0012\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\u0006¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/dynamicform/model/field/customvalidation/FieldValidationRule;", "", "Lkotlin/Function1;", "Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;", "", "validationLogic", "Lkotlin/Function0;", "Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;", "errorMessage", "showErrorEvenIfEmpty", "<init>", "(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class FieldValidationRule {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Function1 f57502a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Function0 f57503b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function0 f57504c;

    public /* synthetic */ FieldValidationRule(Function1 function1, Function0 function0, Function0 function2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(function1, (i2 & 2) != 0 ? new tx(9) : function0, (i2 & 4) != 0 ? new tx(15) : function2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FieldValidationRule)) {
            return false;
        }
        FieldValidationRule fieldValidationRule = (FieldValidationRule) obj;
        return Intrinsics.c(this.f57502a, fieldValidationRule.f57502a) && Intrinsics.c(this.f57503b, fieldValidationRule.f57503b) && Intrinsics.c(this.f57504c, fieldValidationRule.f57504c);
    }

    public final int hashCode() {
        return this.f57504c.hashCode() + ((this.f57503b.hashCode() + (this.f57502a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "FieldValidationRule(validationLogic=" + this.f57502a + ", errorMessage=" + this.f57503b + ", showErrorEvenIfEmpty=" + this.f57504c + ")";
    }

    public FieldValidationRule(Function1<? super FormSectionTypeUiModel, Boolean> function1, Function0<? extends StringResourceUiModel> function0, Function0<Boolean> function2) {
        function1.getClass();
        function0.getClass();
        function2.getClass();
        this.f57502a = function1;
        this.f57503b = function0;
        this.f57504c = function2;
    }
}
