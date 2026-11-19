package com.dynatrace.android.compose;

import androidx.compose.ui.semantics.Role;
import com.dynatrace.android.agent.measurement.MeasurementProvider;
import com.dynatrace.android.useraction.DTXAutoActionWrapper;
import com.dynatrace.android.useraction.UserActionFactory;
import defpackage.pq0;
import io.jsonwebtoken.JwtParser;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/dynatrace/android/compose/ToggleActionRecorder;", "", "Lcom/dynatrace/android/agent/measurement/MeasurementProvider;", "measurementProvider", "Lcom/dynatrace/android/useraction/UserActionFactory;", "userActionFactory", "Lcom/dynatrace/android/compose/ToggleableInfo;", "toggleableInfo", "", "semanticsName", "<init>", "(Lcom/dynatrace/android/agent/measurement/MeasurementProvider;Lcom/dynatrace/android/useraction/UserActionFactory;Lcom/dynatrace/android/compose/ToggleableInfo;Ljava/lang/String;)V", "agent.instrumentorAPI.compose_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ToggleActionRecorder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MeasurementProvider f27632a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final UserActionFactory f27633b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ToggleableInfo f27634c;
    public final String d;

    public ToggleActionRecorder(MeasurementProvider measurementProvider, UserActionFactory userActionFactory, ToggleableInfo toggleableInfo, String str) {
        measurementProvider.getClass();
        userActionFactory.getClass();
        toggleableInfo.getClass();
        this.f27632a = measurementProvider;
        this.f27633b = userActionFactory;
        this.f27634c = toggleableInfo;
        this.d = str;
    }

    public final Object a(Function0 function0) {
        String string;
        ToggleableInfo toggleableInfo = this.f27634c;
        toggleableInfo.getClass();
        String str = toggleableInfo.f27639c;
        Role role = toggleableInfo.f27638b;
        String strA = role != null ? Role.a(role.f10296a) : "component";
        String str2 = this.d;
        if (str2 != null) {
            string = "Touch on ".concat(str2);
        } else {
            StringBuilder sbR = pq0.r("Touch on ", strA, " with function ");
            sbR.append(StringsKt.R(JwtParser.SEPARATOR_CHAR, str, str));
            string = sbR.toString();
        }
        DTXAutoActionWrapper dTXAutoActionWrapperA = this.f27633b.a(this.f27632a.a(), string);
        dTXAutoActionWrapperA.f("role", String.valueOf(role));
        dTXAutoActionWrapperA.f("function", str);
        dTXAutoActionWrapperA.f("fromState", toggleableInfo.f27637a.name());
        dTXAutoActionWrapperA.f("type", "toggle");
        Object objMo47invoke = function0.mo47invoke();
        dTXAutoActionWrapperA.g();
        return objMo47invoke;
    }
}
