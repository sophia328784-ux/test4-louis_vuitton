package com.vuitton.android.presentation.screen.distantrepairs.models;

import com.vuitton.android.presentation.screen.distantrepairs.form.models.FormState;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.StepState;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B/\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentStateUIModel;", "", "Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;", "step1Preliminary", "step2Send", "step3Receive", "Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/FormState;", "formState", "<init>", "(Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/FormState;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class AssessmentStateUIModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final StepState f57353a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final StepState f57354b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final StepState f57355c;
    public final FormState d;

    public /* synthetic */ AssessmentStateUIModel(StepState stepState, StepState stepState2, StepState stepState3, FormState formState, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? StepState.DISABLED : stepState, (i2 & 2) != 0 ? StepState.DISABLED : stepState2, (i2 & 4) != 0 ? StepState.DISABLED : stepState3, (i2 & 8) != 0 ? FormState.MODIFY : formState);
    }

    public static AssessmentStateUIModel a(StepState stepState, StepState stepState2, StepState stepState3, FormState formState) {
        stepState.getClass();
        stepState2.getClass();
        stepState3.getClass();
        formState.getClass();
        return new AssessmentStateUIModel(stepState, stepState2, stepState3, formState);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AssessmentStateUIModel)) {
            return false;
        }
        AssessmentStateUIModel assessmentStateUIModel = (AssessmentStateUIModel) obj;
        return this.f57353a == assessmentStateUIModel.f57353a && this.f57354b == assessmentStateUIModel.f57354b && this.f57355c == assessmentStateUIModel.f57355c && this.d == assessmentStateUIModel.d;
    }

    public final int hashCode() {
        return this.d.hashCode() + ((this.f57355c.hashCode() + ((this.f57354b.hashCode() + (this.f57353a.hashCode() * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "AssessmentStateUIModel(step1Preliminary=" + this.f57353a + ", step2Send=" + this.f57354b + ", step3Receive=" + this.f57355c + ", formState=" + this.d + ")";
    }

    public AssessmentStateUIModel(StepState stepState, StepState stepState2, StepState stepState3, FormState formState) {
        stepState.getClass();
        stepState2.getClass();
        stepState3.getClass();
        formState.getClass();
        this.f57353a = stepState;
        this.f57354b = stepState2;
        this.f57355c = stepState3;
        this.d = formState;
    }

    public AssessmentStateUIModel() {
        this(null, null, null, null, 15, null);
    }
}
