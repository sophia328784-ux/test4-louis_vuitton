package com.vuitton.android.presentation.screen.distantrepairs.models;

import com.vuitton.android.presentation.screen.distantrepairs.form.models.FormState;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.StepState;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B/\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/models/FormStateUIModel;", "", "Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;", "step1Initiate", "step2Information", "step3Product", "Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/FormState;", "formState", "<init>", "(Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/FormState;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class FormStateUIModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final StepState f57389a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final StepState f57390b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final StepState f57391c;
    public final FormState d;

    public /* synthetic */ FormStateUIModel(StepState stepState, StepState stepState2, StepState stepState3, FormState formState, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? StepState.DISABLED : stepState, (i2 & 2) != 0 ? StepState.DISABLED : stepState2, (i2 & 4) != 0 ? StepState.DISABLED : stepState3, (i2 & 8) != 0 ? FormState.MODIFY : formState);
    }

    public static FormStateUIModel a(StepState stepState, StepState stepState2, StepState stepState3, FormState formState) {
        stepState.getClass();
        stepState2.getClass();
        stepState3.getClass();
        formState.getClass();
        return new FormStateUIModel(stepState, stepState2, stepState3, formState);
    }

    public static /* synthetic */ FormStateUIModel b(FormStateUIModel formStateUIModel, StepState stepState, FormState formState, int i2) {
        if ((i2 & 1) != 0) {
            stepState = formStateUIModel.f57389a;
        }
        StepState stepState2 = formStateUIModel.f57390b;
        StepState stepState3 = formStateUIModel.f57391c;
        if ((i2 & 8) != 0) {
            formState = formStateUIModel.d;
        }
        formStateUIModel.getClass();
        return a(stepState, stepState2, stepState3, formState);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FormStateUIModel)) {
            return false;
        }
        FormStateUIModel formStateUIModel = (FormStateUIModel) obj;
        return this.f57389a == formStateUIModel.f57389a && this.f57390b == formStateUIModel.f57390b && this.f57391c == formStateUIModel.f57391c && this.d == formStateUIModel.d;
    }

    public final int hashCode() {
        return this.d.hashCode() + ((this.f57391c.hashCode() + ((this.f57390b.hashCode() + (this.f57389a.hashCode() * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "FormStateUIModel(step1Initiate=" + this.f57389a + ", step2Information=" + this.f57390b + ", step3Product=" + this.f57391c + ", formState=" + this.d + ")";
    }

    public FormStateUIModel(StepState stepState, StepState stepState2, StepState stepState3, FormState formState) {
        stepState.getClass();
        stepState2.getClass();
        stepState3.getClass();
        formState.getClass();
        this.f57389a = stepState;
        this.f57390b = stepState2;
        this.f57391c = stepState3;
        this.d = formState;
    }

    public FormStateUIModel() {
        this(null, null, null, null, 15, null);
    }
}
