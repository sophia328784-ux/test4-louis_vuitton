package kotlin.reflect.jvm.internal.impl.km.internal;

import java.lang.Enum;
import java.util.List;
import kotlin.enums.EnumEntries;
import kotlin.reflect.KMutableProperty1;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.km.KmClass;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.Flags;
import kotlin.reflect.jvm.internal.impl.protobuf.Internal;

/* JADX INFO: loaded from: classes4.dex */
public final class EnumFlagDelegate<Node, E extends Enum<E>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final KMutableProperty1 f72765a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Flags.FlagField f72766b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final EnumEntries f72767c;
    public final List d;

    public EnumFlagDelegate(KMutableProperty1<Node, Integer> kMutableProperty1, Flags.FlagField<? extends Internal.EnumLite> flagField, EnumEntries<E> enumEntries, List<FlagImpl> list) {
        kMutableProperty1.getClass();
        flagField.getClass();
        enumEntries.getClass();
        list.getClass();
        this.f72765a = kMutableProperty1;
        this.f72766b = flagField;
        this.f72767c = enumEntries;
        this.d = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Enum a(KmClass kmClass, KProperty kProperty) {
        kProperty.getClass();
        return (Enum) this.f72767c.get(((Internal.EnumLite) this.f72766b.d(((Number) this.f72765a.get(kmClass)).intValue())).m());
    }

    public final void b(KmClass kmClass, KProperty kProperty, Enum r5) {
        kProperty.getClass();
        r5.getClass();
        FlagImpl flagImpl = (FlagImpl) this.d.get(r5.ordinal());
        KMutableProperty1 kMutableProperty1 = this.f72765a;
        int iIntValue = ((Number) kMutableProperty1.get(kmClass)).intValue();
        int i2 = (1 << flagImpl.f72777b) - 1;
        int i3 = flagImpl.f72776a;
        kMutableProperty1.o(kmClass, Integer.valueOf((iIntValue & (~(i2 << i3))) + (flagImpl.f72778c << i3)));
    }
}
