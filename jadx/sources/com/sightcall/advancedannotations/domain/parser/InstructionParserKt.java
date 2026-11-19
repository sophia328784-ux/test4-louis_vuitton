package com.sightcall.advancedannotations.domain.parser;

import com.sightcall.advancedannotations.domain.drawer.AnnotationPosition;
import kotlin.Metadata;
import kotlin.math.MathKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u001a\f\u0010\u0000\u001a\u00020\u0001*\u00020\u0001H\u0000\u001a\f\u0010\u0002\u001a\u00020\u0001*\u00020\u0001H\u0000\u001a\f\u0010\u0003\u001a\u00020\u0001*\u00020\u0004H\u0000¨\u0006\u0005"}, d2 = {"getNextDigits", "", "getTextMessage", "serialize", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;", "advancedannotations_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class InstructionParserKt {
    public static final String getNextDigits(String str) {
        str.getClass();
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt = str.charAt(i2);
            if (!Character.isDigit(cCharAt) && cCharAt != '-') {
                return str.substring(0, i2);
            }
        }
        return str;
    }

    public static final String getTextMessage(String str) {
        str.getClass();
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            if (str.charAt(i2) == '|') {
                return str.substring(0, i2);
            }
        }
        return str;
    }

    public static final String serialize(AnnotationPosition annotationPosition) {
        annotationPosition.getClass();
        return MathKt.b(annotationPosition.getX() * 1000.0d) + "_" + MathKt.b(annotationPosition.getY() * 1000.0d);
    }
}
