package com.google.android.datatransport.runtime.backends;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import com.sightcall.universal.media.offline.FileUtils;
import java.lang.reflect.InvocationTargetException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import javax.inject.Singleton;

/* JADX INFO: loaded from: classes2.dex */
@Singleton
class MetadataBackendRegistry implements BackendRegistry {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final BackendFactoryProvider f28005a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CreationContextFactory f28006b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashMap f28007c;

    public static class BackendFactoryProvider {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Context f28008a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Map f28009b = null;

        public BackendFactoryProvider(Context context) {
            this.f28008a = context;
        }

        public final BackendFactory a(String str) {
            Bundle bundle;
            Map map;
            ServiceInfo serviceInfo;
            if (this.f28009b == null) {
                Context context = this.f28008a;
                try {
                    PackageManager packageManager = context.getPackageManager();
                    bundle = (packageManager == null || (serviceInfo = packageManager.getServiceInfo(new ComponentName(context, (Class<?>) TransportBackendDiscovery.class), 128)) == null) ? null : serviceInfo.metaData;
                } catch (PackageManager.NameNotFoundException unused) {
                }
                if (bundle == null) {
                    map = Collections.EMPTY_MAP;
                } else {
                    HashMap map2 = new HashMap();
                    for (String str2 : bundle.keySet()) {
                        Object obj = bundle.get(str2);
                        if ((obj instanceof String) && str2.startsWith("backend:")) {
                            for (String str3 : ((String) obj).split(",", -1)) {
                                String strTrim = str3.trim();
                                if (!strTrim.isEmpty()) {
                                    map2.put(strTrim, str2.substring(8));
                                }
                            }
                        }
                    }
                    map = map2;
                }
                this.f28009b = map;
            }
            String str4 = (String) this.f28009b.get(str);
            if (str4 == null) {
                return null;
            }
            try {
                return (BackendFactory) Class.forName(str4).asSubclass(BackendFactory.class).getDeclaredConstructor(null).newInstance(null);
            } catch (ClassNotFoundException unused2) {
                StringBuilder sb = new StringBuilder("Class ");
                sb.append(str4);
                sb.append(" is not found.");
                return null;
            } catch (IllegalAccessException unused3) {
                StringBuilder sb2 = new StringBuilder("Could not instantiate ");
                sb2.append(str4);
                sb2.append(FileUtils.HIDDEN_PREFIX);
                return null;
            } catch (InstantiationException unused4) {
                StringBuilder sb3 = new StringBuilder("Could not instantiate ");
                sb3.append(str4);
                sb3.append(FileUtils.HIDDEN_PREFIX);
                return null;
            } catch (NoSuchMethodException unused5) {
                "Could not instantiate ".concat(str4);
                return null;
            } catch (InvocationTargetException unused6) {
                "Could not instantiate ".concat(str4);
                return null;
            }
        }
    }

    public MetadataBackendRegistry(Context context, CreationContextFactory creationContextFactory) {
        BackendFactoryProvider backendFactoryProvider = new BackendFactoryProvider(context);
        this.f28007c = new HashMap();
        this.f28005a = backendFactoryProvider;
        this.f28006b = creationContextFactory;
    }

    @Override // com.google.android.datatransport.runtime.backends.BackendRegistry
    public final synchronized TransportBackend get(String str) {
        if (this.f28007c.containsKey(str)) {
            return (TransportBackend) this.f28007c.get(str);
        }
        BackendFactory backendFactoryA = this.f28005a.a(str);
        if (backendFactoryA == null) {
            return null;
        }
        CreationContextFactory creationContextFactory = this.f28006b;
        TransportBackend transportBackendCreate = backendFactoryA.create(new AutoValue_CreationContext(creationContextFactory.f27999a, creationContextFactory.f28000b, creationContextFactory.f28001c, str));
        this.f28007c.put(str, transportBackendCreate);
        return transportBackendCreate;
    }
}
