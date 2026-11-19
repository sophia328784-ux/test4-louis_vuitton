package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.net.Uri;
import androidx.collection.SimpleArrayMap;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.common.base.Optional;
import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;
import com.google.common.collect.ImmutableMap;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.MoreExecutors;
import defpackage.md;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;
import java.util.logging.Level;

/* JADX INFO: loaded from: classes2.dex */
abstract class zznp implements zzom {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f30765b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final zzph f30766c;

    public zznp(String str, zzph zzphVar) {
        this.f30765b = str;
        this.f30766c = zzphVar;
    }

    public abstract Object a();

    public abstract Object b(String str);

    public abstract Object c(Object obj);

    /* JADX WARN: Code duplicated, block: B:113:0x0191 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:67:0x0138  */
    /* JADX WARN: Code duplicated, block: B:73:0x0149 A[Catch: all -> 0x00ed, TryCatch #7 {all -> 0x00ed, blocks: (B:49:0x00d8, B:51:0x00dc, B:55:0x00f1, B:57:0x00fb, B:59:0x010d, B:61:0x011b, B:69:0x013c, B:73:0x0149, B:74:0x014f, B:76:0x015f, B:78:0x0167, B:79:0x0180, B:82:0x0191, B:85:0x019b, B:90:0x01a5, B:92:0x01ab, B:93:0x01b0, B:84:0x0196, B:71:0x0141, B:65:0x0130, B:62:0x0128, B:95:0x01b2), top: B:124:0x00d8, inners: #1, #2 }] */
    /* JADX WARN: Code duplicated, block: B:76:0x015f A[Catch: all -> 0x00ed, TryCatch #7 {all -> 0x00ed, blocks: (B:49:0x00d8, B:51:0x00dc, B:55:0x00f1, B:57:0x00fb, B:59:0x010d, B:61:0x011b, B:69:0x013c, B:73:0x0149, B:74:0x014f, B:76:0x015f, B:78:0x0167, B:79:0x0180, B:82:0x0191, B:85:0x019b, B:90:0x01a5, B:92:0x01ab, B:93:0x01b0, B:84:0x0196, B:71:0x0141, B:65:0x0130, B:62:0x0128, B:95:0x01b2), top: B:124:0x00d8, inners: #1, #2 }] */
    /* JADX WARN: Code duplicated, block: B:87:0x01a1  */
    /* JADX WARN: Code duplicated, block: B:88:0x01a2  */
    /* JADX WARN: Code duplicated, block: B:90:0x01a5 A[Catch: all -> 0x00ed, TryCatch #7 {all -> 0x00ed, blocks: (B:49:0x00d8, B:51:0x00dc, B:55:0x00f1, B:57:0x00fb, B:59:0x010d, B:61:0x011b, B:69:0x013c, B:73:0x0149, B:74:0x014f, B:76:0x015f, B:78:0x0167, B:79:0x0180, B:82:0x0191, B:85:0x019b, B:90:0x01a5, B:92:0x01ab, B:93:0x01b0, B:84:0x0196, B:71:0x0141, B:65:0x0130, B:62:0x0128, B:95:0x01b2), top: B:124:0x00d8, inners: #1, #2 }] */
    /* JADX WARN: Code duplicated, block: B:92:0x01ab A[Catch: all -> 0x00ed, TryCatch #7 {all -> 0x00ed, blocks: (B:49:0x00d8, B:51:0x00dc, B:55:0x00f1, B:57:0x00fb, B:59:0x010d, B:61:0x011b, B:69:0x013c, B:73:0x0149, B:74:0x014f, B:76:0x015f, B:78:0x0167, B:79:0x0180, B:82:0x0191, B:85:0x019b, B:90:0x01a5, B:92:0x01ab, B:93:0x01b0, B:84:0x0196, B:71:0x0141, B:65:0x0130, B:62:0x0128, B:95:0x01b2), top: B:124:0x00d8, inners: #1, #2 }] */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.base.Supplier
    public final Object get() {
        zzpg zzpgVarA;
        Object objA;
        final String str;
        Object obj;
        SimpleArrayMap simpleArrayMap;
        boolean z;
        zzlk zzlkVar;
        if (zzls.f30734c == null) {
            Object obj2 = zzlk.f30717j;
            zzls.f30734c = new zzlr();
        }
        Context context = (Context) zzlk.f30718k.get();
        Object objC = null;
        if (context == null) {
            synchronized (zzls.f30732a) {
            }
            md.k("Must call PhenotypeContext.setContext() first");
            return null;
        }
        final zzlk zzlkVar2 = zzlk.l;
        if (zzlkVar2 == null) {
            final Context applicationContext = context.getApplicationContext();
            try {
                applicationContext.getClass();
                Object applicationContext2 = applicationContext.getApplicationContext();
                applicationContext2.getClass();
                if (!(applicationContext2 instanceof zzagp)) {
                    Class<?> cls = applicationContext2.getClass();
                    new StringBuilder(String.valueOf(cls).length() + 72);
                    cls.toString();
                    throw new IllegalStateException("Given application context does not implement GeneratedComponentManager: ".concat(String.valueOf(cls)));
                }
                try {
                    Object objCast = zzlk.zza.class.cast(((zzagp) applicationContext2).d0());
                    objCast.getClass();
                    Optional optionalD0 = ((zzlk.zza) objCast).d0();
                    try {
                        if (optionalD0.c()) {
                            zzlkVar2 = (zzlk) optionalD0.b();
                        } else {
                            z = true;
                        }
                    } catch (IllegalStateException unused) {
                    }
                } catch (ClassCastException e2) {
                    throw new IllegalStateException("Failed to get an entry point. Did you mark your interface with @SingletonEntryPoint?", e2);
                }
            } catch (IllegalStateException unused2) {
                z = false;
            }
            synchronized (zzlk.f30717j) {
                try {
                    if (zzlk.l != null) {
                        zzlkVar = zzlk.l;
                    } else {
                        Optional optionalA = Optional.a();
                        boolean z2 = applicationContext instanceof zzlk.zza;
                        if (z2) {
                            optionalA = ((zzlk.zza) applicationContext).d0();
                        }
                        zzlkVar = (zzlk) optionalA.e(new Supplier() { // from class: com.google.android.gms.internal.measurement.zzll
                            @Override // com.google.common.base.Supplier
                            public final Object get() {
                                Object obj3 = zzlk.f30717j;
                                final zzlj zzljVar = new zzlj();
                                Context context2 = applicationContext;
                                zzljVar.f30712a = context2;
                                context2.getClass();
                                if (zzljVar.f30713b == null) {
                                    zzljVar.f30713b = zzlk.m;
                                }
                                if (zzljVar.f30714c == null) {
                                    final Context context3 = zzljVar.f30712a;
                                    zzljVar.f30714c = Suppliers.a(new Supplier() { // from class: com.google.android.gms.internal.measurement.zzln
                                        @Override // com.google.common.base.Supplier
                                        public final Object get() {
                                            Object obj4 = zzlk.f30717j;
                                            Api api = zzjx.f30677a;
                                            return new zzmn(new zzkk(context3, zzjx.f30677a, Api.ApiOptions.j0, GoogleApi.Settings.f28994c));
                                        }
                                    });
                                }
                                if (zzljVar.d == null) {
                                    zzljVar.d = new Supplier() { // from class: com.google.android.gms.internal.measurement.zzli
                                        @Override // com.google.common.base.Supplier
                                        public final /* synthetic */ Object get() {
                                            return Optional.d(new zzqi(zzljVar.f30713b, 10));
                                        }
                                    };
                                }
                                if (zzljVar.f30715e == null) {
                                    Context context4 = zzljVar.f30712a;
                                    final ArrayList arrayList = new ArrayList();
                                    Collections.addAll(arrayList, new zzrx(new zzrw(context4)), new zzsd());
                                    zzljVar.f30715e = Suppliers.a(new Supplier() { // from class: com.google.android.gms.internal.measurement.zzlm
                                        @Override // com.google.common.base.Supplier
                                        public final /* synthetic */ Object get() {
                                            Object obj4 = zzlk.f30717j;
                                            return new zzru(arrayList);
                                        }
                                    });
                                }
                                if (zzljVar.f30716f == null) {
                                    zzljVar.f30716f = new Supplier() { // from class: com.google.android.gms.internal.measurement.zzlh
                                        @Override // com.google.common.base.Supplier
                                        public final /* synthetic */ Object get() {
                                            Context context5 = zzljVar.f30712a;
                                            Object obj4 = zzlk.f30717j;
                                            try {
                                                return Optional.d(context5.getPackageManager().getApplicationInfo("com.google.android.gms", 0));
                                            } catch (PackageManager.NameNotFoundException unused3) {
                                                return Optional.a();
                                            }
                                        }
                                    };
                                }
                                return new zzlk(zzljVar.f30712a, zzljVar.f30713b, zzljVar.f30714c, zzljVar.d, zzljVar.f30715e, zzljVar.f30716f);
                            }
                        });
                        zzlk.l = zzlkVar;
                        if (!z && !z2) {
                            zzlz.a(Level.CONFIG, zzlkVar.a(), null, "Application doesn't implement PhenotypeApplication interface, falling back to globally set context. See go/phenotype-flag#process-stable-init for more info.", new Object[0]);
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            zzlkVar2 = zzlkVar;
        }
        zzof zzofVar = (zzof) this;
        int i2 = zzofVar.d;
        if (i2 == -1 || i2 < zzofVar.f30774e.f30815a.get()) {
            synchronized (zzofVar) {
                try {
                    int i3 = zzofVar.d;
                    if (i3 == -1) {
                        zzlk.b();
                        zzlkVar2.getClass();
                        zzpgVarA = zzofVar.f30766c.a(zzlkVar2);
                        zzofVar.f30774e = zzpgVarA.g;
                    } else {
                        zzpgVarA = null;
                    }
                    int i4 = zzofVar.f30774e.f30815a.get();
                    if (i3 < i4) {
                        zzlk.b();
                        zzlkVar2.getClass();
                        Optional optionalA2 = zzlf.a(zzlkVar2.f30720b);
                        if (optionalA2.c()) {
                            zzle zzleVar = (zzle) optionalA2.b();
                            Uri uriA = zzlg.a();
                            String str2 = zzofVar.f30765b;
                            if (uriA != null) {
                                simpleArrayMap = (SimpleArrayMap) zzleVar.f30707a.get(uriA.toString());
                            } else {
                                zzleVar.getClass();
                                simpleArrayMap = null;
                            }
                            String str3 = simpleArrayMap == null ? null : (String) simpleArrayMap.get(str2);
                            if (str3 == null) {
                                objA = null;
                                if (zzpgVarA == null) {
                                    zzpgVarA = zzofVar.f30766c.a(zzlkVar2);
                                }
                                str = zzpgVarA.f30802c;
                                if (!zzlkVar2.f30720b.getPackageName().equals("com.android.vending") && !str.startsWith("com.google.android.gms.measurement#")) {
                                    ListenableFuture listenableFutureSubmit = zzlkVar2.a().submit(new Runnable() { // from class: com.google.android.gms.internal.measurement.zzpn
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            Context context2 = zzlkVar2.f30720b;
                                            Map map = zzpp.f30813c;
                                            if (map == null) {
                                                synchronized (zzpp.f30812b) {
                                                    map = zzpp.f30813c;
                                                    if (map == null) {
                                                        ImmutableMap.Builder builder = new ImmutableMap.Builder();
                                                        try {
                                                            String[] list = context2.getAssets().list("phenotype");
                                                            if (list != null) {
                                                                for (String str4 : list) {
                                                                    if (str4.endsWith("_package_metadata.binarypb")) {
                                                                        try {
                                                                            AssetManager assets = context2.getAssets();
                                                                            StringBuilder sb = new StringBuilder(str4.length() + 10);
                                                                            sb.append("phenotype/");
                                                                            sb.append(str4);
                                                                            InputStream inputStreamOpen = assets.open(sb.toString());
                                                                            try {
                                                                                zzadf zzadfVar = zzadf.f30397b;
                                                                                int i5 = zzacf.f30358a;
                                                                                zzpp zzppVar = new zzpp(context2, zzpr.C(inputStreamOpen, zzadf.f30398c));
                                                                                builder.d(zzppVar.f30814a, zzppVar);
                                                                                if (inputStreamOpen != null) {
                                                                                    inputStreamOpen.close();
                                                                                }
                                                                            } catch (Throwable th2) {
                                                                                if (inputStreamOpen != null) {
                                                                                    try {
                                                                                        inputStreamOpen.close();
                                                                                    } catch (Throwable th3) {
                                                                                        th2.addSuppressed(th3);
                                                                                    }
                                                                                }
                                                                                throw th2;
                                                                            }
                                                                        } catch (zzaeh unused3) {
                                                                            new StringBuilder(str4.length() + 45);
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        } catch (IOException unused4) {
                                                        }
                                                        ImmutableMap immutableMapA = builder.a(true);
                                                        zzpp.f30813c = immutableMapA;
                                                        map = immutableMapA;
                                                    }
                                                }
                                            }
                                            String str5 = str;
                                            if (((ImmutableMap) map).containsKey(str5)) {
                                                return;
                                            }
                                            new StringBuilder(String.valueOf(str5).length() + 173);
                                        }
                                    });
                                    listenableFutureSubmit.addListener(new zzpw(listenableFutureSubmit), MoreExecutors.b());
                                }
                                obj = zzpgVarA.a().d.get(zzofVar.f30765b);
                                if (obj != null) {
                                    try {
                                        objC = zzofVar.c(obj);
                                    } catch (IOException | ClassCastException unused3) {
                                        "Invalid Phenotype flag value for flag ".concat(zzofVar.f30765b);
                                    }
                                }
                                if (true != optionalA2.c()) {
                                    objA = objC;
                                }
                                if (objA == null) {
                                    objA = zzofVar.a();
                                }
                                if (objA != null) {
                                    zzofVar.K(objA);
                                    zzofVar.d = i4;
                                }
                            } else {
                                try {
                                    objA = zzofVar.b(str3);
                                } catch (IOException | IllegalArgumentException unused4) {
                                    "Invalid Phenotype flag value for flag ".concat(zzofVar.f30765b);
                                    objA = null;
                                }
                                if (zzpgVarA == null) {
                                    zzpgVarA = zzofVar.f30766c.a(zzlkVar2);
                                }
                                str = zzpgVarA.f30802c;
                                if (!zzlkVar2.f30720b.getPackageName().equals("com.android.vending")) {
                                    ListenableFuture listenableFutureSubmit2 = zzlkVar2.a().submit(new Runnable() { // from class: com.google.android.gms.internal.measurement.zzpn
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            Context context2 = zzlkVar2.f30720b;
                                            Map map = zzpp.f30813c;
                                            if (map == null) {
                                                synchronized (zzpp.f30812b) {
                                                    map = zzpp.f30813c;
                                                    if (map == null) {
                                                        ImmutableMap.Builder builder = new ImmutableMap.Builder();
                                                        try {
                                                            String[] list = context2.getAssets().list("phenotype");
                                                            if (list != null) {
                                                                for (String str4 : list) {
                                                                    if (str4.endsWith("_package_metadata.binarypb")) {
                                                                        try {
                                                                            AssetManager assets = context2.getAssets();
                                                                            StringBuilder sb = new StringBuilder(str4.length() + 10);
                                                                            sb.append("phenotype/");
                                                                            sb.append(str4);
                                                                            InputStream inputStreamOpen = assets.open(sb.toString());
                                                                            try {
                                                                                zzadf zzadfVar = zzadf.f30397b;
                                                                                int i5 = zzacf.f30358a;
                                                                                zzpp zzppVar = new zzpp(context2, zzpr.C(inputStreamOpen, zzadf.f30398c));
                                                                                builder.d(zzppVar.f30814a, zzppVar);
                                                                                if (inputStreamOpen != null) {
                                                                                    inputStreamOpen.close();
                                                                                }
                                                                            } catch (Throwable th2) {
                                                                                if (inputStreamOpen != null) {
                                                                                    try {
                                                                                        inputStreamOpen.close();
                                                                                    } catch (Throwable th3) {
                                                                                        th2.addSuppressed(th3);
                                                                                    }
                                                                                }
                                                                                throw th2;
                                                                            }
                                                                        } catch (zzaeh unused5) {
                                                                            new StringBuilder(str4.length() + 45);
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        } catch (IOException unused6) {
                                                        }
                                                        ImmutableMap immutableMapA = builder.a(true);
                                                        zzpp.f30813c = immutableMapA;
                                                        map = immutableMapA;
                                                    }
                                                }
                                            }
                                            String str5 = str;
                                            if (((ImmutableMap) map).containsKey(str5)) {
                                                return;
                                            }
                                            new StringBuilder(String.valueOf(str5).length() + 173);
                                        }
                                    });
                                    listenableFutureSubmit2.addListener(new zzpw(listenableFutureSubmit2), MoreExecutors.b());
                                }
                                obj = zzpgVarA.a().d.get(zzofVar.f30765b);
                                if (obj != null) {
                                    objC = zzofVar.c(obj);
                                }
                                if (true != optionalA2.c()) {
                                    objA = objC;
                                }
                                if (objA == null) {
                                    objA = zzofVar.a();
                                }
                                if (objA != null) {
                                    zzofVar.K(objA);
                                    zzofVar.d = i4;
                                }
                            }
                        } else {
                            objA = null;
                            if (zzpgVarA == null) {
                                zzpgVarA = zzofVar.f30766c.a(zzlkVar2);
                            }
                            str = zzpgVarA.f30802c;
                            if (!zzlkVar2.f30720b.getPackageName().equals("com.android.vending")) {
                                ListenableFuture listenableFutureSubmit3 = zzlkVar2.a().submit(new Runnable() { // from class: com.google.android.gms.internal.measurement.zzpn
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        Context context2 = zzlkVar2.f30720b;
                                        Map map = zzpp.f30813c;
                                        if (map == null) {
                                            synchronized (zzpp.f30812b) {
                                                map = zzpp.f30813c;
                                                if (map == null) {
                                                    ImmutableMap.Builder builder = new ImmutableMap.Builder();
                                                    try {
                                                        String[] list = context2.getAssets().list("phenotype");
                                                        if (list != null) {
                                                            for (String str4 : list) {
                                                                if (str4.endsWith("_package_metadata.binarypb")) {
                                                                    try {
                                                                        AssetManager assets = context2.getAssets();
                                                                        StringBuilder sb = new StringBuilder(str4.length() + 10);
                                                                        sb.append("phenotype/");
                                                                        sb.append(str4);
                                                                        InputStream inputStreamOpen = assets.open(sb.toString());
                                                                        try {
                                                                            zzadf zzadfVar = zzadf.f30397b;
                                                                            int i5 = zzacf.f30358a;
                                                                            zzpp zzppVar = new zzpp(context2, zzpr.C(inputStreamOpen, zzadf.f30398c));
                                                                            builder.d(zzppVar.f30814a, zzppVar);
                                                                            if (inputStreamOpen != null) {
                                                                                inputStreamOpen.close();
                                                                            }
                                                                        } catch (Throwable th2) {
                                                                            if (inputStreamOpen != null) {
                                                                                try {
                                                                                    inputStreamOpen.close();
                                                                                } catch (Throwable th3) {
                                                                                    th2.addSuppressed(th3);
                                                                                }
                                                                            }
                                                                            throw th2;
                                                                        }
                                                                    } catch (zzaeh unused5) {
                                                                        new StringBuilder(str4.length() + 45);
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    } catch (IOException unused6) {
                                                    }
                                                    ImmutableMap immutableMapA = builder.a(true);
                                                    zzpp.f30813c = immutableMapA;
                                                    map = immutableMapA;
                                                }
                                            }
                                        }
                                        String str5 = str;
                                        if (((ImmutableMap) map).containsKey(str5)) {
                                            return;
                                        }
                                        new StringBuilder(String.valueOf(str5).length() + 173);
                                    }
                                });
                                listenableFutureSubmit3.addListener(new zzpw(listenableFutureSubmit3), MoreExecutors.b());
                            }
                            obj = zzpgVarA.a().d.get(zzofVar.f30765b);
                            if (obj != null) {
                                objC = zzofVar.c(obj);
                            }
                            if (true != optionalA2.c()) {
                                objA = objC;
                            }
                            if (objA == null) {
                                objA = zzofVar.a();
                            }
                            if (objA != null) {
                                zzofVar.K(objA);
                                zzofVar.d = i4;
                            }
                        }
                    } else {
                        objA = zzofVar.h0();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        } else {
            objA = zzofVar.h0();
        }
        objA.getClass();
        return objA;
    }
}
