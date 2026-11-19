package com.networkbench.agent.impl.floatbtnmanager;

import android.app.Activity;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class i {
    public static List<FloatingViewItem> a(Activity activity, k kVar) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new ActionFloatingViewItem(activity, kVar));
        arrayList.add(new OverviewFloatBtn(activity, kVar));
        arrayList.add(new ActionFloagintBtn(activity, kVar));
        arrayList.add(new PageFloatingBtn(activity, kVar));
        arrayList.add(new ExistFloatingBtn(activity, kVar));
        return arrayList;
    }
}
