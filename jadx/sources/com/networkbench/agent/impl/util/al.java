package com.networkbench.agent.impl.util;

import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import androidx.recyclerview.widget.RecyclerView;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes3.dex */
public class al {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f38331a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f38332b = b();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Method f38333c;
    private static Class<?> d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static SparseArray<String> f38334e;

    private static Class<?> a(Class<?> cls) {
        while (cls != null && !cls.equals(ViewGroup.class)) {
            try {
                f38333c = cls.getDeclaredMethod("getChildAdapterPosition", View.class);
            } catch (NoSuchMethodException unused) {
            }
            if (f38333c == null) {
                try {
                    f38333c = cls.getDeclaredMethod("getChildPosition", View.class);
                } catch (NoSuchMethodException unused2) {
                }
            }
            if (f38333c != null) {
                return cls;
            }
            cls = cls.getSuperclass();
        }
        return null;
    }

    private static Object b(View view) {
        try {
            Class<?> clsA = ac.a(new String[]{"android.support.design.widget.TabLayout$TabView", "com.google.android.material.tabs.TabLayout$TabView"});
            if (clsA == null || !clsA.isAssignableFrom(view.getClass())) {
                return null;
            }
            return ac.a(clsA, view, "mTab", "tab");
        } catch (Exception unused) {
            return null;
        }
    }

    private static int c(View view) {
        try {
            Object objInvoke = view.getClass().getMethod("getCurrentItem", null).invoke(view, null);
            if (objInvoke != null) {
                return ((Integer) objInvoke).intValue();
            }
            return -1;
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            return -1;
        }
    }

    public static boolean d(Object obj) {
        return ac.a(obj, "androidx.appcompat.view.menu.ActionMenuItem");
    }

    public static boolean e(Object obj) {
        return ac.a(obj, "androidx.appcompat.widget.Toolbar", "android.support.v7.widget.Toolbar", "android.widget.Toolbar");
    }

    public static boolean f(Object obj) {
        return (obj instanceof WebView) || g(obj) || m(obj);
    }

    public static boolean g(Object obj) {
        return ac.a(obj, "com.tencent.smtt.sdk.WebView");
    }

    public static boolean h(Object obj) {
        Class<?> cls;
        boolean zA = ac.a(obj, "android.support.v7.widget.RecyclerView", "androidx.recyclerview.widget.RecyclerView");
        if (zA) {
            return zA;
        }
        return f38331a && obj != null && (cls = d) != null && cls.isAssignableFrom(obj.getClass());
    }

    private static boolean i(Object obj) {
        return ac.a(obj, "android.support.v4.widget.SwipeRefreshLayout", "androidx.swiperefreshlayout.widget.SwipeRefreshLayout");
    }

    private static boolean j(Object obj) {
        return ac.a(obj, "android.support.design.widget.NavigationView", "com.google.android.material.navigation.NavigationView");
    }

    private static boolean k(Object obj) {
        return ac.a(obj, "android.support.v4.view.ViewPager");
    }

    private static boolean l(Object obj) {
        return ac.a(obj, "androidx.viewpager.widget.ViewPager");
    }

    private static boolean m(Object obj) {
        return ac.a(obj, "com.alipay.mobile.nebulauc.impl.UCWebView$WebViewEx");
    }

    public static boolean c(Object obj) {
        return ac.a(obj, "com.google.android.material.bottomnavigation.BottomNavigationItemView", "android.support.design.internal.NavigationMenuItemView");
    }

    public static boolean b(Object obj) {
        return ac.a(obj, "androidx.appcompat.view.menu.ListMenuItemView");
    }

    private static boolean b() {
        try {
            try {
                Class.forName("android.support.v7.widget.RecyclerView");
                return true;
            } catch (ClassNotFoundException unused) {
                int i2 = RecyclerView.HORIZONTAL;
                return true;
            }
        } catch (ClassNotFoundException unused2) {
            return false;
        }
    }

    public static Object a(View view) {
        try {
            return view.getClass().getMethod("getItemData", null).invoke(view, null);
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            return null;
        }
    }

    private static void a(Class<?> cls, String str) {
        if (f38332b || f38331a || str == null || !str.contains("RecyclerView")) {
            return;
        }
        try {
            if (a(cls) == null || f38333c == null) {
                return;
            }
            d = cls;
            f38331a = true;
        } catch (Exception unused) {
        }
    }

    public static boolean a(Object obj) {
        return ac.a(obj, "android.support.v7.view.menu.ListMenuItemView");
    }

    public static void a() {
        SparseArray<String> sparseArray = f38334e;
        if (sparseArray != null) {
            sparseArray.clear();
        }
    }
}
