package com.batch.android.u0;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class a extends b<a> {
    private float g;

    public a(a aVar) {
        super(aVar.f24071a);
        this.f24072b = aVar.f24072b;
        this.g = aVar.g;
        this.f24073c = new ArrayList(aVar.f24073c);
        this.f24075f = new ConcurrentHashMap(aVar.f24075f);
        this.d = aVar.d;
        this.f24074e = aVar.f24074e;
    }

    @Override // com.batch.android.u0.b
    public /* bridge */ /* synthetic */ a a(List list) {
        return b((List<String>) list);
    }

    public a b(List<String> list) {
        a aVarA = new a(this.f24071a).a((String[]) this.d.toArray(new String[0]));
        aVarA.f24074e = list;
        return aVarA;
    }

    @Override // com.batch.android.u0.b
    public void j() {
        this.g = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.f24073c.clear();
        this.f24075f.clear();
    }

    public void l() {
        this.g += 1.0f;
        this.f24073c.clear();
        this.f24073c.add(Float.valueOf(this.g));
        k();
    }

    public a(String str) {
        super(str);
        this.f24072b = b.a.f24076a;
        this.f24073c = new ArrayList();
    }
}
