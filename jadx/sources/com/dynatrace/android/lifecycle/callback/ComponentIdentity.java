package com.dynatrace.android.lifecycle.callback;

import defpackage.tr;

/* JADX INFO: loaded from: classes2.dex */
public class ComponentIdentity {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f27691a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f27692b;

    public ComponentIdentity(String str, int i2) {
        this.f27691a = str;
        this.f27692b = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            ComponentIdentity componentIdentity = (ComponentIdentity) obj;
            if (this.f27692b != componentIdentity.f27692b) {
                return false;
            }
            String str = componentIdentity.f27691a;
            String str2 = this.f27691a;
            if (str2 != null) {
                return str2.equals(str);
            }
            if (str == null) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.f27691a;
        return ((str != null ? str.hashCode() : 0) * 31) + this.f27692b;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ComponentIdentity{componentName='");
        sb.append(this.f27691a);
        sb.append("', uniqueId=");
        return tr.k(sb, this.f27692b, '}');
    }
}
