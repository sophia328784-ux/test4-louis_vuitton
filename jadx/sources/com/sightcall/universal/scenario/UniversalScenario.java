package com.sightcall.universal.scenario;

import android.content.Context;
import net.rtccloud.sdk.Rtcc;
import net.rtccloud.sdk.event.Event;
import net.rtccloud.sdk.util.OldLogger;
import net.rtccloud.sdk.util.Utils;

/* JADX INFO: loaded from: classes3.dex */
public class UniversalScenario {
    private static final OldLogger logger = OldLogger.get("UniversalScenario");
    private final Object lock = new Object();
    private Scenario scenario;

    /* JADX INFO: renamed from: com.sightcall.universal.scenario.UniversalScenario$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sightcall$universal$scenario$Scenario$Status;

        static {
            int[] iArr = new int[Scenario.Status.values().length];
            $SwitchMap$com$sightcall$universal$scenario$Scenario$Status = iArr;
            try {
                iArr[Scenario.Status.IDLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sightcall$universal$scenario$Scenario$Status[Scenario.Status.ENDED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sightcall$universal$scenario$Scenario$Status[Scenario.Status.ACTIVE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public UniversalScenario(Context context) {
        Rtcc.instance().bus().register(this);
    }

    private static String print(Scenario scenario) {
        if (scenario == null) {
            return null;
        }
        return scenario.getClass().getName() + "@" + Integer.toHexString(scenario.hashCode());
    }

    public Scenario get() {
        return this.scenario;
    }

    public void interrupt() {
        synchronized (this.lock) {
            try {
                logger.i("interrupt()");
                Scenario scenario = this.scenario;
                if (scenario != null) {
                    scenario.interrupt();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean is(Scenario.Status status) {
        return status() == status;
    }

    @Event
    public void onScenarioStatusEvent(Scenario.StatusEvent statusEvent) {
        synchronized (this.lock) {
            try {
                if (AnonymousClass1.$SwitchMap$com$sightcall$universal$scenario$Scenario$Status[statusEvent.status().ordinal()] == 2 && this.scenario == statusEvent.scenario()) {
                    this.scenario = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void resume() {
        synchronized (this.lock) {
            try {
                logger.i("resume()");
                Scenario scenario = this.scenario;
                if (scenario != null && scenario.is(Scenario.Status.ACTIVE)) {
                    scenario.resume();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void start(Scenario scenario) {
        synchronized (this.lock) {
            try {
                OldLogger oldLogger = logger;
                oldLogger.d("start(%s)", print(scenario));
                Utils.checkNotNull(scenario, "scenario");
                Scenario.Status status = scenario.status();
                Scenario.Status status2 = Scenario.Status.IDLE;
                if (status != status2) {
                    oldLogger.e("Scenario must be in [%s] status to be started, but was [%s]", status2, scenario.status());
                    return;
                }
                Scenario scenario2 = this.scenario;
                if (scenario2 != null) {
                    int i2 = AnonymousClass1.$SwitchMap$com$sightcall$universal$scenario$Scenario$Status[scenario2.status().ordinal()];
                    if (i2 == 1 || i2 == 2) {
                        oldLogger.d("Replacing [%s] with [%s]", print(scenario2), print(scenario));
                    } else if (i2 == 3) {
                        oldLogger.e("Can't start a new Scenario while another Scenario is currently running...");
                        scenario2.resume();
                        return;
                    }
                }
                this.scenario = scenario;
                scenario.start();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public Scenario.Status status() {
        Scenario scenario = this.scenario;
        return scenario != null ? scenario.status() : Scenario.Status.IDLE;
    }

    public Step step() {
        Scenario scenario = this.scenario;
        if (scenario == null) {
            return null;
        }
        return scenario.step();
    }
}
