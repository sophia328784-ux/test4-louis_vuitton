package com.networkbench.agent.impl.fragmentadapt;

import android.app.Activity;
import android.graphics.Rect;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.GridView;
import android.widget.ListView;
import android.widget.RadioGroup;
import android.widget.Spinner;
import com.networkbench.R;
import com.networkbench.agent.impl.session.screen.NBSMaskViewRect;
import com.networkbench.agent.impl.session.screen.NBSMaskViewType;
import com.networkbench.agent.impl.util.Logger;
import com.networkbench.agent.impl.util.ab;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class f implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static f f37150a = new f();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected static final String f37151b = "FragmentLifecycleCallbacks";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f37152c = 5;
    private final Set<Object> d = new h();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Queue<WeakReference<Object>> f37153e = new LinkedList();

    private boolean f(Object obj) {
        if (obj == null) {
            Logger.debug(f37151b, "fragment is null,return");
            return false;
        }
        if ("com.bumptech.glide.manager.SupportRequestManagerFragment".equals(obj.getClass().getCanonicalName())) {
            Logger.debug(f37151b, "fragment is SupportRequestManagerFragment,return");
            return false;
        }
        if (this.d.contains(obj)) {
            Logger.debug(f37151b, "pageFragment contains,return");
            return false;
        }
        if (e.a(obj)) {
            return true;
        }
        Logger.debug(f37151b, "fragment is not visible,return");
        return false;
    }

    private void g(Object obj) {
        if (obj == null) {
            return;
        }
        if (this.f37153e.size() > 5) {
            this.f37153e.remove();
        }
        this.f37153e.add(new WeakReference<>(obj));
    }

    public List<NBSMaskViewRect> a(String str, Set<Class<?>> set) throws NullPointerException {
        Rect rectF;
        Rect rectF2;
        ArrayList arrayList = new ArrayList();
        if (!ab.c(str)) {
            for (Object obj : this.d) {
                if (obj != null) {
                    Logger.debug(f37151b, "getFragmentRect obj: ".concat(obj.getClass().getName()));
                    if (a(obj, str, set) && (rectF2 = e.f(obj)) != null) {
                        Logger.debug(f37151b, "mPageFragments find rect:" + rectF2);
                        arrayList.add(new NBSMaskViewRect(rectF2, NBSMaskViewType.FRAGMENT, obj.getClass().getName()));
                    }
                }
            }
            Iterator<WeakReference<Object>> it = this.f37153e.iterator();
            while (it.hasNext()) {
                Object obj2 = it.next().get();
                if (obj2 != null) {
                    Logger.debug(f37151b, "allResumeFragments obj: ".concat(obj2.getClass().getName()));
                    if (!this.d.contains(obj2) && a(obj2, str, set) && (rectF = e.f(obj2)) != null) {
                        Logger.debug(f37151b, "allResumeFragments find rect:" + rectF);
                        arrayList.add(new NBSMaskViewRect(rectF, NBSMaskViewType.FRAGMENT, obj2.getClass().getName()));
                    }
                }
            }
        }
        return arrayList;
    }

    @Override // com.networkbench.agent.impl.fragmentadapt.c
    public void b(Object obj, boolean z) {
        try {
            if (obj == null) {
                Logger.debug(f37151b, "object is null");
                return;
            }
            Logger.debug(f37151b, "setUserVisibleHint:" + obj.getClass().getName() + ", isVisibleToUser" + z);
            if (!z) {
                this.d.remove(obj);
                Logger.debug(f37151b, "fragment isVisibleToUser is false,return");
            } else if (f(obj)) {
                this.d.add(obj);
            }
        } catch (Throwable th) {
            Logger.error(f37151b, "setUserVisibleHint", th);
        }
    }

    @Override // com.networkbench.agent.impl.fragmentadapt.c
    public void c(Object obj) {
        try {
            Logger.debug(f37151b, "onResume on FragmentViewScreenCallbacks:" + obj.getClass().getName() + ", obj:" + obj);
            if (f(obj)) {
                this.d.add(obj);
            }
            g(obj);
        } catch (Throwable th) {
            Logger.error(f37151b, "onResume", th);
        }
    }

    @Override // com.networkbench.agent.impl.fragmentadapt.c
    public void d(Object obj) {
        try {
            Logger.debug(f37151b, "onPause on FragmentViewScreenCallbacks:".concat(obj.getClass().getName()));
            this.d.remove(obj);
        } catch (Throwable th) {
            Logger.error(f37151b, "onPause", th);
        }
    }

    @Override // com.networkbench.agent.impl.fragmentadapt.c
    public void e(Object obj) {
    }

    @Override // com.networkbench.agent.impl.fragmentadapt.c
    public void b(Object obj) {
    }

    @Override // com.networkbench.agent.impl.fragmentadapt.c
    public void a(Object obj, View view, Bundle bundle) {
        Window window;
        try {
            String name = obj.getClass().getName();
            view.setTag(R.id.tingyun_tag_view_fragment_name, name);
            Logger.debug(f37151b, "onViewCreated:".concat(name));
            if (view instanceof ViewGroup) {
                a(name, (ViewGroup) view);
                Logger.debug(f37151b, "traverseView end");
            }
            Activity activityA = a.a(view.getContext());
            if (activityA != null && (window = activityA.getWindow()) != null) {
                window.getDecorView().getRootView().setTag(R.id.tingyun_tag_view_fragment_name, "");
            }
            b.a(name, obj);
        } catch (Throwable th) {
            Logger.error(f37151b, "onViewCreated", th);
        }
    }

    @Override // com.networkbench.agent.impl.fragmentadapt.c
    public void a(Object obj, boolean z) {
        try {
            if (obj == null) {
                Logger.debug(f37151b, "fragment is null,return");
                return;
            }
            Logger.debug(f37151b, "onHiddenChanged on FragmentViewScreenCallbacks:" + obj.getClass().getName() + ", hidden:" + z);
            if (z) {
                this.d.remove(obj);
                Logger.debug(f37151b, "fragment hidden is true,return");
            } else if (f(obj)) {
                this.d.add(obj);
            }
        } catch (Throwable th) {
            Logger.error(f37151b, "onHiddenChanged", th);
        }
    }

    private static void a(String str, ViewGroup viewGroup) {
        try {
            if (!TextUtils.isEmpty(str) && viewGroup != null) {
                int childCount = viewGroup.getChildCount();
                for (int i2 = 0; i2 < childCount; i2++) {
                    View childAt = viewGroup.getChildAt(i2);
                    childAt.setTag(R.id.tingyun_tag_view_fragment_name, str);
                    if ((childAt instanceof ViewGroup) && !(childAt instanceof ListView) && !(childAt instanceof GridView) && !(childAt instanceof Spinner) && !(childAt instanceof RadioGroup)) {
                        a(str, (ViewGroup) childAt);
                    }
                }
            }
        } catch (Throwable th) {
            Logger.error(f37151b, "traverseView error", th);
        }
    }

    @Override // com.networkbench.agent.impl.fragmentadapt.c
    public void a(Object obj) {
    }

    private boolean a(Object obj, String str, Set<Class<?>> set) {
        if (obj == null) {
            return false;
        }
        if (str.contains(obj.getClass().getName())) {
            return true;
        }
        Iterator<Class<?>> it = set.iterator();
        while (it.hasNext()) {
            if (it.next().isInstance(obj)) {
                return true;
            }
        }
        return false;
    }
}
