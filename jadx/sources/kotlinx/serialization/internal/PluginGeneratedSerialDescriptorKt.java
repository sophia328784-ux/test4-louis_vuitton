package kotlinx.serialization.internal;

import defpackage.tb0;
import java.util.Arrays;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.ranges.RangesKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorKt$elementDescriptors$1$1;
import kotlinx.serialization.descriptors.SerialDescriptorKt$special$$inlined$Iterable$1;
import kotlinx.serialization.descriptors.SerialKind;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-serialization-core"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class PluginGeneratedSerialDescriptorKt {
    public static final int a(SerialDescriptor serialDescriptor, SerialDescriptor[] serialDescriptorArr) {
        serialDescriptorArr.getClass();
        int iHashCode = (serialDescriptor.getF75640a().hashCode() * 31) + Arrays.hashCode(serialDescriptorArr);
        SerialDescriptorKt$special$$inlined$Iterable$1 serialDescriptorKt$special$$inlined$Iterable$1 = new SerialDescriptorKt$special$$inlined$Iterable$1(serialDescriptor);
        Iterator<SerialDescriptor> it = serialDescriptorKt$special$$inlined$Iterable$1.iterator();
        int iHashCode2 = 1;
        int i2 = 1;
        while (true) {
            SerialDescriptorKt$elementDescriptors$1$1 serialDescriptorKt$elementDescriptors$1$1 = (SerialDescriptorKt$elementDescriptors$1$1) it;
            int iHashCode3 = 0;
            if (!serialDescriptorKt$elementDescriptors$1$1.hasNext()) {
                break;
            }
            int i3 = i2 * 31;
            String f75640a = ((SerialDescriptor) serialDescriptorKt$elementDescriptors$1$1.next()).getF75640a();
            if (f75640a != null) {
                iHashCode3 = f75640a.hashCode();
            }
            i2 = i3 + iHashCode3;
        }
        Iterator<SerialDescriptor> it2 = serialDescriptorKt$special$$inlined$Iterable$1.iterator();
        while (true) {
            SerialDescriptorKt$elementDescriptors$1$1 serialDescriptorKt$elementDescriptors$1$2 = (SerialDescriptorKt$elementDescriptors$1$1) it2;
            if (!serialDescriptorKt$elementDescriptors$1$2.hasNext()) {
                return (((iHashCode * 31) + i2) * 31) + iHashCode2;
            }
            int i4 = iHashCode2 * 31;
            SerialKind f75548b = ((SerialDescriptor) serialDescriptorKt$elementDescriptors$1$2.next()).getF75548b();
            iHashCode2 = i4 + (f75548b != null ? f75548b.hashCode() : 0);
        }
    }

    public static final String b(SerialDescriptor serialDescriptor) {
        return CollectionsKt.K(RangesKt.j(0, serialDescriptor.getF75549c()), ", ", serialDescriptor.getF75640a() + '(', ")", new tb0(serialDescriptor, 28), 24);
    }
}
