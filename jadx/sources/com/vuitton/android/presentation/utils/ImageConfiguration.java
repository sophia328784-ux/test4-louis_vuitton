package com.vuitton.android.presentation.utils;

import com.vuitton.foundation.logger.LegacyLogger;
import defpackage.fc;
import defpackage.v40;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u0001:\u0002\b\tB\u001f\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/utils/ImageConfiguration;", "", "Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size;", "size", "Lcom/vuitton/android/presentation/utils/ImageConfiguration$Background;", "background", "<init>", "(Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size;Lcom/vuitton/android/presentation/utils/ImageConfiguration$Background;)V", "Background", "Size", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ImageConfiguration {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Size f65850a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Background f65851b;

    public /* synthetic */ ImageConfiguration(Size size, Background background, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : size, (i2 & 2) != 0 ? null : background);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImageConfiguration)) {
            return false;
        }
        ImageConfiguration imageConfiguration = (ImageConfiguration) obj;
        return Intrinsics.c(this.f65850a, imageConfiguration.f65850a) && Intrinsics.c(this.f65851b, imageConfiguration.f65851b);
    }

    public final int hashCode() {
        Size size = this.f65850a;
        int iHashCode = (size == null ? 0 : size.hashCode()) * 31;
        Background background = this.f65851b;
        return iHashCode + (background != null ? background.hashCode() : 0);
    }

    public final String toString() {
        return "ImageConfiguration(size=" + this.f65850a + ", background=" + this.f65851b + ")";
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/utils/ImageConfiguration$Background;", "", "Transparent", "Opaque", "Lcom/vuitton/android/presentation/utils/ImageConfiguration$Background$Opaque;", "Lcom/vuitton/android/presentation/utils/ImageConfiguration$Background$Transparent;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Background {

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/utils/ImageConfiguration$Background$Transparent;", "Lcom/vuitton/android/presentation/utils/ImageConfiguration$Background;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class Transparent implements Background {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final Transparent f65853a = new Transparent();

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof Transparent);
            }

            public final int hashCode() {
                return 1778526437;
            }

            public final String toString() {
                return "Transparent";
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/utils/ImageConfiguration$Background$Opaque;", "Lcom/vuitton/android/presentation/utils/ImageConfiguration$Background;", "", "color", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class Opaque implements Background {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final String f65852a;

            public /* synthetic */ Opaque(String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
                this((i2 & 1) != 0 ? "#F6F5F3" : str);
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof Opaque) && Intrinsics.c(this.f65852a, ((Opaque) obj).f65852a);
            }

            public final int hashCode() {
                return this.f65852a.hashCode();
            }

            public final String toString() {
                return fc.h("Opaque(color=", this.f65852a, ")");
            }

            public Opaque(String str) {
                str.getClass();
                this.f65852a = str;
            }

            /* JADX WARN: Multi-variable type inference failed */
            public Opaque() {
                this(null, 1, 0 == true ? 1 : 0);
            }
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\b\b\u0087\b\u0018\u00002\u00020\u0001:\u0004\t\n\u000b\fB\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size;", "", "Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size$Derivative;", "derivative", "", "Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size$DimensionConstraint;", "dimensionConstraints", "<init>", "(Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size$Derivative;Ljava/util/Set;)V", "Derivative", "DimensionConstraint", "Container", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Size {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final Companion f65854c = new Companion(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Derivative f65855a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Set f65856b;

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size$Companion;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public static Size a(Container container, Set set) throws Throwable {
                Object failure;
                Object next;
                int iMin = container.f65857a;
                int i2 = container.f65858b;
                set.getClass();
                try {
                    Result.Companion companion = Result.INSTANCE;
                    DimensionConstraint dimensionConstraint = DimensionConstraint.Height;
                    DimensionConstraint dimensionConstraint2 = DimensionConstraint.Width;
                    if (set.equals(ArraysKt.Z(new DimensionConstraint[]{dimensionConstraint, dimensionConstraint2}))) {
                        iMin = Math.min(i2, iMin);
                    } else if (!set.equals(SetsKt.h(dimensionConstraint2))) {
                        if (!set.equals(SetsKt.h(dimensionConstraint))) {
                            throw new IllegalStateException(("\n                            Invalid dimensionConstraints: the constraints must contain width, height or both.\n                            It cannot be empty: (" + set + ")\n                            ").toString());
                        }
                        iMin = i2;
                    }
                    Iterator it = CollectionsKt.n0(Derivative.a()).iterator();
                    do {
                        if (!it.hasNext()) {
                            next = null;
                            break;
                        }
                        next = it.next();
                    } while (((Derivative) next).b() < iMin);
                    Derivative derivative = (Derivative) next;
                    if (derivative == null) {
                        derivative = Derivative.Ultra;
                    }
                    failure = new Result(new Size(derivative, set));
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.INSTANCE;
                    failure = new Result.Failure(th);
                }
                Throwable thA = Result.a(failure);
                if (thA != null) {
                    if (thA instanceof CancellationException) {
                        throw thA;
                    }
                    failure = new Result(new Result.Failure(thA));
                }
                Object obj = ((Result) failure).f71708b;
                Throwable thA2 = Result.a(obj);
                if (thA2 != null) {
                    LegacyLogger.f66205a.c("UrlFactory", "\n                    Invalid dimensionConstraints: the constraints must contain width, height or both.\n                    It cannot be empty: (" + set + ")\n                    ", thA2);
                }
                Size size = new Size(Derivative.Large, SetsKt.h(DimensionConstraint.Width));
                if (obj instanceof Result.Failure) {
                    obj = size;
                }
                return (Size) obj;
            }
        }

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0010\u0010\n\u0002\b\n\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u00012\b\u0012\u0004\u0012\u00020\u00000\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size$Derivative;", "", "", "XSmall", "Small", "Medium", "Large", "XLarge", "XXLarge", "Huge", "XHuge", "Ultra", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Derivative implements Comparable<Derivative> {
            private static final /* synthetic */ EnumEntries $ENTRIES;
            private static final /* synthetic */ Derivative[] $VALUES;
            public static final Derivative Huge;
            public static final Derivative Large;
            public static final Derivative Medium;
            public static final Derivative Small;
            public static final Derivative Ultra;
            public static final Derivative XHuge;
            public static final Derivative XLarge;
            public static final Derivative XSmall;
            public static final Derivative XXLarge;

            @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
            public static final /* synthetic */ class WhenMappings {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                public static final /* synthetic */ int[] f65859a;

                static {
                    int[] iArr = new int[Derivative.values().length];
                    try {
                        iArr[Derivative.XSmall.ordinal()] = 1;
                    } catch (NoSuchFieldError unused) {
                    }
                    try {
                        iArr[Derivative.Small.ordinal()] = 2;
                    } catch (NoSuchFieldError unused2) {
                    }
                    try {
                        iArr[Derivative.Medium.ordinal()] = 3;
                    } catch (NoSuchFieldError unused3) {
                    }
                    try {
                        iArr[Derivative.Large.ordinal()] = 4;
                    } catch (NoSuchFieldError unused4) {
                    }
                    try {
                        iArr[Derivative.XLarge.ordinal()] = 5;
                    } catch (NoSuchFieldError unused5) {
                    }
                    try {
                        iArr[Derivative.XXLarge.ordinal()] = 6;
                    } catch (NoSuchFieldError unused6) {
                    }
                    try {
                        iArr[Derivative.Huge.ordinal()] = 7;
                    } catch (NoSuchFieldError unused7) {
                    }
                    try {
                        iArr[Derivative.XHuge.ordinal()] = 8;
                    } catch (NoSuchFieldError unused8) {
                    }
                    try {
                        iArr[Derivative.Ultra.ordinal()] = 9;
                    } catch (NoSuchFieldError unused9) {
                    }
                    f65859a = iArr;
                }
            }

            static {
                Derivative derivative = new Derivative("XSmall", 0);
                XSmall = derivative;
                Derivative derivative2 = new Derivative("Small", 1);
                Small = derivative2;
                Derivative derivative3 = new Derivative("Medium", 2);
                Medium = derivative3;
                Derivative derivative4 = new Derivative("Large", 3);
                Large = derivative4;
                Derivative derivative5 = new Derivative("XLarge", 4);
                XLarge = derivative5;
                Derivative derivative6 = new Derivative("XXLarge", 5);
                XXLarge = derivative6;
                Derivative derivative7 = new Derivative("Huge", 6);
                Huge = derivative7;
                Derivative derivative8 = new Derivative("XHuge", 7);
                XHuge = derivative8;
                Derivative derivative9 = new Derivative("Ultra", 8);
                Ultra = derivative9;
                Derivative[] derivativeArr = {derivative, derivative2, derivative3, derivative4, derivative5, derivative6, derivative7, derivative8, derivative9};
                $VALUES = derivativeArr;
                $ENTRIES = EnumEntriesKt.a(derivativeArr);
            }

            public static EnumEntries a() {
                return $ENTRIES;
            }

            public static Derivative valueOf(String str) {
                return (Derivative) Enum.valueOf(Derivative.class, str);
            }

            public static Derivative[] values() {
                return (Derivative[]) $VALUES.clone();
            }

            public final int b() {
                switch (WhenMappings.f65859a[ordinal()]) {
                    case 1:
                        return 490;
                    case 2:
                        return 600;
                    case 3:
                        return 730;
                    case 4:
                        return 1090;
                    case 5:
                        return 1180;
                    case 6:
                        return 1300;
                    case 7:
                        return 1440;
                    case 8:
                        return 2400;
                    case 9:
                        return 4096;
                    default:
                        v40.g();
                        return 0;
                }
            }
        }

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size$DimensionConstraint;", "", "Width", "Height", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class DimensionConstraint {
            private static final /* synthetic */ EnumEntries $ENTRIES;
            private static final /* synthetic */ DimensionConstraint[] $VALUES;
            public static final DimensionConstraint Height;
            public static final DimensionConstraint Width;

            static {
                DimensionConstraint dimensionConstraint = new DimensionConstraint("Width", 0);
                Width = dimensionConstraint;
                DimensionConstraint dimensionConstraint2 = new DimensionConstraint("Height", 1);
                Height = dimensionConstraint2;
                DimensionConstraint[] dimensionConstraintArr = {dimensionConstraint, dimensionConstraint2};
                $VALUES = dimensionConstraintArr;
                $ENTRIES = EnumEntriesKt.a(dimensionConstraintArr);
            }

            public static DimensionConstraint valueOf(String str) {
                return (DimensionConstraint) Enum.valueOf(DimensionConstraint.class, str);
            }

            public static DimensionConstraint[] values() {
                return (DimensionConstraint[]) $VALUES.clone();
            }
        }

        public Size(Derivative derivative, Set<? extends DimensionConstraint> set) {
            derivative.getClass();
            set.getClass();
            this.f65855a = derivative;
            this.f65856b = set;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Size)) {
                return false;
            }
            Size size = (Size) obj;
            return this.f65855a == size.f65855a && Intrinsics.c(this.f65856b, size.f65856b);
        }

        public final int hashCode() {
            return this.f65856b.hashCode() + (this.f65855a.hashCode() * 31);
        }

        public final String toString() {
            return "Size(derivative=" + this.f65855a + ", dimensionConstraints=" + this.f65856b + ")";
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/utils/ImageConfiguration$Size$Container;", "", "", "width", "height", "<init>", "(II)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class Container {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final int f65857a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final int f65858b;

            public /* synthetic */ Container(int i2, int i3, int i4, DefaultConstructorMarker defaultConstructorMarker) {
                this((i4 & 1) != 0 ? 0 : i2, (i4 & 2) != 0 ? 0 : i3);
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof Container)) {
                    return false;
                }
                Container container = (Container) obj;
                return this.f65857a == container.f65857a && this.f65858b == container.f65858b;
            }

            public final int hashCode() {
                return Integer.hashCode(this.f65858b) + (Integer.hashCode(this.f65857a) * 31);
            }

            public final String toString() {
                return fc.f(this.f65857a, this.f65858b, "Container(width=", ", height=", ")");
            }

            public Container(int i2, int i3) {
                this.f65857a = i2;
                this.f65858b = i3;
            }

            /* JADX WARN: Illegal instructions before constructor call */
            public Container() {
                int i2 = 0;
                this(i2, i2, 3, null);
            }
        }
    }

    public ImageConfiguration(Size size, Background background) {
        this.f65850a = size;
        this.f65851b = background;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ImageConfiguration() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }
}
