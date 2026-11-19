package com.dynatrace.android.agent.metrics;

import android.content.Context;
import android.os.BatteryManager;
import com.dynatrace.android.agent.Global;
import com.dynatrace.android.agent.util.Utility;

/* JADX INFO: loaded from: classes2.dex */
public class BatteryTracker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final BatteryManager f27563a;

    public BatteryTracker(BatteryManager batteryManager) {
        this.f27563a = batteryManager;
    }

    public static BatteryTracker b(Context context) {
        try {
            BatteryManager batteryManager = (BatteryManager) context.getSystemService("batterymanager");
            if (batteryManager != null) {
                return new BatteryTracker(batteryManager);
            }
            boolean z = Global.f27307a;
            return null;
        } catch (Exception unused) {
            boolean z2 = Global.f27307a;
            return null;
        }
    }

    public final int a() {
        try {
            int intProperty = this.f27563a.getIntProperty(4);
            if (intProperty >= 0 && intProperty <= 100) {
                return intProperty;
            }
            if (Global.f27307a) {
                Utility.n("invalid battery level '" + intProperty + "' detected");
                return Integer.MIN_VALUE;
            }
        } catch (Exception unused) {
            if (Global.f27307a) {
                Utility.g();
            }
        }
        return Integer.MIN_VALUE;
    }
}
