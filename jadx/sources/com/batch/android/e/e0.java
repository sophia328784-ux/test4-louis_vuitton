package com.batch.android.e;

import java.util.EnumSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public enum e0 {
    NONE(0),
    SOUND(1),
    VIBRATE(2),
    LIGHTS(4),
    ALERT(8);


    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f23096b;

    e0(int i2) {
        this.f23096b = i2;
    }

    public static EnumSet<e0> a(int i2) {
        EnumSet<e0> enumSetNoneOf = EnumSet.noneOf(e0.class);
        for (e0 e0Var : values()) {
            if (e0Var != NONE) {
                int i3 = e0Var.f23096b;
                if ((i2 & i3) == i3) {
                    enumSetNoneOf.add(e0Var);
                }
            }
        }
        if (enumSetNoneOf.isEmpty()) {
            enumSetNoneOf.add(NONE);
        }
        return enumSetNoneOf;
    }

    public static int a(EnumSet<e0> enumSet) {
        Iterator<e0> it = enumSet.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            i2 |= it.next().f23096b;
        }
        return i2;
    }
}
