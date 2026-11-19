package kotlin.reflect.jvm.internal.impl.km.internal;

import java.util.ArrayList;
import java.util.Iterator;
import kotlin.collections.CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.reflect.KMutableProperty1;
import kotlin.reflect.jvm.internal.impl.km.MemberKind;
import kotlin.reflect.jvm.internal.impl.km.Modality;
import kotlin.reflect.jvm.internal.impl.km.Visibility;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.Flags;

/* JADX INFO: loaded from: classes4.dex */
public abstract class FlagDelegatesImplKt {
    public static final BooleanFlagDelegate a(FlagImpl flagImpl) {
        return new BooleanFlagDelegate(FlagDelegatesImplKt$classBooleanFlag$1.f72768b, flagImpl);
    }

    public static final void b(FlagImpl flagImpl) {
        new BooleanFlagDelegate(FlagDelegatesImplKt$constructorBooleanFlag$1.f72769b, flagImpl);
    }

    public static final void c(FlagImpl flagImpl) {
        new BooleanFlagDelegate(FlagDelegatesImplKt$functionBooleanFlag$1.f72770b, flagImpl);
    }

    public static final void d(KMutableProperty1 kMutableProperty1) {
        kMutableProperty1.getClass();
        Flags.FlagField flagField = Flags.p;
        flagField.getClass();
        EnumEntries enumEntriesA = MemberKind.a();
        EnumEntries enumEntriesA2 = MemberKind.a();
        ArrayList arrayList = new ArrayList(CollectionsKt.t(enumEntriesA2, 10));
        Iterator<E> it = enumEntriesA2.iterator();
        while (it.hasNext()) {
            arrayList.add(((MemberKind) it.next()).b());
        }
        new EnumFlagDelegate(kMutableProperty1, flagField, enumEntriesA, arrayList);
    }

    public static final EnumFlagDelegate e(KMutableProperty1 kMutableProperty1) {
        kMutableProperty1.getClass();
        Flags.FlagField flagField = Flags.f73575e;
        flagField.getClass();
        EnumEntries enumEntriesA = Modality.a();
        EnumEntries enumEntriesA2 = Modality.a();
        ArrayList arrayList = new ArrayList(CollectionsKt.t(enumEntriesA2, 10));
        Iterator<E> it = enumEntriesA2.iterator();
        while (it.hasNext()) {
            arrayList.add(((Modality) it.next()).b());
        }
        return new EnumFlagDelegate(kMutableProperty1, flagField, enumEntriesA, arrayList);
    }

    public static final void f(FlagImpl flagImpl) {
        new BooleanFlagDelegate(FlagDelegatesImplKt$propertyAccessorBooleanFlag$1.f72771b, flagImpl);
    }

    public static final BooleanFlagDelegate g(FlagImpl flagImpl) {
        return new BooleanFlagDelegate(FlagDelegatesImplKt$propertyBooleanFlag$1.f72772b, flagImpl);
    }

    public static final void h(FlagImpl flagImpl) {
        new BooleanFlagDelegate(FlagDelegatesImplKt$typeAliasBooleanFlag$1.f72773b, flagImpl);
    }

    public static final BooleanFlagDelegate i(FlagImpl flagImpl) {
        return new BooleanFlagDelegate(FlagDelegatesImplKt$typeBooleanFlag$1.f72774b, flagImpl);
    }

    public static final void j(FlagImpl flagImpl) {
        new BooleanFlagDelegate(FlagDelegatesImplKt$valueParameterBooleanFlag$1.f72775b, flagImpl);
    }

    public static final EnumFlagDelegate k(KMutableProperty1 kMutableProperty1) {
        kMutableProperty1.getClass();
        Flags.FlagField flagField = Flags.d;
        flagField.getClass();
        EnumEntries enumEntriesA = Visibility.a();
        EnumEntries enumEntriesA2 = Visibility.a();
        ArrayList arrayList = new ArrayList(CollectionsKt.t(enumEntriesA2, 10));
        Iterator<E> it = enumEntriesA2.iterator();
        while (it.hasNext()) {
            arrayList.add(((Visibility) it.next()).b());
        }
        return new EnumFlagDelegate(kMutableProperty1, flagField, enumEntriesA, arrayList);
    }
}
