package com.dynatrace.android.compose;

import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsConfiguration;
import androidx.compose.ui.semantics.SemanticsConfigurationKt;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.state.ToggleableState;
import com.dynatrace.android.agent.Global;
import com.dynatrace.android.agent.TimeLineProvider;
import com.dynatrace.android.agent.measurement.MeasurementProviderImpl;
import com.dynatrace.android.agent.util.Utility;
import com.dynatrace.android.useraction.DTXAutoActionWrapper;
import com.dynatrace.android.useraction.UserActionFactoryImpl;
import defpackage.pq0;
import io.jsonwebtoken.JwtParser;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0007\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001B)\u0012\u000e\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/dynatrace/android/compose/ClickableComposeCallback;", "Lkotlin/Function0;", "", "function", "Landroidx/compose/ui/semantics/Role;", "role", "", "type", "<init>", "(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/semantics/Role;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "agent.instrumentorAPI.compose_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ClickableComposeCallback implements Function0<Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Function0 f27626b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Role f27627c;
    public final String d;

    public ClickableComposeCallback(Function0 function0, Role role, String str, DefaultConstructorMarker defaultConstructorMarker) {
        function0.getClass();
        str.getClass();
        this.f27626b = function0;
        this.f27627c = role;
        this.d = str;
        boolean z = Global.f27307a;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        String string;
        boolean z = Global.f27308b.get();
        Function0 function0 = this.f27626b;
        if (!z) {
            return function0.mo47invoke();
        }
        if (this.f27627c == null) {
            SemanticsConfiguration semanticsConfiguration = SemanticsManager.f27631a;
            Role role = semanticsConfiguration != null ? (Role) SemanticsConfigurationKt.a(semanticsConfiguration, SemanticsProperties.z) : null;
            if (role == null) {
                role = null;
            }
            this.f27627c = role;
        }
        MeasurementProviderImpl measurementProviderImpl = new MeasurementProviderImpl(TimeLineProvider.f27311c);
        UserActionFactoryImpl userActionFactoryImpl = new UserActionFactoryImpl();
        if (function0 instanceof ToggleableDataProvider) {
            ToggleableDataProvider toggleableDataProvider = (ToggleableDataProvider) function0;
            ToggleableState toggleableStateB = toggleableDataProvider.b();
            toggleableStateB.getClass();
            Role role2 = this.f27627c;
            String strA = toggleableDataProvider.a();
            strA.getClass();
            ToggleableInfo toggleableInfo = new ToggleableInfo(toggleableStateB, role2, strA, null);
            if (Global.f27307a) {
                Utility.n("onUA: " + toggleableInfo);
            }
            return new ToggleActionRecorder(measurementProviderImpl, userActionFactoryImpl, toggleableInfo, SemanticsManager.a()).a(function0);
        }
        ClickableInfo clickableInfo = new ClickableInfo(this.d, this.f27627c, function0, null);
        if (Global.f27307a) {
            Utility.n("onUA: " + clickableInfo);
        }
        ClickActionRecorder clickActionRecorder = new ClickActionRecorder(measurementProviderImpl, userActionFactoryImpl, clickableInfo, SemanticsManager.a());
        ClickableInfo clickableInfo2 = clickActionRecorder.f27625c;
        clickableInfo2.getClass();
        Function0 function1 = clickableInfo2.f27630c;
        Role role3 = clickableInfo2.f27629b;
        String strA2 = role3 != null ? Role.a(role3.f10296a) : "component";
        String str = clickActionRecorder.d;
        if (str != null) {
            string = "Touch on ".concat(str);
        } else {
            StringBuilder sbR = pq0.r("Touch on ", strA2, " with function ");
            String name = function1.getClass().getName();
            sbR.append(StringsKt.R(JwtParser.SEPARATOR_CHAR, name, name));
            string = sbR.toString();
        }
        DTXAutoActionWrapper dTXAutoActionWrapperA = clickActionRecorder.f27624b.a(clickActionRecorder.f27623a.a(), string);
        dTXAutoActionWrapperA.f("role", String.valueOf(role3));
        dTXAutoActionWrapperA.f("function", function1.getClass().getName());
        dTXAutoActionWrapperA.f("type", clickableInfo2.f27628a);
        Object objMo47invoke = function0.mo47invoke();
        dTXAutoActionWrapperA.g();
        return objMo47invoke;
    }
}
