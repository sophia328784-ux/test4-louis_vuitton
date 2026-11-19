package defpackage;

import com.dynatrace.agent.events.EventContent;
import com.dynatrace.agent.useraction.ActiveUserAction;
import com.dynatrace.agent.useraction.PendingUserAction;
import com.dynatrace.agent.useraction.UserActionLifecycle;
import com.dynatrace.android.agent.util.Utility;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class i51 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69879b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ UserActionLifecycle f69880c;

    public /* synthetic */ i51(UserActionLifecycle userActionLifecycle, int i2) {
        this.f69879b = i2;
        this.f69880c = userActionLifecycle;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() throws JSONException {
        int i2 = this.f69879b;
        UserActionLifecycle userActionLifecycle = this.f69880c;
        switch (i2) {
            case 0:
                StringBuilder sb = new StringBuilder("validation delay fired for pending UA (startTime=");
                PendingUserAction pendingUserAction = userActionLifecycle.g;
                sb.append(pendingUserAction != null ? Long.valueOf(pendingUserAction.f27064a) : null);
                sb.append("): no significant event");
                Utility.b(sb.toString());
                PendingUserAction pendingUserAction2 = userActionLifecycle.g;
                if (pendingUserAction2 != null) {
                    if (!pendingUserAction2.d) {
                        Utility.b("dispatching pending UIA standalone (startTime=" + pendingUserAction2.f27064a + ')');
                        userActionLifecycle.f27088f.invoke(new EventContent(new JSONObject(), pendingUserAction2.f27065b));
                    }
                    userActionLifecycle.g = null;
                }
                break;
            default:
                if (userActionLifecycle.f27089h != null) {
                    StringBuilder sb2 = new StringBuilder("max duration fired: retiring UA (instanceId=");
                    ActiveUserAction activeUserAction = userActionLifecycle.f27089h;
                    sb2.append(activeUserAction != null ? activeUserAction.f27052a : null);
                    sb2.append(')');
                    Utility.b(sb2.toString());
                    userActionLifecycle.h(ActiveUserAction.CompleteReason.TIMEOUT, userActionLifecycle.f27085b.a(), null);
                }
                break;
        }
        return Unit.f71739a;
    }
}
