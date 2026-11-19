package com.sightcall.universal.scenario;

import com.sightcall.universal.R;
import com.sightcall.universal.Universal;
import com.sightcall.universal.model.Session;
import com.sightcall.universal.ui.UniversalLoadingActivity;
import com.sightcall.universal.util.Utils;
import net.rtccloud.sdk.Rtcc;
import net.rtccloud.sdk.util.OldLogger;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Step {
    private static final OldLogger logger = OldLogger.get("Step");
    private Scenario scenario;
    private final String tag = getClass().getName() + "@" + Integer.toHexString(hashCode());
    private State state = State.IDLE;

    /* JADX INFO: renamed from: com.sightcall.universal.scenario.Step$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$net$rtccloud$sdk$Rtcc$Error;

        static {
            int[] iArr = new int[Rtcc.Error.values().length];
            $SwitchMap$net$rtccloud$sdk$Rtcc$Error = iArr;
            try {
                iArr[Rtcc.Error.DISCONNECTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$net$rtccloud$sdk$Rtcc$Error[Rtcc.Error.NETWORK_LOST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$net$rtccloud$sdk$Rtcc$Error[Rtcc.Error.BAD_CREDENTIALS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$net$rtccloud$sdk$Rtcc$Error[Rtcc.Error.NETWORK_ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public enum State {
        IDLE,
        ACTIVE,
        SUCCESS,
        FAILURE
    }

    public interface WithSession {
        Session session();
    }

    private void finish(boolean z, Step... stepArr) {
        if (this.state != State.ACTIVE) {
            return;
        }
        state(z ? State.SUCCESS : State.FAILURE);
        logger.d("onUnbind(%s)", this.tag);
        onUnbind();
        Scenario scenario = this.scenario;
        if (scenario != null) {
            scenario.next(stepArr);
        }
    }

    private void state(State state) {
        logger.d("state(%s, %s)", this.tag, state);
        this.state = state;
        Rtcc.instance().bus().post(new StateEvent(this, state, 0));
    }

    public void _interrupt() {
        if (is(State.ACTIVE)) {
            logger.d("interrupt(%s)", this.tag);
            interrupt();
        }
    }

    public void _resume() {
        if (is(State.ACTIVE)) {
            logger.d("resume(%s)", this.tag);
            resume();
        }
    }

    public void _start(Scenario scenario) {
        if (this.state != State.IDLE) {
            return;
        }
        this.scenario = scenario;
        OldLogger oldLogger = logger;
        oldLogger.d("onBind(%s)", this.tag);
        onBind(scenario);
        state(State.ACTIVE);
        oldLogger.d("run(%s)", this.tag);
        run();
    }

    public final void bindService() {
        logger.d("bindService(%s)", this.tag);
        Scenario scenario = this.scenario;
        if (scenario == null) {
            return;
        }
        ScenarioService scenarioService = scenario.service;
        if (scenarioService != null) {
            onServiceConnected(scenarioService);
        } else {
            scenario.bindService();
        }
    }

    public final void failure(String str) {
        OldLogger oldLogger = logger;
        oldLogger.e(str);
        oldLogger.e("failure(%s)", this.tag);
        finish(false, new Step[0]);
    }

    public void interrupt() {
        if (isServiceBound()) {
            unbindService();
        }
        finish(false, new Step[0]);
    }

    public boolean is(State state) {
        return this.state == state;
    }

    public final boolean isServiceBound() {
        Scenario scenario = this.scenario;
        return (scenario == null || scenario.service == null) ? false : true;
    }

    public boolean networkExpected() {
        if (Utils.isNetworkAvailable(Universal.context())) {
            return true;
        }
        toastConnectionError(Rtcc.Error.NETWORK_ERROR);
        return false;
    }

    public abstract void onBind(Scenario scenario);

    public void onServiceConnected(ScenarioService scenarioService) {
    }

    public void onServiceDisconnected() {
    }

    public abstract void onUnbind();

    public void resume() {
        UniversalLoadingActivity.start(Universal.context());
    }

    public abstract void run();

    public Scenario scenario() {
        return this.scenario;
    }

    public final void success(Step... stepArr) {
        logger.d("success(%s)", this.tag);
        finish(true, stepArr);
    }

    public void toastConnectionError(Rtcc.Error error) {
        int i2 = AnonymousClass1.$SwitchMap$net$rtccloud$sdk$Rtcc$Error[error.ordinal()];
        if (i2 == 2) {
            Utils.safeToast(Universal.context(), 1, R.string.universal_connection_error_unavailable);
        } else if (i2 == 3) {
            Utils.safeToast(Universal.context(), 1, R.string.universal_connection_error_authentication, 0);
        } else {
            if (i2 != 4) {
                return;
            }
            Utils.safeToast(Universal.context(), 1, R.string.universal_connection_error_network, 0);
        }
    }

    public final void unbindService() {
        logger.d("unbindService(%s)", this.tag);
        Scenario scenario = this.scenario;
        if (scenario == null) {
            return;
        }
        if (scenario.service == null) {
            onServiceDisconnected();
        } else {
            scenario.unbindService();
        }
    }

    public final void updateServiceNotification() {
        ScenarioService scenarioService;
        Scenario scenario = this.scenario;
        if (scenario == null || (scenarioService = scenario.service) == null) {
            return;
        }
        scenarioService.updateNotification();
    }

    public final class StateEvent {
        private final State state;

        private StateEvent(State state) {
            this.state = state;
        }

        public State state() {
            return this.state;
        }

        public Step step() {
            return Step.this;
        }

        public /* synthetic */ StateEvent(Step step, State state, int i2) {
            this(state);
        }
    }

    public final void failure(Step... stepArr) {
        logger.e("failure(%s)", this.tag);
        finish(false, stepArr);
    }

    public State state() {
        return this.state;
    }
}
