package kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptySet;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf;

/* JADX INFO: loaded from: classes4.dex */
public final class JvmNameResolver extends JvmNameResolverBase {
    public JvmNameResolver(JvmProtoBuf.StringTableTypes stringTableTypes, String[] strArr) {
        stringTableTypes.getClass();
        strArr.getClass();
        List list = stringTableTypes.d;
        Set setB0 = list.isEmpty() ? EmptySet.f71770b : CollectionsKt.B0(list);
        List<JvmProtoBuf.StringTableTypes.Record> list2 = stringTableTypes.f73643c;
        list2.getClass();
        list2.getClass();
        ArrayList arrayList = new ArrayList();
        arrayList.ensureCapacity(list2.size());
        for (JvmProtoBuf.StringTableTypes.Record record : list2) {
            int i2 = record.d;
            for (int i3 = 0; i3 < i2; i3++) {
                arrayList.add(record);
            }
        }
        arrayList.trimToSize();
        super(strArr, setB0, arrayList);
    }
}
