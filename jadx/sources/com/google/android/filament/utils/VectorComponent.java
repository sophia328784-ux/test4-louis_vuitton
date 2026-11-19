package com.google.android.filament.utils;

import com.networkbench.agent.impl.NBSSpanMetricUnit;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\r\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\r¨\u0006\u000e"}, d2 = {"Lcom/google/android/filament/utils/VectorComponent;", "", "X", "Y", "Z", "W", "R", "G", NBSSpanMetricUnit.Byte, "A", "S", "T", "P", "Q", "filament-utils-android_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class VectorComponent {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ VectorComponent[] $VALUES;
    public static final VectorComponent A;
    public static final VectorComponent B;
    public static final VectorComponent G;
    public static final VectorComponent P;
    public static final VectorComponent Q;
    public static final VectorComponent R;
    public static final VectorComponent S;
    public static final VectorComponent T;
    public static final VectorComponent W;
    public static final VectorComponent X;
    public static final VectorComponent Y;
    public static final VectorComponent Z;

    static {
        VectorComponent vectorComponent = new VectorComponent("X", 0);
        X = vectorComponent;
        VectorComponent vectorComponent2 = new VectorComponent("Y", 1);
        Y = vectorComponent2;
        VectorComponent vectorComponent3 = new VectorComponent("Z", 2);
        Z = vectorComponent3;
        VectorComponent vectorComponent4 = new VectorComponent("W", 3);
        W = vectorComponent4;
        VectorComponent vectorComponent5 = new VectorComponent("R", 4);
        R = vectorComponent5;
        VectorComponent vectorComponent6 = new VectorComponent("G", 5);
        G = vectorComponent6;
        VectorComponent vectorComponent7 = new VectorComponent(NBSSpanMetricUnit.Byte, 6);
        B = vectorComponent7;
        VectorComponent vectorComponent8 = new VectorComponent("A", 7);
        A = vectorComponent8;
        VectorComponent vectorComponent9 = new VectorComponent("S", 8);
        S = vectorComponent9;
        VectorComponent vectorComponent10 = new VectorComponent("T", 9);
        T = vectorComponent10;
        VectorComponent vectorComponent11 = new VectorComponent("P", 10);
        P = vectorComponent11;
        VectorComponent vectorComponent12 = new VectorComponent("Q", 11);
        Q = vectorComponent12;
        VectorComponent[] vectorComponentArr = {vectorComponent, vectorComponent2, vectorComponent3, vectorComponent4, vectorComponent5, vectorComponent6, vectorComponent7, vectorComponent8, vectorComponent9, vectorComponent10, vectorComponent11, vectorComponent12};
        $VALUES = vectorComponentArr;
        $ENTRIES = EnumEntriesKt.a(vectorComponentArr);
    }

    public static VectorComponent valueOf(String str) {
        return (VectorComponent) Enum.valueOf(VectorComponent.class, str);
    }

    public static VectorComponent[] values() {
        return (VectorComponent[]) $VALUES.clone();
    }
}
