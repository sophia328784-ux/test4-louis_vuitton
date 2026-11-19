package kotlinx.serialization.descriptors;

import com.batch.android.s.b;
import defpackage.w1;
import defpackage.xn0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IndexedValue;
import kotlin.collections.IndexingIterable;
import kotlin.collections.IndexingIterator;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.internal.CachedNames;
import kotlinx.serialization.internal.Platform_commonKt;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptorKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002B5\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00010\t\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lkotlinx/serialization/descriptors/SerialDescriptorImpl;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "Lkotlinx/serialization/internal/CachedNames;", "", "serialName", "Lkotlinx/serialization/descriptors/SerialKind;", b.a.d, "", "elementsCount", "", "typeParameters", "Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;", "builder", "<init>", "(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialKind;ILjava/util/List;Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;)V", "kotlinx-serialization-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SerialDescriptorImpl implements SerialDescriptor, CachedNames {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f75547a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SerialKind f75548b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f75549c;
    public final List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final HashSet f75550e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String[] f75551f;
    public final SerialDescriptor[] g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final List[] f75552h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean[] f75553i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Map f75554j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final SerialDescriptor[] f75555k;
    public final Lazy l;

    public SerialDescriptorImpl(String str, SerialKind serialKind, int i2, List<? extends SerialDescriptor> list, ClassSerialDescriptorBuilder classSerialDescriptorBuilder) {
        str.getClass();
        serialKind.getClass();
        list.getClass();
        classSerialDescriptorBuilder.getClass();
        this.f75547a = str;
        this.f75548b = serialKind;
        this.f75549c = i2;
        this.d = classSerialDescriptorBuilder.f75529b;
        ArrayList arrayList = classSerialDescriptorBuilder.f75530c;
        this.f75550e = CollectionsKt.w0(arrayList);
        String[] strArr = (String[]) arrayList.toArray(new String[0]);
        this.f75551f = strArr;
        this.g = Platform_commonKt.b(classSerialDescriptorBuilder.f75531e);
        this.f75552h = (List[]) classSerialDescriptorBuilder.f75532f.toArray(new List[0]);
        this.f75553i = CollectionsKt.u0(classSerialDescriptorBuilder.g);
        strArr.getClass();
        IndexingIterable indexingIterable = new IndexingIterable(new w1(strArr, 8));
        ArrayList arrayList2 = new ArrayList(CollectionsKt.t(indexingIterable, 10));
        Iterator it = indexingIterable.iterator();
        while (true) {
            IndexingIterator indexingIterator = (IndexingIterator) it;
            if (!indexingIterator.f71774b.hasNext()) {
                this.f75554j = MapsKt.n(arrayList2);
                this.f75555k = Platform_commonKt.b(list);
                this.l = LazyKt.b(new xn0(this, 28));
                return;
            }
            IndexedValue indexedValue = (IndexedValue) indexingIterator.next();
            arrayList2.add(new Pair(indexedValue.f71772b, Integer.valueOf(indexedValue.f71771a)));
        }
    }

    @Override // kotlinx.serialization.internal.CachedNames
    /* JADX INFO: renamed from: a */
    public final Set getF75678c() {
        return this.f75550e;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final int c(String str) {
        str.getClass();
        Integer num = (Integer) this.f75554j.get(str);
        if (num != null) {
            return num.intValue();
        }
        return -3;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    /* JADX INFO: renamed from: d, reason: from getter */
    public final int getF75549c() {
        return this.f75549c;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    /* JADX INFO: renamed from: e, reason: from getter */
    public final SerialKind getF75548b() {
        return this.f75548b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SerialDescriptorImpl) {
            SerialDescriptor serialDescriptor = (SerialDescriptor) obj;
            if (Intrinsics.c(this.f75547a, serialDescriptor.getF75677b()) && Arrays.equals(this.f75555k, ((SerialDescriptorImpl) obj).f75555k)) {
                int f75549c = serialDescriptor.getF75549c();
                int i2 = this.f75549c;
                if (i2 == f75549c) {
                    for (int i3 = 0; i3 < i2; i3++) {
                        SerialDescriptor[] serialDescriptorArr = this.g;
                        if (Intrinsics.c(serialDescriptorArr[i3].getF75677b(), serialDescriptor.h(i3).getF75677b()) && Intrinsics.c(serialDescriptorArr[i3].getF75548b(), serialDescriptor.h(i3).getF75548b())) {
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
        return this.f75551f[i2];
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final List g(int i2) {
        return this.f75552h[i2];
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    /* JADX INFO: renamed from: getAnnotations, reason: from getter */
    public final List getD() {
        return this.d;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final SerialDescriptor h(int i2) {
        return this.g[i2];
    }

    public final int hashCode() {
        return ((Number) this.l.getF71699b()).intValue();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    /* JADX INFO: renamed from: i, reason: from getter */
    public final String getF75677b() {
        return this.f75547a;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final boolean j(int i2) {
        return this.f75553i[i2];
    }

    public final String toString() {
        return PluginGeneratedSerialDescriptorKt.b(this);
    }
}
