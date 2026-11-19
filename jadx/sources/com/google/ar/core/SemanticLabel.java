package com.google.ar.core;

import defpackage.r81;
import defpackage.z81;

/* JADX INFO: loaded from: classes2.dex */
public enum SemanticLabel {
    UNLABELED(0),
    SKY(1),
    BUILDING(2),
    TREE(3),
    ROAD(4),
    SIDEWALK(5),
    TERRAIN(6),
    STRUCTURE(7),
    OBJECT(8),
    VEHICLE(9),
    PERSON(10),
    WATER(11);

    final int nativeCode;

    SemanticLabel(int i2) {
        this.nativeCode = i2;
    }

    public static SemanticLabel forNumber(int i2) {
        for (SemanticLabel semanticLabel : values()) {
            if (semanticLabel.nativeCode == i2) {
                return semanticLabel;
            }
        }
        r81.i(z81.f(String.valueOf(i2).length() + (byte) 49, i2, "Unexpected value for native SemanticLabel, value="));
        return null;
    }
}
