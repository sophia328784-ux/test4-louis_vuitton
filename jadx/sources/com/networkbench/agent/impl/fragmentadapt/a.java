package com.networkbench.agent.impl.fragmentadapt;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewParent;
import android.view.Window;
import com.networkbench.R;
import com.networkbench.agent.impl.util.Logger;
import java.lang.reflect.Method;
import java.util.Locale;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f37143a = "AopUtil";

    /* JADX WARN: Code duplicated, block: B:15:0x0048  */
    public static void a(JSONObject jSONObject, Object obj, Activity activity) {
        String str;
        String canonicalName = null;
        try {
            boolean zIsEmpty = TextUtils.isEmpty(null);
            boolean zIsEmpty2 = TextUtils.isEmpty(null);
            if (zIsEmpty || zIsEmpty2) {
                if (activity == null) {
                    activity = a(obj);
                }
                if (activity != null) {
                    String strA = zIsEmpty ? a(activity) : null;
                    if (zIsEmpty2) {
                        String canonicalName2 = obj.getClass().getCanonicalName();
                        Locale locale = Locale.CHINA;
                        canonicalName = activity.getClass().getCanonicalName() + "|" + canonicalName2;
                    }
                    str = canonicalName;
                    canonicalName = strA;
                } else {
                    str = null;
                }
            } else {
                str = null;
            }
            if (TextUtils.isEmpty(canonicalName)) {
                canonicalName = obj.getClass().getCanonicalName();
            }
            TextUtils.isEmpty(canonicalName);
            if (TextUtils.isEmpty(str)) {
                obj.getClass();
            }
        } catch (Exception e2) {
            Logger.error(f37143a, "getScreenNameAndTitleFromFragment error", e2);
        }
    }

    public static String b(View view, Activity activity) {
        Window window;
        if (view == null) {
            return null;
        }
        try {
            String str = (String) view.getTag(R.id.tingyun_tag_view_fragment_name);
            if (TextUtils.isEmpty(str)) {
                if (activity == null) {
                    activity = a(view.getContext());
                }
                if (activity != null && (window = activity.getWindow()) != null && window.isActive() && window.getDecorView().getRootView().getTag(R.id.tingyun_tag_view_fragment_name) != null) {
                    return a(view);
                }
            }
            return str;
        } catch (Exception e2) {
            Logger.error(f37143a, "error getFragmentFromView", e2);
            return null;
        }
    }

    public static String a(Object obj, Activity activity) {
        try {
            if (!TextUtils.isEmpty("")) {
                return "";
            }
            return obj.getClass().getCanonicalName();
        } catch (Exception e2) {
            Logger.error(f37143a, "getScreenNameAndTitleFromFragment error", e2);
            return "";
        }
    }

    public static Activity a(Context context) {
        if (context != null) {
            try {
                if (context instanceof Activity) {
                    return (Activity) context;
                }
                if (context instanceof ContextWrapper) {
                    while (!(context instanceof Activity) && (context instanceof ContextWrapper)) {
                        context = ((ContextWrapper) context).getBaseContext();
                    }
                    if (context instanceof Activity) {
                        return (Activity) context;
                    }
                }
            } catch (Exception e2) {
                Logger.error(f37143a, "error getActivityFromContext", e2);
            }
        }
        return null;
    }

    public static Activity a(Object obj) {
        try {
            Method method = obj.getClass().getMethod("getActivity", null);
            if (method != null) {
                return (Activity) method.invoke(obj, null);
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public static String a(Activity activity) {
        PackageManager packageManager;
        if (activity != null) {
            try {
                String string = !TextUtils.isEmpty(activity.getTitle()) ? activity.getTitle().toString() : null;
                if (TextUtils.isEmpty(string) && (packageManager = activity.getPackageManager()) != null) {
                    ActivityInfo activityInfo = packageManager.getActivityInfo(activity.getComponentName(), 0);
                    if (!TextUtils.isEmpty(activityInfo.loadLabel(packageManager))) {
                        return activityInfo.loadLabel(packageManager).toString();
                    }
                }
                return string;
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public static Object a(View view, Activity activity) {
        Window window;
        if (view == null) {
            return null;
        }
        try {
            String strA = (String) view.getTag(R.id.tingyun_tag_view_fragment_name);
            if (TextUtils.isEmpty(strA)) {
                if (activity == null) {
                    activity = a(view.getContext());
                }
                if (activity != null && (window = activity.getWindow()) != null && window.isActive() && window.getDecorView().getRootView().getTag(R.id.tingyun_tag_view_fragment_name) != null) {
                    strA = a(view);
                }
            }
            return b.a(strA);
        } catch (Exception e2) {
            Logger.error(f37143a, "error getFragmentFromView", e2);
            return null;
        }
    }

    private static String a(View view) {
        try {
            String str = null;
            for (ViewParent parent = view.getParent(); TextUtils.isEmpty(str) && (parent instanceof View); parent = parent.getParent()) {
                str = (String) ((View) parent).getTag(R.id.tingyun_tag_view_fragment_name);
            }
            return str;
        } catch (Exception e2) {
            Logger.error(f37143a, "error traverseParentViewTag", e2);
            return "";
        }
    }
}
