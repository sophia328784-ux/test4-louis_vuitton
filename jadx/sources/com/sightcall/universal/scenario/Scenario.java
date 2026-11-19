package com.sightcall.universal.scenario;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import com.sightcall.universal.Universal;
import com.sightcall.universal.ui.UniversalLoadingActivity;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.Queue;
import java.util.concurrent.Executor;
import net.rtccloud.sdk.Rtcc;
import net.rtccloud.sdk.util.OldLogger;

/* JADX INFO: loaded from: classes3.dex */
public class Scenario {
    private static final OldLogger logger = OldLogger.get("Scenario");
    ScenarioService service;
    private final Queue<Step> steps;
    private final Executor executor = new Executor() { // from class: com.sightcall.universal.scenario.Scenario.1
        private final Handler handler = new Handler(Looper.getMainLooper());

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            this.handler.post(runnable);
        }
    };
    private final ServiceConnection connection = new ServiceConnection() { // from class: com.sightcall.universal.scenario.Scenario.4
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            Scenario.this.service = ((ScenarioService.LocalBinder) iBinder).getService();
            Scenario.logger.d("onServiceConnected(%s@%s)", Scenario.this.service.getClass().getName(), Integer.toHexString(Scenario.this.service.hashCode()));
            Step step = (Step) Scenario.this.steps.peek();
            if (step == null || !step.is(Step.State.ACTIVE)) {
                return;
            }
            step.onServiceConnected(Scenario.this.service);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            Scenario.logger.d("onServiceDisconnected()");
            Scenario scenario = Scenario.this;
            scenario.service = null;
            Step step = (Step) scenario.steps.peek();
            if (step == null || !step.is(Step.State.ACTIVE)) {
                return;
            }
            step.onServiceDisconnected();
        }
    };
    private Status status = Status.IDLE;

    /* JADX INFO: renamed from: com.sightcall.universal.scenario.Scenario$5, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass5 {
        static final /* synthetic */ int[] $SwitchMap$com$sightcall$universal$scenario$Scenario$Status;
        static final /* synthetic */ int[] $SwitchMap$com$sightcall$universal$scenario$Step$State;

        static {
            int[] iArr = new int[Status.values().length];
            $SwitchMap$com$sightcall$universal$scenario$Scenario$Status = iArr;
            try {
                iArr[Status.IDLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sightcall$universal$scenario$Scenario$Status[Status.ENDED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sightcall$universal$scenario$Scenario$Status[Status.ACTIVE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[Step.State.values().length];
            $SwitchMap$com$sightcall$universal$scenario$Step$State = iArr2;
            try {
                iArr2[Step.State.IDLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sightcall$universal$scenario$Step$State[Step.State.ACTIVE.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sightcall$universal$scenario$Step$State[Step.State.SUCCESS.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sightcall$universal$scenario$Step$State[Step.State.FAILURE.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public enum Status {
        IDLE,
        ACTIVE,
        ENDED
    }

    private Scenario(Step step) {
        LinkedList linkedList = new LinkedList();
        this.steps = linkedList;
        linkedList.add(step);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void interruptFromExecutor() {
        int i2 = AnonymousClass5.$SwitchMap$com$sightcall$universal$scenario$Scenario$Status[this.status.ordinal()];
        if (i2 == 1) {
            status(Status.ENDED);
            return;
        }
        if (i2 != 3) {
            return;
        }
        Step step = step();
        if (step == null) {
            status(Status.ENDED);
            return;
        }
        int i3 = AnonymousClass5.$SwitchMap$com$sightcall$universal$scenario$Step$State[step.state().ordinal()];
        if (i3 != 1) {
            if (i3 == 2) {
                step._interrupt();
                return;
            } else if (i3 != 3 && i3 != 4) {
                return;
            }
        }
        status(Status.ENDED);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void nextFromExecutor(Step... stepArr) {
        if (stepArr != null && stepArr.length != 0) {
            this.steps.addAll(Arrays.asList(stepArr));
        }
        if (this.status != Status.ACTIVE) {
            return;
        }
        Step step = step();
        if (step == null) {
            status(Status.ENDED);
            return;
        }
        int i2 = AnonymousClass5.$SwitchMap$com$sightcall$universal$scenario$Step$State[step.state().ordinal()];
        if (i2 == 1) {
            step._start(this);
        } else if (i2 == 3 || i2 == 4) {
            this.steps.poll();
            next(new Step[0]);
        }
    }

    private void status(Status status) {
        OldLogger oldLogger = logger;
        oldLogger.d("status(%s)", status);
        this.status = status;
        Rtcc.instance().bus().post(new StatusEvent(this, status, 0));
        if (status != Status.ENDED || this.service == null) {
            return;
        }
        oldLogger.e("Service is still bound but scenario is now ended... Forgot to call #unbind() ?");
        unbindService();
    }

    public static Scenario with(Step step) {
        return new Scenario(step);
    }

    public void bindService() {
        if (this.service == null) {
            Context context = Universal.context();
            context.bindService(new Intent(context, (Class<?>) ScenarioService.class), this.connection, 1);
            return;
        }
        Step stepPeek = this.steps.peek();
        if (stepPeek == null || !stepPeek.is(Step.State.ACTIVE)) {
            return;
        }
        stepPeek.onServiceConnected(this.service);
    }

    public void interrupt() {
        logger.d("interrupt()");
        this.executor.execute(new Runnable() { // from class: com.sightcall.universal.scenario.Scenario.3
            @Override // java.lang.Runnable
            public void run() {
                Scenario.this.interruptFromExecutor();
            }
        });
    }

    public boolean is(Status status) {
        return this.status == status;
    }

    public void next(final Step... stepArr) {
        this.executor.execute(new Runnable() { // from class: com.sightcall.universal.scenario.Scenario.2
            @Override // java.lang.Runnable
            public void run() {
                Scenario.this.nextFromExecutor(stepArr);
            }
        });
    }

    public void resume() {
        logger.d("resume()");
        Step step = step();
        if (step != null) {
            step._resume();
        }
    }

    public ScenarioService service() {
        return this.service;
    }

    public void start() {
        logger.d("start()");
        if (this.status != Status.IDLE) {
            return;
        }
        status(Status.ACTIVE);
        UniversalLoadingActivity.start(Universal.context());
        next(new Step[0]);
    }

    public Step step() {
        return this.steps.peek();
    }

    public void unbindService() {
        if (this.service != null) {
            Universal.context().unbindService(this.connection);
            this.service = null;
            return;
        }
        Step stepPeek = this.steps.peek();
        if (stepPeek == null || !stepPeek.is(Step.State.ACTIVE)) {
            return;
        }
        stepPeek.onServiceDisconnected();
    }

    public final class StatusEvent {
        private final Status status;

        private StatusEvent(Status status) {
            this.status = status;
        }

        public Scenario scenario() {
            return Scenario.this;
        }

        public Status status() {
            return this.status;
        }

        public /* synthetic */ StatusEvent(Scenario scenario, Status status, int i2) {
            this(status);
        }
    }

    public Status status() {
        return this.status;
    }
}
