package androidx.compose.ui.layout;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0082\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"androidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicWidthHeight", "", "Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicWidthHeight;", "Width", "Height", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class MeasuringIntrinsics$IntrinsicWidthHeight {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ MeasuringIntrinsics$IntrinsicWidthHeight[] $VALUES;
    public static final MeasuringIntrinsics$IntrinsicWidthHeight Height;
    public static final MeasuringIntrinsics$IntrinsicWidthHeight Width;

    static {
        MeasuringIntrinsics$IntrinsicWidthHeight measuringIntrinsics$IntrinsicWidthHeight = new MeasuringIntrinsics$IntrinsicWidthHeight("Width", 0);
        Width = measuringIntrinsics$IntrinsicWidthHeight;
        MeasuringIntrinsics$IntrinsicWidthHeight measuringIntrinsics$IntrinsicWidthHeight2 = new MeasuringIntrinsics$IntrinsicWidthHeight("Height", 1);
        Height = measuringIntrinsics$IntrinsicWidthHeight2;
        MeasuringIntrinsics$IntrinsicWidthHeight[] measuringIntrinsics$IntrinsicWidthHeightArr = {measuringIntrinsics$IntrinsicWidthHeight, measuringIntrinsics$IntrinsicWidthHeight2};
        $VALUES = measuringIntrinsics$IntrinsicWidthHeightArr;
        $ENTRIES = EnumEntriesKt.a(measuringIntrinsics$IntrinsicWidthHeightArr);
    }

    public static MeasuringIntrinsics$IntrinsicWidthHeight valueOf(String str) {
        return (MeasuringIntrinsics$IntrinsicWidthHeight) Enum.valueOf(MeasuringIntrinsics$IntrinsicWidthHeight.class, str);
    }

    public static MeasuringIntrinsics$IntrinsicWidthHeight[] values() {
        return (MeasuringIntrinsics$IntrinsicWidthHeight[]) $VALUES.clone();
    }
}
