package com.networkbench.agent.impl.session.screen;

import android.graphics.Rect;
import android.view.View;
import android.view.WindowManager;
import com.networkbench.agent.impl.c.g;
import com.networkbench.agent.impl.floatbtnmanager.n;
import com.networkbench.agent.impl.util.ak;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class NBSViewHelper {
    private static final String FIELD_NAME_GLOBAL = "mGlobal";
    private static final String FIELD_NAME_PARAMS = "mParams";
    private static final String FIELD_NAME_ROOTS = "mRoots";
    private static final String FIELD_NAME_VIEW = "mView";
    private static final String FIELD_NAME_WINDOW_MANAGER = "mWindowManager";
    private static final int[] sLocation = new int[2];

    private NBSViewHelper() {
    }

    private static Object getFieldValue(String str, Object obj) {
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
        } catch (Exception e2) {
            g.b("NBSViewHelper  getFieldValue has an error ,", e2);
            return null;
        }
    }

    private static Object getFieldValueRootView(String str, Object obj) {
        if (obj == null) {
            return null;
        }
        try {
            Class<?> superclass = obj.getClass();
            Field declaredField = null;
            while (superclass != null) {
                try {
                    declaredField = superclass.getDeclaredField(str);
                    if (declaredField != null) {
                        break;
                    }
                } catch (NoSuchFieldException unused) {
                    superclass = superclass.getSuperclass();
                }
            }
            if (declaredField == null) {
                return null;
            }
            declaredField.setAccessible(true);
            return declaredField.get(obj);
        } catch (Exception e2) {
            g.b("NBSViewHelper getFieldValueRootView has an error,", e2);
            return null;
        }
    }

    public static List<n> getRootViews() {
        ArrayList arrayList = new ArrayList();
        Object fieldValue = getFieldValue(FIELD_NAME_GLOBAL, ak.e().getSystemService("window"));
        Object fieldValue2 = getFieldValue(FIELD_NAME_ROOTS, fieldValue);
        Object fieldValue3 = getFieldValue(FIELD_NAME_PARAMS, fieldValue);
        if (fieldValue2 != null && fieldValue3 != null) {
            Object[] array = ((List) fieldValue2).toArray();
            List list = (List) fieldValue3;
            WindowManager.LayoutParams[] layoutParamsArr = (WindowManager.LayoutParams[]) list.toArray(new WindowManager.LayoutParams[list.size()]);
            for (int i2 = 0; i2 < array.length; i2++) {
                View view = (View) getFieldValueRootView(FIELD_NAME_VIEW, array[i2]);
                if (view != null && view.getVisibility() == 0) {
                    arrayList.add(new n(view, layoutParamsArr[i2]));
                }
            }
        }
        return arrayList;
    }

    public static Rect getVisibleRect(View view) {
        Rect rect = new Rect();
        if (view != null) {
            view.getGlobalVisibleRect(rect);
        }
        return rect;
    }
}
