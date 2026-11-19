package com.networkbench.agent.impl.fragmentadapt;

import android.graphics.Rect;
import android.view.View;
import androidx.fragment.app.Fragment;
import com.networkbench.agent.impl.util.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f37149a = "FragmentUtils";

    public static boolean a(Object obj) {
        Object objInvoke = null;
        try {
            objInvoke = obj.getClass().getMethod("getParentFragment", null).invoke(obj, null);
        } catch (Exception e2) {
            Logger.warning(f37149a, "isFragmentVisible error" + e2);
        }
        try {
            if (objInvoke == null) {
                if (!c(obj) && b(obj) && e(obj)) {
                    return true;
                }
            } else if (!c(obj) && b(obj) && e(obj) && !c(objInvoke) && b(objInvoke) && e(objInvoke)) {
                return true;
            }
            return false;
        } catch (Exception e3) {
            Logger.warning(f37149a, "isFragmentVisible error" + e3);
            return false;
        }
    }

    public static boolean b(Object obj) {
        try {
            return ((Boolean) obj.getClass().getMethod("getUserVisibleHint", null).invoke(obj, null)).booleanValue();
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean c(Object obj) {
        try {
            return ((Boolean) obj.getClass().getMethod("isHidden", null).invoke(obj, null)).booleanValue();
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean d(Object obj) {
        Class<?> cls;
        Class<?> cls2;
        if (obj == null) {
            return false;
        }
        try {
            cls = Class.forName("android.app.Fragment");
        } catch (Exception unused) {
            cls = null;
        }
        try {
            cls2 = Class.forName("android.support.v4.app.Fragment");
        } catch (Exception unused2) {
            cls2 = null;
        }
        if (cls2 == null && Fragment.class == 0 && cls == null) {
            return false;
        }
        if (cls2 != null) {
            try {
                if (cls2.isInstance(obj)) {
                    return true;
                }
                if (Fragment.class == 0 && Fragment.class.isInstance(obj)) {
                    return true;
                }
                if (cls == null && cls.isInstance(obj)) {
                    return true;
                }
            } catch (Exception unused3) {
            }
        } else {
            if (Fragment.class == 0) {
            }
            if (cls == null) {
            }
        }
        return false;
    }

    public static boolean e(Object obj) {
        try {
            return ((Boolean) obj.getClass().getMethod("isResumed", null).invoke(obj, null)).booleanValue();
        } catch (Exception unused) {
            return false;
        }
    }

    public static Rect f(Object obj) throws NullPointerException {
        try {
            Rect rect = new Rect();
            ((View) obj.getClass().getMethod("getView", null).invoke(obj, null)).getGlobalVisibleRect(rect);
            return rect;
        } catch (Throwable th) {
            Logger.debug(f37149a, "error get fragment rect:" + th.getMessage());
            return null;
        }
    }
}
