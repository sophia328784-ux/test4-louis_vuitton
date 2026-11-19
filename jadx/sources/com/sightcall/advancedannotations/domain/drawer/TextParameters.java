package com.sightcall.advancedannotations.domain.drawer;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0080\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0014\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0012\u001a\u00020\u0013HÖ\u0081\u0004J\n\u0010\u0014\u001a\u00020\u0005HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0015"}, d2 = {"Lcom/sightcall/advancedannotations/domain/drawer/TextParameters;", "", "position", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;", "message", "", "<init>", "(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Ljava/lang/String;)V", "getPosition", "()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;", "getMessage", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class TextParameters {
    private final String message;
    private final AnnotationPosition position;

    public TextParameters(AnnotationPosition annotationPosition, String str) {
        annotationPosition.getClass();
        str.getClass();
        this.position = annotationPosition;
        this.message = str;
    }

    public static /* synthetic */ TextParameters copy$default(TextParameters textParameters, AnnotationPosition annotationPosition, String str, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            annotationPosition = textParameters.position;
        }
        if ((i2 & 2) != 0) {
            str = textParameters.message;
        }
        return textParameters.copy(annotationPosition, str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final AnnotationPosition getPosition() {
        return this.position;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getMessage() {
        return this.message;
    }

    public final TextParameters copy(AnnotationPosition position, String message) {
        position.getClass();
        message.getClass();
        return new TextParameters(position, message);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TextParameters)) {
            return false;
        }
        TextParameters textParameters = (TextParameters) other;
        return Intrinsics.c(this.position, textParameters.position) && Intrinsics.c(this.message, textParameters.message);
    }

    public final String getMessage() {
        return this.message;
    }

    public final AnnotationPosition getPosition() {
        return this.position;
    }

    public int hashCode() {
        return this.message.hashCode() + (this.position.hashCode() * 31);
    }

    public String toString() {
        return "TextParameters(position=" + this.position + ", message=" + this.message + ")";
    }
}
