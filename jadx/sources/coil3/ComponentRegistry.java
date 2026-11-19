package coil3;

import coil3.ComponentRegistry;
import coil3.fetch.Fetcher;
import coil3.graphics.Decoder;
import coil3.map.Mapper;
import coil3.util.Collections_jvmCommonKt;
import defpackage.in;
import defpackage.jn;
import defpackage.tf;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.KClass;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\u0018\u00002\u00020\u0001:\u0001\u0004B\t\b\u0016¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcoil3/ComponentRegistry;", "", "<init>", "()V", "Builder", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class ComponentRegistry {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f21205a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f21206b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f21207c;
    public List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public List f21208e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Lazy f21209f;
    public final Lazy g;

    public ComponentRegistry(List list, List list2, List list3, List list4, List list5) {
        this.f21205a = list;
        this.f21206b = list2;
        this.f21207c = list3;
        this.d = list4;
        this.f21208e = list5;
        final int i2 = 0;
        this.f21209f = LazyKt.b(new Function0(this) { // from class: hn

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ ComponentRegistry f69753c;

            {
                this.f69753c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i3 = i2;
                int i4 = 0;
                ComponentRegistry componentRegistry = this.f69753c;
                switch (i3) {
                    case 0:
                        List list6 = componentRegistry.d;
                        ArrayList arrayList = new ArrayList();
                        int size = list6.size();
                        while (i4 < size) {
                            CollectionsKt.j(arrayList, (List) ((Function0) list6.get(i4)).mo47invoke());
                            i4++;
                        }
                        componentRegistry.d = EmptyList.f71768b;
                        return arrayList;
                    default:
                        List list7 = componentRegistry.f21208e;
                        ArrayList arrayList2 = new ArrayList();
                        int size2 = list7.size();
                        while (i4 < size2) {
                            CollectionsKt.j(arrayList2, (List) ((Function0) list7.get(i4)).mo47invoke());
                            i4++;
                        }
                        componentRegistry.f21208e = EmptyList.f71768b;
                        return arrayList2;
                }
            }
        });
        final int i3 = 1;
        this.g = LazyKt.b(new Function0(this) { // from class: hn

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ ComponentRegistry f69753c;

            {
                this.f69753c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i4 = i3;
                int i5 = 0;
                ComponentRegistry componentRegistry = this.f69753c;
                switch (i4) {
                    case 0:
                        List list6 = componentRegistry.d;
                        ArrayList arrayList = new ArrayList();
                        int size = list6.size();
                        while (i5 < size) {
                            CollectionsKt.j(arrayList, (List) ((Function0) list6.get(i5)).mo47invoke());
                            i5++;
                        }
                        componentRegistry.d = EmptyList.f71768b;
                        return arrayList;
                    default:
                        List list7 = componentRegistry.f21208e;
                        ArrayList arrayList2 = new ArrayList();
                        int size2 = list7.size();
                        while (i5 < size2) {
                            CollectionsKt.j(arrayList2, (List) ((Function0) list7.get(i5)).mo47invoke());
                            i5++;
                        }
                        componentRegistry.f21208e = EmptyList.f71768b;
                        return arrayList2;
                }
            }
        });
    }

    public /* synthetic */ ComponentRegistry(List list, List list2, List list3, List list4, List list5, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, list2, list3, list4, list5);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ComponentRegistry() {
        EmptyList emptyList = EmptyList.f71768b;
        this(emptyList, emptyList, emptyList, emptyList, emptyList);
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\t\b\u0016¢\u0006\u0004\b\u0002\u0010\u0003B\u0011\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcoil3/ComponentRegistry$Builder;", "", "<init>", "()V", "Lcoil3/ComponentRegistry;", "registry", "(Lcoil3/ComponentRegistry;)V", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ArrayList f21210a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ArrayList f21211b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ArrayList f21212c;
        public final ArrayList d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final ArrayList f21213e;

        public Builder(ComponentRegistry componentRegistry) {
            int i2;
            this.f21210a = CollectionsKt.z0(componentRegistry.f21205a);
            this.f21211b = CollectionsKt.z0(componentRegistry.f21206b);
            this.f21212c = CollectionsKt.z0(componentRegistry.f21207c);
            List list = (List) componentRegistry.f21209f.getF71699b();
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (true) {
                i2 = 0;
                if (!it.hasNext()) {
                    break;
                } else {
                    arrayList.add(new in((Pair) it.next(), i2));
                }
            }
            this.d = arrayList;
            List list2 = (List) componentRegistry.g.getF71699b();
            ArrayList arrayList2 = new ArrayList();
            Iterator it2 = list2.iterator();
            while (it2.hasNext()) {
                arrayList2.add(new jn((Decoder.Factory) it2.next(), i2));
            }
            this.f21213e = arrayList2;
        }

        public final void a(Fetcher.Factory factory, KClass kClass) {
            this.d.add(new tf(factory, kClass, 24));
        }

        public final void b(Mapper mapper, KClass kClass) {
            this.f21211b.add(new Pair(mapper, kClass));
        }

        public final ComponentRegistry c() {
            return new ComponentRegistry(Collections_jvmCommonKt.a(this.f21210a), Collections_jvmCommonKt.a(this.f21211b), Collections_jvmCommonKt.a(this.f21212c), Collections_jvmCommonKt.a(this.d), Collections_jvmCommonKt.a(this.f21213e), null);
        }

        public Builder() {
            this.f21210a = new ArrayList();
            this.f21211b = new ArrayList();
            this.f21212c = new ArrayList();
            this.d = new ArrayList();
            this.f21213e = new ArrayList();
        }
    }
}
