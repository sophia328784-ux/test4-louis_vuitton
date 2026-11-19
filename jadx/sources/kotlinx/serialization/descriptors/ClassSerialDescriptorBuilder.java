package kotlinx.serialization.descriptors;

import defpackage.pq0;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;", "", "", "serialName", "<init>", "(Ljava/lang/String;)V", "kotlinx-serialization-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ClassSerialDescriptorBuilder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f75528a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public List f75529b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f75530c;
    public final HashSet d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ArrayList f75531e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ArrayList f75532f;
    public final ArrayList g;

    public ClassSerialDescriptorBuilder(String str) {
        str.getClass();
        this.f75528a = str;
        this.f75529b = EmptyList.f71768b;
        this.f75530c = new ArrayList();
        this.d = new HashSet();
        this.f75531e = new ArrayList();
        this.f75532f = new ArrayList();
        this.g = new ArrayList();
    }

    public final void a(String str, SerialDescriptor serialDescriptor, List list, boolean z) {
        str.getClass();
        serialDescriptor.getClass();
        list.getClass();
        if (!this.d.add(str)) {
            StringBuilder sbR = pq0.r("Element with name '", str, "' is already registered in ");
            sbR.append(this.f75528a);
            throw new IllegalArgumentException(sbR.toString().toString());
        }
        this.f75530c.add(str);
        this.f75531e.add(serialDescriptor);
        this.f75532f.add(list);
        this.g.add(Boolean.valueOf(z));
    }
}
