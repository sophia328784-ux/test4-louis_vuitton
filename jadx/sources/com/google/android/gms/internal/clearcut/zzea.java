package com.google.android.gms.internal.clearcut;

import defpackage.r81;
import java.nio.charset.Charset;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
final class zzea {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final zzea f29704c = new zzea();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzeg f29705a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConcurrentHashMap f29706b = new ConcurrentHashMap();

    public zzea() {
        String[] strArr = {"com.google.protobuf.AndroidProto3SchemaFactory"};
        zzeg zzegVar = null;
        for (int i2 = 0; i2 <= 0; i2++) {
            try {
                zzegVar = (zzeg) Class.forName(strArr[0]).getConstructor(null).newInstance(null);
            } catch (Throwable unused) {
                zzegVar = null;
            }
            if (zzegVar != null) {
                break;
            }
        }
        this.f29705a = zzegVar == null ? new zzdd() : zzegVar;
    }

    public final zzef a(Class cls) {
        Charset charset = zzci.f29677a;
        if (cls == null) {
            r81.d("messageType");
            return null;
        }
        ConcurrentHashMap concurrentHashMap = this.f29706b;
        zzef zzefVar = (zzef) concurrentHashMap.get(cls);
        if (zzefVar != null) {
            return zzefVar;
        }
        zzef zzefVarA = this.f29705a.a(cls);
        zzef zzefVar2 = (zzef) concurrentHashMap.putIfAbsent(cls, zzefVarA);
        return zzefVar2 != null ? zzefVar2 : zzefVarA;
    }
}
