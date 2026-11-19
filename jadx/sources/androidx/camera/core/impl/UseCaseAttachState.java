package androidx.camera.core.impl;

import androidx.camera.core.Logger;
import defpackage.d21;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class UseCaseAttachState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LinkedHashMap f2366a = new LinkedHashMap();

    public interface AttachStateFilter {
    }

    public static final class UseCaseAttachInfo {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final SessionConfig f2367a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final UseCaseConfig f2368b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final StreamSpec f2369c;
        public final List d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f2370e = false;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f2371f = false;

        public UseCaseAttachInfo(SessionConfig sessionConfig, UseCaseConfig useCaseConfig, StreamSpec streamSpec, List list) {
            this.f2367a = sessionConfig;
            this.f2368b = useCaseConfig;
            this.f2369c = streamSpec;
            this.d = list;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("UseCaseAttachInfo{mSessionConfig=");
            sb.append(this.f2367a);
            sb.append(", mUseCaseConfig=");
            sb.append(this.f2368b);
            sb.append(", mStreamSpec=");
            sb.append(this.f2369c);
            sb.append(", mCaptureTypes=");
            sb.append(this.d);
            sb.append(", mAttached=");
            sb.append(this.f2370e);
            sb.append(", mActive=");
            return d21.q(sb, this.f2371f, '}');
        }
    }

    public UseCaseAttachState(String str) {
    }

    public final SessionConfig.ValidatingBuilder a() {
        SessionConfig.ValidatingBuilder validatingBuilder = new SessionConfig.ValidatingBuilder();
        ArrayList arrayList = new ArrayList();
        for (Map.Entry entry : this.f2366a.entrySet()) {
            UseCaseAttachInfo useCaseAttachInfo = (UseCaseAttachInfo) entry.getValue();
            if (useCaseAttachInfo.f2371f && useCaseAttachInfo.f2370e) {
                String str = (String) entry.getKey();
                validatingBuilder.a(useCaseAttachInfo.f2367a);
                arrayList.add(str);
            }
        }
        arrayList.toString();
        Logger.c(3, "UseCaseAttachState");
        return validatingBuilder;
    }

    public final SessionConfig.ValidatingBuilder b() {
        SessionConfig.ValidatingBuilder validatingBuilder = new SessionConfig.ValidatingBuilder();
        ArrayList arrayList = new ArrayList();
        for (Map.Entry entry : this.f2366a.entrySet()) {
            UseCaseAttachInfo useCaseAttachInfo = (UseCaseAttachInfo) entry.getValue();
            if (useCaseAttachInfo.f2370e) {
                validatingBuilder.a(useCaseAttachInfo.f2367a);
                arrayList.add((String) entry.getKey());
            }
        }
        arrayList.toString();
        Logger.c(3, "UseCaseAttachState");
        return validatingBuilder;
    }

    public final Collection c() {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry entry : this.f2366a.entrySet()) {
            if (((UseCaseAttachInfo) entry.getValue()).f2370e) {
                arrayList.add(((UseCaseAttachInfo) entry.getValue()).f2367a);
            }
        }
        return Collections.unmodifiableCollection(arrayList);
    }

    public final Collection d() {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry entry : this.f2366a.entrySet()) {
            if (((UseCaseAttachInfo) entry.getValue()).f2370e) {
                arrayList.add(((UseCaseAttachInfo) entry.getValue()).f2368b);
            }
        }
        return Collections.unmodifiableCollection(arrayList);
    }

    public final boolean e(String str) {
        LinkedHashMap linkedHashMap = this.f2366a;
        if (linkedHashMap.containsKey(str)) {
            return ((UseCaseAttachInfo) linkedHashMap.get(str)).f2370e;
        }
        return false;
    }

    public final void f(String str, SessionConfig sessionConfig, UseCaseConfig useCaseConfig, StreamSpec streamSpec, List list) {
        LinkedHashMap linkedHashMap = this.f2366a;
        if (linkedHashMap.containsKey(str)) {
            UseCaseAttachInfo useCaseAttachInfo = new UseCaseAttachInfo(sessionConfig, useCaseConfig, streamSpec, list);
            UseCaseAttachInfo useCaseAttachInfo2 = (UseCaseAttachInfo) linkedHashMap.get(str);
            useCaseAttachInfo.f2370e = useCaseAttachInfo2.f2370e;
            useCaseAttachInfo.f2371f = useCaseAttachInfo2.f2371f;
            linkedHashMap.put(str, useCaseAttachInfo);
        }
    }
}
