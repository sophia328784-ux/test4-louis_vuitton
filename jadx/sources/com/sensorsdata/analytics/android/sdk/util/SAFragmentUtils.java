package com.sensorsdata.analytics.android.sdk.util;

import android.app.Activity;
import android.text.TextUtils;
import android.util.LruCache;
import android.view.View;
import android.view.ViewParent;
import android.view.Window;
import androidx.fragment.app.Fragment;
import com.sensorsdata.analytics.android.sdk.R;
import com.sensorsdata.analytics.android.sdk.SALog;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes3.dex */
public class SAFragmentUtils {
    private static LruCache<String, WeakReference<Object>> sFragmentLruCache = new LruCache<>(Integer.MAX_VALUE);

    public static boolean fragmentGetUserVisibleHint(Object obj) {
        try {
            return ((Boolean) obj.getClass().getMethod("getUserVisibleHint", null).invoke(obj, null)).booleanValue();
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean fragmentIsHidden(Object obj) {
        try {
            return ((Boolean) obj.getClass().getMethod("isHidden", null).invoke(obj, null)).booleanValue();
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean fragmentIsResumed(Object obj) {
        try {
            return ((Boolean) obj.getClass().getMethod("isResumed", null).invoke(obj, null)).booleanValue();
        } catch (Exception unused) {
            return false;
        }
    }

    public static Activity getActivityFromFragment(Object obj) {
        try {
            return (Activity) obj.getClass().getMethod("getActivity", null).invoke(obj, null);
        } catch (Exception unused) {
            return null;
        }
    }

    public static Object getFragmentFromCache(String str) {
        Object obj;
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            WeakReference<Object> weakReference = sFragmentLruCache.get(str);
            if (weakReference != null && (obj = weakReference.get()) != null) {
                return obj;
            }
            Object objNewInstance = Class.forName(str).newInstance();
            sFragmentLruCache.put(str, new WeakReference<>(objNewInstance));
            return objNewInstance;
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
            return null;
        }
    }

    public static Object getFragmentFromView(View view, Activity activity) {
        Window window;
        if (view == null) {
            return null;
        }
        try {
            String strTraverseParentViewTag = (String) view.getTag(R.id.sensors_analytics_tag_view_fragment_name);
            String str = (String) view.getTag(R.id.sensors_analytics_tag_view_fragment_name2);
            if (!TextUtils.isEmpty(str)) {
                strTraverseParentViewTag = str;
            }
            if (TextUtils.isEmpty(strTraverseParentViewTag)) {
                if (activity == null) {
                    activity = SAViewUtils.getActivityOfView(view.getContext(), view);
                }
                if (activity != null && (window = activity.getWindow()) != null && window.isActive() && window.getDecorView().getRootView().getTag(R.id.sensors_analytics_tag_view_fragment_name) != null) {
                    strTraverseParentViewTag = traverseParentViewTag(view);
                }
            }
            return getFragmentFromCache(strTraverseParentViewTag);
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
            return null;
        }
    }

    public static boolean isFragment(Object obj) {
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

    public static boolean isFragmentVisible(Object obj) {
        Object objInvoke = null;
        try {
            objInvoke = obj.getClass().getMethod("getParentFragment", null).invoke(obj, null);
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
        try {
            if (objInvoke == null) {
                if (!fragmentIsHidden(obj) && fragmentGetUserVisibleHint(obj) && fragmentIsResumed(obj)) {
                    return true;
                }
            } else if (!fragmentIsHidden(obj) && fragmentGetUserVisibleHint(obj) && fragmentIsResumed(obj) && !fragmentIsHidden(objInvoke) && fragmentGetUserVisibleHint(objInvoke) && fragmentIsResumed(objInvoke)) {
                return true;
            }
            return false;
        } catch (Exception e3) {
            SALog.printStackTrace(e3);
            return false;
        }
    }

    public static void setFragmentToCache(String str, Object obj) {
        if (TextUtils.isEmpty(str) || obj == null) {
            return;
        }
        sFragmentLruCache.put(str, new WeakReference<>(obj));
    }

    private static String traverseParentViewTag(View view) {
        try {
            String str = null;
            for (ViewParent parent = view.getParent(); TextUtils.isEmpty(str) && (parent instanceof View); parent = parent.getParent()) {
                str = (String) ((View) parent).getTag(R.id.sensors_analytics_tag_view_fragment_name);
            }
            return str;
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
            return "";
        }
    }

    public static Object getFragmentFromView(View view) {
        return getFragmentFromView(view, null);
    }
}
