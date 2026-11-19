package kotlin.reflect.jvm.internal.impl.resolve.scopes;

import java.util.Collection;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.incremental.components.LookupLocation;
import kotlin.reflect.jvm.internal.impl.name.Name;

/* JADX INFO: loaded from: classes4.dex */
public interface ResolutionScope {

    public static final class DefaultImpls {
        public static Collection a(ResolutionScope resolutionScope, DescriptorKindFilter descriptorKindFilter, int i2) {
            if ((i2 & 1) != 0) {
                descriptorKindFilter = DescriptorKindFilter.l;
            }
            MemberScope.f73929a.getClass();
            return resolutionScope.g(descriptorKindFilter, MemberScope.Companion.f73931b);
        }
    }

    ClassifierDescriptor f(Name name, LookupLocation lookupLocation);

    Collection g(DescriptorKindFilter descriptorKindFilter, Function1 function1);
}
