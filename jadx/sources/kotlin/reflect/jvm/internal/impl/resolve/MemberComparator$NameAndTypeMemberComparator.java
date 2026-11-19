package kotlin.reflect.jvm.internal.impl.resolve;

import java.util.Comparator;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.ConstructorDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeAliasDescriptor;

/* JADX INFO: loaded from: classes4.dex */
public class MemberComparator$NameAndTypeMemberComparator implements Comparator<DeclarationDescriptor> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final MemberComparator$NameAndTypeMemberComparator f73836b = new MemberComparator$NameAndTypeMemberComparator();

    public static int a(DeclarationDescriptor declarationDescriptor) {
        if (declarationDescriptor == null) {
            DescriptorUtils.a(36);
            throw null;
        }
        int i2 = DescriptorUtils.f73834a;
        if (DescriptorUtils.l(declarationDescriptor, ClassKind.ENUM_ENTRY)) {
            return 8;
        }
        if (declarationDescriptor instanceof ConstructorDescriptor) {
            return 7;
        }
        if (declarationDescriptor instanceof PropertyDescriptor) {
            return ((PropertyDescriptor) declarationDescriptor).J() == null ? 6 : 5;
        }
        if (declarationDescriptor instanceof FunctionDescriptor) {
            return ((FunctionDescriptor) declarationDescriptor).J() == null ? 4 : 3;
        }
        if (declarationDescriptor instanceof ClassDescriptor) {
            return 2;
        }
        return declarationDescriptor instanceof TypeAliasDescriptor ? 1 : 0;
    }

    @Override // java.util.Comparator
    public final int compare(DeclarationDescriptor declarationDescriptor, DeclarationDescriptor declarationDescriptor2) {
        Integer numValueOf;
        DeclarationDescriptor declarationDescriptor3 = declarationDescriptor;
        DeclarationDescriptor declarationDescriptor4 = declarationDescriptor2;
        int iA = a(declarationDescriptor4) - a(declarationDescriptor3);
        if (iA != 0) {
            numValueOf = Integer.valueOf(iA);
        } else {
            ClassKind classKind = ClassKind.ENUM_ENTRY;
            if (DescriptorUtils.l(declarationDescriptor3, classKind) && DescriptorUtils.l(declarationDescriptor4, classKind)) {
                numValueOf = 0;
            } else {
                int iCompareTo = declarationDescriptor3.getName().f73687b.compareTo(declarationDescriptor4.getName().f73687b);
                numValueOf = iCompareTo != 0 ? Integer.valueOf(iCompareTo) : null;
            }
        }
        if (numValueOf != null) {
            return numValueOf.intValue();
        }
        return 0;
    }
}
