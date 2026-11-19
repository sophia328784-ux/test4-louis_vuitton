package org.teleal.cling.model.types;

import defpackage.n00;

/* JADX INFO: loaded from: classes5.dex */
public class CustomDatatype extends AbstractDatatype<String> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f78501b;

    public CustomDatatype(String str) {
        this.f78501b = str;
    }

    @Override // org.teleal.cling.model.types.AbstractDatatype, org.teleal.cling.model.types.Datatype
    public final Object e(String str) {
        if (str.equals("")) {
            return null;
        }
        return str;
    }

    @Override // org.teleal.cling.model.types.AbstractDatatype
    public final String toString() {
        StringBuilder sb = new StringBuilder("(");
        sb.append(getClass().getSimpleName());
        sb.append(") '");
        return n00.r(this.f78501b, "'", sb);
    }
}
