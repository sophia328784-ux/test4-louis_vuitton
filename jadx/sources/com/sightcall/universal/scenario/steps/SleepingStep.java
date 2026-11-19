package com.sightcall.universal.scenario.steps;

import android.os.Handler;
import android.os.Looper;
import com.sightcall.universal.Universal;
import com.sightcall.universal.scenario.Scenario;
import com.sightcall.universal.scenario.Step;

/* JADX INFO: loaded from: classes3.dex */
public class SleepingStep extends Step {
    private final int delayMillis;

    public SleepingStep(int i2) {
        this.delayMillis = i2;
    }

    @Override // com.sightcall.universal.scenario.Step
    public void interrupt() {
        super.interrupt();
    }

    @Override // com.sightcall.universal.scenario.Step
    public void onBind(Scenario scenario) {
        Universal.register(this);
    }

    @Override // com.sightcall.universal.scenario.Step
    public void onUnbind() {
        Universal.unregister(this);
    }

    @Override // com.sightcall.universal.scenario.Step
    public void resume() {
        super.resume();
    }

    @Override // com.sightcall.universal.scenario.Step
    public void run() {
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.sightcall.universal.scenario.steps.SleepingStep.1
            @Override // java.lang.Runnable
            public void run() {
                if (SleepingStep.this.is(Step.State.ACTIVE)) {
                    SleepingStep.this.success(new Step[0]);
                }
            }
        }, this.delayMillis);
    }
}
