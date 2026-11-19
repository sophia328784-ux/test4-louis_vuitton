package com.google.android.gms.internal.gtm;

import defpackage.d21;
import defpackage.fc;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class zzka {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f30151a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f30152b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f30153c;
    public final List d;

    public /* synthetic */ zzka(List list, List list2, List list3, List list4) {
        this.f30151a = Collections.unmodifiableList(list);
        this.f30152b = Collections.unmodifiableList(list2);
        this.f30153c = Collections.unmodifiableList(list3);
        this.d = Collections.unmodifiableList(list4);
    }

    public final String toString() {
        String strValueOf = String.valueOf(this.f30151a);
        String strValueOf2 = String.valueOf(this.f30152b);
        return d21.p(fc.s("Positive predicates: ", strValueOf, "  Negative predicates: ", strValueOf2, "  Add tags: "), String.valueOf(this.f30153c), "  Remove tags: ", String.valueOf(this.d));
    }
}
