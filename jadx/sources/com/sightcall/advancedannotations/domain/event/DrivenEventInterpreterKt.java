package com.sightcall.advancedannotations.domain.event;

import android.view.View;
import android.view.ViewGroup;
import com.appsflyer.sdk_base.referrer.Payload;
import com.sightcall.advancedannotations.domain.drawer.AnnotationColor;
import com.sightcall.advancedannotations.domain.drawer.AnnotationCommand;
import com.sightcall.advancedannotations.domain.drawer.AnnotationCommandKt;
import com.sightcall.advancedannotations.domain.drawer.AnnotationId;
import com.sightcall.advancedannotations.domain.drawer.AnnotationParameters;
import com.sightcall.advancedannotations.domain.drawer.AnnotationPosition;
import com.sightcall.advancedannotations.domain.drawer.AnnotationRotation;
import com.sightcall.advancedannotations.domain.drawer.AnnotationScale;
import com.sightcall.advancedannotations.domain.drawer.AnnotationSenderId;
import com.sightcall.advancedannotations.domain.drawingmode.DrawingModeSelector;
import com.sightcall.advancedannotations.domain.settings.Setting;
import defpackage.dt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.math.MathKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000n\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\u001a \u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0000\u001a\u0018\u0010\b\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0000\u001a(\u0010\t\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\fH\u0000\u001a(\u0010\r\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\fH\u0000\u001a(\u0010\u000e\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u000fH\u0000\u001aB\u0010\u0010\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\b\u0010\u0011\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0000\u001aB\u0010\u0016\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\b\u0010\u0011\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0000\u001a \u0010\u0017\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0000\u001a;\u0010\u001b\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u00182!\u0010\u001c\u001a\u001d\u0012\u0013\u0012\u00110\u0018¢\u0006\f\b\u001e\u0012\b\b\u001f\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020 0\u001dH\u0000\u001a\u001c\u0010!\u001a\u00020\"*\u00020#2\u0006\u0010$\u001a\u00020\u00052\u0006\u0010%\u001a\u00020\u0005H\u0002\u001a$\u0010&\u001a\u00020'*\u00020#2\u0006\u0010$\u001a\u00020\u00052\u0006\u0010%\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0013H\u0002¨\u0006("}, d2 = {"createDrivenPointer", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;", "localSenderId", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId;", "position", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;", "mode", "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenPointer;", "moveDrivenPointer", "createDrivenLine", "annotationId", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;", "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDraw;", "addDrivenLinePosition", "createDrivenDrop", "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDrop;", "moveDrivenDrop", "initialPosition", "setting", "Lcom/sightcall/advancedannotations/domain/settings/Setting;", "view", "Landroid/view/ViewGroup;", "completeDrivenDrop", "delete", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId;", "transmit", "", "fadeOut", "completion", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "", "computeRotation", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationRotation;", "Landroid/view/View;", Payload.SOURCE, "dest", "computeScale", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;", "advancedannotations_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class DrivenEventInterpreterKt {
    public static final AnnotationCommand addDrivenLinePosition(AnnotationSenderId annotationSenderId, AnnotationId.Specific specific, AnnotationPosition annotationPosition, DrawingModeSelector.ModeConfiguration.DrivenDraw drivenDraw) {
        annotationSenderId.getClass();
        specific.getClass();
        annotationPosition.getClass();
        drivenDraw.getClass();
        return new AnnotationCommand(true, true, new AnnotationParameters(annotationSenderId, false, specific, false, false, null, null, null, annotationPosition, null, null, drivenDraw.getColor(), null, 5882, null));
    }

    public static final AnnotationCommand completeDrivenDrop(AnnotationSenderId annotationSenderId, AnnotationId.Specific specific, AnnotationPosition annotationPosition, AnnotationPosition annotationPosition2, DrawingModeSelector.ModeConfiguration.DrivenDrop drivenDrop, Setting setting, ViewGroup viewGroup) {
        annotationSenderId.getClass();
        specific.getClass();
        annotationPosition2.getClass();
        drivenDrop.getClass();
        setting.getClass();
        viewGroup.getClass();
        if ((annotationPosition != null ? computeScale(viewGroup, annotationPosition, annotationPosition2, setting) : new AnnotationScale(100)).isZero()) {
            return delete(annotationSenderId, specific, false);
        }
        AnnotationRotation annotationRotationComputeRotation = annotationPosition != null ? computeRotation(viewGroup, annotationPosition, annotationPosition2) : null;
        return new AnnotationCommand(true, true, new AnnotationParameters(annotationSenderId, false, specific, false, false, null, drivenDrop.getResourceId(), annotationPosition, null, annotationPosition != null ? computeScale(viewGroup, annotationPosition, annotationPosition2, setting) : null, annotationRotationComputeRotation, drivenDrop.getColor(), null, 4410, null));
    }

    private static final AnnotationRotation computeRotation(View view, AnnotationPosition annotationPosition, AnnotationPosition annotationPosition2) {
        return new AnnotationRotation(MathKt.b(Math.toDegrees(Math.atan2(AnnotationCommandKt.yFor(annotationPosition2, view) - AnnotationCommandKt.yFor(annotationPosition, view), AnnotationCommandKt.xFor(annotationPosition2, view) - AnnotationCommandKt.xFor(annotationPosition, view)))));
    }

    private static final AnnotationScale computeScale(View view, AnnotationPosition annotationPosition, AnnotationPosition annotationPosition2, Setting setting) {
        return AnnotationScale.INSTANCE.fromView(view, (float) (Math.sqrt(Math.pow(AnnotationCommandKt.yFor(annotationPosition2, view) - AnnotationCommandKt.yFor(annotationPosition, view), 2.0d) + Math.pow(AnnotationCommandKt.xFor(annotationPosition2, view) - AnnotationCommandKt.xFor(annotationPosition, view), 2.0d)) / ((double) ((1.0f - setting.getHotPointX()) * setting.getWidth()))));
    }

    public static final AnnotationCommand createDrivenDrop(AnnotationSenderId annotationSenderId, AnnotationId.Specific specific, AnnotationPosition annotationPosition, DrawingModeSelector.ModeConfiguration.DrivenDrop drivenDrop) {
        annotationSenderId.getClass();
        specific.getClass();
        annotationPosition.getClass();
        drivenDrop.getClass();
        return new AnnotationCommand(false, true, new AnnotationParameters(annotationSenderId, false, specific, false, false, null, drivenDrop.getResourceId(), annotationPosition, null, new AnnotationScale(0), null, drivenDrop.getColor(), null, 5434, null));
    }

    public static final AnnotationCommand createDrivenLine(AnnotationSenderId annotationSenderId, AnnotationId.Specific specific, AnnotationPosition annotationPosition, DrawingModeSelector.ModeConfiguration.DrivenDraw drivenDraw) {
        annotationSenderId.getClass();
        specific.getClass();
        annotationPosition.getClass();
        drivenDraw.getClass();
        return new AnnotationCommand(true, true, new AnnotationParameters(annotationSenderId, false, specific, false, false, null, null, null, annotationPosition, null, null, drivenDraw.getColor(), null, 5882, null));
    }

    public static final AnnotationCommand createDrivenPointer(AnnotationSenderId annotationSenderId, AnnotationPosition annotationPosition, DrawingModeSelector.ModeConfiguration.DrivenPointer drivenPointer) {
        annotationSenderId.getClass();
        annotationPosition.getClass();
        drivenPointer.getClass();
        return new AnnotationCommand(true, false, new AnnotationParameters(annotationSenderId, false, new AnnotationId.Specific(0), false, false, null, drivenPointer.getResourceId(), annotationPosition, null, drivenPointer.getScale(), null, drivenPointer.getColor(), null, 5434, null));
    }

    public static final AnnotationCommand delete(AnnotationSenderId annotationSenderId, AnnotationId annotationId, boolean z) {
        annotationSenderId.getClass();
        annotationId.getClass();
        return new AnnotationCommand(z, true, new AnnotationParameters(annotationSenderId, false, annotationId, true, false, null, null, null, null, null, null, null, null, 8178, null));
    }

    public static final AnnotationCommand fadeOut(AnnotationSenderId annotationSenderId, AnnotationId annotationId, Function1<? super AnnotationId, Unit> function1) {
        annotationSenderId.getClass();
        annotationId.getClass();
        function1.getClass();
        return new AnnotationCommand(false, true, new AnnotationParameters(annotationSenderId, false, annotationId, false, true, new dt(function1, annotationId, 6), null, null, null, null, null, null, null, 8138, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit fadeOut$lambda$0(Function1 function1, AnnotationId annotationId) {
        function1.invoke(annotationId);
        return Unit.f71739a;
    }

    public static final AnnotationCommand moveDrivenDrop(AnnotationSenderId annotationSenderId, AnnotationId.Specific specific, AnnotationPosition annotationPosition, AnnotationPosition annotationPosition2, DrawingModeSelector.ModeConfiguration.DrivenDrop drivenDrop, Setting setting, ViewGroup viewGroup) {
        annotationSenderId.getClass();
        specific.getClass();
        annotationPosition2.getClass();
        drivenDrop.getClass();
        setting.getClass();
        viewGroup.getClass();
        AnnotationColor color = drivenDrop.getColor();
        return new AnnotationCommand(false, true, new AnnotationParameters(annotationSenderId, false, specific, false, false, null, drivenDrop.getResourceId(), null, null, annotationPosition != null ? computeScale(viewGroup, annotationPosition, annotationPosition2, setting) : null, annotationPosition != null ? computeRotation(viewGroup, annotationPosition, annotationPosition2) : null, color, null, 4538, null));
    }

    public static final AnnotationCommand moveDrivenPointer(AnnotationSenderId annotationSenderId, AnnotationPosition annotationPosition) {
        annotationSenderId.getClass();
        annotationPosition.getClass();
        return new AnnotationCommand(true, false, new AnnotationParameters(annotationSenderId, false, new AnnotationId.Specific(0), false, false, null, null, annotationPosition, null, null, null, null, null, 8058, null));
    }
}
