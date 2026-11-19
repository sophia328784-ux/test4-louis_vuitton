package org.aspectj.runtime.reflect;

import org.aspectj.lang.reflect.SourceLocation;

/* JADX INFO: loaded from: classes3.dex */
class SourceLocationImpl implements SourceLocation {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f77577a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f77578b;

    public final String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.f77577a);
        stringBuffer.append(":");
        stringBuffer.append(this.f77578b);
        return stringBuffer.toString();
    }
}
