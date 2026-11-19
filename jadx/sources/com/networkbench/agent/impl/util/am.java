package com.networkbench.agent.impl.util;

import android.app.Activity;
import android.text.TextUtils;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageButton;
import android.widget.TabHost;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public class am {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Object f38335a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Field f38336b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Class f38337c = null;
    private static Class d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static Class<?> f38338e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static Method f38339f = null;
    private static boolean g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static boolean f38340h = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static boolean f38341i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final String f38342j = "/MainWindow";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final String f38343k = "/DialogWindow";
    private static final String l = "/PopupWindow";
    private static final String m = "/CustomWindow";

    public static void a() {
        if (g) {
            return;
        }
        try {
            Class<?> cls = Class.forName("android.view.WindowManagerGlobal");
            f38336b = cls.getDeclaredField("mViews");
            Field declaredField = cls.getDeclaredField("sDefaultWindowManager");
            f38336b.setAccessible(true);
            if (f38336b.getType() == ArrayList.class) {
                f38340h = true;
            } else if (f38336b.getType() == View[].class) {
                f38341i = true;
            }
            declaredField.setAccessible(true);
            f38335a = declaredField.get(null);
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException unused) {
        }
        try {
            f38338e = Class.forName("com.android.internal.view.menu.ListMenuItemView");
            f38339f = Class.forName("com.android.internal.view.menu.MenuView$ItemView").getDeclaredMethod("getItemData", null);
        } catch (ClassNotFoundException | NoSuchMethodException unused2) {
        }
        try {
            try {
                f38337c = Class.forName("com.android.internal.policy.PhoneWindow$DecorView");
            } catch (ClassNotFoundException unused3) {
            }
        } catch (ClassNotFoundException unused4) {
            f38337c = Class.forName("com.android.internal.policy.DecorView");
        }
        try {
            d = Class.forName("android.widget.PopupWindow$PopupDecorView");
        } catch (ClassNotFoundException unused5) {
        }
        g = true;
    }

    public static boolean b(View view) {
        String strE = e(view);
        return TextUtils.equals(f38343k, strE) || TextUtils.equals(l, strE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static View[] c() {
        View[] viewArr = new View[0];
        Object obj = f38335a;
        Object decorView = null;
        if (obj == null) {
            Activity activity = com.networkbench.agent.impl.floatbtnmanager.c.a().f().get();
            if (activity != null) {
                Window window = activity.getWindow();
                if (window.isActive()) {
                    decorView = window.getDecorView();
                }
            }
            return activity != null ? new View[]{decorView} : viewArr;
        }
        try {
            if (f38340h) {
                decorView = (View[]) ((ArrayList) f38336b.get(obj)).toArray(viewArr);
            } else if (f38341i) {
                decorView = (View[]) f38336b.get(obj);
            }
            if (decorView != null) {
                viewArr = decorView;
            }
        } catch (Exception unused) {
        }
        return a(viewArr);
    }

    private static String d(View view) {
        if (view instanceof TabHost) {
            return (String) ac.a(view, "getCurrentTabTag", new Object[0]);
        }
        return null;
    }

    private static String e(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams != null && (layoutParams instanceof WindowManager.LayoutParams)) {
            int i2 = ((WindowManager.LayoutParams) layoutParams).type;
            if (i2 == 1) {
                return f38342j;
            }
            if (i2 < 99 && view.getClass() == f38337c) {
                return f38343k;
            }
            if (i2 < 1999 && view.getClass() == d) {
                return l;
            }
            if (i2 < 2999) {
                return m;
            }
        }
        Class<?> cls = view.getClass();
        if (cls == f38337c) {
            return f38343k;
        }
        return cls == d ? l : m;
    }

    public static String b() {
        return f38342j;
    }

    private static Object c(View view) throws IllegalAccessException, InvocationTargetException {
        if (view.getClass() == f38338e) {
            return f38339f.invoke(view, null);
        }
        if (al.b((Object) view) || al.a((Object) view) || al.c((Object) view)) {
            return al.a(view);
        }
        return null;
    }

    private static View[] a(View[] viewArr) {
        ArrayList arrayList = new ArrayList(viewArr.length);
        System.currentTimeMillis();
        for (View view : viewArr) {
            if (view != null) {
                arrayList.add(view);
            }
        }
        View[] viewArr2 = new View[arrayList.size()];
        arrayList.toArray(viewArr2);
        return viewArr2;
    }

    public static boolean a(Class cls) {
        if (!g) {
            a();
        }
        return cls == f38337c || cls == d;
    }

    private static View a(View view, MenuItem menuItem) throws IllegalAccessException, InvocationTargetException {
        View view2;
        if ((al.d(menuItem) && menuItem.getItemId() == 16908332 && al.e(view.getParent()) && (view instanceof ImageButton) && (view2 = (View) ac.a(new String[]{"androidx.appcompat.widget.Toolbar", "android.support.v7.widget.Toolbar", "android.widget.Toolbar"}, view.getParent(), "mNavButtonView")) != null && view2 == view) || c(view) == menuItem) {
            return view;
        }
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        int i2 = 0;
        while (true) {
            ViewGroup viewGroup = (ViewGroup) view;
            if (i2 >= viewGroup.getChildCount()) {
                return null;
            }
            View viewA = a(viewGroup.getChildAt(i2), menuItem);
            if (viewA != null) {
                return viewA;
            }
            i2++;
        }
    }

    public static View a(MenuItem menuItem) {
        View viewA;
        View viewA2;
        if (menuItem == null) {
            return null;
        }
        a();
        View[] viewArrC = c();
        try {
            for (View view : viewArrC) {
                if (view.getClass() == d && (viewA2 = a(view, menuItem)) != null) {
                    return viewA2;
                }
            }
            for (View view2 : viewArrC) {
                if (view2.getClass() != d && (viewA = a(view2, menuItem)) != null) {
                    return viewA;
                }
            }
        } catch (IllegalAccessException | InvocationTargetException | Exception unused) {
        }
        return null;
    }

    public static View a(String str) {
        View viewA;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        a();
        for (View view : c()) {
            try {
                if (view.getClass() != d && (viewA = a(view, str)) != null) {
                    return viewA;
                }
            } catch (Exception unused) {
            }
        }
        return null;
    }

    private static View a(View view, String str) {
        int i2 = 0;
        if (TextUtils.equals(str, d(view))) {
            return (View) ac.a(view, "getCurrentTabView", new Object[0]);
        }
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        while (true) {
            ViewGroup viewGroup = (ViewGroup) view;
            if (i2 >= viewGroup.getChildCount()) {
                return null;
            }
            View viewA = a(viewGroup.getChildAt(i2), str);
            if (viewA != null) {
                return viewA;
            }
            i2++;
        }
    }

    public static boolean a(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        return (layoutParams instanceof WindowManager.LayoutParams) && ((WindowManager.LayoutParams) layoutParams).type == 1;
    }
}
