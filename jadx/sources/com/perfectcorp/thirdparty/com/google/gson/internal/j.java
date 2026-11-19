package com.perfectcorp.thirdparty.com.google.gson.internal;

import defpackage.md;
import defpackage.r81;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes3.dex */
final class j implements x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public /* synthetic */ Constructor f42532a;

    @Override // com.perfectcorp.thirdparty.com.google.gson.internal.x
    public final Object a() {
        Constructor constructor = this.f42532a;
        try {
            return constructor.newInstance(null);
        } catch (IllegalAccessException e2) {
            md.h(e2);
            return null;
        } catch (InstantiationException e3) {
            throw new RuntimeException("Failed to invoke " + constructor + " with no args", e3);
        } catch (InvocationTargetException e4) {
            r81.g("Failed to invoke " + constructor + " with no args", e4.getTargetException());
            return null;
        }
    }
}
