package androidx.compose.material3;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0082\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/material3/SliderComponents;", "", "THUMB", "TRACK", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
final class SliderComponents {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ SliderComponents[] $VALUES;
    public static final SliderComponents THUMB;
    public static final SliderComponents TRACK;

    static {
        SliderComponents sliderComponents = new SliderComponents("THUMB", 0);
        THUMB = sliderComponents;
        SliderComponents sliderComponents2 = new SliderComponents("TRACK", 1);
        TRACK = sliderComponents2;
        SliderComponents[] sliderComponentsArr = {sliderComponents, sliderComponents2};
        $VALUES = sliderComponentsArr;
        $ENTRIES = EnumEntriesKt.a(sliderComponentsArr);
    }

    public static SliderComponents valueOf(String str) {
        return (SliderComponents) Enum.valueOf(SliderComponents.class, str);
    }

    public static SliderComponents[] values() {
        return (SliderComponents[]) $VALUES.clone();
    }
}
