package com.networkbench.agent.impl.data.a;

import android.content.Context;
import android.text.TextUtils;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.networkbench.R;
import com.networkbench.agent.impl.asyncaction.r;
import com.networkbench.agent.impl.data.type.SlowStartState;
import com.networkbench.agent.impl.floatbtnmanager.PageFloatingBtn;
import com.networkbench.agent.impl.floatbtnmanager.q;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.networkbench.agent.impl.harvest.Harvest;
import com.networkbench.agent.impl.harvest.ScreenNameManager;
import com.networkbench.agent.impl.instrumentation.NBSActionInstrumentation;
import com.networkbench.agent.impl.instrumentation.NBSTraceUnit;
import com.networkbench.agent.impl.util.Logger;
import com.networkbench.agent.impl.util.ab;
import com.networkbench.agent.impl.util.ak;
import defpackage.d21;
import defpackage.n00;
import defpackage.r81;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public class h {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static r f36801b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f36802c = "NBSEventActionManager";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static Method f36803e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f36804f = "Touch on ";
    private static final String g = "Resource Id: ";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f36805h = "Initiate ";
    private static final com.networkbench.agent.impl.c.e d = com.networkbench.agent.impl.c.f.a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f36800a = "";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static a f36806i = null;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static g f36807j = null;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static Context f36808k = com.networkbench.agent.impl.util.r.u().J();
    private static com.networkbench.agent.impl.asyncaction.a l = null;
    private static Map<String, String> m = new com.networkbench.agent.impl.crash.e.a();

    public static void a(SlowStartState.ListenerActionType listenerActionType, View view, boolean z, int i2) {
        Logger.debug(f36802c, "onUserActionbegin !!!!!!! actionType:" + listenerActionType);
        if (z) {
            Harvest.addActionAndInteraction(ScreenNameManager.getCurrentScreenName(), "on" + listenerActionType.name(), a(view, listenerActionType), b(view));
            if (com.networkbench.agent.impl.util.r.u().af()) {
                String str = null;
                if (view != null) {
                    try {
                        View viewG = g(view);
                        String strC = c(viewG);
                        f36806i = new a(viewG);
                        str = strC;
                    } catch (Throwable th) {
                        Logger.error(f36802c, "not getuniQueId", th);
                    }
                }
                com.networkbench.agent.impl.k.b bVarQ = ak.q();
                f36800a = d21.p(new StringBuilder(), i(view), "#", str);
                a(listenerActionType.name(), f36800a, ak.d(view), i2, f36806i);
                c();
                PageFloatingBtn.setActionFeatures(f36806i);
                com.networkbench.agent.impl.asyncaction.a aVar = l;
                if (aVar == null) {
                    d.e("traceMetrics instanceof TraceMetrics is false, skip");
                } else {
                    f36807j = new g(aVar, f36800a, f36801b, bVarQ);
                }
            }
        }
    }

    public static boolean b(Object obj) {
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

    public static void c() {
        r rVarB = r.b();
        f36801b = rVarB;
        rVarB.a(new UUID(ak.a().nextLong(), ak.a().nextLong()).toString().replace("-", ""));
        NBSTraceUnit nBSTraceUnit = new NBSTraceUnit();
        nBSTraceUnit.metricName = f36800a;
        nBSTraceUnit.unitType = com.networkbench.agent.impl.data.type.r.OPERATE_ACTION_ROOT_UNIT;
        nBSTraceUnit.shouldPushPop = true;
        com.networkbench.agent.impl.asyncaction.a aVar = new com.networkbench.agent.impl.asyncaction.a(nBSTraceUnit, com.networkbench.agent.impl.data.d.b.a().b().a());
        l = aVar;
        f36801b.a(aVar);
        f36801b.a(f36806i);
        com.networkbench.agent.impl.c.g.A("NBSEventActionManager configStartEngine");
    }

    public static String d(View view) {
        if (view == null) {
            return null;
        }
        String str = (String) view.getTag(ConfigurationName.FRAGMENT_TAG);
        return (str == null && view.getParent() != null && (view.getParent() instanceof ViewGroup)) ? d((ViewGroup) view.getParent()) : str;
    }

    public static void e() {
        r rVar;
        com.networkbench.agent.impl.c.g.u("onUserActionEnd!!!!!!!!!!!!!!");
        if (com.networkbench.agent.impl.util.r.u().af() && (rVar = f36801b) != null) {
            com.networkbench.agent.impl.asyncaction.a aVar = l;
            if (aVar == null) {
                d.e("actionTraceMetrics==null");
                return;
            }
            rVar.a(aVar, System.currentTimeMillis());
            com.networkbench.agent.impl.asyncaction.a aVar2 = l;
            if (aVar2 == null) {
                d.e("traceMetrics instanceof TraceMetrics is false, skip");
                return;
            }
            g gVar = f36807j;
            if (gVar == null) {
                d.e("nbsEventAction is null, skip");
                return;
            }
            a aVar3 = f36806i;
            gVar.a(aVar2, aVar3 == null ? "" : aVar3.h());
            f36807j.f36790e.putAll(m);
            m.clear();
            if (ab.c(f36800a)) {
                Logger.debug(f36802c, "maybe two event action nest，drop top event action");
            } else {
                Logger.debug(f36802c, "onUserActionEnd store event action");
                com.networkbench.agent.impl.asyncaction.a.b.f36406a.a(f36807j);
            }
            f36801b = null;
            f36800a = "";
            f36806i = null;
        }
    }

    private static String f(View view) {
        String str = null;
        if (view == null) {
            return null;
        }
        if (view.getId() != -1) {
            str = "0x" + Integer.toHexString(view.getId());
            if (com.networkbench.agent.impl.util.r.u().J() != null) {
                try {
                    return com.networkbench.agent.impl.util.r.u().J().getResources().getResourceEntryName(view.getId());
                } catch (Throwable unused) {
                    d.f("view getViewEntryNameOrID not find");
                }
            }
        }
        return str;
    }

    private static View g(View view) {
        View viewC;
        if (h(view) != null || (viewC = q.c(view)) == null || NBSActionInstrumentation.getRow(viewC) == null) {
            return view;
        }
        Logger.debug(f36802c, "getAvaliableView container row tag:" + NBSActionInstrumentation.getRow(viewC) + ", column tag:" + NBSActionInstrumentation.getColumn(viewC));
        return viewC;
    }

    private static Object h(View view) {
        if (view == null) {
            return null;
        }
        return view.getTag(R.string.view_attached_id);
    }

    private static String i(View view) {
        return ak.c(view);
    }

    public static void d() {
        e.a();
    }

    public static String b(View view) {
        if (view == null) {
            return null;
        }
        String str = "0x" + Integer.toHexString(view.getId());
        Object tag = view.getTag();
        if (tag == null) {
            return str;
        }
        StringBuilder sbU = n00.u(str, "#");
        sbU.append(tag.toString());
        return sbU.toString();
    }

    public static String b() {
        a aVar = f36806i;
        return aVar == null ? "" : aVar.h();
    }

    public static String c(View view) {
        String strF = null;
        if (view != null) {
            if (h(view) != null && !TextUtils.isEmpty(h(view).toString())) {
                if (h(view) != null) {
                    strF = h(view).toString();
                }
            } else {
                strF = f(view);
            }
            if (TextUtils.isEmpty(strF)) {
                strF = ak.b(view);
            }
            d.a("id:" + view.getId() + ", result:" + strF);
            return strF;
        }
        r81.d("getUniqueId view is null");
        return null;
    }

    private static String e(View view) {
        if (view == null) {
            return null;
        }
        String strA = a(view.getContentDescription());
        return (strA == null && (view instanceof TextView)) ? a(((TextView) view).getText()) : strA;
    }

    public static String a() {
        return f36800a;
    }

    private static String a(CharSequence charSequence) {
        if (charSequence == null || charSequence.length() <= 0) {
            return null;
        }
        String string = charSequence.toString();
        return string.length() > 50 ? string.substring(0, 50) : string;
    }

    public static String a(View view) {
        String strE = null;
        if (view == null || !(view instanceof LinearLayout)) {
            return null;
        }
        LinearLayout linearLayout = (LinearLayout) view;
        for (int i2 = 0; i2 < linearLayout.getChildCount(); i2++) {
            strE = e(linearLayout.getChildAt(i2));
            if (strE != null) {
                return strE;
            }
        }
        return strE;
    }

    private static String a(View view, SlowStartState.ListenerActionType listenerActionType) {
        if (view == null) {
            return f36805h + listenerActionType.toString();
        }
        String strE = e(view);
        if (strE == null) {
            strE = a(view);
        }
        if (strE != null) {
            return strE;
        }
        String strF = f(view);
        if (strF == null) {
            return f36804f.concat(view.getClass().getSimpleName());
        }
        return g.concat(strF);
    }

    public static View a(Object obj) {
        String string;
        CharSequence charSequence;
        if (obj == null || f36808k == null) {
            return null;
        }
        if (obj instanceof MenuItem) {
            string = obj.toString();
        } else {
            try {
                if (f36803e == null) {
                    f36803e = obj.getClass().getMethod("getTitle", null);
                }
                Method method = f36803e;
                string = (method == null || (charSequence = (CharSequence) method.invoke(obj, null)) == null) ? null : charSequence.toString();
            } catch (Throwable unused) {
            }
        }
        if (string == null) {
            return null;
        }
        View view = new View(f36808k);
        view.setTag(R.string.view_menuitem_attached_id, string);
        return view;
    }

    public static void a(SlowStartState.ListenerActionType listenerActionType, String str, boolean z) {
        if (z) {
            Harvest.addActionAndInteraction(ScreenNameManager.getCurrentScreenName(), "on" + listenerActionType.name(), str, str);
            if (com.networkbench.agent.impl.util.r.u().af()) {
                com.networkbench.agent.impl.k.b bVarQ = ak.q();
                f36800a = ScreenNameManager.getCurrentScreenName() + "#" + str;
                a(listenerActionType.name(), f36800a, str, -1, null);
                c();
                com.networkbench.agent.impl.asyncaction.a aVar = l;
                if (aVar == null) {
                    d.e("traceMetrics instanceof TraceMetrics is false, skip");
                } else {
                    f36807j = new g(aVar, f36800a, f36801b, bVarQ);
                }
            }
        }
    }

    public static void a(Object obj, Object obj2) {
    }

    public static void a(String str, String str2, String str3, int i2, a aVar) {
        if (com.networkbench.agent.impl.util.r.u().ai()) {
            com.networkbench.agent.impl.data.d.b.a().a(new com.networkbench.agent.impl.data.d.d(str, str2, str3, i2));
            com.networkbench.agent.impl.c.g.A("NBSEventActionManager createNewFeaturesData featuresData :" + com.networkbench.agent.impl.data.d.b.a().b().toJsonString());
        }
    }

    public static void a(SlowStartState.ListenerActionType listenerActionType, View view, boolean z) {
        a(listenerActionType, view, z, -1);
    }

    public static void a(String str, String str2) {
        if (TextUtils.isEmpty(f36800a)) {
            return;
        }
        m.put(str, str2);
    }
}
