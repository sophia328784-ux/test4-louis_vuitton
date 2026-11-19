package com.networkbench.agent.impl.plugin.a;

import android.content.Context;
import android.os.Build;
import android.telephony.CellInfo;
import android.telephony.CellInfoCdma;
import android.telephony.CellInfoGsm;
import android.telephony.CellInfoLte;
import android.telephony.CellInfoWcdma;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.networkbench.agent.impl.c.e;
import com.networkbench.agent.impl.c.f;
import com.networkbench.agent.impl.util.NBSAndroidAgentImpl;
import com.networkbench.agent.impl.util.r;
import com.networkbench.agent.impl.util.v;
import defpackage.d21;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes2.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final e f37931a = f.a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f37932b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TelephonyManager f37933c;
    private Context d;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static c f37935a = new c(r.u().J());

        private a() {
        }
    }

    private c(Context context) {
        this.f37933c = (TelephonyManager) context.getSystemService("phone");
        this.d = context;
    }

    private List<CellInfo> c() {
        return this.f37933c.getAllCellInfo();
    }

    public List<com.networkbench.agent.impl.plugin.a.a> a(JSONArray jSONArray, int i2) {
        ArrayList arrayList = new ArrayList();
        if (!b()) {
            return arrayList;
        }
        List<CellInfo> listC = c();
        f37931a.a("cellInfoTypeName:" + jSONArray + ", numLImit:" + i2);
        Iterator<CellInfo> it = listC.iterator();
        int i3 = 0;
        while (it.hasNext()) {
            CellInfo next = it.next();
            if (a(next, jSONArray)) {
                if (next.isRegistered()) {
                    i3++;
                }
                if (i2 + i3 > arrayList.size() || next.isRegistered()) {
                    arrayList.add(a(next));
                }
            } else {
                f37931a.f("cellinfo classname:".concat(next != null ? next.getClass().getSimpleName() : "null"));
            }
        }
        a(arrayList);
        return arrayList;
    }

    public com.networkbench.agent.impl.plugin.a.a b(List<String> list) {
        try {
            if (b()) {
                f37931a.a("getRegisterCellInfo isEnvironmentGood is true");
                List<CellInfo> listC = c();
                if (listC == null) {
                    return null;
                }
                for (String str : list) {
                    for (CellInfo cellInfo : listC) {
                        if (a(cellInfo, str)) {
                            return a(cellInfo);
                        }
                    }
                }
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    private boolean b() {
        return f37932b && a(17) && NBSAndroidAgentImpl.a(this.d, "android.permission.ACCESS_COARSE_LOCATION").booleanValue();
    }

    private int b(int i2) {
        if (Integer.MAX_VALUE == i2) {
            return 0;
        }
        return i2;
    }

    private boolean b(CellInfo cellInfo, String str) {
        return cellInfo != null && cellInfo.getClass().getSimpleName().equals(str);
    }

    public static c a() {
        return a.f37935a;
    }

    public static void a(boolean z) {
        f37932b = z;
    }

    private boolean a(int i2) {
        return Build.VERSION.SDK_INT >= i2;
    }

    private void a(com.networkbench.agent.impl.plugin.a.a aVar, CellInfoCdma cellInfoCdma) {
    }

    public void a(List<com.networkbench.agent.impl.plugin.a.a> list) {
        if (list.size() <= 0) {
            return;
        }
        Collections.sort(list, new Comparator<com.networkbench.agent.impl.plugin.a.a>() { // from class: com.networkbench.agent.impl.plugin.a.c.1
            @Override // java.util.Comparator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public int compare(com.networkbench.agent.impl.plugin.a.a aVar, com.networkbench.agent.impl.plugin.a.a aVar2) {
                int i2 = aVar.f37925i;
                int i3 = aVar2.f37925i;
                if (i2 == i3) {
                    return 0;
                }
                return (i2 == 0 || i3 == 0 || i2 > i3) ? -1 : 1;
            }
        });
    }

    private com.networkbench.agent.impl.plugin.a.a a(CellInfo cellInfo) {
        com.networkbench.agent.impl.plugin.a.a aVar = new com.networkbench.agent.impl.plugin.a.a();
        aVar.f37919a = cellInfo.isRegistered();
        aVar.f37921c = this.f37933c.getNetworkOperator();
        aVar.f37920b = v.c(this.d);
        if (cellInfo instanceof CellInfoLte) {
            a(aVar, (CellInfoLte) cellInfo);
        }
        if (cellInfo instanceof CellInfoGsm) {
            a(aVar, (CellInfoGsm) cellInfo);
        }
        if (cellInfo instanceof CellInfoCdma) {
            a(aVar, (CellInfoCdma) cellInfo);
        }
        if (a(18) && (cellInfo instanceof CellInfoWcdma)) {
            a(aVar, (CellInfoWcdma) cellInfo);
        }
        a(aVar);
        return aVar;
    }

    private void a(com.networkbench.agent.impl.plugin.a.a aVar) {
        if (!aVar.f37919a) {
            aVar.f37921c = "";
        }
        aVar.d = b(aVar.d);
        aVar.f37922e = b(aVar.f37922e);
        aVar.f37923f = b(aVar.f37923f);
        aVar.g = b(aVar.g);
        aVar.f37924h = b(aVar.f37924h);
        aVar.f37925i = b(aVar.f37925i);
        aVar.f37926j = b(aVar.f37926j);
    }

    private boolean a(CellInfo cellInfo, String str) {
        if (!TextUtils.isEmpty(str) && cellInfo.isRegistered()) {
            return b(cellInfo, str);
        }
        return false;
    }

    private boolean a(CellInfo cellInfo, JSONArray jSONArray) {
        if (jSONArray.length() > 0 && cellInfo != null) {
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                if (cellInfo.getClass().getSimpleName().equals(String.valueOf(jSONArray.opt(i2)))) {
                    return true;
                }
            }
        }
        return false;
    }

    public void a(com.networkbench.agent.impl.plugin.a.a aVar, CellInfoLte cellInfoLte) {
        aVar.d = cellInfoLte.getCellIdentity().getMcc();
        aVar.f37922e = cellInfoLte.getCellIdentity().getMnc();
        aVar.f37923f = cellInfoLte.getCellIdentity().getCi();
        aVar.g = cellInfoLte.getCellIdentity().getPci();
        aVar.f37924h = cellInfoLte.getCellIdentity().getEarfcn();
        Map<String, Integer> mapA = a(cellInfoLte.getCellSignalStrength().toString());
        aVar.f37925i = a(mapA, "rsrp");
        aVar.f37926j = a(mapA, "rsrq");
    }

    private void a(com.networkbench.agent.impl.plugin.a.a aVar, CellInfoGsm cellInfoGsm) {
        aVar.d = cellInfoGsm.getCellIdentity().getMcc();
        aVar.f37922e = cellInfoGsm.getCellIdentity().getMnc();
        aVar.f37923f = cellInfoGsm.getCellIdentity().getCid();
    }

    private void a(com.networkbench.agent.impl.plugin.a.a aVar, CellInfoWcdma cellInfoWcdma) {
        aVar.d = cellInfoWcdma.getCellIdentity().getMcc();
        aVar.f37922e = cellInfoWcdma.getCellIdentity().getMnc();
        aVar.f37923f = cellInfoWcdma.getCellIdentity().getCid();
    }

    private int a(Map<String, Integer> map, String str) {
        if (map.containsKey(str)) {
            return map.get(str).intValue();
        }
        return 0;
    }

    private Map<String, Integer> a(String str) {
        HashMap map = new HashMap();
        try {
            for (String str2 : str.split(" ")) {
                if (str2.contains("=")) {
                    String[] strArrSplit = str2.split("=");
                    if (strArrSplit.length != 2) {
                        f37931a.e("error keyvalue info:" + str2);
                    } else {
                        map.put(strArrSplit[0], Integer.valueOf(strArrSplit[1]));
                    }
                }
            }
            return map;
        } catch (Throwable th) {
            d21.C(th, new StringBuilder("parseString error:"), f37931a);
            return map;
        }
    }
}
