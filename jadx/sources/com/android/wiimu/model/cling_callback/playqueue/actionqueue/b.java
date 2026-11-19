package com.android.wiimu.model.cling_callback.playqueue.actionqueue;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f22338a = "";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f22339b = "";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public List<com.android.wiimu.model.cling_callback.playqueue.browsequeue.f> f22340c = new ArrayList();

    public List<com.android.wiimu.model.cling_callback.playqueue.browsequeue.f> a(String str) {
        ArrayList arrayList = new ArrayList();
        for (com.android.wiimu.model.cling_callback.playqueue.browsequeue.f fVar : this.f22340c) {
            String str2 = fVar.Source;
            if (str2 != null && str2.equals(str)) {
                arrayList.add(fVar);
            }
        }
        return arrayList;
    }
}
