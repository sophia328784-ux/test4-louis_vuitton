package com.android.wiimu.model.cling_callback.playqueue.browsequeue;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f22383a = "";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f22384b = "";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public List<f> f22385c = new ArrayList();

    public List<f> a(String str) {
        ArrayList arrayList = new ArrayList();
        for (f fVar : this.f22385c) {
            String str2 = fVar.Source;
            if (str2 != null && str2.equals(str)) {
                arrayList.add(fVar);
            }
        }
        return arrayList;
    }

    public f a() {
        for (f fVar : this.f22385c) {
            String str = fVar.Name;
            if (str != null && str.equals("Pandora")) {
                return fVar;
            }
        }
        return null;
    }
}
