package com.batch.android.h;

import android.content.Context;
import com.batch.android.e.o0;
import com.batch.android.n.f0;
import com.batch.android.n.g;
import defpackage.a61;
import defpackage.l71;
import defpackage.r81;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.inject.Singleton;

/* JADX INFO: loaded from: classes2.dex */
@Singleton
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<a> f23439a;

    private c(Context context) {
        ArrayList arrayList = new ArrayList(22);
        this.f23439a = arrayList;
        a aVar = new a(d.INSTALL_ID, new a61(27));
        a aVar2 = new a(d.SESSION_ID, new a61(29));
        int i2 = 1;
        a aVar3 = new a(d.CUSTOM_USER_ID, new l71(context, i2));
        a aVar4 = new a(d.DEVICE_CURRENT_DATE, new r81(i2));
        int i3 = 2;
        e eVar = new e(context, d.DEVICE_INSTALL_DATE, new l71(context, i3));
        int i4 = 3;
        e eVar2 = new e(context, d.APP_BUNDLE_ID, new l71(context, i4));
        e eVar3 = new e(context, d.DEVICE_LANGUAGE, new r81(i3));
        e eVar4 = new e(context, d.DEVICE_REGION, new r81(i4));
        e eVar5 = new e(context, d.DEVICE_TIMEZONE, new r81(4));
        d dVar = d.DEVICE_MODEL;
        r81 r81Var = new r81(6);
        Boolean bool = Boolean.TRUE;
        e eVar6 = new e(context, dVar, r81Var, bool.equals(g.a().i().isDeviceModelEnabled()));
        e eVar7 = new e(context, d.DEVICE_BRAND, new r81(5), bool.equals(g.a().i().isDeviceBrandEnabled()));
        e eVar8 = new e(context, d.APPLICATION_VERSION, new l71(context, 4));
        e eVar9 = new e(context, d.APPLICATION_CODE, new l71(context, 5));
        e eVar10 = new e(context, d.OS_VERSION, new r81(7));
        e eVar11 = new e(context, d.OS_SDK_LEVEL, new r81(8));
        e eVar12 = new e(context, d.SDK_API_LEVEL, new r81(9));
        e eVar13 = new e(context, d.SDK_MESSAGING_API_LEVEL, new r81(10));
        e eVar14 = new e(context, d.FIRST_INSTALL_DATE, new l71(context, 6));
        e eVar15 = new e(context, d.LAST_UPDATE_DATE, new l71(context, 7));
        e eVar16 = new e(context, d.BRIDGE_VERSION, new a61(28));
        e eVar17 = new e(context, d.PLUGIN_VERSION, new r81(0));
        arrayList.add(aVar);
        arrayList.add(eVar);
        arrayList.add(eVar2);
        arrayList.add(aVar2);
        arrayList.add(aVar3);
        arrayList.add(eVar3);
        arrayList.add(eVar4);
        arrayList.add(eVar5);
        arrayList.add(eVar6);
        arrayList.add(aVar4);
        arrayList.add(eVar7);
        arrayList.add(eVar8);
        arrayList.add(eVar9);
        arrayList.add(eVar10);
        arrayList.add(eVar11);
        arrayList.add(eVar12);
        arrayList.add(eVar13);
        arrayList.add(eVar14);
        arrayList.add(eVar15);
        arrayList.add(eVar16);
        arrayList.add(eVar17);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String e(Context context) {
        return String.valueOf(b.b(context));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String f(Context context) {
        Long lE = b.e(context);
        if (lE != null) {
            return o0.a(new Date(lE.longValue()));
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String g(Context context) {
        Long lF = b.f(context);
        if (lF != null) {
            return o0.a(new Date(lF.longValue()));
        }
        return null;
    }

    public static c h(Context context) {
        return new c(context);
    }

    public a a(String str) {
        for (a aVar : this.f23439a) {
            if (aVar.a().f23446b.equals(str)) {
                return aVar;
            }
        }
        return null;
    }

    public List<e> b() {
        ArrayList arrayList = new ArrayList(17);
        for (a aVar : this.f23439a) {
            if (aVar instanceof e) {
                arrayList.add((e) aVar);
            }
        }
        return arrayList;
    }

    public List<a> a() {
        return this.f23439a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String a(Context context) {
        return f0.a().b(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String b(Context context) {
        Long lD = b.d(context);
        if (lD != null) {
            return o0.a(new Date(lD.longValue()));
        }
        return null;
    }
}
