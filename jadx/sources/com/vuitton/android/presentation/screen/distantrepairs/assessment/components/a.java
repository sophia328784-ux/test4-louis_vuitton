package com.vuitton.android.presentation.screen.distantrepairs.assessment.components;

import androidx.compose.foundation.lazy.LazyListState;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.Step;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class a implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f57078b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f57079c;
    public final /* synthetic */ CoroutineScope d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ LazyListState f57080e;

    public /* synthetic */ a(Function1 function1, CoroutineScope coroutineScope, LazyListState lazyListState, int i2) {
        this.f57078b = i2;
        this.f57079c = function1;
        this.d = coroutineScope;
        this.f57080e = lazyListState;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f57078b;
        LazyListState lazyListState = this.f57080e;
        CoroutineScope coroutineScope = this.d;
        Function1 function1 = this.f57079c;
        Step step = (Step) obj;
        switch (i2) {
            case 0:
                step.getClass();
                function1.invoke(step);
                BuildersKt.c(coroutineScope, null, null, new AssessmentFormBffComponentKt$AssessmentFormBffComponent$1$1$2$1$1$1(lazyListState, null), 3);
                break;
            case 1:
                step.getClass();
                function1.invoke(step);
                BuildersKt.c(coroutineScope, null, null, new AssessmentFormBffComponentKt$AssessmentFormBffComponent$1$1$1$3$1$1(lazyListState, null), 3);
                break;
            case 2:
                step.getClass();
                function1.invoke(step);
                BuildersKt.c(coroutineScope, null, null, new AssessmentFormBffComponentKt$AssessmentFormBffComponent$1$1$3$2$1$1(lazyListState, null), 3);
                break;
            case 3:
                step.getClass();
                function1.invoke(step);
                BuildersKt.c(coroutineScope, null, null, new AssessmentFormComponentKt$AssessmentFormComponent$1$1$3$2$1$1(lazyListState, null), 3);
                break;
            case 4:
                step.getClass();
                function1.invoke(step);
                BuildersKt.c(coroutineScope, null, null, new AssessmentFormComponentKt$AssessmentFormComponent$1$1$2$1$1$1(lazyListState, null), 3);
                break;
            default:
                step.getClass();
                function1.invoke(step);
                BuildersKt.c(coroutineScope, null, null, new AssessmentFormComponentKt$AssessmentFormComponent$1$1$1$3$1$1(lazyListState, null), 3);
                break;
        }
        return Unit.f71739a;
    }
}
