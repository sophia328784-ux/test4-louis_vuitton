package com.sightcall.advancedannotations.domain.event;

import com.sightcall.advancedannotations.domain.drawer.AnnotationCommand;
import com.sightcall.advancedannotations.domain.drawer.AnnotationId;
import com.sightcall.advancedannotations.domain.drawer.AnnotationParameters;
import com.sightcall.advancedannotations.domain.drawer.AnnotationPosition;
import com.sightcall.advancedannotations.domain.drawer.AnnotationScale;
import com.sightcall.advancedannotations.domain.drawer.AnnotationSenderId;
import com.sightcall.advancedannotations.domain.drawer.ResourceId;
import com.sightcall.advancedannotations.domain.drawingmode.DrawingModeSelector;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a \u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0000\u001a\u0018\u0010\b\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0000\u001a(\u0010\t\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\fH\u0000\u001a(\u0010\r\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\fH\u0000\u001a(\u0010\u000e\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\fH\u0000¨\u0006\u000f"}, d2 = {"createStandalonePointer", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;", "localSenderId", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId;", "position", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;", "mode", "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$StandalonePointer;", "moveStandalonePointer", "createStandaloneLine", "annotationId", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;", "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$StandaloneDrawDrop;", "addStandaloneLinePosition", "completeStandaloneDrop", "advancedannotations_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class StandaloneEventInterpreterKt {
    public static final AnnotationCommand addStandaloneLinePosition(AnnotationSenderId annotationSenderId, AnnotationId.Specific specific, AnnotationPosition annotationPosition, DrawingModeSelector.ModeConfiguration.StandaloneDrawDrop standaloneDrawDrop) {
        annotationSenderId.getClass();
        specific.getClass();
        annotationPosition.getClass();
        standaloneDrawDrop.getClass();
        return new AnnotationCommand(true, true, new AnnotationParameters(annotationSenderId, false, specific, false, false, null, null, null, annotationPosition, null, null, standaloneDrawDrop.getColor(), null, 5882, null));
    }

    public static final AnnotationCommand completeStandaloneDrop(AnnotationSenderId annotationSenderId, AnnotationId.Specific specific, AnnotationPosition annotationPosition, DrawingModeSelector.ModeConfiguration.StandaloneDrawDrop standaloneDrawDrop) {
        annotationSenderId.getClass();
        specific.getClass();
        annotationPosition.getClass();
        standaloneDrawDrop.getClass();
        return new AnnotationCommand(true, true, new AnnotationParameters(annotationSenderId, false, specific, false, false, null, new ResourceId(1), annotationPosition, null, null, null, standaloneDrawDrop.getColor(), null, 5946, null));
    }

    public static final AnnotationCommand createStandaloneLine(AnnotationSenderId annotationSenderId, AnnotationId.Specific specific, AnnotationPosition annotationPosition, DrawingModeSelector.ModeConfiguration.StandaloneDrawDrop standaloneDrawDrop) {
        annotationSenderId.getClass();
        specific.getClass();
        annotationPosition.getClass();
        standaloneDrawDrop.getClass();
        return new AnnotationCommand(true, true, new AnnotationParameters(annotationSenderId, false, specific, false, false, null, null, null, annotationPosition, null, null, standaloneDrawDrop.getColor(), null, 5882, null));
    }

    public static final AnnotationCommand createStandalonePointer(AnnotationSenderId annotationSenderId, AnnotationPosition annotationPosition, DrawingModeSelector.ModeConfiguration.StandalonePointer standalonePointer) {
        annotationSenderId.getClass();
        annotationPosition.getClass();
        standalonePointer.getClass();
        return new AnnotationCommand(true, false, new AnnotationParameters(annotationSenderId, false, new AnnotationId.Specific(0), false, false, null, new ResourceId(0), annotationPosition, null, new AnnotationScale(100), null, standalonePointer.getColor(), null, 5434, null));
    }

    public static final AnnotationCommand moveStandalonePointer(AnnotationSenderId annotationSenderId, AnnotationPosition annotationPosition) {
        annotationSenderId.getClass();
        annotationPosition.getClass();
        return new AnnotationCommand(true, false, new AnnotationParameters(annotationSenderId, false, new AnnotationId.Specific(0), false, false, null, null, annotationPosition, null, null, null, null, null, 8058, null));
    }
}
