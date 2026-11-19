package androidx.camera.core.impl;

import androidx.camera.camera2.internal.Camera2PresenceSource;
import androidx.camera.core.CameraIdentifier;
import androidx.camera.core.CameraPresenceListener;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.lifecycle.Observer;
import defpackage.b5;
import defpackage.r6;
import defpackage.zi;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0003\u0006\u0007\bB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\t"}, d2 = {"Landroidx/camera/core/impl/CameraPresenceProvider;", "", "Ljava/util/concurrent/Executor;", "backgroundExecutor", "<init>", "(Ljava/util/concurrent/Executor;)V", "ListenerWrapper", "SourceObservableObserver", "Companion", "camera-core_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class CameraPresenceProvider {
    public static final /* synthetic */ int l = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Executor f2232a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f2233b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public CameraFactory f2234c;
    public CameraRepository d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Observable f2235e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final SourceObservableObserver f2236f;
    public volatile List g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AtomicBoolean f2237h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final CopyOnWriteArrayList f2238i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final CopyOnWriteArrayList f2239j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final LinkedHashMap f2240k;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/camera/core/impl/CameraPresenceProvider$Companion;", "", "", "TAG", "Ljava/lang/String;", "camera-core_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0082\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;", "", "Landroidx/camera/core/CameraPresenceListener;", "listener", "Ljava/util/concurrent/Executor;", "executor", "<init>", "(Landroidx/camera/core/CameraPresenceListener;Ljava/util/concurrent/Executor;)V", "camera-core_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class ListenerWrapper {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final CameraPresenceListener f2241a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Executor f2242b;

        public ListenerWrapper(CameraPresenceListener cameraPresenceListener, Executor executor) {
            cameraPresenceListener.getClass();
            executor.getClass();
            this.f2241a = cameraPresenceListener;
            this.f2242b = executor;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ListenerWrapper)) {
                return false;
            }
            ListenerWrapper listenerWrapper = (ListenerWrapper) obj;
            return Intrinsics.c(this.f2241a, listenerWrapper.f2241a) && Intrinsics.c(this.f2242b, listenerWrapper.f2242b);
        }

        public final int hashCode() {
            return this.f2242b.hashCode() + (this.f2241a.hashCode() * 31);
        }

        public final String toString() {
            return "ListenerWrapper(listener=" + this.f2241a + ", executor=" + this.f2242b + ')';
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0082\u0004\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0007¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/camera/core/impl/CameraPresenceProvider$SourceObservableObserver;", "Landroidx/camera/core/impl/Observable$Observer;", "", "Landroidx/camera/core/CameraIdentifier;", "<init>", "(Landroidx/camera/core/impl/CameraPresenceProvider;)V", "camera-core_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public final class SourceObservableObserver implements Observable.Observer<List<? extends CameraIdentifier>> {
        public SourceObservableObserver() {
        }

        /* JADX WARN: Code duplicated, block: B:113:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:19:0x005b A[LOOP:1: B:17:0x0055->B:19:0x005b, LOOP_END] */
        /* JADX WARN: Code duplicated, block: B:23:0x0084  */
        /* JADX WARN: Code duplicated, block: B:26:0x00b3 A[LOOP:2: B:24:0x00ad->B:26:0x00b3, LOOP_END] */
        /* JADX WARN: Code duplicated, block: B:31:0x00cf A[Catch: Exception -> 0x014c, LOOP:3: B:29:0x00c9->B:31:0x00cf, LOOP_END, TryCatch #1 {Exception -> 0x014c, blocks: (B:28:0x00c2, B:29:0x00c9, B:31:0x00cf, B:32:0x00dd, B:34:0x00e2, B:35:0x00ee, B:37:0x00f6, B:38:0x0104, B:40:0x010a, B:41:0x0117, B:42:0x0120, B:44:0x0126, B:47:0x0135, B:49:0x0144, B:50:0x0148), top: B:82:0x00c2, inners: #0 }] */
        /* JADX WARN: Code duplicated, block: B:34:0x00e2 A[Catch: Exception -> 0x014c, TryCatch #1 {Exception -> 0x014c, blocks: (B:28:0x00c2, B:29:0x00c9, B:31:0x00cf, B:32:0x00dd, B:34:0x00e2, B:35:0x00ee, B:37:0x00f6, B:38:0x0104, B:40:0x010a, B:41:0x0117, B:42:0x0120, B:44:0x0126, B:47:0x0135, B:49:0x0144, B:50:0x0148), top: B:82:0x00c2, inners: #0 }] */
        /* JADX WARN: Code duplicated, block: B:37:0x00f6 A[Catch: Exception -> 0x014c, TryCatch #1 {Exception -> 0x014c, blocks: (B:28:0x00c2, B:29:0x00c9, B:31:0x00cf, B:32:0x00dd, B:34:0x00e2, B:35:0x00ee, B:37:0x00f6, B:38:0x0104, B:40:0x010a, B:41:0x0117, B:42:0x0120, B:44:0x0126, B:47:0x0135, B:49:0x0144, B:50:0x0148), top: B:82:0x00c2, inners: #0 }] */
        /* JADX WARN: Code duplicated, block: B:40:0x010a A[Catch: Exception -> 0x014c, LOOP:4: B:38:0x0104->B:40:0x010a, LOOP_END, TryCatch #1 {Exception -> 0x014c, blocks: (B:28:0x00c2, B:29:0x00c9, B:31:0x00cf, B:32:0x00dd, B:34:0x00e2, B:35:0x00ee, B:37:0x00f6, B:38:0x0104, B:40:0x010a, B:41:0x0117, B:42:0x0120, B:44:0x0126, B:47:0x0135, B:49:0x0144, B:50:0x0148), top: B:82:0x00c2, inners: #0 }] */
        /* JADX WARN: Code duplicated, block: B:44:0x0126 A[Catch: Exception -> 0x014c, TRY_LEAVE, TryCatch #1 {Exception -> 0x014c, blocks: (B:28:0x00c2, B:29:0x00c9, B:31:0x00cf, B:32:0x00dd, B:34:0x00e2, B:35:0x00ee, B:37:0x00f6, B:38:0x0104, B:40:0x010a, B:41:0x0117, B:42:0x0120, B:44:0x0126, B:47:0x0135, B:49:0x0144, B:50:0x0148), top: B:82:0x00c2, inners: #0 }] */
        /* JADX WARN: Code duplicated, block: B:80:0x0135 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:96:0x0120 A[SYNTHETIC] */
        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override // androidx.camera.core.impl.Observable.Observer
        public final void a(Object obj) {
            CameraFactory cameraFactory;
            List list;
            ArrayList arrayList;
            CameraPresenceProvider cameraPresenceProvider;
            List listY0;
            Set setD;
            Set setD2;
            ArrayList arrayList2;
            ArrayList arrayList3;
            Iterator it;
            Iterator it2;
            CameraRepository cameraRepository;
            Iterator it3;
            String strA;
            CameraRepository cameraRepository2;
            List list2 = (List) obj;
            if (CameraPresenceProvider.this.f2237h.get() && (cameraFactory = CameraPresenceProvider.this.f2234c) != null) {
                try {
                    if (list2 != null) {
                        List list3 = list2;
                        ArrayList arrayList4 = new ArrayList(CollectionsKt.t(list3, 10));
                        Iterator it4 = list3.iterator();
                        while (true) {
                            list = arrayList4;
                            if (!it4.hasNext()) {
                                break;
                            } else {
                                arrayList4.add(((CameraIdentifier) it4.next()).a());
                            }
                        }
                        cameraFactory.e(list);
                        LinkedHashSet<String> linkedHashSetD = cameraFactory.d();
                        arrayList = new ArrayList(CollectionsKt.t(linkedHashSetD, 10));
                        for (String str : linkedHashSetD) {
                            CameraIdentifier.Companion companion = CameraIdentifier.f1888c;
                            str.getClass();
                            companion.getClass();
                            arrayList.add(CameraIdentifier.Companion.a(str, null, null));
                        }
                        cameraPresenceProvider = CameraPresenceProvider.this;
                        listY0 = CollectionsKt.y0(cameraPresenceProvider.g);
                        if (arrayList.equals(listY0)) {
                            return;
                        }
                        List list4 = listY0;
                        Set setB0 = CollectionsKt.B0(list4);
                        Set setB1 = CollectionsKt.B0(arrayList);
                        setD = SetsKt.d(setB1, setB0);
                        setD2 = SetsKt.d(setB0, setB1);
                        arrayList2 = new ArrayList();
                        arrayList3 = new ArrayList(CollectionsKt.t(arrayList, 10));
                        it = arrayList.iterator();
                        while (it.hasNext()) {
                            arrayList3.add(((CameraIdentifier) it.next()).a());
                        }
                        try {
                            it2 = setD2.iterator();
                            while (it2.hasNext()) {
                                cameraPresenceProvider.b(((CameraIdentifier) it2.next()).a());
                            }
                            cameraRepository = cameraPresenceProvider.d;
                            if (cameraRepository != null) {
                                Logger.c(3, "CameraPresencePrvdr");
                                cameraRepository.d(arrayList3);
                                arrayList2.add(cameraRepository);
                                Logger.c(3, "CameraPresencePrvdr");
                            }
                            if (!cameraPresenceProvider.f2238i.isEmpty()) {
                                cameraPresenceProvider.f2238i.size();
                                Logger.c(3, "CameraPresencePrvdr");
                                for (InternalCameraPresenceListener internalCameraPresenceListener : cameraPresenceProvider.f2238i) {
                                    internalCameraPresenceListener.d(arrayList3);
                                    arrayList2.add(internalCameraPresenceListener);
                                }
                            }
                            cameraPresenceProvider.g = arrayList;
                            it3 = setD.iterator();
                            while (it3.hasNext()) {
                                strA = ((CameraIdentifier) it3.next()).a();
                                cameraRepository2 = cameraPresenceProvider.d;
                                if (cameraRepository2 == null) {
                                    try {
                                        CameraInfoInternal cameraInfoInternalK = cameraRepository2.f(strA).k();
                                        cameraInfoInternalK.getClass();
                                        cameraPresenceProvider.c(cameraInfoInternalK);
                                    } catch (IllegalArgumentException unused) {
                                        Logger.c(5, "CameraPresencePrvdr");
                                    }
                                }
                            }
                            cameraPresenceProvider.a(setD, setD2);
                        } catch (Exception unused2) {
                            Logger.b("CameraPresencePrvdr");
                            ArrayList arrayList5 = new ArrayList(CollectionsKt.t(list4, 10));
                            Iterator it5 = list4.iterator();
                            while (it5.hasNext()) {
                                arrayList5.add(((CameraIdentifier) it5.next()).a());
                            }
                            for (InternalCameraPresenceListener internalCameraPresenceListener2 : CollectionsKt.n(arrayList2)) {
                                try {
                                    internalCameraPresenceListener2.d(arrayList5);
                                } catch (Exception unused3) {
                                    Objects.toString(internalCameraPresenceListener2);
                                    Logger.b("CameraPresencePrvdr");
                                }
                            }
                            Iterator it6 = setD2.iterator();
                            while (it6.hasNext()) {
                                String strA2 = ((CameraIdentifier) it6.next()).a();
                                CameraRepository cameraRepository3 = cameraPresenceProvider.d;
                                if (cameraRepository3 != null) {
                                    try {
                                        CameraInfoInternal cameraInfoInternalK2 = cameraRepository3.f(strA2).k();
                                        cameraInfoInternalK2.getClass();
                                        cameraPresenceProvider.c(cameraInfoInternalK2);
                                    } catch (IllegalArgumentException unused4) {
                                        Logger.c(5, "CameraPresencePrvdr");
                                    }
                                }
                            }
                            Iterator it7 = setD.iterator();
                            while (it7.hasNext()) {
                                cameraPresenceProvider.b(((CameraIdentifier) it7.next()).a());
                            }
                            return;
                        }
                    }
                    list = EmptyList.f71768b;
                    cameraFactory.e(list);
                    LinkedHashSet<String> linkedHashSetD2 = cameraFactory.d();
                    arrayList = new ArrayList(CollectionsKt.t(linkedHashSetD2, 10));
                    while (r11.hasNext()) {
                        CameraIdentifier.Companion companion2 = CameraIdentifier.f1888c;
                        str.getClass();
                        companion2.getClass();
                        arrayList.add(CameraIdentifier.Companion.a(str, null, null));
                    }
                    cameraPresenceProvider = CameraPresenceProvider.this;
                    listY0 = CollectionsKt.y0(cameraPresenceProvider.g);
                    if (arrayList.equals(listY0)) {
                        return;
                    }
                    List list5 = listY0;
                    Set setB2 = CollectionsKt.B0(list5);
                    Set setB3 = CollectionsKt.B0(arrayList);
                    setD = SetsKt.d(setB3, setB2);
                    setD2 = SetsKt.d(setB2, setB3);
                    arrayList2 = new ArrayList();
                    arrayList3 = new ArrayList(CollectionsKt.t(arrayList, 10));
                    it = arrayList.iterator();
                    while (it.hasNext()) {
                        arrayList3.add(((CameraIdentifier) it.next()).a());
                    }
                    it2 = setD2.iterator();
                    while (it2.hasNext()) {
                        cameraPresenceProvider.b(((CameraIdentifier) it2.next()).a());
                    }
                    cameraRepository = cameraPresenceProvider.d;
                    if (cameraRepository != null) {
                        Logger.c(3, "CameraPresencePrvdr");
                        cameraRepository.d(arrayList3);
                        arrayList2.add(cameraRepository);
                        Logger.c(3, "CameraPresencePrvdr");
                    }
                    if (!cameraPresenceProvider.f2238i.isEmpty()) {
                        cameraPresenceProvider.f2238i.size();
                        Logger.c(3, "CameraPresencePrvdr");
                        while (r8.hasNext()) {
                            internalCameraPresenceListener.d(arrayList3);
                            arrayList2.add(internalCameraPresenceListener);
                        }
                    }
                    cameraPresenceProvider.g = arrayList;
                    it3 = setD.iterator();
                    while (it3.hasNext()) {
                        strA = ((CameraIdentifier) it3.next()).a();
                        cameraRepository2 = cameraPresenceProvider.d;
                        if (cameraRepository2 == null) {
                            CameraInfoInternal cameraInfoInternalK3 = cameraRepository2.f(strA).k();
                            cameraInfoInternalK3.getClass();
                            cameraPresenceProvider.c(cameraInfoInternalK3);
                        }
                    }
                    cameraPresenceProvider.a(setD, setD2);
                } catch (Exception unused5) {
                    Logger.b("CameraPresencePrvdr");
                    Observable observable = CameraPresenceProvider.this.f2235e;
                    if (observable != null) {
                        observable.a();
                    }
                }
            }
        }

        @Override // androidx.camera.core.impl.Observable.Observer
        public final void onError(Throwable th) {
            th.getClass();
            CameraPresenceProvider cameraPresenceProvider = CameraPresenceProvider.this;
            if (cameraPresenceProvider.f2237h.get()) {
                Logger.b("CameraPresencePrvdr");
                Observable observable = cameraPresenceProvider.f2235e;
                if (observable != null) {
                    observable.a();
                }
            }
        }
    }

    static {
        new Companion(null);
    }

    public CameraPresenceProvider(Executor executor) {
        executor.getClass();
        this.f2232a = executor;
        this.f2233b = new Object();
        this.f2236f = new SourceObservableObserver();
        this.g = EmptyList.f71768b;
        this.f2237h = new AtomicBoolean(false);
        this.f2238i = new CopyOnWriteArrayList();
        this.f2239j = new CopyOnWriteArrayList();
        this.f2240k = new LinkedHashMap();
    }

    public final void a(final Set set, final Set set2) {
        boolean zIsEmpty = set.isEmpty();
        CopyOnWriteArrayList<ListenerWrapper> copyOnWriteArrayList = this.f2239j;
        if (!zIsEmpty) {
            set.size();
            Logger.c(4, "CameraPresencePrvdr");
            for (final ListenerWrapper listenerWrapper : copyOnWriteArrayList) {
                final int i2 = 1;
                listenerWrapper.f2242b.execute(new Runnable() { // from class: androidx.camera.core.impl.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        int i3 = i2;
                        CameraPresenceProvider.ListenerWrapper listenerWrapper2 = listenerWrapper;
                        switch (i3) {
                            case 0:
                                int i4 = CameraPresenceProvider.l;
                                listenerWrapper2.f2241a.a();
                                break;
                            default:
                                int i5 = CameraPresenceProvider.l;
                                listenerWrapper2.f2241a.b();
                                break;
                        }
                    }
                });
            }
        }
        if (set2.isEmpty()) {
            return;
        }
        set2.size();
        Logger.c(4, "CameraPresencePrvdr");
        for (final ListenerWrapper listenerWrapper2 : copyOnWriteArrayList) {
            final int i3 = 0;
            listenerWrapper2.f2242b.execute(new Runnable() { // from class: androidx.camera.core.impl.b
                @Override // java.lang.Runnable
                public final void run() {
                    int i4 = i3;
                    CameraPresenceProvider.ListenerWrapper listenerWrapper3 = listenerWrapper2;
                    switch (i4) {
                        case 0:
                            int i5 = CameraPresenceProvider.l;
                            listenerWrapper3.f2241a.a();
                            break;
                        default:
                            int i6 = CameraPresenceProvider.l;
                            listenerWrapper3.f2241a.b();
                            break;
                    }
                }
            });
        }
    }

    public final void b(String str) {
        synchronized (this.f2233b) {
            Observer observer = (Observer) this.f2240k.remove(str);
            CameraRepository cameraRepository = this.d;
            if (observer != null && cameraRepository != null) {
                try {
                    CameraXExecutors.c().execute(new r6(cameraRepository.f(str), observer, 13));
                    Logger.c(3, "CameraPresencePrvdr");
                } catch (IllegalArgumentException unused) {
                }
            }
        }
    }

    public final void c(CameraInfoInternal cameraInfoInternal) {
        String strB = cameraInfoInternal.b();
        strB.getClass();
        if (this.f2237h.get()) {
            synchronized (this.f2233b) {
                if (this.f2240k.containsKey(strB)) {
                    return;
                }
                zi ziVar = new zi(this, strB);
                CameraXExecutors.c().execute(new r6(cameraInfoInternal, ziVar, 14));
                this.f2240k.put(strB, ziVar);
                Logger.c(3, "CameraPresencePrvdr");
            }
        }
    }

    public final void d() {
        if (!this.f2237h.getAndSet(false)) {
            Logger.c(3, "CameraPresencePrvdr");
            return;
        }
        Logger.c(4, "CameraPresencePrvdr");
        Observable observable = this.f2235e;
        if (observable != null) {
            observable.d(this.f2236f);
        }
        synchronized (this.f2233b) {
            if (!this.f2240k.isEmpty()) {
                Map mapO = MapsKt.o(this.f2240k);
                this.f2240k.clear();
                CameraRepository cameraRepository = this.d;
                if (cameraRepository != null) {
                    LinkedHashSet linkedHashSetG = cameraRepository.g();
                    ArrayList arrayList = new ArrayList(CollectionsKt.t(linkedHashSetG, 10));
                    Iterator it = linkedHashSetG.iterator();
                    while (it.hasNext()) {
                        arrayList.add(((CameraInternal) it.next()).k());
                    }
                    mapO.size();
                    Logger.c(3, "CameraPresencePrvdr");
                    ArrayList arrayList2 = new ArrayList(mapO.size());
                    for (Map.Entry entry : mapO.entrySet()) {
                        String str = (String) entry.getKey();
                        CameraXExecutors.c().execute(new b5(arrayList, (Observer) entry.getValue(), str, 6));
                        arrayList2.add(Unit.f71739a);
                    }
                }
            }
        }
        this.f2238i.clear();
        this.f2239j.clear();
        this.g = EmptyList.f71768b;
        this.f2234c = null;
        this.d = null;
    }

    public final void e(CameraFactory cameraFactory, CameraRepository cameraRepository) {
        cameraFactory.getClass();
        cameraRepository.getClass();
        if (this.f2237h.compareAndSet(false, true)) {
            Logger.c(4, "CameraPresencePrvdr");
            LinkedHashSet<String> linkedHashSetD = cameraFactory.d();
            ArrayList arrayList = new ArrayList(CollectionsKt.t(linkedHashSetD, 10));
            for (String str : linkedHashSetD) {
                CameraIdentifier.Companion companion = CameraIdentifier.f1888c;
                str.getClass();
                companion.getClass();
                arrayList.add(CameraIdentifier.Companion.a(str, null, null));
            }
            this.g = arrayList;
            this.f2234c = cameraFactory;
            this.d = cameraRepository;
            Camera2PresenceSource camera2PresenceSourceC = cameraFactory.c();
            this.f2235e = camera2PresenceSourceC;
            if (camera2PresenceSourceC != null) {
                camera2PresenceSourceC.b(this.f2232a, this.f2236f);
            }
        }
    }
}
