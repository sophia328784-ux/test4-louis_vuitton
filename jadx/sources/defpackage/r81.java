package defpackage;

import android.net.Uri;
import com.appsflyer.internal.AFe1mSDK;
import com.appsflyer.internal.AFf1zSDK;
import com.batch.android.h.a;
import com.batch.android.h.b;
import com.batch.android.j1.g;
import com.batch.android.j1.h;
import com.batch.android.v0.j;
import com.google.android.gms.internal.measurement.zzaeg;
import com.google.ar.core.exceptions.FatalException;
import com.perfectcorp.perfectlib.makeupcam.camera.YMKPrimitiveData;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.Sku;
import com.perfectcorp.perfectlib.ph.template.TemplateUtils;
import com.perfectcorp.perfectlib.ph.template.m;
import com.perfectcorp.perfectlib.ph.template.u;
import com.perfectcorp.thirdparty.io.reactivex.functions.BiConsumer;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.perfectcorp.thirdparty.io.reactivex.functions.Predicate;
import com.perfectcorp.thirdparty.io.reactivex.observables.GroupedObservable;
import java.io.IOException;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class r81 implements a.InterfaceC0055a, Function, AFe1mSDK, Predicate, h, BiConsumer {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79285b;

    public /* synthetic */ r81(int i2) {
        this.f79285b = i2;
    }

    public static /* synthetic */ void b() {
        throw new IllegalStateException();
    }

    public static /* synthetic */ void c(int i2, String str) {
        throw new IllegalStateException(str + i2);
    }

    public static /* synthetic */ void d(String str) {
        throw new NullPointerException(str);
    }

    public static /* synthetic */ void e(String str, Object obj, Object obj2) throws IOException {
        throw new IOException(str + obj + obj2);
    }

    public static /* synthetic */ void f(String str, Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        throw new IllegalArgumentException(str + obj + obj2 + obj3 + obj4 + obj5);
    }

    public static /* synthetic */ void g(String str, Throwable th) {
        throw new RuntimeException(str, th);
    }

    public static /* synthetic */ void h() {
        throw new ClassCastException();
    }

    public static /* synthetic */ void i(String str) {
        throw new FatalException(str);
    }

    public static /* synthetic */ void j(String str, Throwable th) {
        throw new IllegalArgumentException(str, th);
    }

    public static /* synthetic */ void k() throws zzaeg {
        throw new zzaeg("Protocol message tag had invalid wire type.");
    }

    @Override // com.batch.android.j1.h
    public void a(g gVar) {
        j.b(gVar);
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.BiConsumer
    public void accept(Object obj, Object obj2) {
        ((ConcurrentHashMap) obj).putAll((Map) obj2);
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public Object apply(Object obj) {
        switch (this.f79285b) {
            case 11:
                return ((m) obj).f41671a;
            case 12:
                return ((u) obj).f41715a;
            case 13:
                return ((Sku) obj).f41266f;
            case 14:
            case 15:
            case 16:
            default:
                return ((GroupedObservable) obj).toList();
            case 17:
                return ((YMKPrimitiveData.Effect) obj).f40758b;
        }
    }

    @Override // com.appsflyer.internal.AFe1mSDK
    public Map fetch(Uri uri) {
        return AFf1zSDK.w_(uri);
    }

    @Override // com.batch.android.h.a.InterfaceC0055a
    public String get() {
        switch (this.f79285b) {
            case 0:
                return b.j();
            case 1:
                return b.d();
            case 2:
                return b.e();
            case 3:
                return b.c();
            case 4:
                return b.g();
            case 5:
                return b.b();
            case 6:
                return b.f();
            case 7:
                return b.i();
            case 8:
                return b.h();
            case 9:
                return b.k();
            default:
                return b.l();
        }
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Predicate
    public boolean test(Object obj) {
        AtomicInteger atomicInteger = com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.j.f41498a;
        return ((TemplateUtils.a) obj).f41590b == TemplateUtils.a.EnumC0180a.f41592a;
    }
}
