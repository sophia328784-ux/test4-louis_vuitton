package com.sightcall.advancedannotations.domain.drawer;

import defpackage.cj;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0080\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0006HÆ\u0003J'\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0014\u0010\u0012\u001a\u00020\u00032\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0014\u001a\u00020\u0015HÖ\u0081\u0004J\n\u0010\u0016\u001a\u00020\u0017HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u0018"}, d2 = {"Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;", "", "transmittable", "", "displayed", "parameters", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;", "<init>", "(ZZLcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;)V", "getTransmittable", "()Z", "getDisplayed", "getParameters", "()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;", "component1", "component2", "component3", "copy", "equals", "other", "hashCode", "", "toString", "", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class AnnotationCommand {
    private final boolean displayed;
    private final AnnotationParameters parameters;
    private final boolean transmittable;

    public AnnotationCommand(boolean z, boolean z2, AnnotationParameters annotationParameters) {
        annotationParameters.getClass();
        this.transmittable = z;
        this.displayed = z2;
        this.parameters = annotationParameters;
    }

    public static /* synthetic */ AnnotationCommand copy$default(AnnotationCommand annotationCommand, boolean z, boolean z2, AnnotationParameters annotationParameters, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            z = annotationCommand.transmittable;
        }
        if ((i2 & 2) != 0) {
            z2 = annotationCommand.displayed;
        }
        if ((i2 & 4) != 0) {
            annotationParameters = annotationCommand.parameters;
        }
        return annotationCommand.copy(z, z2, annotationParameters);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getTransmittable() {
        return this.transmittable;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getDisplayed() {
        return this.displayed;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final AnnotationParameters getParameters() {
        return this.parameters;
    }

    public final AnnotationCommand copy(boolean transmittable, boolean displayed, AnnotationParameters parameters) {
        parameters.getClass();
        return new AnnotationCommand(transmittable, displayed, parameters);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AnnotationCommand)) {
            return false;
        }
        AnnotationCommand annotationCommand = (AnnotationCommand) other;
        return this.transmittable == annotationCommand.transmittable && this.displayed == annotationCommand.displayed && Intrinsics.c(this.parameters, annotationCommand.parameters);
    }

    public final boolean getDisplayed() {
        return this.displayed;
    }

    public final AnnotationParameters getParameters() {
        return this.parameters;
    }

    public final boolean getTransmittable() {
        return this.transmittable;
    }

    public int hashCode() {
        return this.parameters.hashCode() + o60.b(Boolean.hashCode(this.transmittable) * 31, 31, this.displayed);
    }

    public String toString() {
        boolean z = this.transmittable;
        boolean z2 = this.displayed;
        AnnotationParameters annotationParameters = this.parameters;
        StringBuilder sbM = cj.m("AnnotationCommand(transmittable=", ", displayed=", ", parameters=", z, z2);
        sbM.append(annotationParameters);
        sbM.append(")");
        return sbM.toString();
    }
}
