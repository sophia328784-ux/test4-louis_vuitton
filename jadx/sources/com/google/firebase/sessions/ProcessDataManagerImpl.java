package com.google.firebase.sessions;

import android.content.Context;
import android.os.Process;
import com.google.firebase.sessions.ProcessDataManagerImpl;
import com.google.firebase.sessions.ProcessDetails;
import com.google.firebase.sessions.ProcessDetailsProvider;
import defpackage.xn0;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Singleton
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/google/firebase/sessions/ProcessDataManagerImpl;", "Lcom/google/firebase/sessions/ProcessDataManager;", "Landroid/content/Context;", "appContext", "Lcom/google/firebase/sessions/UuidGenerator;", "uuidGenerator", "<init>", "(Landroid/content/Context;Lcom/google/firebase/sessions/UuidGenerator;)V", "com.google.firebase-firebase-sessions"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ProcessDataManagerImpl implements ProcessDataManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f35450a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Lazy f35451b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f35452c;
    public final Lazy d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Lazy f35453e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f35454f;

    @Inject
    public ProcessDataManagerImpl(Context context, UuidGenerator uuidGenerator) {
        context.getClass();
        uuidGenerator.getClass();
        this.f35450a = context;
        final int i2 = 0;
        this.f35451b = LazyKt.b(new Function0(this) { // from class: tp0

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ ProcessDataManagerImpl f80126c;

            {
                this.f80126c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i3 = i2;
                ProcessDataManagerImpl processDataManagerImpl = this.f80126c;
                switch (i3) {
                    case 0:
                        return ((ProcessDetails) processDataManagerImpl.f35453e.getF71699b()).f35457a;
                    default:
                        return ProcessDetailsProvider.b(processDataManagerImpl.f35450a);
                }
            }
        });
        this.f35452c = Process.myPid();
        this.d = LazyKt.b(new xn0(uuidGenerator, 5));
        final int i3 = 1;
        this.f35453e = LazyKt.b(new Function0(this) { // from class: tp0

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ ProcessDataManagerImpl f80126c;

            {
                this.f80126c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i4 = i3;
                ProcessDataManagerImpl processDataManagerImpl = this.f80126c;
                switch (i4) {
                    case 0:
                        return ((ProcessDetails) processDataManagerImpl.f35453e.getF71699b()).f35457a;
                    default:
                        return ProcessDetailsProvider.b(processDataManagerImpl.f35450a);
                }
            }
        });
    }

    @Override // com.google.firebase.sessions.ProcessDataManager
    public final String a() {
        return (String) this.f35451b.getF71699b();
    }

    @Override // com.google.firebase.sessions.ProcessDataManager
    public final boolean b(Map map) {
        map.getClass();
        ProcessData processData = (ProcessData) map.get(a());
        return (processData != null && processData.f35447a == this.f35452c && Intrinsics.c(processData.f35448b, (String) this.d.getF71699b())) ? false : true;
    }

    @Override // com.google.firebase.sessions.ProcessDataManager
    public final Map c(Map map) {
        Lazy lazy = this.d;
        if (map == null) {
            return MapsKt.h(new Pair(a(), new ProcessData(Process.myPid(), (String) lazy.getF71699b())));
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        linkedHashMap.put(a(), new ProcessData(Process.myPid(), (String) lazy.getF71699b()));
        return MapsKt.o(linkedHashMap);
    }

    @Override // com.google.firebase.sessions.ProcessDataManager
    public final void d() {
        this.f35454f = true;
    }

    @Override // com.google.firebase.sessions.ProcessDataManager
    public final boolean e(Map map) {
        map.getClass();
        if (this.f35454f) {
            return false;
        }
        ArrayList<ProcessDetails> arrayListA = ProcessDetailsProvider.a(this.f35450a);
        ArrayList<Pair> arrayList = new ArrayList();
        for (ProcessDetails processDetails : arrayListA) {
            ProcessData processData = (ProcessData) map.get(processDetails.f35457a);
            Pair pair = processData != null ? new Pair(processDetails, processData) : null;
            if (pair != null) {
                arrayList.add(pair);
            }
        }
        if (arrayList.isEmpty()) {
            return true;
        }
        for (Pair pair2 : arrayList) {
            ProcessDetails processDetails2 = (ProcessDetails) pair2.f71705b;
            ProcessData processData2 = (ProcessData) pair2.f71706c;
            boolean zC = Intrinsics.c(a(), processDetails2.f35457a);
            int i2 = processDetails2.f35458b;
            if (zC) {
                if (i2 == processData2.f35447a && Intrinsics.c((String) this.d.getF71699b(), processData2.f35448b)) {
                    return false;
                }
            } else if (i2 == processData2.f35447a) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.firebase.sessions.ProcessDataManager
    public final Map f() {
        return c(MapsKt.c());
    }
}
