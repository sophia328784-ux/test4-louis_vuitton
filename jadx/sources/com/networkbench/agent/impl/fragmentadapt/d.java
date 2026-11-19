package com.networkbench.agent.impl.fragmentadapt;

import android.app.Activity;
import android.os.Bundle;
import android.os.SystemClock;
import android.view.View;
import com.networkbench.agent.impl.harvest.ScreenNameManager;
import com.networkbench.agent.impl.util.Logger;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes2.dex */
public class d implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f37146a = "FragmentLifecycleCallbacks";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f37147c = "temp_start_time";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final HashMap<Integer, JSONObject> f37148b = new HashMap<>();

    private void f(Object obj) {
        try {
            int iHashCode = obj.hashCode();
            if (this.f37148b.containsKey(Integer.valueOf(iHashCode))) {
                JSONObject jSONObject = this.f37148b.get(Integer.valueOf(iHashCode));
                this.f37148b.remove(Integer.valueOf(iHashCode));
                if (jSONObject != null) {
                    a(jSONObject);
                    g.a(obj.getClass().getCanonicalName());
                }
            }
        } catch (Exception e2) {
            Logger.error(f37146a, "trackAppPageLeave", e2);
        }
    }

    private void g(Object obj) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(f37147c, SystemClock.elapsedRealtime());
            String strA = a.a(obj, (Activity) null);
            if (!this.f37148b.containsKey(Integer.valueOf(obj.hashCode()))) {
                Logger.debug(f37146a, "trackFragmentStart curentFragment name is:" + strA);
                if (strA == null) {
                    strA = "";
                }
                ScreenNameManager.setCurrentFragmentName(strA);
            }
            this.f37148b.put(Integer.valueOf(obj.hashCode()), jSONObject);
        } catch (JSONException e2) {
            Logger.error(f37146a, "JSONException", e2);
        } catch (Exception e3) {
            Logger.error(f37146a, MvelScriptManager.VAR_EXCEPTION, e3);
        }
    }

    @Override // com.networkbench.agent.impl.fragmentadapt.c
    public void a(Object obj, boolean z) {
        Logger.debug(f37146a, obj.getClass().getName() + " FragmentPageLeaveCallbacks onHiddenChanged:" + z);
        if (e.a(obj)) {
            g(obj);
        } else {
            f(obj);
        }
    }

    @Override // com.networkbench.agent.impl.fragmentadapt.c
    public void b(Object obj, boolean z) {
        Logger.debug(f37146a, obj.getClass().getName() + " FragmentPageLeaveCallbacks setUserVisibleHint:" + z);
        if (e.a(obj)) {
            g(obj);
        } else {
            f(obj);
        }
    }

    @Override // com.networkbench.agent.impl.fragmentadapt.c
    public void c(Object obj) {
        if (e.a(obj)) {
            Logger.debug(f37146a, "fragment visible");
            g(obj);
        }
    }

    @Override // com.networkbench.agent.impl.fragmentadapt.c
    public void d(Object obj) {
        try {
            Logger.debug(f37146a, "FragmentPageLeaveCallbacks onPause:".concat(obj.getClass().getName()));
            if (this.f37148b.containsKey(Integer.valueOf(obj.hashCode()))) {
                f(obj);
            }
        } catch (Exception e2) {
            Logger.error(f37146a, "onPause", e2);
        }
    }

    @Override // com.networkbench.agent.impl.fragmentadapt.c
    public void e(Object obj) {
    }

    @Override // com.networkbench.agent.impl.fragmentadapt.c
    public void a(Object obj, View view, Bundle bundle) {
    }

    @Override // com.networkbench.agent.impl.fragmentadapt.c
    public void b(Object obj) {
    }

    private void a(JSONObject jSONObject) {
    }

    @Override // com.networkbench.agent.impl.fragmentadapt.c
    public void a(Object obj) {
    }
}
