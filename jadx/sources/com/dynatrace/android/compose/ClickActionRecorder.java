package com.dynatrace.android.compose;

import com.dynatrace.android.agent.measurement.MeasurementProvider;
import com.dynatrace.android.useraction.UserActionFactory;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/dynatrace/android/compose/ClickActionRecorder;", "", "Lcom/dynatrace/android/agent/measurement/MeasurementProvider;", "measurementProvider", "Lcom/dynatrace/android/useraction/UserActionFactory;", "userActionFactory", "Lcom/dynatrace/android/compose/ClickableInfo;", "clickableInfo", "", "semanticsName", "<init>", "(Lcom/dynatrace/android/agent/measurement/MeasurementProvider;Lcom/dynatrace/android/useraction/UserActionFactory;Lcom/dynatrace/android/compose/ClickableInfo;Ljava/lang/String;)V", "agent.instrumentorAPI.compose_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ClickActionRecorder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MeasurementProvider f27623a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final UserActionFactory f27624b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ClickableInfo f27625c;
    public final String d;

    public ClickActionRecorder(MeasurementProvider measurementProvider, UserActionFactory userActionFactory, ClickableInfo clickableInfo, String str) {
        measurementProvider.getClass();
        userActionFactory.getClass();
        clickableInfo.getClass();
        this.f27623a = measurementProvider;
        this.f27624b = userActionFactory;
        this.f27625c = clickableInfo;
        this.d = str;
    }
}
