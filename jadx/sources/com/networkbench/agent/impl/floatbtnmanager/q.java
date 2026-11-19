package com.networkbench.agent.impl.floatbtnmanager;

import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AbsSpinner;
import android.widget.TabHost;
import android.widget.TextView;
import android.widget.Toolbar;
import androidx.recyclerview.widget.RecyclerView;
import com.networkbench.agent.impl.instrumentation.NBSActionInstrumentation;
import com.networkbench.agent.impl.util.Logger;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f37138a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static List<Class<?>> f37139b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f37140c = "ViewTouchSearch";
    private static final int d = 5;

    static {
        ArrayList arrayList = new ArrayList();
        f37139b = arrayList;
        arrayList.add(AbsSpinner.class);
        f37139b.add(AbsListView.class);
        f37139b.add(TabHost.class);
        try {
            int i2 = RecyclerView.HORIZONTAL;
            f37139b.add(RecyclerView.class);
        } catch (Throwable unused) {
        }
        try {
            Class.forName("android.widget.Toolbar");
            f37139b.add(Toolbar.class);
        } catch (Throwable unused2) {
        }
    }

    public static synchronized View a(View view, List<Class<?>> list) {
        if (view == null) {
            return null;
        }
        if (b(view, list)) {
            return view;
        }
        if (NBSActionInstrumentation.getRow(view) == null && NBSActionInstrumentation.getColumn(view) == null) {
            if (view.isClickable()) {
                Logger.debug(f37140c, "isClickable view is:".concat(view.getClass().getName()));
                return view;
            }
            Object parent = view.getParent();
            return parent instanceof View ? a((View) parent, list) : null;
        }
        Logger.debug(f37140c, "row position is:" + NBSActionInstrumentation.getRow(view) + ", column position is:" + NBSActionInstrumentation.getColumn(view));
        return view;
    }

    private static String b(ViewGroup viewGroup) {
        if (viewGroup == null || viewGroup.getChildCount() == 0) {
            return "";
        }
        int i2 = f37138a;
        if (i2 > 5) {
            Logger.debug(f37140c, "currentDepth is:" + f37138a);
            return "";
        }
        f37138a = i2 + 1;
        for (int i3 = 0; i3 < viewGroup.getChildCount(); i3++) {
            View childAt = viewGroup.getChildAt(i3);
            if (childAt.getVisibility() == 0) {
                if (childAt instanceof ViewGroup) {
                    String strB = b((ViewGroup) childAt);
                    if (strB != null && !strB.isEmpty()) {
                        return strB;
                    }
                } else if (childAt instanceof TextView) {
                    return ((TextView) childAt).getText().toString();
                }
            }
        }
        return "";
    }

    public static View c(View view) {
        if (view == null) {
            return null;
        }
        return a(view, f37139b);
    }

    public static String d(View view) {
        if (view == null) {
            return "-1";
        }
        if (NBSActionInstrumentation.getRow(view) == null && NBSActionInstrumentation.getColumn(view) == null) {
            Object parent = view.getParent();
            return (!(parent instanceof View) || parent == null) ? "-1" : d((View) parent);
        }
        Logger.debug(f37140c, "row position is:" + NBSActionInstrumentation.getRow(view) + ", column position is:" + NBSActionInstrumentation.getColumn(view));
        return NBSActionInstrumentation.getRow(view);
    }

    private static ArrayList<View> e(View view) {
        if (!(view instanceof ViewGroup)) {
            ArrayList<View> arrayList = new ArrayList<>();
            arrayList.add(view);
            return arrayList;
        }
        ArrayList<View> arrayList2 = new ArrayList<>();
        ViewGroup viewGroup = (ViewGroup) view;
        for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
            View childAt = viewGroup.getChildAt(i2);
            ArrayList arrayList3 = new ArrayList();
            arrayList3.addAll(e(childAt));
            arrayList2.addAll(arrayList3);
        }
        return arrayList2;
    }

    public static synchronized View b(View view) {
        if (view == null) {
            return null;
        }
        if (view.isClickable()) {
            return view;
        }
        Object parent = view.getParent();
        return parent instanceof View ? b((View) parent) : null;
    }

    public static boolean b(View view, List<Class<?>> list) {
        Iterator<Class<?>> it = list.iterator();
        while (it.hasNext()) {
            if (it.next().isInstance(view)) {
                return true;
            }
        }
        return false;
    }

    private static View b(View view, MotionEvent motionEvent) {
        ArrayList<View> arrayListE = e(view);
        ArrayList arrayList = new ArrayList();
        Rect rect = new Rect();
        int rawX = (int) motionEvent.getRawX();
        int rawY = (int) motionEvent.getRawY();
        View view2 = null;
        for (View view3 : arrayListE) {
            if (view3.onFilterTouchEventForSecurity(motionEvent) && view3.getVisibility() == 0) {
                view3.getGlobalVisibleRect(rect);
                if (rect.contains(rawX, rawY)) {
                    arrayList.add(view3);
                    view2 = view3;
                }
            }
        }
        return view2;
    }

    private static View a(List<View> list) {
        if (list.size() <= 0) {
            return null;
        }
        View view = list.get(0);
        for (int i2 = 1; i2 < list.size(); i2++) {
            if (list.get(i2) != null && view.getWidth() > list.get(i2).getWidth() && view.getHeight() > list.get(i2).getHeight()) {
                view = list.get(i2);
            }
        }
        return view;
    }

    public static View a(View view) {
        if (view == null) {
            return null;
        }
        return b(view);
    }

    public static View a(View view, MotionEvent motionEvent) {
        View viewB = b(view, motionEvent);
        if (viewB == null || (viewB instanceof ViewGroup)) {
            return null;
        }
        View viewC = c(viewB);
        if (viewC != null) {
            return viewC;
        }
        View viewA = a(viewB);
        if (viewA != null) {
            return viewA;
        }
        if (viewB.isClickable()) {
            return viewB;
        }
        return null;
    }

    public static String a(ViewGroup viewGroup) {
        f37138a = 0;
        String strB = b(viewGroup);
        Logger.debug(f37140c, "getViewGroupContentWrapper is:" + strB);
        return strB;
    }
}
