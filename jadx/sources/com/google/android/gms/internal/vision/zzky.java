package com.google.android.gms.internal.vision;

import defpackage.md;
import defpackage.r81;
import java.nio.charset.Charset;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
final class zzky {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final zzky f31256c = new zzky();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConcurrentHashMap f31258b = new ConcurrentHashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzkb f31257a = new zzkb();

    public final zzlc a(Class cls) {
        zzlc zzlcVarL;
        Class cls2;
        Charset charset = zzjf.f31225a;
        if (cls == null) {
            r81.d("messageType");
            return null;
        }
        ConcurrentHashMap concurrentHashMap = this.f31258b;
        zzlc zzlcVar = (zzlc) concurrentHashMap.get(cls);
        if (zzlcVar != null) {
            return zzlcVar;
        }
        zzkb zzkbVar = this.f31257a;
        zzkbVar.getClass();
        Class cls3 = zzle.f31264a;
        if (!zzjb.class.isAssignableFrom(cls) && (cls2 = zzle.f31264a) != null && !cls2.isAssignableFrom(cls)) {
            md.n("Message classes must extend GeneratedMessage or GeneratedMessageLite");
            return null;
        }
        zzki zzkiVarA = zzkbVar.f31236a.a(cls);
        if (zzkiVarA.e0()) {
            if (zzjb.class.isAssignableFrom(cls)) {
                zzlcVarL = new zzkq(zzle.d, zzir.f31208a, zzkiVarA.f0());
            } else {
                zzlu zzluVar = zzle.f31265b;
                zziq zziqVar = zzir.f31209b;
                if (zziqVar == null) {
                    md.k("Protobuf runtime is not correctly loaded.");
                    return null;
                }
                zzlcVarL = new zzkq(zzluVar, zziqVar, zzkiVarA.f0());
            }
        } else if (zzjb.class.isAssignableFrom(cls)) {
            zzlcVarL = zzkiVarA.d0() == 1 ? zzko.l(zzkiVarA, zzku.f31255b, zzju.f31231b, zzle.d, zzir.f31208a, zzkj.f31241b) : zzko.l(zzkiVarA, zzku.f31255b, zzju.f31231b, zzle.d, null, zzkj.f31241b);
        } else if (zzkiVarA.d0() == 1) {
            zzks zzksVar = zzku.f31254a;
            zzjw zzjwVar = zzju.f31230a;
            zzlu zzluVar2 = zzle.f31265b;
            zziq zziqVar2 = zzir.f31209b;
            if (zziqVar2 == null) {
                md.k("Protobuf runtime is not correctly loaded.");
                return null;
            }
            zzlcVarL = zzko.l(zzkiVarA, zzksVar, zzjwVar, zzluVar2, zziqVar2, zzkj.f31240a);
        } else {
            zzlcVarL = zzko.l(zzkiVarA, zzku.f31254a, zzju.f31230a, zzle.f31266c, null, zzkj.f31240a);
        }
        zzlc zzlcVar2 = (zzlc) concurrentHashMap.putIfAbsent(cls, zzlcVarL);
        return zzlcVar2 != null ? zzlcVar2 : zzlcVarL;
    }
}
