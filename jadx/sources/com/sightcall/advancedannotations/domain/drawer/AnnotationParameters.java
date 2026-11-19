package com.sightcall.advancedannotations.domain.drawer;

import defpackage.g5;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b)\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0080\b\u0018\u00002\u00020\u0001B\u0099\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\u0005\u0012\b\b\u0002\u0010\t\u001a\u00020\u0005\u0012\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0015\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0019¢\u0006\u0004\b\u001a\u0010\u001bJ\t\u00102\u001a\u00020\u0003HÆ\u0003J\t\u00103\u001a\u00020\u0005HÆ\u0003J\t\u00104\u001a\u00020\u0007HÆ\u0003J\t\u00105\u001a\u00020\u0005HÆ\u0003J\t\u00106\u001a\u00020\u0005HÆ\u0003J\u000f\u00107\u001a\b\u0012\u0004\u0012\u00020\f0\u000bHÆ\u0003J\u000b\u00108\u001a\u0004\u0018\u00010\u000eHÆ\u0003J\u000b\u00109\u001a\u0004\u0018\u00010\u0010HÆ\u0003J\u000b\u0010:\u001a\u0004\u0018\u00010\u0010HÆ\u0003J\u000b\u0010;\u001a\u0004\u0018\u00010\u0013HÆ\u0003J\u000b\u0010<\u001a\u0004\u0018\u00010\u0015HÆ\u0003J\u000b\u0010=\u001a\u0004\u0018\u00010\u0017HÆ\u0003J\u000b\u0010>\u001a\u0004\u0018\u00010\u0019HÆ\u0003J\u009f\u0001\u0010?\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00052\b\b\u0002\u0010\t\u001a\u00020\u00052\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00152\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0019HÆ\u0001J\u0014\u0010@\u001a\u00020\u00052\b\u0010A\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010B\u001a\u00020CHÖ\u0081\u0004J\n\u0010D\u001a\u00020EHÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\u001eR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R\u0011\u0010\b\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u001eR\u0011\u0010\t\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010\u001eR\u0017\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b¢\u0006\b\n\u0000\u001a\u0004\b#\u0010$R\u0013\u0010\r\u001a\u0004\u0018\u00010\u000e¢\u0006\b\n\u0000\u001a\u0004\b%\u0010&R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0010¢\u0006\b\n\u0000\u001a\u0004\b'\u0010(R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\b\n\u0000\u001a\u0004\b)\u0010(R\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u0013¢\u0006\b\n\u0000\u001a\u0004\b*\u0010+R\u0013\u0010\u0014\u001a\u0004\u0018\u00010\u0015¢\u0006\b\n\u0000\u001a\u0004\b,\u0010-R\u0013\u0010\u0016\u001a\u0004\u0018\u00010\u0017¢\u0006\b\n\u0000\u001a\u0004\b.\u0010/R\u0013\u0010\u0018\u001a\u0004\u0018\u00010\u0019¢\u0006\b\n\u0000\u001a\u0004\b0\u00101¨\u0006F"}, d2 = {"Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;", "", "senderId", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId;", "isLocal", "", "annotationId", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId;", "delete", "fadeOut", "fadeOutCompletion", "Lkotlin/Function0;", "", "resourceId", "Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;", "position", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;", "line", "scale", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;", "rotation", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationRotation;", "color", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;", "text", "Lcom/sightcall/advancedannotations/domain/drawer/TextParameters;", "<init>", "(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId;ZLcom/sightcall/advancedannotations/domain/drawer/AnnotationId;ZZLkotlin/jvm/functions/Function0;Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationRotation;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;Lcom/sightcall/advancedannotations/domain/drawer/TextParameters;)V", "getSenderId", "()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId;", "()Z", "getAnnotationId", "()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId;", "getDelete", "getFadeOut", "getFadeOutCompletion", "()Lkotlin/jvm/functions/Function0;", "getResourceId", "()Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;", "getPosition", "()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;", "getLine", "getScale", "()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;", "getRotation", "()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationRotation;", "getColor", "()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;", "getText", "()Lcom/sightcall/advancedannotations/domain/drawer/TextParameters;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "copy", "equals", "other", "hashCode", "", "toString", "", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class AnnotationParameters {
    private final AnnotationId annotationId;
    private final AnnotationColor color;
    private final boolean delete;
    private final boolean fadeOut;
    private final Function0<Unit> fadeOutCompletion;
    private final boolean isLocal;
    private final AnnotationPosition line;
    private final AnnotationPosition position;
    private final ResourceId resourceId;
    private final AnnotationRotation rotation;
    private final AnnotationScale scale;
    private final AnnotationSenderId senderId;
    private final TextParameters text;

    public /* synthetic */ AnnotationParameters(AnnotationSenderId annotationSenderId, boolean z, AnnotationId annotationId, boolean z2, boolean z3, Function0 function0, ResourceId resourceId, AnnotationPosition annotationPosition, AnnotationPosition annotationPosition2, AnnotationScale annotationScale, AnnotationRotation annotationRotation, AnnotationColor annotationColor, TextParameters textParameters, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(annotationSenderId, (i2 & 2) != 0 ? false : z, annotationId, (i2 & 8) != 0 ? false : z2, (i2 & 16) != 0 ? false : z3, (i2 & 32) != 0 ? new g5(3) : function0, (i2 & 64) != 0 ? null : resourceId, (i2 & 128) != 0 ? null : annotationPosition, (i2 & 256) != 0 ? null : annotationPosition2, (i2 & 512) != 0 ? null : annotationScale, (i2 & 1024) != 0 ? null : annotationRotation, (i2 & 2048) != 0 ? null : annotationColor, (i2 & 4096) != 0 ? null : textParameters);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ AnnotationParameters copy$default(AnnotationParameters annotationParameters, AnnotationSenderId annotationSenderId, boolean z, AnnotationId annotationId, boolean z2, boolean z3, Function0 function0, ResourceId resourceId, AnnotationPosition annotationPosition, AnnotationPosition annotationPosition2, AnnotationScale annotationScale, AnnotationRotation annotationRotation, AnnotationColor annotationColor, TextParameters textParameters, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            annotationSenderId = annotationParameters.senderId;
        }
        return annotationParameters.copy(annotationSenderId, (i2 & 2) != 0 ? annotationParameters.isLocal : z, (i2 & 4) != 0 ? annotationParameters.annotationId : annotationId, (i2 & 8) != 0 ? annotationParameters.delete : z2, (i2 & 16) != 0 ? annotationParameters.fadeOut : z3, (i2 & 32) != 0 ? annotationParameters.fadeOutCompletion : function0, (i2 & 64) != 0 ? annotationParameters.resourceId : resourceId, (i2 & 128) != 0 ? annotationParameters.position : annotationPosition, (i2 & 256) != 0 ? annotationParameters.line : annotationPosition2, (i2 & 512) != 0 ? annotationParameters.scale : annotationScale, (i2 & 1024) != 0 ? annotationParameters.rotation : annotationRotation, (i2 & 2048) != 0 ? annotationParameters.color : annotationColor, (i2 & 4096) != 0 ? annotationParameters.text : textParameters);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final AnnotationSenderId getSenderId() {
        return this.senderId;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final AnnotationScale getScale() {
        return this.scale;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final AnnotationRotation getRotation() {
        return this.rotation;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final AnnotationColor getColor() {
        return this.color;
    }

    /* JADX INFO: renamed from: component13, reason: from getter */
    public final TextParameters getText() {
        return this.text;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getIsLocal() {
        return this.isLocal;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final AnnotationId getAnnotationId() {
        return this.annotationId;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final boolean getDelete() {
        return this.delete;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final boolean getFadeOut() {
        return this.fadeOut;
    }

    public final Function0<Unit> component6() {
        return this.fadeOutCompletion;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final ResourceId getResourceId() {
        return this.resourceId;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final AnnotationPosition getPosition() {
        return this.position;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final AnnotationPosition getLine() {
        return this.line;
    }

    public final AnnotationParameters copy(AnnotationSenderId senderId, boolean isLocal, AnnotationId annotationId, boolean delete, boolean fadeOut, Function0<Unit> fadeOutCompletion, ResourceId resourceId, AnnotationPosition position, AnnotationPosition line, AnnotationScale scale, AnnotationRotation rotation, AnnotationColor color, TextParameters text) {
        senderId.getClass();
        annotationId.getClass();
        fadeOutCompletion.getClass();
        return new AnnotationParameters(senderId, isLocal, annotationId, delete, fadeOut, fadeOutCompletion, resourceId, position, line, scale, rotation, color, text);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AnnotationParameters)) {
            return false;
        }
        AnnotationParameters annotationParameters = (AnnotationParameters) other;
        return Intrinsics.c(this.senderId, annotationParameters.senderId) && this.isLocal == annotationParameters.isLocal && Intrinsics.c(this.annotationId, annotationParameters.annotationId) && this.delete == annotationParameters.delete && this.fadeOut == annotationParameters.fadeOut && Intrinsics.c(this.fadeOutCompletion, annotationParameters.fadeOutCompletion) && Intrinsics.c(this.resourceId, annotationParameters.resourceId) && Intrinsics.c(this.position, annotationParameters.position) && Intrinsics.c(this.line, annotationParameters.line) && Intrinsics.c(this.scale, annotationParameters.scale) && Intrinsics.c(this.rotation, annotationParameters.rotation) && Intrinsics.c(this.color, annotationParameters.color) && Intrinsics.c(this.text, annotationParameters.text);
    }

    public final AnnotationId getAnnotationId() {
        return this.annotationId;
    }

    public final AnnotationColor getColor() {
        return this.color;
    }

    public final boolean getDelete() {
        return this.delete;
    }

    public final boolean getFadeOut() {
        return this.fadeOut;
    }

    public final Function0<Unit> getFadeOutCompletion() {
        return this.fadeOutCompletion;
    }

    public final AnnotationPosition getLine() {
        return this.line;
    }

    public final AnnotationPosition getPosition() {
        return this.position;
    }

    public final ResourceId getResourceId() {
        return this.resourceId;
    }

    public final AnnotationRotation getRotation() {
        return this.rotation;
    }

    public final AnnotationScale getScale() {
        return this.scale;
    }

    public final AnnotationSenderId getSenderId() {
        return this.senderId;
    }

    public final TextParameters getText() {
        return this.text;
    }

    public int hashCode() {
        int iHashCode = (this.fadeOutCompletion.hashCode() + o60.b(o60.b((this.annotationId.hashCode() + o60.b(this.senderId.hashCode() * 31, 31, this.isLocal)) * 31, 31, this.delete), 31, this.fadeOut)) * 31;
        ResourceId resourceId = this.resourceId;
        int iHashCode2 = (iHashCode + (resourceId == null ? 0 : resourceId.hashCode())) * 31;
        AnnotationPosition annotationPosition = this.position;
        int iHashCode3 = (iHashCode2 + (annotationPosition == null ? 0 : annotationPosition.hashCode())) * 31;
        AnnotationPosition annotationPosition2 = this.line;
        int iHashCode4 = (iHashCode3 + (annotationPosition2 == null ? 0 : annotationPosition2.hashCode())) * 31;
        AnnotationScale annotationScale = this.scale;
        int iHashCode5 = (iHashCode4 + (annotationScale == null ? 0 : annotationScale.hashCode())) * 31;
        AnnotationRotation annotationRotation = this.rotation;
        int iHashCode6 = (iHashCode5 + (annotationRotation == null ? 0 : annotationRotation.hashCode())) * 31;
        AnnotationColor annotationColor = this.color;
        int iHashCode7 = (iHashCode6 + (annotationColor == null ? 0 : annotationColor.hashCode())) * 31;
        TextParameters textParameters = this.text;
        return iHashCode7 + (textParameters != null ? textParameters.hashCode() : 0);
    }

    public final boolean isLocal() {
        return this.isLocal;
    }

    public String toString() {
        return "AnnotationParameters(senderId=" + this.senderId + ", isLocal=" + this.isLocal + ", annotationId=" + this.annotationId + ", delete=" + this.delete + ", fadeOut=" + this.fadeOut + ", fadeOutCompletion=" + this.fadeOutCompletion + ", resourceId=" + this.resourceId + ", position=" + this.position + ", line=" + this.line + ", scale=" + this.scale + ", rotation=" + this.rotation + ", color=" + this.color + ", text=" + this.text + ")";
    }

    public AnnotationParameters(AnnotationSenderId annotationSenderId, boolean z, AnnotationId annotationId, boolean z2, boolean z3, Function0<Unit> function0, ResourceId resourceId, AnnotationPosition annotationPosition, AnnotationPosition annotationPosition2, AnnotationScale annotationScale, AnnotationRotation annotationRotation, AnnotationColor annotationColor, TextParameters textParameters) {
        annotationSenderId.getClass();
        annotationId.getClass();
        function0.getClass();
        this.senderId = annotationSenderId;
        this.isLocal = z;
        this.annotationId = annotationId;
        this.delete = z2;
        this.fadeOut = z3;
        this.fadeOutCompletion = function0;
        this.resourceId = resourceId;
        this.position = annotationPosition;
        this.line = annotationPosition2;
        this.scale = annotationScale;
        this.rotation = annotationRotation;
        this.color = annotationColor;
        this.text = textParameters;
    }
}
