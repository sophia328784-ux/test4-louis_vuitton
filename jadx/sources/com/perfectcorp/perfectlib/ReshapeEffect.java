package com.perfectcorp.perfectlib;

import com.perfectcorp.common.utility.ValueChecker;
import com.perfectcorp.perfectlib.ymk.model.BeautyMode;
import com.perfectcorp.thirdparty.com.google.common.base.Preconditions;

/* JADX INFO: loaded from: classes3.dex */
public enum ReshapeEffect {
    FACE_SHAPE_OVERALL(BeautyMode.FACE_RESHAPE),
    FACE_SHAPE_LEFT(BeautyMode.FACE_RESHAPE_LEFT),
    FACE_SHAPE_RIGHT(BeautyMode.FACE_RESHAPE_RIGHT),
    FACE_WIDTH(BeautyMode.FACE_WIDTH),
    JAW(BeautyMode.FACE_JAW),
    CHEEKBONE(BeautyMode.FACE_CHEEKBONE),
    CHIN_LENGTH(BeautyMode.CHIN_LENGTH),
    CHIN_SHAPE_OVERALL(BeautyMode.CHIN_RESHAPE),
    CHIN_SHAPE_LEFT(BeautyMode.CHIN_RESHAPE_LEFT),
    CHIN_SHAPE_RIGHT(BeautyMode.CHIN_RESHAPE_RIGHT),
    NOSE_SIZE(BeautyMode.NOSE_SIZE),
    NOSE_LIFT(BeautyMode.NOSE_LENGTH),
    NOSE_BRIDGE(BeautyMode.NOSE_BRIDGE),
    NOSE_TIP(BeautyMode.NOSE_TIP),
    NOSE_WING(BeautyMode.NOSE_WING),
    NOSE_WIDTH(BeautyMode.NOSE_WIDTH),
    LIP_SIZE(BeautyMode.LIP_SIZE),
    LIP_WIDTH(BeautyMode.LIP_WIDTH),
    LIP_HEIGHT_OVERALL(BeautyMode.LIP_HEIGHT),
    LIP_HEIGHT_UPPER(BeautyMode.LIP_HEIGHT_UPPER),
    LIP_HEIGHT_LOWER(BeautyMode.LIP_HEIGHT_LOWER),
    LIP_PEAK(BeautyMode.LIP_PEAK),
    EYE_SIZE_OVERALL(BeautyMode.EYE_SIZE),
    EYE_SIZE_LEFT(BeautyMode.EYE_SIZE_LEFT),
    EYE_SIZE_RIGHT(BeautyMode.EYE_SIZE_RIGHT),
    EYE_WIDTH(BeautyMode.EYE_WIDTH),
    EYE_HEIGHT(BeautyMode.EYE_HEIGHT),
    EYE_DISTANCE(BeautyMode.EYE_DISTANCE),
    EYE_ANGLE(BeautyMode.EYE_SLANT);

    final BeautyMode beautyMode;

    ReshapeEffect(BeautyMode beautyMode) {
        this.beautyMode = beautyMode;
    }

    public final void a(int i2, String str) {
        BeautyMode beautyMode = this.beautyMode;
        if (beautyMode == BeautyMode.FACE_CHEEKBONE || beautyMode == BeautyMode.FACE_JAW) {
            Preconditions.g(ValueChecker.f39439a.apply(Integer.valueOf(i2)), str.concat(" isn't in 0~100"));
        } else {
            Preconditions.g(ValueChecker.f39440b.apply(Integer.valueOf(i2)), str.concat(" isn't in -100~100"));
        }
    }
}
