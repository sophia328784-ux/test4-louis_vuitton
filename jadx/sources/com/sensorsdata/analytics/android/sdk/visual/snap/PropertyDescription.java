package com.sensorsdata.analytics.android.sdk.visual.snap;

import defpackage.n00;

/* JADX INFO: loaded from: classes3.dex */
public class PropertyDescription {
    public final Caller accessor;
    private final String mMutatorName;
    public final String name;
    public final Class<?> targetClass;

    public PropertyDescription(String str, Class<?> cls, Caller caller, String str2) {
        this.name = str;
        this.targetClass = cls;
        this.accessor = caller;
        this.mMutatorName = str2;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("[PropertyDescription ");
        sb.append(this.name);
        sb.append(",");
        sb.append(this.targetClass);
        sb.append(", ");
        sb.append(this.accessor);
        sb.append("/");
        return n00.r(this.mMutatorName, "]", sb);
    }
}
