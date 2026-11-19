package defpackage;

import com.google.firebase.FirebaseApp;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.components.InvalidRegistrarException;
import com.google.firebase.inject.Provider;
import com.google.firebase.installations.FirebaseInstallations;
import com.google.firebase.installations.local.IidStore;
import com.sightcall.universal.media.offline.FileUtils;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class gn implements Provider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f69449a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f69450b;

    public /* synthetic */ gn(Object obj, int i2) {
        this.f69449a = i2;
        this.f69450b = obj;
    }

    @Override // com.google.firebase.inject.Provider
    public final Object get() {
        int i2 = this.f69449a;
        Object obj = this.f69450b;
        switch (i2) {
            case 0:
                String str = (String) obj;
                try {
                    Class<?> cls = Class.forName(str);
                    if (ComponentRegistrar.class.isAssignableFrom(cls)) {
                        return (ComponentRegistrar) cls.getDeclaredConstructor(null).newInstance(null);
                    }
                    throw new InvalidRegistrarException("Class " + str + " is not an instance of com.google.firebase.components.ComponentRegistrar");
                } catch (ClassNotFoundException unused) {
                    return null;
                } catch (IllegalAccessException e2) {
                    throw new InvalidRegistrarException(fc.h("Could not instantiate ", str, FileUtils.HIDDEN_PREFIX), e2);
                } catch (InstantiationException e3) {
                    throw new InvalidRegistrarException(fc.h("Could not instantiate ", str, FileUtils.HIDDEN_PREFIX), e3);
                } catch (NoSuchMethodException e4) {
                    throw new InvalidRegistrarException(tr.g("Could not instantiate ", str), e4);
                } catch (InvocationTargetException e5) {
                    throw new InvalidRegistrarException(tr.g("Could not instantiate ", str), e5);
                }
            default:
                Object obj2 = FirebaseInstallations.m;
                return new IidStore((FirebaseApp) obj);
        }
    }
}
