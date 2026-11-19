package com.networkbench.agent.impl.floatbtnmanager;

import android.view.View;
import android.view.WindowManager;
import com.networkbench.agent.impl.util.ak;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f37094a = "mWindowManager";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f37095b = "mGlobal";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f37096c = "mRoots";
    private static final String d = "mParams";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f37097e = "mView";

    private f() {
    }

    public static List<n> a() {
        ArrayList arrayList = new ArrayList();
        Object objA = a(f37095b, ak.e().getSystemService("window"));
        Object objA2 = a(f37096c, objA);
        Object objA3 = a(d, objA);
        if (objA2 != null && objA3 != null) {
            Object[] array = ((List) objA2).toArray();
            List list = (List) objA3;
            WindowManager.LayoutParams[] layoutParamsArr = (WindowManager.LayoutParams[]) list.toArray(new WindowManager.LayoutParams[list.size()]);
            for (int i2 = 0; i2 < array.length; i2++) {
                View view = (View) a(f37097e, array[i2]);
                if (view != null && view.getVisibility() == 0) {
                    arrayList.add(new n(view, layoutParamsArr[i2]));
                }
            }
        }
        return arrayList;
    }

    private static Object a(String str, Object obj) {
        if (obj == null) {
            return null;
        }
        try {
            Field declaredField = obj.getClass().getDeclaredField(str);
            if (declaredField == null) {
                return null;
            }
            declaredField.setAccessible(true);
            return declaredField.get(obj);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }
}
