package kotlinx.serialization.internal;

import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialKind;
import kotlinx.serialization.descriptors.StructureKind;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.Platform_commonKt;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptorKt;
import kotlinx.serialization.internal.PluginHelperInterfacesKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0011\u0018\u00002\u00020\u00012\u00020\u0002B'\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "Lkotlinx/serialization/internal/CachedNames;", "", "serialName", "Lkotlinx/serialization/internal/GeneratedSerializer;", "generatedSerializer", "", "elementsCount", "<init>", "(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V", "kotlinx-serialization-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class PluginGeneratedSerialDescriptor implements SerialDescriptor, CachedNames {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f75659a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final GeneratedSerializer f75660b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f75661c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String[] f75662e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List[] f75663f;
    public final boolean[] g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Map f75664h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Lazy f75665i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Lazy f75666j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Lazy f75667k;

    public PluginGeneratedSerialDescriptor(String str, GeneratedSerializer<?> generatedSerializer, int i2) {
        str.getClass();
        this.f75659a = str;
        this.f75660b = generatedSerializer;
        this.f75661c = i2;
        this.d = -1;
        String[] strArr = new String[i2];
        final int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            strArr[i4] = "[UNINITIALIZED]";
        }
        this.f75662e = strArr;
        int i5 = this.f75661c;
        this.f75663f = new List[i5];
        this.g = new boolean[i5];
        this.f75664h = MapsKt.c();
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        this.f75665i = LazyKt.a(lazyThreadSafetyMode, new Function0(this) { // from class: po0

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ PluginGeneratedSerialDescriptor f78901c;

            {
                this.f78901c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                ArrayList arrayList;
                int i6 = i3;
                PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = this.f78901c;
                switch (i6) {
                    case 0:
                        GeneratedSerializer generatedSerializer2 = pluginGeneratedSerialDescriptor.f75660b;
                        return generatedSerializer2 != null ? generatedSerializer2.e() : PluginHelperInterfacesKt.f75668a;
                    case 1:
                        GeneratedSerializer generatedSerializer3 = pluginGeneratedSerialDescriptor.f75660b;
                        if (generatedSerializer3 != null) {
                            KSerializer[] kSerializerArrD = generatedSerializer3.d();
                            arrayList = new ArrayList(kSerializerArrD.length);
                            for (KSerializer kSerializer : kSerializerArrD) {
                                arrayList.add(kSerializer.getF19838b());
                            }
                        } else {
                            arrayList = null;
                        }
                        return Platform_commonKt.b(arrayList);
                    default:
                        return Integer.valueOf(PluginGeneratedSerialDescriptorKt.a(pluginGeneratedSerialDescriptor, (SerialDescriptor[]) pluginGeneratedSerialDescriptor.f75666j.getF71699b()));
                }
            }
        });
        final int i6 = 1;
        this.f75666j = LazyKt.a(lazyThreadSafetyMode, new Function0(this) { // from class: po0

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ PluginGeneratedSerialDescriptor f78901c;

            {
                this.f78901c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                ArrayList arrayList;
                int i7 = i6;
                PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = this.f78901c;
                switch (i7) {
                    case 0:
                        GeneratedSerializer generatedSerializer2 = pluginGeneratedSerialDescriptor.f75660b;
                        return generatedSerializer2 != null ? generatedSerializer2.e() : PluginHelperInterfacesKt.f75668a;
                    case 1:
                        GeneratedSerializer generatedSerializer3 = pluginGeneratedSerialDescriptor.f75660b;
                        if (generatedSerializer3 != null) {
                            KSerializer[] kSerializerArrD = generatedSerializer3.d();
                            arrayList = new ArrayList(kSerializerArrD.length);
                            for (KSerializer kSerializer : kSerializerArrD) {
                                arrayList.add(kSerializer.getF19838b());
                            }
                        } else {
                            arrayList = null;
                        }
                        return Platform_commonKt.b(arrayList);
                    default:
                        return Integer.valueOf(PluginGeneratedSerialDescriptorKt.a(pluginGeneratedSerialDescriptor, (SerialDescriptor[]) pluginGeneratedSerialDescriptor.f75666j.getF71699b()));
                }
            }
        });
        final int i7 = 2;
        this.f75667k = LazyKt.a(lazyThreadSafetyMode, new Function0(this) { // from class: po0

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ PluginGeneratedSerialDescriptor f78901c;

            {
                this.f78901c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                ArrayList arrayList;
                int i8 = i7;
                PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = this.f78901c;
                switch (i8) {
                    case 0:
                        GeneratedSerializer generatedSerializer2 = pluginGeneratedSerialDescriptor.f75660b;
                        return generatedSerializer2 != null ? generatedSerializer2.e() : PluginHelperInterfacesKt.f75668a;
                    case 1:
                        GeneratedSerializer generatedSerializer3 = pluginGeneratedSerialDescriptor.f75660b;
                        if (generatedSerializer3 != null) {
                            KSerializer[] kSerializerArrD = generatedSerializer3.d();
                            arrayList = new ArrayList(kSerializerArrD.length);
                            for (KSerializer kSerializer : kSerializerArrD) {
                                arrayList.add(kSerializer.getF19838b());
                            }
                        } else {
                            arrayList = null;
                        }
                        return Platform_commonKt.b(arrayList);
                    default:
                        return Integer.valueOf(PluginGeneratedSerialDescriptorKt.a(pluginGeneratedSerialDescriptor, (SerialDescriptor[]) pluginGeneratedSerialDescriptor.f75666j.getF71699b()));
                }
            }
        });
    }

    @Override // kotlinx.serialization.internal.CachedNames
    /* JADX INFO: renamed from: a */
    public final Set getF75678c() {
        return this.f75664h.keySet();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final int c(String str) {
        str.getClass();
        Integer num = (Integer) this.f75664h.get(str);
        if (num != null) {
            return num.intValue();
        }
        return -3;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    /* JADX INFO: renamed from: d, reason: from getter */
    public final int getF75549c() {
        return this.f75661c;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    /* JADX INFO: renamed from: e */
    public SerialKind getF75548b() {
        return StructureKind.CLASS.f75564a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PluginGeneratedSerialDescriptor) {
            SerialDescriptor serialDescriptor = (SerialDescriptor) obj;
            if (Intrinsics.c(this.f75659a, serialDescriptor.getF75568a()) && Arrays.equals((SerialDescriptor[]) this.f75666j.getF71699b(), (SerialDescriptor[]) ((PluginGeneratedSerialDescriptor) obj).f75666j.getF71699b())) {
                int f75661c = serialDescriptor.getF75549c();
                int i2 = this.f75661c;
                if (i2 == f75661c) {
                    for (int i3 = 0; i3 < i2; i3++) {
                        if (Intrinsics.c(h(i3).getF75568a(), serialDescriptor.h(i3).getF75568a()) && Intrinsics.c(h(i3).getF75548b(), serialDescriptor.h(i3).getF75548b())) {
                        }
                    }
                    return true;
                }
            }
        }
        return false;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final String f(int i2) {
        return this.f75662e[i2];
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final List g(int i2) {
        List list = this.f75663f[i2];
        return list == null ? EmptyList.f71768b : list;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    /* JADX INFO: renamed from: getAnnotations */
    public final List getD() {
        return EmptyList.f71768b;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public SerialDescriptor h(int i2) {
        return ((KSerializer[]) this.f75665i.getF71699b())[i2].getF19838b();
    }

    public int hashCode() {
        return ((Number) this.f75667k.getF71699b()).intValue();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    /* JADX INFO: renamed from: i, reason: from getter */
    public final String getF75568a() {
        return this.f75659a;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final boolean j(int i2) {
        return this.g[i2];
    }

    public final void k(String str, boolean z) {
        str.getClass();
        int i2 = this.d + 1;
        this.d = i2;
        String[] strArr = this.f75662e;
        strArr[i2] = str;
        this.g[i2] = z;
        this.f75663f[i2] = null;
        if (i2 == this.f75661c - 1) {
            HashMap map = new HashMap();
            int length = strArr.length;
            for (int i3 = 0; i3 < length; i3++) {
                map.put(strArr[i3], Integer.valueOf(i3));
            }
            this.f75664h = map;
        }
    }

    public final void l(Annotation annotation) {
        annotation.getClass();
        int i2 = this.d;
        List[] listArr = this.f75663f;
        List arrayList = listArr[i2];
        if (arrayList == null) {
            arrayList = new ArrayList(1);
            listArr[this.d] = arrayList;
        }
        arrayList.add(annotation);
    }

    public String toString() {
        return PluginGeneratedSerialDescriptorKt.b(this);
    }

    public /* synthetic */ PluginGeneratedSerialDescriptor(String str, GeneratedSerializer generatedSerializer, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i3 & 2) != 0 ? null : generatedSerializer, i2);
    }
}
