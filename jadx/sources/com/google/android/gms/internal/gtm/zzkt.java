package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.internal.Preconditions;
import defpackage.d21;
import java.util.List;
import org.teleal.cling.support.contentdirectory.callback.Browse;

/* JADX INFO: loaded from: classes2.dex */
public final class zzkt extends zzkk {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f30183b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f30184c;

    public zzkt(String str, List list) {
        Preconditions.i(str, "Instruction name must be a string.");
        Preconditions.h(list);
        this.f30183b = str;
        this.f30184c = list;
    }

    @Override // com.google.android.gms.internal.gtm.zzkk
    /* JADX INFO: renamed from: toString, reason: merged with bridge method [inline-methods] */
    public final String c() {
        return d21.p(new StringBuilder(Browse.CAPS_WILDCARD), this.f30183b, ": ", this.f30184c.toString());
    }
}
