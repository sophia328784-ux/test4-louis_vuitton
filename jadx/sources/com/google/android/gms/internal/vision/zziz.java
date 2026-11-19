package com.google.android.gms.internal.vision;

import com.google.android.gms.internal.vision.zzio;
import defpackage.bm;
import defpackage.d21;
import defpackage.md;
import defpackage.tr;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.ServiceConfigurationError;
import java.util.ServiceLoader;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes2.dex */
abstract class zziz<T extends zzio> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Logger f31217a = Logger.getLogger(zzii.class.getName());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f31218b = "com.google.protobuf.BlazeGeneratedExtensionRegistryLiteLoader";

    public static zzio a() {
        String strJ;
        ClassLoader classLoader = zziz.class.getClassLoader();
        if (zzio.class.equals(zzio.class)) {
            strJ = f31218b;
        } else {
            if (!zzio.class.getPackage().equals(zziz.class.getPackage())) {
                md.n(zzio.class.getName());
                return null;
            }
            strJ = d21.j(zzio.class.getPackage().getName(), ".BlazeGeneratedzzioLoader");
        }
        try {
            try {
                try {
                    try {
                        try {
                            tr.x(Class.forName(strJ, true, classLoader).getConstructor(null).newInstance(null));
                            throw null;
                        } catch (NoSuchMethodException e2) {
                            throw new IllegalStateException(e2);
                        }
                    } catch (InvocationTargetException e3) {
                        throw new IllegalStateException(e3);
                    }
                } catch (InstantiationException e4) {
                    throw new IllegalStateException(e4);
                }
            } catch (IllegalAccessException e5) {
                throw new IllegalStateException(e5);
            }
        } catch (ClassNotFoundException unused) {
            Iterator it = ServiceLoader.load(zziz.class, classLoader).iterator();
            ArrayList arrayList = new ArrayList();
            while (it.hasNext()) {
                try {
                    if (it.next() == null) {
                        throw null;
                    }
                    throw new ClassCastException();
                } catch (ServiceConfigurationError e6) {
                    f31217a.logp(Level.SEVERE, "com.google.protobuf.GeneratedExtensionRegistryLoader", "load", "Unable to load ".concat("zzio"), (Throwable) e6);
                }
            }
            if (arrayList.size() == 1) {
                return (zzio) arrayList.get(0);
            }
            if (arrayList.size() == 0) {
                return null;
            }
            try {
                return (zzio) zzio.class.getMethod("combine", Collection.class).invoke(null, arrayList);
            } catch (IllegalAccessException e7) {
                bm.i(e7);
                return null;
            } catch (NoSuchMethodException e8) {
                bm.i(e8);
                return null;
            } catch (InvocationTargetException e9) {
                bm.i(e9);
                return null;
            }
        }
    }
}
