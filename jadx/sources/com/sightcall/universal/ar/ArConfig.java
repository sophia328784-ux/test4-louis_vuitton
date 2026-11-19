package com.sightcall.universal.ar;

/* JADX INFO: loaded from: classes3.dex */
public class ArConfig {
    public final ArUnit unit;

    /* JADX INFO: renamed from: com.sightcall.universal.ar.ArConfig$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sightcall$universal$ar$ArStart$Unit;

        static {
            int[] iArr = new int[ArStart.Unit.values().length];
            $SwitchMap$com$sightcall$universal$ar$ArStart$Unit = iArr;
            try {
                iArr[ArStart.Unit.IMPERIAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sightcall$universal$ar$ArStart$Unit[ArStart.Unit.METRIC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    private ArConfig(ArUnit arUnit) {
        this.unit = arUnit;
    }

    public static ArConfig with(ArStart arStart) {
        if (arStart != null && AnonymousClass1.$SwitchMap$com$sightcall$universal$ar$ArStart$Unit[arStart.unit().ordinal()] == 1) {
            return new ArConfig(ArUnit.IMPERIAL);
        }
        return new ArConfig(ArUnit.METRIC);
    }
}
