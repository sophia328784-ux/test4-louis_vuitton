package kotlin.reflect.jvm.internal.impl.km;

import defpackage.fc;
import defpackage.md;
import defpackage.tr;
import io.jsonwebtoken.JwtParser;
import java.util.List;
import kotlin.UByte;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.UShort;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public abstract class KmAnnotationArgument {

    public static final class AnnotationValue extends KmAnnotationArgument {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final KmAnnotation f72670a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnnotationValue(KmAnnotation kmAnnotation) {
            super(null);
            kmAnnotation.getClass();
            this.f72670a = kmAnnotation;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof AnnotationValue) && Intrinsics.c(this.f72670a, ((AnnotationValue) obj).f72670a);
        }

        public final int hashCode() {
            return this.f72670a.hashCode();
        }

        public final String toString() {
            return "AnnotationValue(" + this.f72670a + ')';
        }
    }

    public static final class ArrayKClassValue extends KmAnnotationArgument {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f72671a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f72672b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f72673c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ArrayKClassValue(String str, int i2) {
            super(null);
            str.getClass();
            this.f72671a = str;
            this.f72672b = i2;
            if (i2 <= 0) {
                md.n("ArrayKClassValue must have at least one dimension. For regular X::class argument, use KClassValue.");
                throw null;
            }
            StringBuilder sb = new StringBuilder("ArrayKClassValue(");
            for (int i3 = 0; i3 < i2; i3++) {
                sb.append("kotlin/Array<");
            }
            sb.append(this.f72671a);
            int i4 = this.f72672b;
            for (int i5 = 0; i5 < i4; i5++) {
                sb.append(">");
            }
            sb.append(")");
            this.f72673c = sb.toString();
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ArrayKClassValue)) {
                return false;
            }
            ArrayKClassValue arrayKClassValue = (ArrayKClassValue) obj;
            return Intrinsics.c(this.f72671a, arrayKClassValue.f72671a) && this.f72672b == arrayKClassValue.f72672b;
        }

        public final int hashCode() {
            return Integer.hashCode(this.f72672b) + (this.f72671a.hashCode() * 31);
        }

        public final String toString() {
            return this.f72673c;
        }
    }

    public static final class ArrayValue extends KmAnnotationArgument {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f72674a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ArrayValue(List<? extends KmAnnotationArgument> list) {
            super(null);
            list.getClass();
            this.f72674a = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ArrayValue) && Intrinsics.c(this.f72674a, ((ArrayValue) obj).f72674a);
        }

        public final int hashCode() {
            return this.f72674a.hashCode();
        }

        public final String toString() {
            return tr.m(new StringBuilder("ArrayValue("), this.f72674a, ')');
        }
    }

    public static final class BooleanValue extends LiteralValue<Boolean> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f72675a;

        public BooleanValue(boolean z) {
            super(null);
            this.f72675a = z;
        }

        @Override // kotlin.reflect.jvm.internal.impl.km.KmAnnotationArgument.LiteralValue
        public final Object a() {
            return Boolean.valueOf(this.f72675a);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof BooleanValue) && this.f72675a == ((BooleanValue) obj).f72675a;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f72675a);
        }
    }

    public static final class ByteValue extends LiteralValue<Byte> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final byte f72676a;

        public ByteValue(byte b2) {
            super(null);
            this.f72676a = b2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.km.KmAnnotationArgument.LiteralValue
        public final Object a() {
            return Byte.valueOf(this.f72676a);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ByteValue) && this.f72676a == ((ByteValue) obj).f72676a;
        }

        public final int hashCode() {
            return Byte.hashCode(this.f72676a);
        }
    }

    public static final class CharValue extends LiteralValue<Character> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final char f72677a;

        public CharValue(char c2) {
            super(null);
            this.f72677a = c2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.km.KmAnnotationArgument.LiteralValue
        public final Object a() {
            return Character.valueOf(this.f72677a);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof CharValue) && this.f72677a == ((CharValue) obj).f72677a;
        }

        public final int hashCode() {
            return Character.hashCode(this.f72677a);
        }
    }

    public static final class DoubleValue extends LiteralValue<Double> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final double f72678a;

        public DoubleValue(double d) {
            super(null);
            this.f72678a = d;
        }

        @Override // kotlin.reflect.jvm.internal.impl.km.KmAnnotationArgument.LiteralValue
        public final Object a() {
            return Double.valueOf(this.f72678a);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof DoubleValue) && Double.compare(this.f72678a, ((DoubleValue) obj).f72678a) == 0;
        }

        public final int hashCode() {
            return Double.hashCode(this.f72678a);
        }
    }

    public static final class EnumValue extends KmAnnotationArgument {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f72679a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f72680b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public EnumValue(String str, String str2) {
            super(null);
            str.getClass();
            str2.getClass();
            this.f72679a = str;
            this.f72680b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof EnumValue)) {
                return false;
            }
            EnumValue enumValue = (EnumValue) obj;
            return Intrinsics.c(this.f72679a, enumValue.f72679a) && Intrinsics.c(this.f72680b, enumValue.f72680b);
        }

        public final int hashCode() {
            return this.f72680b.hashCode() + (this.f72679a.hashCode() * 31);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("EnumValue(");
            sb.append(this.f72679a);
            sb.append(JwtParser.SEPARATOR_CHAR);
            return fc.l(sb, this.f72680b, ')');
        }
    }

    public static final class FloatValue extends LiteralValue<Float> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final float f72681a;

        public FloatValue(float f2) {
            super(null);
            this.f72681a = f2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.km.KmAnnotationArgument.LiteralValue
        public final Object a() {
            return Float.valueOf(this.f72681a);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof FloatValue) && Float.compare(this.f72681a, ((FloatValue) obj).f72681a) == 0;
        }

        public final int hashCode() {
            return Float.hashCode(this.f72681a);
        }
    }

    public static final class IntValue extends LiteralValue<Integer> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f72682a;

        public IntValue(int i2) {
            super(null);
            this.f72682a = i2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.km.KmAnnotationArgument.LiteralValue
        public final Object a() {
            return Integer.valueOf(this.f72682a);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof IntValue) && this.f72682a == ((IntValue) obj).f72682a;
        }

        public final int hashCode() {
            return Integer.hashCode(this.f72682a);
        }
    }

    public static final class KClassValue extends KmAnnotationArgument {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f72683a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public KClassValue(String str) {
            super(null);
            str.getClass();
            this.f72683a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof KClassValue) && Intrinsics.c(this.f72683a, ((KClassValue) obj).f72683a);
        }

        public final int hashCode() {
            return this.f72683a.hashCode();
        }

        public final String toString() {
            return fc.l(new StringBuilder("KClassValue("), this.f72683a, ')');
        }
    }

    public static abstract class LiteralValue<T> extends KmAnnotationArgument {
        public LiteralValue(DefaultConstructorMarker defaultConstructorMarker) {
            super(null);
        }

        public abstract Object a();

        public final String toString() {
            String string;
            StringBuilder sb = new StringBuilder();
            sb.append(getClass().getSimpleName());
            sb.append('(');
            if (this instanceof StringValue) {
                string = "\"" + ((Object) ((StringValue) this).f72686a) + '\"';
            } else {
                string = a().toString();
            }
            return fc.l(sb, string, ')');
        }
    }

    public static final class LongValue extends LiteralValue<Long> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f72684a;

        public LongValue(long j2) {
            super(null);
            this.f72684a = j2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.km.KmAnnotationArgument.LiteralValue
        public final Object a() {
            return Long.valueOf(this.f72684a);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof LongValue) && this.f72684a == ((LongValue) obj).f72684a;
        }

        public final int hashCode() {
            return Long.hashCode(this.f72684a);
        }
    }

    public static final class ShortValue extends LiteralValue<Short> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final short f72685a;

        public ShortValue(short s) {
            super(null);
            this.f72685a = s;
        }

        @Override // kotlin.reflect.jvm.internal.impl.km.KmAnnotationArgument.LiteralValue
        public final Object a() {
            return Short.valueOf(this.f72685a);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ShortValue) && this.f72685a == ((ShortValue) obj).f72685a;
        }

        public final int hashCode() {
            return Short.hashCode(this.f72685a);
        }
    }

    public static final class StringValue extends LiteralValue<String> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f72686a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public StringValue(String str) {
            super(null);
            str.getClass();
            this.f72686a = str;
        }

        @Override // kotlin.reflect.jvm.internal.impl.km.KmAnnotationArgument.LiteralValue
        public final Object a() {
            return this.f72686a;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof StringValue) && Intrinsics.c(this.f72686a, ((StringValue) obj).f72686a);
        }

        public final int hashCode() {
            return this.f72686a.hashCode();
        }
    }

    public static final class UByteValue extends LiteralValue<UByte> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final byte f72687a;

        public UByteValue(byte b2, DefaultConstructorMarker defaultConstructorMarker) {
            super(null);
            this.f72687a = b2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.km.KmAnnotationArgument.LiteralValue
        public final Object a() {
            return new UByte(this.f72687a);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof UByteValue) && this.f72687a == ((UByteValue) obj).f72687a;
        }

        public final int hashCode() {
            UByte.Companion companion = UByte.INSTANCE;
            return Byte.hashCode(this.f72687a);
        }
    }

    public static final class UIntValue extends LiteralValue<UInt> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f72688a;

        public UIntValue(int i2, DefaultConstructorMarker defaultConstructorMarker) {
            super(null);
            this.f72688a = i2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.km.KmAnnotationArgument.LiteralValue
        public final Object a() {
            return new UInt(this.f72688a);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof UIntValue) && this.f72688a == ((UIntValue) obj).f72688a;
        }

        public final int hashCode() {
            UInt.Companion companion = UInt.INSTANCE;
            return Integer.hashCode(this.f72688a);
        }
    }

    public static final class ULongValue extends LiteralValue<ULong> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f72689a;

        public ULongValue(long j2, DefaultConstructorMarker defaultConstructorMarker) {
            super(null);
            this.f72689a = j2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.km.KmAnnotationArgument.LiteralValue
        public final Object a() {
            return new ULong(this.f72689a);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ULongValue) && this.f72689a == ((ULongValue) obj).f72689a;
        }

        public final int hashCode() {
            ULong.Companion companion = ULong.INSTANCE;
            return Long.hashCode(this.f72689a);
        }
    }

    public static final class UShortValue extends LiteralValue<UShort> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final short f72690a;

        public UShortValue(short s, DefaultConstructorMarker defaultConstructorMarker) {
            super(null);
            this.f72690a = s;
        }

        @Override // kotlin.reflect.jvm.internal.impl.km.KmAnnotationArgument.LiteralValue
        public final Object a() {
            return new UShort(this.f72690a);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof UShortValue) && this.f72690a == ((UShortValue) obj).f72690a;
        }

        public final int hashCode() {
            UShort.Companion companion = UShort.INSTANCE;
            return Short.hashCode(this.f72690a);
        }
    }

    public KmAnnotationArgument(DefaultConstructorMarker defaultConstructorMarker) {
    }
}
