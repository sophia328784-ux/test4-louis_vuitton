package com.google.android.filament.utils;

import com.networkbench.agent.impl.NBSSpanMetricUnit;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'XYZ' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:485)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:422)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:351)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:284)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:160)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\b\u000f\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0004\u001a\u0004\b\b\u0010\u0006R\u0017\u0010\t\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\t\u0010\u0004\u001a\u0004\b\n\u0010\u0006j\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010¨\u0006\u0011"}, d2 = {"Lcom/google/android/filament/utils/RotationsOrder;", "", "Lcom/google/android/filament/utils/VectorComponent;", "yaw", "Lcom/google/android/filament/utils/VectorComponent;", "c", "()Lcom/google/android/filament/utils/VectorComponent;", "pitch", "a", "roll", NBSSpanMetricUnit.Bit, "XYZ", "XZY", "YXZ", "YZX", "ZXY", "ZYX", "filament-utils-android_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class RotationsOrder {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ RotationsOrder[] $VALUES;
    public static final RotationsOrder XYZ;
    public static final RotationsOrder XZY;
    public static final RotationsOrder YXZ;
    public static final RotationsOrder YZX;
    public static final RotationsOrder ZXY;
    public static final RotationsOrder ZYX;
    private final VectorComponent pitch;
    private final VectorComponent roll;
    private final VectorComponent yaw;

    static {
        VectorComponent vectorComponent = VectorComponent.X;
        VectorComponent vectorComponent2 = VectorComponent.Y;
        VectorComponent vectorComponent3 = VectorComponent.Z;
        RotationsOrder rotationsOrder = new RotationsOrder("XYZ", 0, vectorComponent, vectorComponent2, vectorComponent3);
        XYZ = rotationsOrder;
        RotationsOrder rotationsOrder2 = new RotationsOrder("XZY", 1, vectorComponent, vectorComponent3, vectorComponent2);
        XZY = rotationsOrder2;
        RotationsOrder rotationsOrder3 = new RotationsOrder("YXZ", 2, vectorComponent2, vectorComponent, vectorComponent3);
        YXZ = rotationsOrder3;
        RotationsOrder rotationsOrder4 = new RotationsOrder("YZX", 3, vectorComponent2, vectorComponent3, vectorComponent);
        YZX = rotationsOrder4;
        RotationsOrder rotationsOrder5 = new RotationsOrder("ZXY", 4, vectorComponent3, vectorComponent, vectorComponent2);
        ZXY = rotationsOrder5;
        RotationsOrder rotationsOrder6 = new RotationsOrder("ZYX", 5, vectorComponent3, vectorComponent2, vectorComponent);
        ZYX = rotationsOrder6;
        RotationsOrder[] rotationsOrderArr = {rotationsOrder, rotationsOrder2, rotationsOrder3, rotationsOrder4, rotationsOrder5, rotationsOrder6};
        $VALUES = rotationsOrderArr;
        $ENTRIES = EnumEntriesKt.a(rotationsOrderArr);
    }

    public RotationsOrder(String str, int i2, VectorComponent vectorComponent, VectorComponent vectorComponent2, VectorComponent vectorComponent3) {
        super(str, i2);
        this.yaw = vectorComponent;
        this.pitch = vectorComponent2;
        this.roll = vectorComponent3;
    }

    public static RotationsOrder valueOf(String str) {
        return (RotationsOrder) Enum.valueOf(RotationsOrder.class, str);
    }

    public static RotationsOrder[] values() {
        return (RotationsOrder[]) $VALUES.clone();
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final VectorComponent getPitch() {
        return this.pitch;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final VectorComponent getRoll() {
        return this.roll;
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public final VectorComponent getYaw() {
        return this.yaw;
    }
}
