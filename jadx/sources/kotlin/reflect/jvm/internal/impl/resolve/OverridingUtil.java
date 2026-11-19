package kotlin.reflect.jvm.internal.impl.resolve;

import com.networkbench.agent.impl.NBSSpanMetricUnit;
import defpackage.a61;
import defpackage.az;
import defpackage.lc0;
import defpackage.r81;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import java.util.ServiceLoader;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DelegatedDescriptorVisibility;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibility;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyAccessorDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertySetterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ReceiverParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyAccessorDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.AbstractTypeChecker;
import kotlin.reflect.jvm.internal.impl.types.FlexibleType;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.TypeCheckerState;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeChecker;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypePreparator;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefinerKt;
import kotlin.reflect.jvm.internal.impl.utils.SmartSet;
import net.rtccloud.sdk.Sink;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes4.dex */
public class OverridingUtil {
    public static final List d = CollectionsKt.y0(ServiceLoader.load(ExternalOverridabilityCondition.class, ExternalOverridabilityCondition.class.getClassLoader()));

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final OverridingUtil f73837e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final KotlinTypeChecker.TypeConstructorEquality f73838f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final KotlinTypeRefiner f73839a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final KotlinTypePreparator f73840b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final KotlinTypeChecker.TypeConstructorEquality f73841c;

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil$1, reason: invalid class name */
    public static class AnonymousClass1 implements KotlinTypeChecker.TypeConstructorEquality {
        public static /* synthetic */ void b(int i2) {
            Object[] objArr = new Object[3];
            if (i2 != 1) {
                objArr[0] = "a";
            } else {
                objArr[0] = NBSSpanMetricUnit.Bit;
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$1";
            objArr[2] = "equals";
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeChecker.TypeConstructorEquality
        public final boolean a(TypeConstructor typeConstructor, TypeConstructor typeConstructor2) {
            if (typeConstructor == null) {
                b(0);
                throw null;
            }
            if (typeConstructor2 != null) {
                return typeConstructor.equals(typeConstructor2);
            }
            b(1);
            throw null;
        }
    }

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil$2, reason: invalid class name */
    final class AnonymousClass2 implements Function2<CallableDescriptor, CallableDescriptor, Pair<CallableDescriptor, CallableDescriptor>> {
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return new Pair((CallableDescriptor) obj, (CallableDescriptor) obj2);
        }
    }

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil$4, reason: invalid class name */
    final class AnonymousClass4 implements Function1<CallableMemberDescriptor, CallableDescriptor> {
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return (CallableMemberDescriptor) obj;
        }
    }

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil$6, reason: invalid class name */
    final class AnonymousClass6 implements Function1<CallableMemberDescriptor, CallableDescriptor> {
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return (CallableMemberDescriptor) obj;
        }
    }

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil$8, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass8 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f73846a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f73847b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ int[] f73848c;

        static {
            int[] iArr = new int[Modality.values().length];
            f73848c = iArr;
            try {
                iArr[Modality.FINAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f73848c[Modality.SEALED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f73848c[Modality.OPEN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f73848c[Modality.ABSTRACT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[OverrideCompatibilityInfo.Result.values().length];
            f73847b = iArr2;
            try {
                iArr2[OverrideCompatibilityInfo.Result.OVERRIDABLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f73847b[OverrideCompatibilityInfo.Result.CONFLICT.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f73847b[OverrideCompatibilityInfo.Result.INCOMPATIBLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            int[] iArr3 = new int[ExternalOverridabilityCondition.Result.values().length];
            f73846a = iArr3;
            try {
                iArr3[ExternalOverridabilityCondition.Result.OVERRIDABLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f73846a[ExternalOverridabilityCondition.Result.INCOMPATIBLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f73846a[ExternalOverridabilityCondition.Result.UNKNOWN.ordinal()] = 3;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    public static class OverrideCompatibilityInfo {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final OverrideCompatibilityInfo f73849c = new OverrideCompatibilityInfo(Result.OVERRIDABLE, "SUCCESS");

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Result f73850a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f73851b;

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        public static final class Result {
            private static final /* synthetic */ Result[] $VALUES;
            public static final Result CONFLICT;
            public static final Result INCOMPATIBLE;
            public static final Result OVERRIDABLE;

            static {
                Result result = new Result("OVERRIDABLE", 0);
                OVERRIDABLE = result;
                Result result2 = new Result("INCOMPATIBLE", 1);
                INCOMPATIBLE = result2;
                Result result3 = new Result("CONFLICT", 2);
                CONFLICT = result3;
                $VALUES = new Result[]{result, result2, result3};
            }

            public static Result valueOf(String str) {
                return (Result) Enum.valueOf(Result.class, str);
            }

            public static Result[] values() {
                return (Result[]) $VALUES.clone();
            }
        }

        public OverrideCompatibilityInfo(Result result, String str) {
            if (result == null) {
                a(3);
                throw null;
            }
            if (str == null) {
                a(4);
                throw null;
            }
            this.f73850a = result;
            this.f73851b = str;
        }

        /* JADX WARN: Code duplicated, block: B:22:0x0031  */
        public static /* synthetic */ void a(int i2) {
            String str = (i2 == 1 || i2 == 2 || i2 == 3 || i2 == 4) ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
            Object[] objArr = new Object[(i2 == 1 || i2 == 2 || i2 == 3 || i2 == 4) ? 3 : 2];
            if (i2 == 1 || i2 == 2) {
                objArr[0] = "debugMessage";
            } else if (i2 == 3) {
                objArr[0] = "success";
            } else if (i2 != 4) {
                objArr[0] = "kotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$OverrideCompatibilityInfo";
            } else {
                objArr[0] = "debugMessage";
            }
            switch (i2) {
                case 1:
                case 2:
                case 3:
                case 4:
                    objArr[1] = "kotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$OverrideCompatibilityInfo";
                    break;
                case 5:
                    objArr[1] = "getResult";
                    break;
                case 6:
                    objArr[1] = "getDebugMessage";
                    break;
                default:
                    objArr[1] = "success";
                    break;
            }
            if (i2 == 1) {
                objArr[2] = "incompatible";
            } else if (i2 == 2) {
                objArr[2] = "conflict";
            } else if (i2 == 3 || i2 == 4) {
                objArr[2] = "<init>";
            }
            String str2 = String.format(str, objArr);
            if (i2 != 1 && i2 != 2 && i2 != 3 && i2 != 4) {
                throw new IllegalStateException(str2);
            }
            throw new IllegalArgumentException(str2);
        }

        public static OverrideCompatibilityInfo c(String str) {
            return new OverrideCompatibilityInfo(Result.INCOMPATIBLE, str);
        }

        public final Result b() {
            Result result = this.f73850a;
            if (result != null) {
                return result;
            }
            a(5);
            throw null;
        }

        public final String toString() {
            return this.f73850a + ": " + this.f73851b;
        }
    }

    static {
        AnonymousClass1 anonymousClass1 = new AnonymousClass1();
        f73838f = anonymousClass1;
        f73837e = new OverridingUtil(anonymousClass1, KotlinTypeRefiner.Default.f74271a, KotlinTypePreparator.Default.f74270a);
    }

    public OverridingUtil(KotlinTypeChecker.TypeConstructorEquality typeConstructorEquality, KotlinTypeRefiner kotlinTypeRefiner, KotlinTypePreparator kotlinTypePreparator) {
        if (typeConstructorEquality == null) {
            a(5);
            throw null;
        }
        if (kotlinTypeRefiner == null) {
            a(6);
            throw null;
        }
        if (kotlinTypePreparator == null) {
            a(7);
            throw null;
        }
        this.f73841c = typeConstructorEquality;
        this.f73839a = kotlinTypeRefiner;
        this.f73840b = kotlinTypePreparator;
    }

    /* JADX WARN: Code duplicated, block: B:103:0x01a5  */
    /* JADX WARN: Code duplicated, block: B:17:0x0035 A[FALL_THROUGH] */
    public static /* synthetic */ void a(int i2) {
        String str;
        int i3;
        if (i2 != 11 && i2 != 12 && i2 != 16 && i2 != 21 && i2 != 93 && i2 != 96 && i2 != 101 && i2 != 42 && i2 != 43) {
            switch (i2) {
                default:
                    switch (i2) {
                        default:
                            switch (i2) {
                                default:
                                    switch (i2) {
                                        case 88:
                                        case 89:
                                        case Sink.ORIENTATION_90 /* 90 */:
                                            break;
                                        default:
                                            str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                                            break;
                                    }
                                case 78:
                                case 79:
                                case EACTags.UNIFORM_RESOURCE_LOCATOR /* 80 */:
                                case EACTags.ANSWER_TO_RESET /* 81 */:
                                case EACTags.HISTORICAL_BYTES /* 82 */:
                                    str = "@NotNull method %s.%s must not return null";
                                    break;
                            }
                        case 30:
                        case 31:
                        case 32:
                        case 33:
                        case 34:
                        case 35:
                        case 36:
                        case 37:
                            str = "@NotNull method %s.%s must not return null";
                            break;
                    }
                case 24:
                case 25:
                case 26:
                case 27:
                    str = "@NotNull method %s.%s must not return null";
                    break;
            }
        } else {
            str = "@NotNull method %s.%s must not return null";
        }
        if (i2 != 11 && i2 != 12 && i2 != 16 && i2 != 21 && i2 != 93 && i2 != 96 && i2 != 101 && i2 != 42 && i2 != 43) {
            switch (i2) {
                case 24:
                case 25:
                case 26:
                case 27:
                    i3 = 2;
                    break;
                default:
                    switch (i2) {
                        case 30:
                        case 31:
                        case 32:
                        case 33:
                        case 34:
                        case 35:
                        case 36:
                        case 37:
                            i3 = 2;
                            break;
                        default:
                            switch (i2) {
                                case 78:
                                case 79:
                                case EACTags.UNIFORM_RESOURCE_LOCATOR /* 80 */:
                                case EACTags.ANSWER_TO_RESET /* 81 */:
                                case EACTags.HISTORICAL_BYTES /* 82 */:
                                    i3 = 2;
                                    break;
                                default:
                                    switch (i2) {
                                        case 88:
                                        case 89:
                                        case Sink.ORIENTATION_90 /* 90 */:
                                            i3 = 2;
                                            break;
                                        default:
                                            i3 = 3;
                                            break;
                                    }
                                    break;
                            }
                            break;
                    }
                    break;
            }
        } else {
            i3 = 2;
        }
        Object[] objArr = new Object[i3];
        switch (i2) {
            case 1:
            case 7:
                objArr[0] = "kotlinTypePreparator";
                break;
            case 2:
                objArr[0] = "customSubtype";
                break;
            case 3:
            case 6:
            default:
                objArr[0] = "kotlinTypeRefiner";
                break;
            case 4:
                objArr[0] = "equalityAxioms";
                break;
            case 5:
                objArr[0] = "axioms";
                break;
            case 8:
            case 9:
                objArr[0] = "candidateSet";
                break;
            case 10:
                objArr[0] = "transformFirst";
                break;
            case 11:
            case 12:
            case 16:
            case 21:
            case 24:
            case 25:
            case 26:
            case 27:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case EACTags.CURRENCY_CODE /* 42 */:
            case EACTags.DATE_OF_BIRTH /* 43 */:
            case 78:
            case 79:
            case EACTags.UNIFORM_RESOURCE_LOCATOR /* 80 */:
            case EACTags.ANSWER_TO_RESET /* 81 */:
            case EACTags.HISTORICAL_BYTES /* 82 */:
            case 88:
            case 89:
            case Sink.ORIENTATION_90 /* 90 */:
            case 93:
            case 96:
            case 101:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/resolve/OverridingUtil";
                break;
            case 13:
                objArr[0] = "f";
                break;
            case 14:
                objArr[0] = "g";
                break;
            case 15:
            case 17:
                objArr[0] = "descriptor";
                break;
            case 18:
                objArr[0] = "result";
                break;
            case 19:
            case 22:
            case 28:
            case 38:
                objArr[0] = "superDescriptor";
                break;
            case 20:
            case 23:
            case 29:
            case 39:
                objArr[0] = "subDescriptor";
                break;
            case 40:
                objArr[0] = "firstParameters";
                break;
            case 41:
                objArr[0] = "secondParameters";
                break;
            case EACTags.CARDHOLDER_NATIONALITY /* 44 */:
                objArr[0] = "typeInSuper";
                break;
            case EACTags.LANGUAGE_PREFERENCES /* 45 */:
                objArr[0] = "typeInSub";
                break;
            case 46:
            case 49:
            case EACTags.DEPRECATED /* 75 */:
                objArr[0] = "typeCheckerState";
                break;
            case EACTags.PIN_USAGE_POLICY /* 47 */:
                objArr[0] = "superTypeParameter";
                break;
            case 48:
                objArr[0] = "subTypeParameter";
                break;
            case 50:
                objArr[0] = "name";
                break;
            case EACTags.TRANSACTION_DATE /* 51 */:
                objArr[0] = "membersFromSupertypes";
                break;
            case EACTags.CARD_SEQUENCE_NUMBER /* 52 */:
                objArr[0] = "membersFromCurrent";
                break;
            case EACTags.SEX /* 53 */:
            case EACTags.DYNAMIC_EXTERNAL_AUTHENTIFICATION /* 59 */:
            case 62:
            case 84:
            case 87:
            case 94:
                objArr[0] = "current";
                break;
            case EACTags.CURRENCY_EXPONENT /* 54 */:
            case 60:
            case 64:
            case 85:
            case 104:
                objArr[0] = "strategy";
                break;
            case 55:
                objArr[0] = "overriding";
                break;
            case 56:
                objArr[0] = "fromSuper";
                break;
            case 57:
                objArr[0] = "fromCurrent";
                break;
            case EACTags.DYNAMIC_INTERNAL_AUTHENTIFICATION /* 58 */:
                objArr[0] = "descriptorsFromSuper";
                break;
            case 61:
            case 63:
                objArr[0] = "notOverridden";
                break;
            case EACTags.ELEMENT_LIST /* 65 */:
            case EACTags.CARDHOLDER_HANDWRITTEN_SIGNATURE /* 67 */:
            case EACTags.MESSAGE_REFERENCE /* 71 */:
                objArr[0] = "a";
                break;
            case EACTags.ADDRESS /* 66 */:
            case EACTags.APPLICATION_IMAGE /* 68 */:
            case 73:
                objArr[0] = NBSSpanMetricUnit.Bit;
                break;
            case EACTags.DISPLAY_IMAGE /* 69 */:
                objArr[0] = "candidate";
                break;
            case 70:
            case 86:
            case 91:
            case 107:
                objArr[0] = "descriptors";
                break;
            case 72:
                objArr[0] = "aReturnType";
                break;
            case EACTags.CERTIFICATION_AUTHORITY_PUBLIC_KEY /* 74 */:
                objArr[0] = "bReturnType";
                break;
            case 76:
            case 83:
                objArr[0] = "overridables";
                break;
            case EACTags.INTEGRATED_CIRCUIT_MANUFACTURER_ID /* 77 */:
            case 99:
                objArr[0] = "descriptorByHandle";
                break;
            case 92:
                objArr[0] = "classModality";
                break;
            case 95:
                objArr[0] = "toFilter";
                break;
            case 97:
            case 102:
                objArr[0] = "overrider";
                break;
            case 98:
            case 103:
                objArr[0] = "extractFrom";
                break;
            case 100:
                objArr[0] = "onConflict";
                break;
            case 105:
            case 106:
                objArr[0] = "memberDescriptor";
                break;
        }
        if (i2 == 11 || i2 == 12) {
            objArr[1] = "filterOverrides";
        } else if (i2 == 16) {
            objArr[1] = "getOverriddenDeclarations";
        } else if (i2 == 21) {
            objArr[1] = "isOverridableBy";
        } else if (i2 == 93) {
            objArr[1] = "getMinimalModality";
        } else if (i2 == 96) {
            objArr[1] = "filterVisibleFakeOverrides";
        } else if (i2 == 101) {
            objArr[1] = "extractMembersOverridableInBothWays";
        } else if (i2 != 42 && i2 != 43) {
            switch (i2) {
                case 24:
                case 25:
                case 26:
                case 27:
                    objArr[1] = "isOverridableBy";
                    break;
                default:
                    switch (i2) {
                        case 30:
                        case 31:
                        case 32:
                        case 33:
                        case 34:
                        case 35:
                        case 36:
                        case 37:
                            objArr[1] = "isOverridableByWithoutExternalConditions";
                            break;
                        default:
                            switch (i2) {
                                case 78:
                                case 79:
                                case EACTags.UNIFORM_RESOURCE_LOCATOR /* 80 */:
                                case EACTags.ANSWER_TO_RESET /* 81 */:
                                case EACTags.HISTORICAL_BYTES /* 82 */:
                                    objArr[1] = "selectMostSpecificMember";
                                    break;
                                default:
                                    switch (i2) {
                                        case 88:
                                        case 89:
                                        case Sink.ORIENTATION_90 /* 90 */:
                                            objArr[1] = "determineModalityForFakeOverride";
                                            break;
                                        default:
                                            objArr[1] = "kotlin/reflect/jvm/internal/impl/resolve/OverridingUtil";
                                            break;
                                    }
                                    break;
                            }
                            break;
                    }
                    break;
            }
        } else {
            objArr[1] = "createTypeCheckerState";
        }
        switch (i2) {
            case 1:
            case 2:
                objArr[2] = "createWithTypePreparatorAndCustomSubtype";
                break;
            case 3:
            case 4:
                objArr[2] = "create";
                break;
            case 5:
            case 6:
            case 7:
                objArr[2] = "<init>";
                break;
            case 8:
                objArr[2] = "filterOutOverridden";
                break;
            case 9:
            case 10:
                objArr[2] = "filterOverrides";
                break;
            case 11:
            case 12:
            case 16:
            case 21:
            case 24:
            case 25:
            case 26:
            case 27:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case EACTags.CURRENCY_CODE /* 42 */:
            case EACTags.DATE_OF_BIRTH /* 43 */:
            case 78:
            case 79:
            case EACTags.UNIFORM_RESOURCE_LOCATOR /* 80 */:
            case EACTags.ANSWER_TO_RESET /* 81 */:
            case EACTags.HISTORICAL_BYTES /* 82 */:
            case 88:
            case 89:
            case Sink.ORIENTATION_90 /* 90 */:
            case 93:
            case 96:
            case 101:
                break;
            case 13:
            case 14:
                objArr[2] = "overrides";
                break;
            case 15:
                objArr[2] = "getOverriddenDeclarations";
                break;
            case 17:
            case 18:
                objArr[2] = "collectOverriddenDeclarations";
                break;
            case 19:
            case 20:
            case 22:
            case 23:
                objArr[2] = "isOverridableBy";
                break;
            case 28:
            case 29:
                objArr[2] = "isOverridableByWithoutExternalConditions";
                break;
            case 38:
            case 39:
                objArr[2] = "getBasicOverridabilityProblem";
                break;
            case 40:
            case 41:
                objArr[2] = "createTypeCheckerState";
                break;
            case EACTags.CARDHOLDER_NATIONALITY /* 44 */:
            case EACTags.LANGUAGE_PREFERENCES /* 45 */:
            case 46:
                objArr[2] = "areTypesEquivalent";
                break;
            case EACTags.PIN_USAGE_POLICY /* 47 */:
            case 48:
            case 49:
                objArr[2] = "areTypeParametersEquivalent";
                break;
            case 50:
            case EACTags.TRANSACTION_DATE /* 51 */:
            case EACTags.CARD_SEQUENCE_NUMBER /* 52 */:
            case EACTags.SEX /* 53 */:
            case EACTags.CURRENCY_EXPONENT /* 54 */:
                objArr[2] = "generateOverridesInFunctionGroup";
                break;
            case 55:
            case 56:
                objArr[2] = "isVisibleForOverride";
                break;
            case 57:
            case EACTags.DYNAMIC_INTERNAL_AUTHENTIFICATION /* 58 */:
            case EACTags.DYNAMIC_EXTERNAL_AUTHENTIFICATION /* 59 */:
            case 60:
                objArr[2] = "extractAndBindOverridesForMember";
                break;
            case 61:
                objArr[2] = "allHasSameContainingDeclaration";
                break;
            case 62:
            case 63:
            case 64:
                objArr[2] = "createAndBindFakeOverrides";
                break;
            case EACTags.ELEMENT_LIST /* 65 */:
            case EACTags.ADDRESS /* 66 */:
                objArr[2] = "isMoreSpecific";
                break;
            case EACTags.CARDHOLDER_HANDWRITTEN_SIGNATURE /* 67 */:
            case EACTags.APPLICATION_IMAGE /* 68 */:
                objArr[2] = "isVisibilityMoreSpecific";
                break;
            case EACTags.DISPLAY_IMAGE /* 69 */:
            case 70:
                objArr[2] = "isMoreSpecificThenAllOf";
                break;
            case EACTags.MESSAGE_REFERENCE /* 71 */:
            case 72:
            case 73:
            case EACTags.CERTIFICATION_AUTHORITY_PUBLIC_KEY /* 74 */:
            case EACTags.DEPRECATED /* 75 */:
                objArr[2] = "isReturnTypeMoreSpecific";
                break;
            case 76:
            case EACTags.INTEGRATED_CIRCUIT_MANUFACTURER_ID /* 77 */:
                objArr[2] = "selectMostSpecificMember";
                break;
            case 83:
            case 84:
            case 85:
                objArr[2] = "createAndBindFakeOverride";
                break;
            case 86:
            case 87:
                objArr[2] = "determineModalityForFakeOverride";
                break;
            case 91:
            case 92:
                objArr[2] = "getMinimalModality";
                break;
            case 94:
            case 95:
                objArr[2] = "filterVisibleFakeOverrides";
                break;
            case 97:
            case 98:
            case 99:
            case 100:
            case 102:
            case 103:
            case 104:
                objArr[2] = "extractMembersOverridableInBothWays";
                break;
            case 105:
                objArr[2] = "resolveUnknownVisibilityForMember";
                break;
            case 106:
                objArr[2] = "computeVisibilityToInherit";
                break;
            case 107:
                objArr[2] = "findMaxVisibility";
                break;
            default:
                objArr[2] = "createWithTypeRefiner";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i2 != 11 && i2 != 12 && i2 != 16 && i2 != 21 && i2 != 93 && i2 != 96 && i2 != 101 && i2 != 42 && i2 != 43) {
            switch (i2) {
                case 24:
                case 25:
                case 26:
                case 27:
                    break;
                default:
                    switch (i2) {
                        case 30:
                        case 31:
                        case 32:
                        case 33:
                        case 34:
                        case 35:
                        case 36:
                        case 37:
                            break;
                        default:
                            switch (i2) {
                                case 78:
                                case 79:
                                case EACTags.UNIFORM_RESOURCE_LOCATOR /* 80 */:
                                case EACTags.ANSWER_TO_RESET /* 81 */:
                                case EACTags.HISTORICAL_BYTES /* 82 */:
                                    break;
                                default:
                                    switch (i2) {
                                        case 88:
                                        case 89:
                                        case Sink.ORIENTATION_90 /* 90 */:
                                            break;
                                        default:
                                            throw new IllegalArgumentException(str2);
                                    }
                                    break;
                            }
                            break;
                    }
                    break;
            }
        }
        throw new IllegalStateException(str2);
    }

    public static boolean b(KotlinType kotlinType, KotlinType kotlinType2, TypeCheckerState typeCheckerState) {
        if (kotlinType == null) {
            a(44);
            throw null;
        }
        if (kotlinType2 == null) {
            a(45);
            throw null;
        }
        if (KotlinTypeKt.a(kotlinType) && KotlinTypeKt.a(kotlinType2)) {
            return true;
        }
        return AbstractTypeChecker.f(typeCheckerState, kotlinType.K0(), kotlinType2.K0());
    }

    public static void c(CallableMemberDescriptor callableMemberDescriptor, LinkedHashSet linkedHashSet) {
        if (callableMemberDescriptor == null) {
            a(17);
            throw null;
        }
        CallableMemberDescriptor.Kind kindE = callableMemberDescriptor.e();
        kindE.getClass();
        if (kindE != CallableMemberDescriptor.Kind.FAKE_OVERRIDE) {
            linkedHashSet.add(callableMemberDescriptor);
        } else {
            if (callableMemberDescriptor.i().isEmpty()) {
                a61.q(callableMemberDescriptor, "No overridden descriptors found for (fake override) ");
                return;
            }
            Iterator it = callableMemberDescriptor.i().iterator();
            while (it.hasNext()) {
                c((CallableMemberDescriptor) it.next(), linkedHashSet);
            }
        }
    }

    public static ArrayList d(CallableDescriptor callableDescriptor) {
        ReceiverParameterDescriptor receiverParameterDescriptorJ = callableDescriptor.J();
        ArrayList arrayList = new ArrayList();
        if (receiverParameterDescriptorJ != null) {
            arrayList.add(receiverParameterDescriptorJ.getType());
        }
        Iterator it = callableDescriptor.h().iterator();
        while (it.hasNext()) {
            arrayList.add(((ValueParameterDescriptor) it.next()).getType());
        }
        return arrayList;
    }

    public static void e(Collection collection, final ClassDescriptor classDescriptor, NonReportingOverrideStrategy nonReportingOverrideStrategy) {
        Modality modalityQ;
        if (collection == null) {
            a(83);
            throw null;
        }
        if (classDescriptor == null) {
            a(84);
            throw null;
        }
        ArrayList arrayListY = CollectionsKt.y(collection, new Function1<CallableMemberDescriptor, Boolean>() { // from class: kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil.5
            /* JADX WARN: Code duplicated, block: B:11:0x0020  */
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean z;
                CallableMemberDescriptor callableMemberDescriptor = (CallableMemberDescriptor) obj;
                if (DescriptorVisibilities.e(callableMemberDescriptor.getVisibility())) {
                    z = false;
                } else {
                    ClassDescriptor classDescriptor2 = classDescriptor;
                    if (classDescriptor2 == null) {
                        DescriptorVisibilities.a(3);
                        throw null;
                    }
                    if (DescriptorVisibilities.c(DescriptorVisibilities.n, callableMemberDescriptor, classDescriptor2) == null) {
                        z = true;
                    } else {
                        z = false;
                    }
                }
                return Boolean.valueOf(z);
            }
        });
        boolean zIsEmpty = arrayListY.isEmpty();
        if (!zIsEmpty) {
            collection = arrayListY;
        }
        Iterator it = collection.iterator();
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        while (true) {
            if (!it.hasNext()) {
                if (classDescriptor.c0() && classDescriptor.q() != Modality.ABSTRACT && classDescriptor.q() != Modality.SEALED) {
                    z = true;
                }
                if (z2 && !z3) {
                    modalityQ = Modality.OPEN;
                    if (modalityQ != null) {
                        break;
                    }
                    a(89);
                    throw null;
                }
                if (!z2 && z3) {
                    modalityQ = z ? classDescriptor.q() : Modality.ABSTRACT;
                    if (modalityQ != null) {
                        break;
                    }
                    a(90);
                    throw null;
                }
                HashSet<CallableMemberDescriptor> hashSet = new HashSet();
                for (CallableMemberDescriptor callableMemberDescriptor : collection) {
                    if (callableMemberDescriptor == null) {
                        a(15);
                        throw null;
                    }
                    LinkedHashSet linkedHashSet = new LinkedHashSet();
                    c(callableMemberDescriptor, linkedHashSet);
                    hashSet.addAll(linkedHashSet);
                }
                if (!hashSet.isEmpty()) {
                    ModuleDescriptor moduleDescriptorI = DescriptorUtilsKt.i((DeclarationDescriptor) hashSet.iterator().next());
                    moduleDescriptorI.getClass();
                    if (moduleDescriptorI.C0(KotlinTypeRefinerKt.f74272a) != null) {
                        r81.h();
                        return;
                    }
                }
                AnonymousClass2 anonymousClass2 = new AnonymousClass2();
                if (hashSet.size() > 1) {
                    LinkedHashSet linkedHashSet2 = new LinkedHashSet();
                    for (Object obj : hashSet) {
                        Iterator it2 = linkedHashSet2.iterator();
                        while (true) {
                            if (!it2.hasNext()) {
                                linkedHashSet2.add(obj);
                                break;
                            }
                            Pair pair = (Pair) anonymousClass2.invoke(obj, it2.next());
                            CallableDescriptor callableDescriptor = (CallableDescriptor) pair.f71705b;
                            CallableDescriptor callableDescriptor2 = (CallableDescriptor) pair.f71706c;
                            if (!q(callableDescriptor, callableDescriptor2)) {
                                if (q(callableDescriptor2, callableDescriptor)) {
                                    break;
                                }
                            } else {
                                it2.remove();
                            }
                        }
                    }
                    hashSet = linkedHashSet2;
                }
                Modality modalityQ2 = classDescriptor.q();
                if (modalityQ2 == null) {
                    a(92);
                    throw null;
                }
                Modality modality = Modality.ABSTRACT;
                for (CallableMemberDescriptor callableMemberDescriptor2 : hashSet) {
                    Modality modalityQ3 = (z && callableMemberDescriptor2.q() == Modality.ABSTRACT) ? modalityQ2 : callableMemberDescriptor2.q();
                    if (modalityQ3.compareTo(modality) < 0) {
                        modality = modalityQ3;
                    }
                }
                if (modality != null) {
                    modalityQ = modality;
                    break;
                } else {
                    a(93);
                    throw null;
                }
            }
            CallableMemberDescriptor callableMemberDescriptor3 = (CallableMemberDescriptor) it.next();
            int i2 = AnonymousClass8.f73848c[callableMemberDescriptor3.q().ordinal()];
            if (i2 == 1) {
                modalityQ = Modality.FINAL;
                if (modalityQ != null) {
                    break;
                }
                a(88);
                throw null;
            }
            if (i2 == 2) {
                a61.q(callableMemberDescriptor3, "Member cannot have SEALED modality: ");
                return;
            } else if (i2 == 3) {
                z2 = true;
            } else if (i2 == 4) {
                z3 = true;
            }
        }
        CallableMemberDescriptor callableMemberDescriptorL0 = ((CallableMemberDescriptor) s(collection, new AnonymousClass4())).l0(classDescriptor, modalityQ, (DelegatedDescriptorVisibility) (zIsEmpty ? DescriptorVisibilities.f72371h : DescriptorVisibilities.g), CallableMemberDescriptor.Kind.FAKE_OVERRIDE);
        nonReportingOverrideStrategy.b(callableMemberDescriptorL0, collection);
        nonReportingOverrideStrategy.a(callableMemberDescriptorL0);
    }

    public static ArrayList g(Object obj, LinkedList linkedList, Function1 function1, Function1 function2) {
        if (obj == null) {
            a(97);
            throw null;
        }
        if (function1 == null) {
            a(99);
            throw null;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(obj);
        CallableDescriptor callableDescriptor = (CallableDescriptor) function1.invoke(obj);
        Iterator it = linkedList.iterator();
        while (it.hasNext()) {
            Object next = it.next();
            CallableDescriptor callableDescriptor2 = (CallableDescriptor) function1.invoke(next);
            if (obj == next) {
                it.remove();
            } else {
                OverrideCompatibilityInfo.Result resultJ = j(callableDescriptor, callableDescriptor2);
                if (resultJ == OverrideCompatibilityInfo.Result.OVERRIDABLE) {
                    arrayList.add(next);
                    it.remove();
                } else if (resultJ == OverrideCompatibilityInfo.Result.CONFLICT) {
                    function2.invoke(next);
                    it.remove();
                }
            }
        }
        return arrayList;
    }

    public static OverrideCompatibilityInfo i(CallableDescriptor callableDescriptor, CallableDescriptor callableDescriptor2) {
        boolean z;
        OverrideCompatibilityInfo overrideCompatibilityInfoC;
        if (callableDescriptor == null) {
            a(38);
            throw null;
        }
        if (callableDescriptor2 == null) {
            a(39);
            throw null;
        }
        boolean z2 = callableDescriptor instanceof FunctionDescriptor;
        if ((z2 && !(callableDescriptor2 instanceof FunctionDescriptor)) || (((z = callableDescriptor instanceof PropertyDescriptor)) && !(callableDescriptor2 instanceof PropertyDescriptor))) {
            return OverrideCompatibilityInfo.c("Member kind mismatch");
        }
        if (!z2 && !z) {
            az.m(callableDescriptor, "This type of CallableDescriptor cannot be checked for overridability: ");
            return null;
        }
        if (!callableDescriptor.getName().equals(callableDescriptor2.getName())) {
            return OverrideCompatibilityInfo.c("Name mismatch");
        }
        if ((callableDescriptor.J() == null) != (callableDescriptor2.J() == null)) {
            overrideCompatibilityInfoC = OverrideCompatibilityInfo.c("Receiver presence mismatch");
        } else {
            overrideCompatibilityInfoC = callableDescriptor.h().size() != callableDescriptor2.h().size() ? OverrideCompatibilityInfo.c("Value parameter number mismatch") : null;
        }
        if (overrideCompatibilityInfoC != null) {
            return overrideCompatibilityInfoC;
        }
        return null;
    }

    public static OverrideCompatibilityInfo.Result j(CallableDescriptor callableDescriptor, CallableDescriptor callableDescriptor2) {
        OverridingUtil overridingUtil = f73837e;
        OverrideCompatibilityInfo.Result resultB = overridingUtil.l(callableDescriptor2, callableDescriptor, null).b();
        OverrideCompatibilityInfo.Result resultB2 = overridingUtil.m(callableDescriptor, callableDescriptor2, null, false).b();
        OverrideCompatibilityInfo.Result result = OverrideCompatibilityInfo.Result.OVERRIDABLE;
        if (resultB == result && resultB2 == result) {
            return result;
        }
        OverrideCompatibilityInfo.Result result2 = OverrideCompatibilityInfo.Result.CONFLICT;
        return (resultB == result2 || resultB2 == result2) ? result2 : OverrideCompatibilityInfo.Result.INCOMPATIBLE;
    }

    public static boolean k(CallableDescriptor callableDescriptor, CallableDescriptor callableDescriptor2) {
        if (callableDescriptor == null) {
            a(65);
            throw null;
        }
        if (callableDescriptor2 == null) {
            a(66);
            throw null;
        }
        KotlinType returnType = callableDescriptor.getReturnType();
        KotlinType returnType2 = callableDescriptor2.getReturnType();
        if (p(callableDescriptor, callableDescriptor2)) {
            TypeCheckerState typeCheckerStateF = f73837e.f(callableDescriptor.getTypeParameters(), callableDescriptor2.getTypeParameters());
            if (callableDescriptor instanceof FunctionDescriptor) {
                return o(callableDescriptor, returnType, callableDescriptor2, returnType2, typeCheckerStateF);
            }
            if (!(callableDescriptor instanceof PropertyDescriptor)) {
                az.w(callableDescriptor.getClass(), "Unexpected callable: ");
                return false;
            }
            PropertyDescriptor propertyDescriptor = (PropertyDescriptor) callableDescriptor;
            PropertyDescriptor propertyDescriptor2 = (PropertyDescriptor) callableDescriptor2;
            PropertySetterDescriptor setter = propertyDescriptor.getSetter();
            PropertySetterDescriptor setter2 = propertyDescriptor2.getSetter();
            if ((setter == null || setter2 == null) ? true : p(setter, setter2)) {
                if (propertyDescriptor.I() && propertyDescriptor2.I()) {
                    return AbstractTypeChecker.f(typeCheckerStateF, returnType.K0(), returnType2.K0());
                }
                if ((propertyDescriptor.I() || !propertyDescriptor2.I()) && o(callableDescriptor, returnType, callableDescriptor2, returnType2, typeCheckerStateF)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean o(CallableDescriptor callableDescriptor, KotlinType kotlinType, CallableDescriptor callableDescriptor2, KotlinType kotlinType2, TypeCheckerState typeCheckerState) {
        if (callableDescriptor == null) {
            a(71);
            throw null;
        }
        if (kotlinType == null) {
            a(72);
            throw null;
        }
        if (callableDescriptor2 == null) {
            a(73);
            throw null;
        }
        if (kotlinType2 == null) {
            a(74);
            throw null;
        }
        return AbstractTypeChecker.j(AbstractTypeChecker.f74158a, typeCheckerState, kotlinType.K0(), kotlinType2.K0());
    }

    public static boolean p(CallableDescriptor callableDescriptor, CallableDescriptor callableDescriptor2) {
        if (callableDescriptor == null) {
            a(67);
            throw null;
        }
        if (callableDescriptor2 != null) {
            Integer numB = DescriptorVisibilities.b(callableDescriptor.getVisibility(), callableDescriptor2.getVisibility());
            return numB == null || numB.intValue() >= 0;
        }
        a(68);
        throw null;
    }

    public static boolean q(CallableDescriptor callableDescriptor, CallableDescriptor callableDescriptor2) {
        if (callableDescriptor == null) {
            a(13);
            throw null;
        }
        if (callableDescriptor2 == null) {
            a(14);
            throw null;
        }
        boolean zEquals = callableDescriptor.equals(callableDescriptor2);
        DescriptorEquivalenceForOverrides descriptorEquivalenceForOverrides = DescriptorEquivalenceForOverrides.f73826a;
        if (!zEquals && descriptorEquivalenceForOverrides.a(callableDescriptor.y0(), callableDescriptor2.y0(), false)) {
            return true;
        }
        CallableDescriptor callableDescriptorY0 = callableDescriptor2.y0();
        int i2 = DescriptorUtils.f73834a;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        DescriptorUtils.b(callableDescriptor.y0(), linkedHashSet);
        Iterator it = linkedHashSet.iterator();
        while (it.hasNext()) {
            if (descriptorEquivalenceForOverrides.a(callableDescriptorY0, (CallableDescriptor) it.next(), false)) {
                return true;
            }
        }
        return false;
    }

    public static void r(CallableMemberDescriptor callableMemberDescriptor, Function1 function1) {
        DescriptorVisibility descriptorVisibility;
        DescriptorVisibility descriptorVisibilityG;
        DescriptorVisibility descriptorVisibility2;
        if (callableMemberDescriptor == null) {
            a(105);
            throw null;
        }
        for (CallableMemberDescriptor callableMemberDescriptor2 : callableMemberDescriptor.i()) {
            if (callableMemberDescriptor2.getVisibility() == DescriptorVisibilities.g) {
                r(callableMemberDescriptor2, function1);
            }
        }
        if (callableMemberDescriptor.getVisibility() != DescriptorVisibilities.g) {
            return;
        }
        Collection<CallableMemberDescriptor> collectionI = callableMemberDescriptor.i();
        if (collectionI == null) {
            a(107);
            throw null;
        }
        if (!collectionI.isEmpty()) {
            Iterator it = collectionI.iterator();
            loop3: while (true) {
                descriptorVisibility = null;
                while (true) {
                    if (!it.hasNext()) {
                        break loop3;
                    }
                    DescriptorVisibility visibility = ((CallableMemberDescriptor) it.next()).getVisibility();
                    if (descriptorVisibility != null) {
                        Integer numB = DescriptorVisibilities.b(visibility, descriptorVisibility);
                        if (numB != null) {
                            if (numB.intValue() > 0) {
                            }
                        }
                    }
                    descriptorVisibility = visibility;
                }
            }
            if (descriptorVisibility == null) {
                descriptorVisibilityG = null;
                break;
            }
            Iterator it2 = collectionI.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    descriptorVisibilityG = descriptorVisibility;
                    break;
                }
                Integer numB2 = DescriptorVisibilities.b(descriptorVisibility, ((CallableMemberDescriptor) it2.next()).getVisibility());
                if (numB2 == null || numB2.intValue() < 0) {
                    descriptorVisibilityG = null;
                    break;
                }
            }
        } else {
            descriptorVisibilityG = DescriptorVisibilities.l;
        }
        if (descriptorVisibilityG == null) {
            descriptorVisibilityG = null;
            break;
        }
        if (callableMemberDescriptor.e() == CallableMemberDescriptor.Kind.FAKE_OVERRIDE) {
            for (CallableMemberDescriptor callableMemberDescriptor3 : collectionI) {
                if (callableMemberDescriptor3.q() != Modality.ABSTRACT && !callableMemberDescriptor3.getVisibility().equals(descriptorVisibilityG)) {
                    descriptorVisibilityG = null;
                    break;
                }
            }
        } else {
            descriptorVisibilityG = DescriptorVisibilities.g(((DelegatedDescriptorVisibility) descriptorVisibilityG).f72365a.c());
        }
        if (descriptorVisibilityG == null) {
            if (function1 != null) {
                function1.invoke(callableMemberDescriptor);
            }
            descriptorVisibility2 = DescriptorVisibilities.f72369e;
        } else {
            descriptorVisibility2 = descriptorVisibilityG;
        }
        if (callableMemberDescriptor instanceof PropertyDescriptorImpl) {
            PropertyDescriptorImpl propertyDescriptorImpl = (PropertyDescriptorImpl) callableMemberDescriptor;
            if (descriptorVisibility2 == null) {
                PropertyDescriptorImpl.Z(20);
                throw null;
            }
            propertyDescriptorImpl.f72548k = descriptorVisibility2;
            Iterator it3 = ((PropertyDescriptor) callableMemberDescriptor).t().iterator();
            while (it3.hasNext()) {
                r((PropertyAccessorDescriptor) it3.next(), descriptorVisibilityG == null ? null : function1);
            }
            return;
        }
        if (callableMemberDescriptor instanceof FunctionDescriptorImpl) {
            FunctionDescriptorImpl functionDescriptorImpl = (FunctionDescriptorImpl) callableMemberDescriptor;
            if (descriptorVisibility2 != null) {
                functionDescriptorImpl.m = descriptorVisibility2;
                return;
            } else {
                FunctionDescriptorImpl.Z(10);
                throw null;
            }
        }
        PropertyAccessorDescriptorImpl propertyAccessorDescriptorImpl = (PropertyAccessorDescriptorImpl) callableMemberDescriptor;
        propertyAccessorDescriptorImpl.l = descriptorVisibility2;
        if (descriptorVisibility2 != propertyAccessorDescriptorImpl.P().getVisibility()) {
            propertyAccessorDescriptorImpl.f72542f = false;
        }
    }

    public static Object s(Collection collection, Function1 function1) {
        Object next;
        KotlinType returnType;
        if (function1 == null) {
            a(77);
            throw null;
        }
        if (collection.size() == 1) {
            Object objA = CollectionsKt.A(collection);
            if (objA != null) {
                return objA;
            }
            a(78);
            throw null;
        }
        ArrayList arrayList = new ArrayList(2);
        ArrayList arrayList2 = new ArrayList(CollectionsKt.t(collection, 10));
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            arrayList2.add(function1.invoke(it.next()));
        }
        Object objA2 = CollectionsKt.A(collection);
        CallableDescriptor callableDescriptor = (CallableDescriptor) function1.invoke(objA2);
        for (Object obj : collection) {
            CallableDescriptor callableDescriptor2 = (CallableDescriptor) function1.invoke(obj);
            if (callableDescriptor2 == null) {
                a(69);
                throw null;
            }
            Iterator it2 = arrayList2.iterator();
            do {
                if (!it2.hasNext()) {
                    arrayList.add(obj);
                    break;
                }
            } while (k(callableDescriptor2, (CallableDescriptor) it2.next()));
            if (k(callableDescriptor2, callableDescriptor) && !k(callableDescriptor, callableDescriptor2)) {
                objA2 = obj;
            }
        }
        if (arrayList.isEmpty()) {
            if (objA2 != null) {
                return objA2;
            }
            a(79);
            throw null;
        }
        if (arrayList.size() == 1) {
            Object objA3 = CollectionsKt.A(arrayList);
            if (objA3 != null) {
                return objA3;
            }
            a(80);
            throw null;
        }
        Iterator it3 = arrayList.iterator();
        do {
            if (!it3.hasNext()) {
                next = null;
                break;
            }
            next = it3.next();
            returnType = ((CallableDescriptor) function1.invoke(next)).getReturnType();
            returnType.getClass();
        } while (returnType.K0() instanceof FlexibleType);
        if (next != null) {
            return next;
        }
        Object objA4 = CollectionsKt.A(arrayList);
        if (objA4 != null) {
            return objA4;
        }
        a(82);
        throw null;
    }

    public final TypeCheckerState f(List list, List list2) {
        if (list == null) {
            a(40);
            throw null;
        }
        if (list2 == null) {
            a(41);
            throw null;
        }
        if (list.isEmpty()) {
            return new OverridingUtilTypeSystemContext(null, this.f73841c, this.f73839a, this.f73840b, null).t0();
        }
        HashMap map = new HashMap();
        for (int i2 = 0; i2 < list.size(); i2++) {
            map.put(((TypeParameterDescriptor) list.get(i2)).j(), ((TypeParameterDescriptor) list2.get(i2)).j());
        }
        return new OverridingUtilTypeSystemContext(map, this.f73841c, this.f73839a, this.f73840b, null).t0();
    }

    public final void h(Name name, Collection collection, Collection collection2, ClassDescriptor classDescriptor, final NonReportingOverrideStrategy nonReportingOverrideStrategy) {
        Integer numB;
        if (name == null) {
            a(50);
            throw null;
        }
        if (collection == null) {
            a(51);
            throw null;
        }
        if (collection2 == null) {
            a(52);
            throw null;
        }
        if (classDescriptor == null) {
            a(53);
            throw null;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet(collection);
        Iterator it = collection2.iterator();
        while (it.hasNext()) {
            CallableMemberDescriptor callableMemberDescriptor = (CallableMemberDescriptor) it.next();
            if (callableMemberDescriptor == null) {
                a(57);
                throw null;
            }
            ArrayList arrayList = new ArrayList(collection.size());
            SmartSet.d.getClass();
            SmartSet smartSetA = SmartSet.Companion.a();
            Iterator it2 = collection.iterator();
            while (it2.hasNext()) {
                CallableMemberDescriptor callableMemberDescriptor2 = (CallableMemberDescriptor) it2.next();
                OverrideCompatibilityInfo.Result resultB = l(callableMemberDescriptor2, callableMemberDescriptor, classDescriptor).b();
                boolean z = !DescriptorVisibilities.e(callableMemberDescriptor2.getVisibility()) && DescriptorVisibilities.c(DescriptorVisibilities.n, callableMemberDescriptor2, callableMemberDescriptor) == null;
                int i2 = AnonymousClass8.f73847b[resultB.ordinal()];
                if (i2 == 1) {
                    if (z) {
                        smartSetA.add(callableMemberDescriptor2);
                    }
                    arrayList.add(callableMemberDescriptor2);
                } else if (i2 == 2) {
                    if (z) {
                        nonReportingOverrideStrategy.c(callableMemberDescriptor2, callableMemberDescriptor);
                    }
                    arrayList.add(callableMemberDescriptor2);
                }
            }
            nonReportingOverrideStrategy.b(callableMemberDescriptor, smartSetA);
            linkedHashSet.removeAll(arrayList);
        }
        if (linkedHashSet.size() >= 2) {
            final DeclarationDescriptor declarationDescriptorD = ((CallableMemberDescriptor) linkedHashSet.iterator().next()).d();
            Function1<CallableMemberDescriptor, Boolean> function1 = new Function1<CallableMemberDescriptor, Boolean>() { // from class: kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil.3
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return Boolean.valueOf(((CallableMemberDescriptor) obj).d() == declarationDescriptorD);
                }
            };
            if (!linkedHashSet.isEmpty()) {
                Iterator it3 = linkedHashSet.iterator();
                while (it3.hasNext()) {
                    if (!((Boolean) function1.invoke(it3.next())).booleanValue()) {
                        LinkedList<CallableMemberDescriptor> linkedList = new LinkedList(linkedHashSet);
                        while (!linkedList.isEmpty()) {
                            linkedList.isEmpty();
                            final CallableMemberDescriptor callableMemberDescriptor3 = null;
                            for (CallableMemberDescriptor callableMemberDescriptor4 : linkedList) {
                                if (callableMemberDescriptor3 == null || ((numB = DescriptorVisibilities.b(callableMemberDescriptor3.getVisibility(), callableMemberDescriptor4.getVisibility())) != null && numB.intValue() < 0)) {
                                    callableMemberDescriptor3 = callableMemberDescriptor4;
                                }
                            }
                            callableMemberDescriptor3.getClass();
                            e(g(callableMemberDescriptor3, linkedList, new AnonymousClass6(), new Function1<CallableMemberDescriptor, Unit>() { // from class: kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil.7
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj) {
                                    CallableMemberDescriptor callableMemberDescriptor5 = (CallableMemberDescriptor) obj;
                                    callableMemberDescriptor5.getClass();
                                    nonReportingOverrideStrategy.c(callableMemberDescriptor3, callableMemberDescriptor5);
                                    return Unit.f71739a;
                                }
                            }), classDescriptor, nonReportingOverrideStrategy);
                        }
                        return;
                    }
                }
            }
        }
        Iterator it4 = linkedHashSet.iterator();
        while (it4.hasNext()) {
            e(Collections.singleton((CallableMemberDescriptor) it4.next()), classDescriptor, nonReportingOverrideStrategy);
        }
    }

    public final OverrideCompatibilityInfo l(CallableDescriptor callableDescriptor, CallableDescriptor callableDescriptor2, ClassDescriptor classDescriptor) {
        if (callableDescriptor == null) {
            a(19);
            throw null;
        }
        if (callableDescriptor2 != null) {
            return m(callableDescriptor, callableDescriptor2, classDescriptor, false);
        }
        a(20);
        throw null;
    }

    public final OverrideCompatibilityInfo m(CallableDescriptor callableDescriptor, CallableDescriptor callableDescriptor2, ClassDescriptor classDescriptor, boolean z) {
        if (callableDescriptor == null) {
            a(22);
            throw null;
        }
        if (callableDescriptor2 == null) {
            a(23);
            throw null;
        }
        OverrideCompatibilityInfo overrideCompatibilityInfoN = n(z, callableDescriptor, callableDescriptor2);
        boolean z2 = overrideCompatibilityInfoN.b() == OverrideCompatibilityInfo.Result.OVERRIDABLE;
        List<ExternalOverridabilityCondition> list = d;
        for (ExternalOverridabilityCondition externalOverridabilityCondition : list) {
            if (externalOverridabilityCondition.a() != ExternalOverridabilityCondition.Contract.CONFLICTS_ONLY && (!z2 || externalOverridabilityCondition.a() != ExternalOverridabilityCondition.Contract.SUCCESS_ONLY)) {
                int i2 = AnonymousClass8.f73846a[externalOverridabilityCondition.b(callableDescriptor, callableDescriptor2, classDescriptor).ordinal()];
                if (i2 == 1) {
                    z2 = true;
                } else if (i2 == 2) {
                    return OverrideCompatibilityInfo.c("External condition");
                }
            }
        }
        if (!z2) {
            return overrideCompatibilityInfoN;
        }
        for (ExternalOverridabilityCondition externalOverridabilityCondition2 : list) {
            if (externalOverridabilityCondition2.a() == ExternalOverridabilityCondition.Contract.CONFLICTS_ONLY) {
                int i3 = AnonymousClass8.f73846a[externalOverridabilityCondition2.b(callableDescriptor, callableDescriptor2, classDescriptor).ordinal()];
                if (i3 == 1) {
                    lc0.w("Contract violation in ", externalOverridabilityCondition2.getClass().getName(), " condition. It's not supposed to end with success");
                    return null;
                }
                if (i3 == 2) {
                    return OverrideCompatibilityInfo.c("External condition");
                }
            }
        }
        OverrideCompatibilityInfo overrideCompatibilityInfo = OverrideCompatibilityInfo.f73849c;
        if (overrideCompatibilityInfo != null) {
            return overrideCompatibilityInfo;
        }
        OverrideCompatibilityInfo.a(0);
        throw null;
    }

    public final OverrideCompatibilityInfo n(boolean z, CallableDescriptor callableDescriptor, CallableDescriptor callableDescriptor2) {
        if (callableDescriptor == null) {
            a(28);
            throw null;
        }
        if (callableDescriptor2 == null) {
            a(29);
            throw null;
        }
        OverrideCompatibilityInfo overrideCompatibilityInfoI = i(callableDescriptor, callableDescriptor2);
        if (overrideCompatibilityInfoI != null) {
            return overrideCompatibilityInfoI;
        }
        ArrayList arrayListD = d(callableDescriptor);
        ArrayList arrayListD2 = d(callableDescriptor2);
        List typeParameters = callableDescriptor.getTypeParameters();
        List typeParameters2 = callableDescriptor2.getTypeParameters();
        if (typeParameters.size() != typeParameters2.size()) {
            for (int i2 = 0; i2 < arrayListD.size(); i2++) {
                if (!KotlinTypeChecker.f74269a.b((KotlinType) arrayListD.get(i2), (KotlinType) arrayListD2.get(i2))) {
                    return OverrideCompatibilityInfo.c("Type parameter number mismatch");
                }
            }
            return new OverrideCompatibilityInfo(OverrideCompatibilityInfo.Result.CONFLICT, "Type parameter number mismatch");
        }
        TypeCheckerState typeCheckerStateF = f(typeParameters, typeParameters2);
        for (int i3 = 0; i3 < typeParameters.size(); i3++) {
            TypeParameterDescriptor typeParameterDescriptor = (TypeParameterDescriptor) typeParameters.get(i3);
            TypeParameterDescriptor typeParameterDescriptor2 = (TypeParameterDescriptor) typeParameters2.get(i3);
            if (typeParameterDescriptor == null) {
                a(47);
                throw null;
            }
            if (typeParameterDescriptor2 == null) {
                a(48);
                throw null;
            }
            List<KotlinType> upperBounds = typeParameterDescriptor.getUpperBounds();
            ArrayList arrayList = new ArrayList(typeParameterDescriptor2.getUpperBounds());
            if (upperBounds.size() == arrayList.size()) {
                for (KotlinType kotlinType : upperBounds) {
                    ListIterator listIterator = arrayList.listIterator();
                    do {
                        if (listIterator.hasNext()) {
                        }
                    } while (!b(kotlinType, (KotlinType) listIterator.next(), typeCheckerStateF));
                    listIterator.remove();
                }
            }
            return OverrideCompatibilityInfo.c("Type parameter bounds mismatch");
        }
        for (int i4 = 0; i4 < arrayListD.size(); i4++) {
            if (!b((KotlinType) arrayListD.get(i4), (KotlinType) arrayListD2.get(i4), typeCheckerStateF)) {
                return OverrideCompatibilityInfo.c("Value parameter type mismatch");
            }
        }
        if ((callableDescriptor instanceof FunctionDescriptor) && (callableDescriptor2 instanceof FunctionDescriptor) && ((FunctionDescriptor) callableDescriptor).isSuspend() != ((FunctionDescriptor) callableDescriptor2).isSuspend()) {
            return new OverrideCompatibilityInfo(OverrideCompatibilityInfo.Result.CONFLICT, "Incompatible suspendability");
        }
        if (z) {
            KotlinType returnType = callableDescriptor.getReturnType();
            KotlinType returnType2 = callableDescriptor2.getReturnType();
            if (returnType != null && returnType2 != null && (!KotlinTypeKt.a(returnType2) || !KotlinTypeKt.a(returnType))) {
                if (!AbstractTypeChecker.j(AbstractTypeChecker.f74158a, typeCheckerStateF, returnType2.K0(), returnType.K0())) {
                    return new OverrideCompatibilityInfo(OverrideCompatibilityInfo.Result.CONFLICT, "Return type mismatch");
                }
            }
        }
        OverrideCompatibilityInfo overrideCompatibilityInfo = OverrideCompatibilityInfo.f73849c;
        if (overrideCompatibilityInfo != null) {
            return overrideCompatibilityInfo;
        }
        OverrideCompatibilityInfo.a(0);
        throw null;
    }
}
