package androidx.compose.foundation.layout;

import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0001\u0002\u0082\u0001\u0001\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/foundation/layout/FlowLayoutOverflow;", "", "OverflowType", "Landroidx/compose/foundation/layout/FlowRowOverflow;", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class FlowLayoutOverflow {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final OverflowType f4979a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f4980b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f4981c;
    public final Function1 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Function1 f4982e;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0080\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;", "", "Visible", "Clip", "ExpandIndicator", "ExpandOrCollapseIndicator", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class OverflowType {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ OverflowType[] $VALUES;
        public static final OverflowType Clip;
        public static final OverflowType ExpandIndicator;
        public static final OverflowType ExpandOrCollapseIndicator;
        public static final OverflowType Visible;

        static {
            OverflowType overflowType = new OverflowType("Visible", 0);
            Visible = overflowType;
            OverflowType overflowType2 = new OverflowType("Clip", 1);
            Clip = overflowType2;
            OverflowType overflowType3 = new OverflowType("ExpandIndicator", 2);
            ExpandIndicator = overflowType3;
            OverflowType overflowType4 = new OverflowType("ExpandOrCollapseIndicator", 3);
            ExpandOrCollapseIndicator = overflowType4;
            OverflowType[] overflowTypeArr = {overflowType, overflowType2, overflowType3, overflowType4};
            $VALUES = overflowTypeArr;
            $ENTRIES = EnumEntriesKt.a(overflowTypeArr);
        }

        public static OverflowType valueOf(String str) {
            return (OverflowType) Enum.valueOf(OverflowType.class, str);
        }

        public static OverflowType[] values() {
            return (OverflowType[]) $VALUES.clone();
        }
    }

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f4983a;

        static {
            int[] iArr = new int[OverflowType.values().length];
            try {
                iArr[OverflowType.ExpandIndicator.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[OverflowType.ExpandOrCollapseIndicator.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f4983a = iArr;
        }
    }

    public /* synthetic */ FlowLayoutOverflow(OverflowType overflowType, int i2, int i3, Function1 function1, Function1 function2, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(overflowType, (i4 & 2) != 0 ? 0 : i2, (i4 & 4) != 0 ? 0 : i3, (i4 & 8) != 0 ? null : function1, (i4 & 16) != 0 ? null : function2, null);
    }

    public FlowLayoutOverflow(OverflowType overflowType, int i2, int i3, Function1 function1, Function1 function2, DefaultConstructorMarker defaultConstructorMarker) {
        this.f4979a = overflowType;
        this.f4980b = i2;
        this.f4981c = i3;
        this.d = function1;
        this.f4982e = function2;
    }
}
