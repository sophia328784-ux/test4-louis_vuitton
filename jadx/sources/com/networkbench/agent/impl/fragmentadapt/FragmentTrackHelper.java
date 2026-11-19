package com.networkbench.agent.impl.fragmentadapt;

import android.os.Bundle;
import android.view.View;
import com.networkbench.agent.impl.instrumentation.NBSFragmentSession;
import com.networkbench.agent.impl.util.Logger;
import com.networkbench.agent.impl.util.r;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class FragmentTrackHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f37141a = "FragmentTrackHelper";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Set<c> f37142b = new HashSet();

    private static boolean a() {
        return r.u().af();
    }

    public static void addFragmentCallbacks(c cVar) {
        Set<c> set = f37142b;
        if (set.contains(cVar)) {
            return;
        }
        set.add(cVar);
    }

    public static void onFragmentViewCreated(Object obj, View view, Bundle bundle) {
        try {
            if (!a()) {
                Logger.debug(f37141a, "ui is close, skip");
                return;
            }
            if (e.d(obj)) {
                Iterator<c> it = f37142b.iterator();
                while (it.hasNext()) {
                    try {
                        it.next().a(obj, view, bundle);
                    } catch (Exception e2) {
                        Logger.warning(f37141a, "isFragmentVisible error" + e2);
                    }
                }
            }
        } catch (Throwable th) {
            Logger.error(f37141a, "onFragmentViewCreated happened", th);
        }
    }

    public static void removeFragmentCallbacks(c cVar) {
        f37142b.remove(cVar);
    }

    public static void trackFragmentPause(Object obj) {
        try {
            if (!a()) {
                Logger.debug(f37141a, "ui is close, skip");
                return;
            }
            if (e.d(obj)) {
                Iterator<c> it = f37142b.iterator();
                while (it.hasNext()) {
                    try {
                        it.next().d(obj);
                    } catch (Exception e2) {
                        Logger.warning(f37141a, "isFragmentVisible error:" + e2);
                    }
                }
                NBSFragmentSession.fragmentPause(obj);
            }
        } catch (Throwable th) {
            Logger.error(f37141a, "trackFragmentPause", th);
        }
    }

    public static void trackFragmentResume(Object obj) {
        try {
            if (!a()) {
                Logger.debug(f37141a, "ui is close, skip");
                return;
            }
            if (e.d(obj)) {
                Iterator<c> it = f37142b.iterator();
                while (it.hasNext()) {
                    try {
                        it.next().c(obj);
                    } catch (Exception e2) {
                        Logger.warning(f37141a, "isFragmentVisible error: " + e2);
                    }
                }
            }
        } catch (Throwable th) {
            Logger.error(f37141a, "trackFragmentResume error", th);
        }
    }

    public static void trackFragmentSetUserVisibleHint(Object obj, boolean z) {
        try {
            if (!a()) {
                Logger.debug(f37141a, "ui is close, skip");
                return;
            }
            if (e.d(obj)) {
                Iterator<c> it = f37142b.iterator();
                while (it.hasNext()) {
                    try {
                        it.next().b(obj, z);
                    } catch (Exception e2) {
                        Logger.warning(f37141a, "isFragmentVisible error:" + e2);
                    }
                }
                NBSFragmentSession.setUserVisibleHint(e.a(obj), obj.getClass().getName());
            }
        } catch (Throwable th) {
            Logger.error(f37141a, "trackFragmentSetUserVisibleHint", th);
        }
    }

    public static void trackOnHiddenChanged(Object obj, boolean z) {
        try {
            if (!a()) {
                Logger.debug(f37141a, "ui is close, skip");
                return;
            }
            if (e.d(obj)) {
                Iterator<c> it = f37142b.iterator();
                while (it.hasNext()) {
                    try {
                        it.next().a(obj, z);
                    } catch (Exception e2) {
                        Logger.warning(f37141a, "isFragmentVisible error:" + e2);
                    }
                }
            }
        } catch (Throwable th) {
            Logger.error(f37141a, "trackOnHiddenChanged", th);
        }
    }
}
