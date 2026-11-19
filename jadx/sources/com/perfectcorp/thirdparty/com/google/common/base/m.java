package com.perfectcorp.thirdparty.com.google.common.base;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final d f42100a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final n f42101b;

    public static abstract class a extends com.perfectcorp.thirdparty.com.google.common.base.b<String> {
        public final CharSequence d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final d f42102e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f42103f;
        public int g;

        public a(m mVar, CharSequence charSequence) {
            this.f42085b = com.perfectcorp.thirdparty.com.google.common.base.b.a.f42088b;
            this.f42103f = 0;
            this.f42102e = mVar.f42100a;
            this.g = Integer.MAX_VALUE;
            this.d = charSequence;
        }
    }

    public interface b {
    }

    public m(n nVar, d dVar) {
        this.f42101b = nVar;
        this.f42100a = dVar;
    }

    public static m a(d dVar) {
        return new m(new n(dVar), d.C0205d.f42093c);
    }

    public final List b(String str) {
        str.getClass();
        o oVar = new o(this.f42101b, this, str);
        ArrayList arrayList = new ArrayList();
        while (oVar.hasNext()) {
            arrayList.add((String) oVar.next());
        }
        return Collections.unmodifiableList(arrayList);
    }
}
