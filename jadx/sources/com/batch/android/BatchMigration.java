package com.batch.android;

import java.util.EnumSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public enum BatchMigration {
    NONE(0),
    CUSTOM_ID(1),
    CUSTOM_DATA(2);


    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f22809b;

    BatchMigration(int i2) {
        this.f22809b = i2;
    }

    public static EnumSet<BatchMigration> fromValue(int i2) {
        EnumSet<BatchMigration> enumSetNoneOf = EnumSet.noneOf(BatchMigration.class);
        for (BatchMigration batchMigration : values()) {
            if (batchMigration != NONE) {
                int i3 = batchMigration.f22809b;
                if ((i2 & i3) == i3) {
                    enumSetNoneOf.add(batchMigration);
                }
            }
        }
        if (enumSetNoneOf.isEmpty()) {
            enumSetNoneOf.add(NONE);
        }
        return enumSetNoneOf;
    }

    public static boolean isCustomDataMigrationDisabled(Integer num) {
        return num != null && fromValue(num.intValue()).contains(CUSTOM_DATA);
    }

    public static boolean isCustomIDMigrationDisabled(Integer num) {
        return num != null && fromValue(num.intValue()).contains(CUSTOM_ID);
    }

    public static int toValue(EnumSet<BatchMigration> enumSet) {
        Iterator<BatchMigration> it = enumSet.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            i2 |= it.next().f22809b;
        }
        return i2;
    }
}
