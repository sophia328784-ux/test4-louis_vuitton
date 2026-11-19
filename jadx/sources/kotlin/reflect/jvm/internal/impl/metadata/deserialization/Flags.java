package kotlin.reflect.jvm.internal.impl.metadata.deserialization;

import com.batch.android.s.b;
import defpackage.ct0;
import defpackage.md;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$MemberKind;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Modality;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$ReturnValueStatus;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Visibility;
import kotlin.reflect.jvm.internal.impl.protobuf.Internal;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Flags {
    public static final BooleanFlagField A;
    public static final BooleanFlagField B;
    public static final BooleanFlagField C;
    public static final BooleanFlagField D;
    public static final BooleanFlagField E;
    public static final BooleanFlagField F;
    public static final BooleanFlagField G;
    public static final BooleanFlagField H;
    public static final BooleanFlagField I;
    public static final BooleanFlagField J;
    public static final BooleanFlagField K;
    public static final BooleanFlagField L;
    public static final BooleanFlagField M;
    public static final BooleanFlagField N;
    public static final BooleanFlagField O;
    public static final BooleanFlagField P;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final BooleanFlagField f73572a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final BooleanFlagField f73573b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final BooleanFlagField f73574c;
    public static final FlagField d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final FlagField f73575e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final FlagField f73576f;
    public static final BooleanFlagField g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final BooleanFlagField f73577h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final BooleanFlagField f73578i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final BooleanFlagField f73579j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final BooleanFlagField f73580k;
    public static final BooleanFlagField l;
    public static final BooleanFlagField m;
    public static final BooleanFlagField n;
    public static final BooleanFlagField o;
    public static final FlagField p;
    public static final BooleanFlagField q;
    public static final BooleanFlagField r;
    public static final BooleanFlagField s;
    public static final BooleanFlagField t;
    public static final BooleanFlagField u;
    public static final BooleanFlagField v;
    public static final BooleanFlagField w;
    public static final BooleanFlagField x;
    public static final BooleanFlagField y;
    public static final BooleanFlagField z;

    public static class BooleanFlagField extends FlagField<Boolean> {
        public BooleanFlagField(int i2) {
            super(i2, 1);
        }

        @Override // kotlin.reflect.jvm.internal.impl.metadata.deserialization.Flags.FlagField
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public final Boolean d(int i2) {
            return Boolean.valueOf(((1 << this.f73582a) & i2) != 0);
        }
    }

    public static class EnumLiteFlagField<E extends Internal.EnumLite> extends FlagField<E> {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Internal.EnumLite[] f73581c;

        /* JADX WARN: Illegal instructions before constructor call */
        public EnumLiteFlagField(int i2, E[] eArr) {
            if (eArr == null) {
                md.n("Argument for @NotNull parameter 'enumEntries' of kotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField.bitWidth must not be null");
                throw null;
            }
            int i3 = 1;
            int length = eArr.length - 1;
            if (length != 0) {
                for (int i4 = 31; i4 >= 0; i4--) {
                    if (((1 << i4) & length) != 0) {
                        i3 = 1 + i4;
                    }
                }
                ct0.o(eArr.getClass(), "Empty enum: ");
                throw null;
            }
            super(i2, i3);
            this.f73581c = eArr;
        }

        @Override // kotlin.reflect.jvm.internal.impl.metadata.deserialization.Flags.FlagField
        public final Object d(int i2) {
            int i3 = (1 << this.f73583b) - 1;
            int i4 = this.f73582a;
            int i5 = (i2 & (i3 << i4)) >> i4;
            for (Internal.EnumLite enumLite : this.f73581c) {
                if (enumLite.m() == i5) {
                    return enumLite;
                }
            }
            return null;
        }
    }

    public static abstract class FlagField<E> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f73582a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f73583b;

        public FlagField(int i2, int i3) {
            this.f73582a = i2;
            this.f73583b = i3;
        }

        public static FlagField a(FlagField flagField, Internal.EnumLite[] enumLiteArr) {
            return new EnumLiteFlagField(flagField.f73582a + flagField.f73583b, enumLiteArr);
        }

        public static BooleanFlagField b(FlagField flagField) {
            return new BooleanFlagField(flagField.f73582a + flagField.f73583b);
        }

        public static BooleanFlagField c() {
            return new BooleanFlagField(0);
        }

        public abstract Object d(int i2);
    }

    static {
        BooleanFlagField booleanFlagFieldC = FlagField.c();
        f73572a = booleanFlagFieldC;
        f73573b = FlagField.b(booleanFlagFieldC);
        BooleanFlagField booleanFlagFieldC2 = FlagField.c();
        f73574c = booleanFlagFieldC2;
        FlagField flagFieldA = FlagField.a(booleanFlagFieldC2, ProtoBuf$Visibility.values());
        d = flagFieldA;
        FlagField flagFieldA2 = FlagField.a(flagFieldA, ProtoBuf$Modality.values());
        f73575e = flagFieldA2;
        FlagField flagFieldA3 = FlagField.a(flagFieldA2, ProtoBuf$Class.Kind.values());
        f73576f = flagFieldA3;
        BooleanFlagField booleanFlagFieldB = FlagField.b(flagFieldA3);
        g = booleanFlagFieldB;
        BooleanFlagField booleanFlagFieldB2 = FlagField.b(booleanFlagFieldB);
        f73577h = booleanFlagFieldB2;
        BooleanFlagField booleanFlagFieldB3 = FlagField.b(booleanFlagFieldB2);
        f73578i = booleanFlagFieldB3;
        BooleanFlagField booleanFlagFieldB4 = FlagField.b(booleanFlagFieldB3);
        f73579j = booleanFlagFieldB4;
        BooleanFlagField booleanFlagFieldB5 = FlagField.b(booleanFlagFieldB4);
        f73580k = booleanFlagFieldB5;
        BooleanFlagField booleanFlagFieldB6 = FlagField.b(booleanFlagFieldB5);
        l = booleanFlagFieldB6;
        m = FlagField.b(booleanFlagFieldB6);
        BooleanFlagField booleanFlagFieldB7 = FlagField.b(flagFieldA);
        n = booleanFlagFieldB7;
        BooleanFlagField booleanFlagFieldB8 = FlagField.b(booleanFlagFieldB7);
        o = booleanFlagFieldB8;
        FlagField.a(booleanFlagFieldB8, ProtoBuf$ReturnValueStatus.values());
        FlagField flagFieldA4 = FlagField.a(flagFieldA2, ProtoBuf$MemberKind.values());
        p = flagFieldA4;
        BooleanFlagField booleanFlagFieldB9 = FlagField.b(flagFieldA4);
        q = booleanFlagFieldB9;
        BooleanFlagField booleanFlagFieldB10 = FlagField.b(booleanFlagFieldB9);
        r = booleanFlagFieldB10;
        BooleanFlagField booleanFlagFieldB11 = FlagField.b(booleanFlagFieldB10);
        s = booleanFlagFieldB11;
        BooleanFlagField booleanFlagFieldB12 = FlagField.b(booleanFlagFieldB11);
        t = booleanFlagFieldB12;
        BooleanFlagField booleanFlagFieldB13 = FlagField.b(booleanFlagFieldB12);
        u = booleanFlagFieldB13;
        BooleanFlagField booleanFlagFieldB14 = FlagField.b(booleanFlagFieldB13);
        v = booleanFlagFieldB14;
        BooleanFlagField booleanFlagFieldB15 = FlagField.b(booleanFlagFieldB14);
        w = booleanFlagFieldB15;
        BooleanFlagField booleanFlagFieldB16 = FlagField.b(booleanFlagFieldB15);
        x = booleanFlagFieldB16;
        FlagField.a(booleanFlagFieldB16, ProtoBuf$ReturnValueStatus.values());
        BooleanFlagField booleanFlagFieldB17 = FlagField.b(flagFieldA4);
        y = booleanFlagFieldB17;
        BooleanFlagField booleanFlagFieldB18 = FlagField.b(booleanFlagFieldB17);
        z = booleanFlagFieldB18;
        BooleanFlagField booleanFlagFieldB19 = FlagField.b(booleanFlagFieldB18);
        A = booleanFlagFieldB19;
        BooleanFlagField booleanFlagFieldB20 = FlagField.b(booleanFlagFieldB19);
        B = booleanFlagFieldB20;
        BooleanFlagField booleanFlagFieldB21 = FlagField.b(booleanFlagFieldB20);
        C = booleanFlagFieldB21;
        BooleanFlagField booleanFlagFieldB22 = FlagField.b(booleanFlagFieldB21);
        D = booleanFlagFieldB22;
        BooleanFlagField booleanFlagFieldB23 = FlagField.b(booleanFlagFieldB22);
        E = booleanFlagFieldB23;
        BooleanFlagField booleanFlagFieldB24 = FlagField.b(booleanFlagFieldB23);
        F = booleanFlagFieldB24;
        BooleanFlagField booleanFlagFieldB25 = FlagField.b(booleanFlagFieldB24);
        G = booleanFlagFieldB25;
        FlagField.a(booleanFlagFieldB25, ProtoBuf$ReturnValueStatus.values());
        BooleanFlagField booleanFlagFieldB26 = FlagField.b(booleanFlagFieldC2);
        H = booleanFlagFieldB26;
        BooleanFlagField booleanFlagFieldB27 = FlagField.b(booleanFlagFieldB26);
        I = booleanFlagFieldB27;
        J = FlagField.b(booleanFlagFieldB27);
        BooleanFlagField booleanFlagFieldB28 = FlagField.b(flagFieldA2);
        K = booleanFlagFieldB28;
        BooleanFlagField booleanFlagFieldB29 = FlagField.b(booleanFlagFieldB28);
        L = booleanFlagFieldB29;
        M = FlagField.b(booleanFlagFieldB29);
        BooleanFlagField booleanFlagFieldC3 = FlagField.c();
        N = booleanFlagFieldC3;
        O = FlagField.b(booleanFlagFieldC3);
        P = FlagField.c();
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0021  */
    /* JADX WARN: Code duplicated, block: B:18:0x002b  */
    public static /* synthetic */ void a(int i2) {
        Object[] objArr = new Object[3];
        if (i2 == 1) {
            objArr[0] = "modality";
        } else if (i2 == 2) {
            objArr[0] = b.a.d;
        } else if (i2 == 5) {
            objArr[0] = "modality";
        } else if (i2 == 6) {
            objArr[0] = "memberKind";
        } else if (i2 == 8) {
            objArr[0] = "modality";
        } else if (i2 == 9) {
            objArr[0] = "memberKind";
        } else if (i2 != 11) {
            objArr[0] = "visibility";
        } else {
            objArr[0] = "modality";
        }
        objArr[1] = "kotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags";
        switch (i2) {
            case 3:
                objArr[2] = "getConstructorFlags";
                break;
            case 4:
            case 5:
            case 6:
                objArr[2] = "getFunctionFlags";
                break;
            case 7:
            case 8:
            case 9:
                objArr[2] = "getPropertyFlags";
                break;
            case 10:
            case 11:
                objArr[2] = "getAccessorFlags";
                break;
            default:
                objArr[2] = "getClassFlags";
                break;
        }
        throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
    }

    public static int b(boolean z2, ProtoBuf$Visibility protoBuf$Visibility, ProtoBuf$Modality protoBuf$Modality) {
        if (protoBuf$Visibility == null) {
            a(10);
            throw null;
        }
        if (protoBuf$Modality == null) {
            a(11);
            throw null;
        }
        BooleanFlagField booleanFlagField = f73574c;
        booleanFlagField.getClass();
        int i2 = z2 ? 1 << booleanFlagField.f73582a : 0;
        EnumLiteFlagField enumLiteFlagField = (EnumLiteFlagField) f73575e;
        enumLiteFlagField.getClass();
        int iM = i2 | (protoBuf$Modality.m() << enumLiteFlagField.f73582a);
        EnumLiteFlagField enumLiteFlagField2 = (EnumLiteFlagField) d;
        enumLiteFlagField2.getClass();
        int iM2 = iM | (protoBuf$Visibility.m() << enumLiteFlagField2.f73582a);
        K.getClass();
        L.getClass();
        M.getClass();
        return iM2;
    }
}
