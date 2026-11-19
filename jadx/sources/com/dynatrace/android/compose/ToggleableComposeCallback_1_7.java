package com.dynatrace.android.compose;

import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsConfiguration;
import androidx.compose.ui.semantics.SemanticsConfigurationKt;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.state.ToggleableStateKt;
import com.dynatrace.android.agent.Global;
import com.dynatrace.android.agent.TimeLineProvider;
import com.dynatrace.android.agent.measurement.MeasurementProviderImpl;
import com.dynatrace.android.useraction.UserActionFactoryImpl;
import defpackage.hf;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B%\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/dynatrace/android/compose/ToggleableComposeCallback_1_7;", "Lkotlin/Function1;", "", "", "onValueChanged", "Landroidx/compose/ui/semantics/Role;", "role", "<init>", "(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "agent.instrumentorAPI.compose_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ToggleableComposeCallback_1_7 implements Function1<Boolean, Unit> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Function1 f27635b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Role f27636c;

    public ToggleableComposeCallback_1_7(Function1 function1, Role role, DefaultConstructorMarker defaultConstructorMarker) {
        function1.getClass();
        this.f27635b = function1;
        this.f27636c = role;
        boolean z = Global.f27307a;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Boolean bool = (Boolean) obj;
        boolean zBooleanValue = bool.booleanValue();
        boolean z = Global.f27308b.get();
        Function1 function1 = this.f27635b;
        if (z) {
            if (this.f27636c == null) {
                SemanticsConfiguration semanticsConfiguration = SemanticsManager.f27631a;
                Role role = semanticsConfiguration != null ? (Role) SemanticsConfigurationKt.a(semanticsConfiguration, SemanticsProperties.z) : null;
                if (role == null) {
                    role = null;
                }
                this.f27636c = role;
            }
            MeasurementProviderImpl measurementProviderImpl = new MeasurementProviderImpl(TimeLineProvider.f27311c);
            UserActionFactoryImpl userActionFactoryImpl = new UserActionFactoryImpl();
            ToggleableInfo toggleableInfo = new ToggleableInfo(ToggleableStateKt.a(!zBooleanValue), this.f27636c, function1.getClass().getName(), null);
            boolean z2 = Global.f27307a;
            new ToggleActionRecorder(measurementProviderImpl, userActionFactoryImpl, toggleableInfo, SemanticsManager.a()).a(new hf(this, zBooleanValue));
        } else {
            function1.invoke(bool);
        }
        return Unit.f71739a;
    }
}
