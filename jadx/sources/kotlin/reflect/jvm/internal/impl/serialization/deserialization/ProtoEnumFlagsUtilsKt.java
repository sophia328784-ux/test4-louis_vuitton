package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DelegatedDescriptorVisibility;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibility;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$MemberKind;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Visibility;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ProtoEnumFlagsUtilsKt {

    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f74057a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f74058b;

        static {
            int[] iArr = new int[ProtoBuf$MemberKind.values().length];
            try {
                iArr[ProtoBuf$MemberKind.DECLARATION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ProtoBuf$MemberKind.FAKE_OVERRIDE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ProtoBuf$MemberKind.DELEGATION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ProtoBuf$MemberKind.SYNTHESIZED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f74057a = iArr;
            int[] iArr2 = new int[CallableMemberDescriptor.Kind.values().length];
            try {
                iArr2[CallableMemberDescriptor.Kind.DECLARATION.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[CallableMemberDescriptor.Kind.FAKE_OVERRIDE.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[CallableMemberDescriptor.Kind.DELEGATION.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr2[CallableMemberDescriptor.Kind.SYNTHESIZED.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            int[] iArr3 = new int[ProtoBuf$Visibility.values().length];
            try {
                iArr3[ProtoBuf$Visibility.INTERNAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr3[ProtoBuf$Visibility.PRIVATE.ordinal()] = 2;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr3[ProtoBuf$Visibility.PRIVATE_TO_THIS.ordinal()] = 3;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr3[ProtoBuf$Visibility.PROTECTED.ordinal()] = 4;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr3[ProtoBuf$Visibility.PUBLIC.ordinal()] = 5;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr3[ProtoBuf$Visibility.LOCAL.ordinal()] = 6;
            } catch (NoSuchFieldError unused14) {
            }
            f74058b = iArr3;
        }
    }

    public static final DelegatedDescriptorVisibility a(ProtoBuf$Visibility protoBuf$Visibility) {
        DescriptorVisibility descriptorVisibility;
        switch (protoBuf$Visibility == null ? -1 : WhenMappings.f74058b[protoBuf$Visibility.ordinal()]) {
            case 1:
                descriptorVisibility = DescriptorVisibilities.d;
                descriptorVisibility.getClass();
                break;
            case 2:
                descriptorVisibility = DescriptorVisibilities.f72366a;
                descriptorVisibility.getClass();
                break;
            case 3:
                descriptorVisibility = DescriptorVisibilities.f72367b;
                descriptorVisibility.getClass();
                break;
            case 4:
                descriptorVisibility = DescriptorVisibilities.f72368c;
                descriptorVisibility.getClass();
                break;
            case 5:
                descriptorVisibility = DescriptorVisibilities.f72369e;
                descriptorVisibility.getClass();
                break;
            case 6:
                descriptorVisibility = DescriptorVisibilities.f72370f;
                descriptorVisibility.getClass();
                break;
            default:
                descriptorVisibility = DescriptorVisibilities.f72366a;
                descriptorVisibility.getClass();
                break;
        }
        return (DelegatedDescriptorVisibility) descriptorVisibility;
    }

    public static final CallableMemberDescriptor.Kind b(ProtoBuf$MemberKind protoBuf$MemberKind) {
        int i2 = protoBuf$MemberKind == null ? -1 : WhenMappings.f74057a[protoBuf$MemberKind.ordinal()];
        if (i2 == 1) {
            return CallableMemberDescriptor.Kind.DECLARATION;
        }
        if (i2 == 2) {
            return CallableMemberDescriptor.Kind.FAKE_OVERRIDE;
        }
        if (i2 != 3) {
            return i2 != 4 ? CallableMemberDescriptor.Kind.DECLARATION : CallableMemberDescriptor.Kind.SYNTHESIZED;
        }
        return CallableMemberDescriptor.Kind.DELEGATION;
    }
}
