package kotlin.reflect.jvm.internal.impl.descriptors.deserialization;

import java.util.Collection;
import kotlin.collections.EmptyList;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.name.Name;

/* JADX INFO: loaded from: classes4.dex */
public interface AdditionalClassPartsProvider {

    public static final class None implements AdditionalClassPartsProvider {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final None f72443a = new None();

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.deserialization.AdditionalClassPartsProvider
        public final Collection a(Name name, ClassDescriptor classDescriptor) {
            name.getClass();
            classDescriptor.getClass();
            return EmptyList.f71768b;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.deserialization.AdditionalClassPartsProvider
        public final Collection c(ClassDescriptor classDescriptor) {
            classDescriptor.getClass();
            return EmptyList.f71768b;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.deserialization.AdditionalClassPartsProvider
        public final Collection d(ClassDescriptor classDescriptor) {
            classDescriptor.getClass();
            return EmptyList.f71768b;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.deserialization.AdditionalClassPartsProvider
        public final Collection e(ClassDescriptor classDescriptor) {
            classDescriptor.getClass();
            return EmptyList.f71768b;
        }
    }

    Collection a(Name name, ClassDescriptor classDescriptor);

    Collection c(ClassDescriptor classDescriptor);

    Collection d(ClassDescriptor classDescriptor);

    Collection e(ClassDescriptor classDescriptor);
}
