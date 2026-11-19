package com.sightcall.advancedannotations.domain.drawingmode;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.sightcall.advancedannotations.AdvancedAnnotationsAPI;
import com.sightcall.advancedannotations.domain.drawer.AnnotationColor;
import com.sightcall.advancedannotations.domain.drawer.AnnotationScale;
import com.sightcall.advancedannotations.domain.drawer.ResourceId;
import com.sightcall.libraries.archi.nucleus.Action;
import com.sightcall.libraries.archi.nucleus.Command;
import com.sightcall.libraries.archi.nucleus.NoCommand;
import com.sightcall.libraries.archi.nucleus.Nucleus;
import com.sightcall.libraries.rx.Optional;
import com.sightcall.libraries.rx.SubscriptionsKt;
import defpackage.d3;
import defpackage.v40;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.subjects.PublishSubject;
import io.reactivex.rxjava3.subjects.Subject;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0000\u0018\u00002\u00020\u0001:\u0006123456B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0018\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\b\u0010\u001c\u001a\u00020\u001dH\u0016J\u0010\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001f\u001a\u00020 H\u0016J\u0010\u0010!\u001a\u00020\u001d2\u0006\u0010\"\u001a\u00020#H\u0016J\u0010\u0010$\u001a\u00020\u001d2\u0006\u0010%\u001a\u00020&H\u0016J\u000e\u0010'\u001a\u0004\u0018\u00010(*\u00020\u000eH\u0002J\f\u0010)\u001a\u00020\u000e*\u00020\u000eH\u0002J\u0016\u0010*\u001a\u00020\u000e*\u00020\u000e2\b\u0010+\u001a\u0004\u0018\u00010,H\u0002J\u0016\u0010-\u001a\u00020\u000e*\u00020\u000e2\b\u0010+\u001a\u0004\u0018\u00010,H\u0002J\u0016\u0010.\u001a\u00020\u000e*\u00020\u000e2\b\u0010+\u001a\u0004\u0018\u00010,H\u0002J\u0014\u0010/\u001a\u00020\u000e*\u00020\u000e2\u0006\u0010%\u001a\u00020&H\u0002J\u0014\u00100\u001a\u00020\u000e*\u00020\u000e2\u0006\u0010\"\u001a\u00020#H\u0002R\u001a\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nRS\u0010\u000b\u001aG\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00100\u000f\u0012\u0004\u0012\u00020\b\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00100\u000f0\fj\b\u0012\u0004\u0012\u00020\u000e`\u0012¢\u0006\u0002\b\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00190\u0018X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001b¨\u00067"}, d2 = {"Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl;", "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector;", "initialPointerColor", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;", "<init>", "(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;)V", "actions", "Lio/reactivex/rxjava3/subjects/Subject;", "Lcom/sightcall/libraries/archi/nucleus/Action;", "getActions", "()Lio/reactivex/rxjava3/subjects/Subject;", "reducer", "Lkotlin/Function3;", "Lcom/sightcall/libraries/archi/nucleus/Nucleus;", "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;", "Lkotlin/Pair;", "Lcom/sightcall/libraries/archi/nucleus/Command;", "Lkotlin/ExtensionFunctionType;", "Lcom/sightcall/libraries/archi/nucleus/NucleusReducer;", "reduceStateForConfigurationUpdate", "state", "configuration", "Lcom/sightcall/advancedannotations/domain/drawingmode/AnnotationRequestResponse;", "nucleus", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$Mode;", "getState", "()Lio/reactivex/rxjava3/core/Observable;", "clear", "", "selectDrivenMode", "request", "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AnnotationRequest;", "selectUpdateCapability", "capability", "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$UpdateCapability;", "selectStandaloneMode", "mode", "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$StandaloneMode;", "detectMode", "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration;", "reduceDrivenNone", "reduceDrivenPointer", "params", "Lcom/sightcall/advancedannotations/domain/drawingmode/AnnotationRequestResponse$Parameters;", "reduceDrivenDraw", "reduceDrivenDrop", "reduceStandaloneMode", "reduceUpdateCapability", "SetUpdateCapability", "Update", "Parse", "SetStandaloneMode", "ParseRequest", "Configurations", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class DrawingModeSelectorImpl implements DrawingModeSelector {
    private final Subject<Action> actions;
    private final Nucleus<Configurations> nucleus;
    private final Function3<Nucleus<Configurations>, Pair<Configurations, ? extends Command>, Action, Pair<Configurations, Command>> reducer;
    private final Observable<DrawingModeSelector.Mode> state;

    @Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001Bq\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0005\u0012\u0006\u0010\u0010\u001a\u00020\u0005\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012¢\u0006\u0004\b\u0013\u0010\u0014J\b\u0010&\u001a\u0004\u0018\u00010'J\b\u0010(\u001a\u0004\u0018\u00010)J\b\u0010*\u001a\u0004\u0018\u00010+J\u000b\u0010,\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010-\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010.\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010/\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u00100\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u00101\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u00102\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u00103\u001a\u0004\u0018\u00010\u000eHÆ\u0003J\t\u00104\u001a\u00020\u0005HÆ\u0003J\t\u00105\u001a\u00020\u0005HÆ\u0003J\u000b\u00106\u001a\u0004\u0018\u00010\u0012HÆ\u0003J\u0089\u0001\u00107\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u00052\b\b\u0002\u0010\u0010\u001a\u00020\u00052\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÆ\u0001J\u0014\u00108\u001a\u0002092\b\u0010:\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010;\u001a\u00020<HÖ\u0081\u0004J\n\u0010=\u001a\u00020>HÖ\u0081\u0004R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0013\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u0013\u0010\n\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0018R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0018R\u0013\u0010\f\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u001aR\u0013\u0010\r\u001a\u0004\u0018\u00010\u000e¢\u0006\b\n\u0000\u001a\u0004\b \u0010!R\u0011\u0010\u000f\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010\u0018R\u0011\u0010\u0010\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\u0018R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0012¢\u0006\b\n\u0000\u001a\u0004\b$\u0010%¨\u0006?"}, d2 = {"Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Configurations;", "", "writeMode", "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$UpdateCapability;", "drivenPointerColor", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;", "drivenPointerResourceId", "Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;", "drivenPointerScale", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;", "drivenDrawColor", "drivenDropColor", "drivenDropResourceId", "drivenMode", "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$DrivenMode;", "standalonePointerColor", "standaloneDrawDropColor", "standaloneMode", "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$StandaloneMode;", "<init>", "(Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$UpdateCapability;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$DrivenMode;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$StandaloneMode;)V", "getWriteMode", "()Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$UpdateCapability;", "getDrivenPointerColor", "()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;", "getDrivenPointerResourceId", "()Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;", "getDrivenPointerScale", "()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;", "getDrivenDrawColor", "getDrivenDropColor", "getDrivenDropResourceId", "getDrivenMode", "()Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$DrivenMode;", "getStandalonePointerColor", "getStandaloneDrawDropColor", "getStandaloneMode", "()Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$StandaloneMode;", "validDrivenPointer", "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenPointer;", "validDrivenDraw", "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDraw;", "validDrivenDrop", "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDrop;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "copy", "equals", "", "other", "hashCode", "", "toString", "", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Configurations {
        private final AnnotationColor drivenDrawColor;
        private final AnnotationColor drivenDropColor;
        private final ResourceId drivenDropResourceId;
        private final DrawingModeSelector.DrivenMode drivenMode;
        private final AnnotationColor drivenPointerColor;
        private final ResourceId drivenPointerResourceId;
        private final AnnotationScale drivenPointerScale;
        private final AnnotationColor standaloneDrawDropColor;
        private final DrawingModeSelector.StandaloneMode standaloneMode;
        private final AnnotationColor standalonePointerColor;
        private final DrawingModeSelector.UpdateCapability writeMode;

        public Configurations(DrawingModeSelector.UpdateCapability updateCapability, AnnotationColor annotationColor, ResourceId resourceId, AnnotationScale annotationScale, AnnotationColor annotationColor2, AnnotationColor annotationColor3, ResourceId resourceId2, DrawingModeSelector.DrivenMode drivenMode, AnnotationColor annotationColor4, AnnotationColor annotationColor5, DrawingModeSelector.StandaloneMode standaloneMode) {
            annotationColor4.getClass();
            annotationColor5.getClass();
            this.writeMode = updateCapability;
            this.drivenPointerColor = annotationColor;
            this.drivenPointerResourceId = resourceId;
            this.drivenPointerScale = annotationScale;
            this.drivenDrawColor = annotationColor2;
            this.drivenDropColor = annotationColor3;
            this.drivenDropResourceId = resourceId2;
            this.drivenMode = drivenMode;
            this.standalonePointerColor = annotationColor4;
            this.standaloneDrawDropColor = annotationColor5;
            this.standaloneMode = standaloneMode;
        }

        public static /* synthetic */ Configurations copy$default(Configurations configurations, DrawingModeSelector.UpdateCapability updateCapability, AnnotationColor annotationColor, ResourceId resourceId, AnnotationScale annotationScale, AnnotationColor annotationColor2, AnnotationColor annotationColor3, ResourceId resourceId2, DrawingModeSelector.DrivenMode drivenMode, AnnotationColor annotationColor4, AnnotationColor annotationColor5, DrawingModeSelector.StandaloneMode standaloneMode, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                updateCapability = configurations.writeMode;
            }
            if ((i2 & 2) != 0) {
                annotationColor = configurations.drivenPointerColor;
            }
            if ((i2 & 4) != 0) {
                resourceId = configurations.drivenPointerResourceId;
            }
            if ((i2 & 8) != 0) {
                annotationScale = configurations.drivenPointerScale;
            }
            if ((i2 & 16) != 0) {
                annotationColor2 = configurations.drivenDrawColor;
            }
            if ((i2 & 32) != 0) {
                annotationColor3 = configurations.drivenDropColor;
            }
            if ((i2 & 64) != 0) {
                resourceId2 = configurations.drivenDropResourceId;
            }
            if ((i2 & 128) != 0) {
                drivenMode = configurations.drivenMode;
            }
            if ((i2 & 256) != 0) {
                annotationColor4 = configurations.standalonePointerColor;
            }
            if ((i2 & 512) != 0) {
                annotationColor5 = configurations.standaloneDrawDropColor;
            }
            if ((i2 & 1024) != 0) {
                standaloneMode = configurations.standaloneMode;
            }
            AnnotationColor annotationColor6 = annotationColor5;
            DrawingModeSelector.StandaloneMode standaloneMode2 = standaloneMode;
            DrawingModeSelector.DrivenMode drivenMode2 = drivenMode;
            AnnotationColor annotationColor7 = annotationColor4;
            AnnotationColor annotationColor8 = annotationColor3;
            ResourceId resourceId3 = resourceId2;
            AnnotationColor annotationColor9 = annotationColor2;
            ResourceId resourceId4 = resourceId;
            return configurations.copy(updateCapability, annotationColor, resourceId4, annotationScale, annotationColor9, annotationColor8, resourceId3, drivenMode2, annotationColor7, annotationColor6, standaloneMode2);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final DrawingModeSelector.UpdateCapability getWriteMode() {
            return this.writeMode;
        }

        /* JADX INFO: renamed from: component10, reason: from getter */
        public final AnnotationColor getStandaloneDrawDropColor() {
            return this.standaloneDrawDropColor;
        }

        /* JADX INFO: renamed from: component11, reason: from getter */
        public final DrawingModeSelector.StandaloneMode getStandaloneMode() {
            return this.standaloneMode;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final AnnotationColor getDrivenPointerColor() {
            return this.drivenPointerColor;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final ResourceId getDrivenPointerResourceId() {
            return this.drivenPointerResourceId;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final AnnotationScale getDrivenPointerScale() {
            return this.drivenPointerScale;
        }

        /* JADX INFO: renamed from: component5, reason: from getter */
        public final AnnotationColor getDrivenDrawColor() {
            return this.drivenDrawColor;
        }

        /* JADX INFO: renamed from: component6, reason: from getter */
        public final AnnotationColor getDrivenDropColor() {
            return this.drivenDropColor;
        }

        /* JADX INFO: renamed from: component7, reason: from getter */
        public final ResourceId getDrivenDropResourceId() {
            return this.drivenDropResourceId;
        }

        /* JADX INFO: renamed from: component8, reason: from getter */
        public final DrawingModeSelector.DrivenMode getDrivenMode() {
            return this.drivenMode;
        }

        /* JADX INFO: renamed from: component9, reason: from getter */
        public final AnnotationColor getStandalonePointerColor() {
            return this.standalonePointerColor;
        }

        public final Configurations copy(DrawingModeSelector.UpdateCapability writeMode, AnnotationColor drivenPointerColor, ResourceId drivenPointerResourceId, AnnotationScale drivenPointerScale, AnnotationColor drivenDrawColor, AnnotationColor drivenDropColor, ResourceId drivenDropResourceId, DrawingModeSelector.DrivenMode drivenMode, AnnotationColor standalonePointerColor, AnnotationColor standaloneDrawDropColor, DrawingModeSelector.StandaloneMode standaloneMode) {
            standalonePointerColor.getClass();
            standaloneDrawDropColor.getClass();
            return new Configurations(writeMode, drivenPointerColor, drivenPointerResourceId, drivenPointerScale, drivenDrawColor, drivenDropColor, drivenDropResourceId, drivenMode, standalonePointerColor, standaloneDrawDropColor, standaloneMode);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Configurations)) {
                return false;
            }
            Configurations configurations = (Configurations) other;
            return this.writeMode == configurations.writeMode && Intrinsics.c(this.drivenPointerColor, configurations.drivenPointerColor) && Intrinsics.c(this.drivenPointerResourceId, configurations.drivenPointerResourceId) && Intrinsics.c(this.drivenPointerScale, configurations.drivenPointerScale) && Intrinsics.c(this.drivenDrawColor, configurations.drivenDrawColor) && Intrinsics.c(this.drivenDropColor, configurations.drivenDropColor) && Intrinsics.c(this.drivenDropResourceId, configurations.drivenDropResourceId) && this.drivenMode == configurations.drivenMode && Intrinsics.c(this.standalonePointerColor, configurations.standalonePointerColor) && Intrinsics.c(this.standaloneDrawDropColor, configurations.standaloneDrawDropColor) && this.standaloneMode == configurations.standaloneMode;
        }

        public final AnnotationColor getDrivenDrawColor() {
            return this.drivenDrawColor;
        }

        public final AnnotationColor getDrivenDropColor() {
            return this.drivenDropColor;
        }

        public final ResourceId getDrivenDropResourceId() {
            return this.drivenDropResourceId;
        }

        public final DrawingModeSelector.DrivenMode getDrivenMode() {
            return this.drivenMode;
        }

        public final AnnotationColor getDrivenPointerColor() {
            return this.drivenPointerColor;
        }

        public final ResourceId getDrivenPointerResourceId() {
            return this.drivenPointerResourceId;
        }

        public final AnnotationScale getDrivenPointerScale() {
            return this.drivenPointerScale;
        }

        public final AnnotationColor getStandaloneDrawDropColor() {
            return this.standaloneDrawDropColor;
        }

        public final DrawingModeSelector.StandaloneMode getStandaloneMode() {
            return this.standaloneMode;
        }

        public final AnnotationColor getStandalonePointerColor() {
            return this.standalonePointerColor;
        }

        public final DrawingModeSelector.UpdateCapability getWriteMode() {
            return this.writeMode;
        }

        public int hashCode() {
            DrawingModeSelector.UpdateCapability updateCapability = this.writeMode;
            int iHashCode = (updateCapability == null ? 0 : updateCapability.hashCode()) * 31;
            AnnotationColor annotationColor = this.drivenPointerColor;
            int iHashCode2 = (iHashCode + (annotationColor == null ? 0 : annotationColor.hashCode())) * 31;
            ResourceId resourceId = this.drivenPointerResourceId;
            int iHashCode3 = (iHashCode2 + (resourceId == null ? 0 : resourceId.hashCode())) * 31;
            AnnotationScale annotationScale = this.drivenPointerScale;
            int iHashCode4 = (iHashCode3 + (annotationScale == null ? 0 : annotationScale.hashCode())) * 31;
            AnnotationColor annotationColor2 = this.drivenDrawColor;
            int iHashCode5 = (iHashCode4 + (annotationColor2 == null ? 0 : annotationColor2.hashCode())) * 31;
            AnnotationColor annotationColor3 = this.drivenDropColor;
            int iHashCode6 = (iHashCode5 + (annotationColor3 == null ? 0 : annotationColor3.hashCode())) * 31;
            ResourceId resourceId2 = this.drivenDropResourceId;
            int iHashCode7 = (iHashCode6 + (resourceId2 == null ? 0 : resourceId2.hashCode())) * 31;
            DrawingModeSelector.DrivenMode drivenMode = this.drivenMode;
            int iHashCode8 = (this.standaloneDrawDropColor.hashCode() + ((this.standalonePointerColor.hashCode() + ((iHashCode7 + (drivenMode == null ? 0 : drivenMode.hashCode())) * 31)) * 31)) * 31;
            DrawingModeSelector.StandaloneMode standaloneMode = this.standaloneMode;
            return iHashCode8 + (standaloneMode != null ? standaloneMode.hashCode() : 0);
        }

        public String toString() {
            return "Configurations(writeMode=" + this.writeMode + ", drivenPointerColor=" + this.drivenPointerColor + ", drivenPointerResourceId=" + this.drivenPointerResourceId + ", drivenPointerScale=" + this.drivenPointerScale + ", drivenDrawColor=" + this.drivenDrawColor + ", drivenDropColor=" + this.drivenDropColor + ", drivenDropResourceId=" + this.drivenDropResourceId + ", drivenMode=" + this.drivenMode + ", standalonePointerColor=" + this.standalonePointerColor + ", standaloneDrawDropColor=" + this.standaloneDrawDropColor + ", standaloneMode=" + this.standaloneMode + ")";
        }

        public final DrawingModeSelector.ModeConfiguration.DrivenDraw validDrivenDraw() {
            AnnotationColor annotationColor = this.drivenDrawColor;
            if (annotationColor != null) {
                return new DrawingModeSelector.ModeConfiguration.DrivenDraw(annotationColor);
            }
            return null;
        }

        public final DrawingModeSelector.ModeConfiguration.DrivenDrop validDrivenDrop() {
            ResourceId resourceId;
            AnnotationColor annotationColor = this.drivenDropColor;
            if (annotationColor == null || (resourceId = this.drivenDropResourceId) == null) {
                return null;
            }
            return new DrawingModeSelector.ModeConfiguration.DrivenDrop(annotationColor, resourceId);
        }

        public final DrawingModeSelector.ModeConfiguration.DrivenPointer validDrivenPointer() {
            ResourceId resourceId;
            AnnotationScale annotationScale;
            AnnotationColor annotationColor = this.drivenPointerColor;
            if (annotationColor == null || (resourceId = this.drivenPointerResourceId) == null || (annotationScale = this.drivenPointerScale) == null) {
                return null;
            }
            return new DrawingModeSelector.ModeConfiguration.DrivenPointer(annotationColor, resourceId, annotationScale);
        }
    }

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0082\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0083\u0004J\n\u0010\u000e\u001a\u00020\u000fHÖ\u0081\u0004J\n\u0010\u0010\u001a\u00020\u0011HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Parse;", "Lcom/sightcall/libraries/archi/nucleus/Action;", "request", "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AnnotationRequest;", "<init>", "(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AnnotationRequest;)V", "getRequest", "()Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AnnotationRequest;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Parse implements Action {
        private final AdvancedAnnotationsAPI.AnnotationRequest request;

        public Parse(AdvancedAnnotationsAPI.AnnotationRequest annotationRequest) {
            annotationRequest.getClass();
            this.request = annotationRequest;
        }

        public static /* synthetic */ Parse copy$default(Parse parse, AdvancedAnnotationsAPI.AnnotationRequest annotationRequest, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                annotationRequest = parse.request;
            }
            return parse.copy(annotationRequest);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final AdvancedAnnotationsAPI.AnnotationRequest getRequest() {
            return this.request;
        }

        public final Parse copy(AdvancedAnnotationsAPI.AnnotationRequest request) {
            request.getClass();
            return new Parse(request);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Parse) && Intrinsics.c(this.request, ((Parse) other).request);
        }

        public final AdvancedAnnotationsAPI.AnnotationRequest getRequest() {
            return this.request;
        }

        public int hashCode() {
            return this.request.hashCode();
        }

        public String toString() {
            return "Parse(request=" + this.request + ")";
        }
    }

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000e\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\n \b*\u0004\u0018\u00010\u00070\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$ParseRequest;", "Lcom/sightcall/libraries/archi/nucleus/Command;", "request", "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AnnotationRequest;", "<init>", "(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AnnotationRequest;)V", "gson", "Lcom/google/gson/Gson;", "kotlin.jvm.PlatformType", "execute", "Lio/reactivex/rxjava3/core/Single;", "Lcom/sightcall/libraries/archi/nucleus/Action;", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class ParseRequest implements Command {
        private final Gson gson;
        private final AdvancedAnnotationsAPI.AnnotationRequest request;

        public ParseRequest(AdvancedAnnotationsAPI.AnnotationRequest annotationRequest) {
            annotationRequest.getClass();
            this.request = annotationRequest;
            this.gson = new GsonBuilder().create();
        }

        @Override // com.sightcall.libraries.archi.nucleus.Command
        public Single<Action> execute() {
            return Single.c(this.request).d(new Function() { // from class: com.sightcall.advancedannotations.domain.drawingmode.DrawingModeSelectorImpl$ParseRequest$execute$1
                @Override // io.reactivex.rxjava3.functions.Function
                public final Action apply(AdvancedAnnotationsAPI.AnnotationRequest annotationRequest) {
                    annotationRequest.getClass();
                    Object objFromJson = this.this$0.gson.fromJson(annotationRequest.getJsonValue(), (Class<Object>) AnnotationRequestResponse.class);
                    objFromJson.getClass();
                    return new DrawingModeSelectorImpl.Update((AnnotationRequestResponse) objFromJson);
                }
            });
        }
    }

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0082\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0083\u0004J\n\u0010\u000e\u001a\u00020\u000fHÖ\u0081\u0004J\n\u0010\u0010\u001a\u00020\u0011HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$SetStandaloneMode;", "Lcom/sightcall/libraries/archi/nucleus/Action;", "mode", "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$StandaloneMode;", "<init>", "(Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$StandaloneMode;)V", "getMode", "()Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$StandaloneMode;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class SetStandaloneMode implements Action {
        private final DrawingModeSelector.StandaloneMode mode;

        public SetStandaloneMode(DrawingModeSelector.StandaloneMode standaloneMode) {
            standaloneMode.getClass();
            this.mode = standaloneMode;
        }

        public static /* synthetic */ SetStandaloneMode copy$default(SetStandaloneMode setStandaloneMode, DrawingModeSelector.StandaloneMode standaloneMode, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                standaloneMode = setStandaloneMode.mode;
            }
            return setStandaloneMode.copy(standaloneMode);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final DrawingModeSelector.StandaloneMode getMode() {
            return this.mode;
        }

        public final SetStandaloneMode copy(DrawingModeSelector.StandaloneMode mode) {
            mode.getClass();
            return new SetStandaloneMode(mode);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof SetStandaloneMode) && this.mode == ((SetStandaloneMode) other).mode;
        }

        public final DrawingModeSelector.StandaloneMode getMode() {
            return this.mode;
        }

        public int hashCode() {
            return this.mode.hashCode();
        }

        public String toString() {
            return "SetStandaloneMode(mode=" + this.mode + ")";
        }
    }

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0082\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0083\u0004J\n\u0010\u000e\u001a\u00020\u000fHÖ\u0081\u0004J\n\u0010\u0010\u001a\u00020\u0011HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$SetUpdateCapability;", "Lcom/sightcall/libraries/archi/nucleus/Action;", "capability", "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$UpdateCapability;", "<init>", "(Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$UpdateCapability;)V", "getCapability", "()Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$UpdateCapability;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class SetUpdateCapability implements Action {
        private final DrawingModeSelector.UpdateCapability capability;

        public SetUpdateCapability(DrawingModeSelector.UpdateCapability updateCapability) {
            updateCapability.getClass();
            this.capability = updateCapability;
        }

        public static /* synthetic */ SetUpdateCapability copy$default(SetUpdateCapability setUpdateCapability, DrawingModeSelector.UpdateCapability updateCapability, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                updateCapability = setUpdateCapability.capability;
            }
            return setUpdateCapability.copy(updateCapability);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final DrawingModeSelector.UpdateCapability getCapability() {
            return this.capability;
        }

        public final SetUpdateCapability copy(DrawingModeSelector.UpdateCapability capability) {
            capability.getClass();
            return new SetUpdateCapability(capability);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof SetUpdateCapability) && this.capability == ((SetUpdateCapability) other).capability;
        }

        public final DrawingModeSelector.UpdateCapability getCapability() {
            return this.capability;
        }

        public int hashCode() {
            return this.capability.hashCode();
        }

        public String toString() {
            return "SetUpdateCapability(capability=" + this.capability + ")";
        }
    }

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0082\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0083\u0004J\n\u0010\u000e\u001a\u00020\u000fHÖ\u0081\u0004J\n\u0010\u0010\u001a\u00020\u0011HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelectorImpl$Update;", "Lcom/sightcall/libraries/archi/nucleus/Action;", "configuration", "Lcom/sightcall/advancedannotations/domain/drawingmode/AnnotationRequestResponse;", "<init>", "(Lcom/sightcall/advancedannotations/domain/drawingmode/AnnotationRequestResponse;)V", "getConfiguration", "()Lcom/sightcall/advancedannotations/domain/drawingmode/AnnotationRequestResponse;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Update implements Action {
        private final AnnotationRequestResponse configuration;

        public Update(AnnotationRequestResponse annotationRequestResponse) {
            annotationRequestResponse.getClass();
            this.configuration = annotationRequestResponse;
        }

        public static /* synthetic */ Update copy$default(Update update, AnnotationRequestResponse annotationRequestResponse, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                annotationRequestResponse = update.configuration;
            }
            return update.copy(annotationRequestResponse);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final AnnotationRequestResponse getConfiguration() {
            return this.configuration;
        }

        public final Update copy(AnnotationRequestResponse configuration) {
            configuration.getClass();
            return new Update(configuration);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Update) && Intrinsics.c(this.configuration, ((Update) other).configuration);
        }

        public final AnnotationRequestResponse getConfiguration() {
            return this.configuration;
        }

        public int hashCode() {
            return this.configuration.hashCode();
        }

        public String toString() {
            return "Update(configuration=" + this.configuration + ")";
        }
    }

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;
        public static final /* synthetic */ int[] $EnumSwitchMapping$2;

        static {
            int[] iArr = new int[DrawingModeSelector.DrivenMode.values().length];
            try {
                iArr[DrawingModeSelector.DrivenMode.None.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DrawingModeSelector.DrivenMode.Pointer.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DrawingModeSelector.DrivenMode.Draw.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[DrawingModeSelector.DrivenMode.Drop.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[DrawingModeSelector.StandaloneMode.values().length];
            try {
                iArr2[DrawingModeSelector.StandaloneMode.Pointer.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[DrawingModeSelector.StandaloneMode.DrawDrop.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            $EnumSwitchMapping$1 = iArr2;
            int[] iArr3 = new int[DrawingModeSelector.UpdateCapability.values().length];
            try {
                iArr3[DrawingModeSelector.UpdateCapability.Driven.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr3[DrawingModeSelector.UpdateCapability.Standalone.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
            $EnumSwitchMapping$2 = iArr3;
        }
    }

    public DrawingModeSelectorImpl(AnnotationColor annotationColor) {
        annotationColor.getClass();
        this.actions = new PublishSubject();
        d3 d3Var = new d3(this, 17);
        this.reducer = d3Var;
        Function5 function5 = null;
        boolean z = false;
        Nucleus<Configurations> nucleus = new Nucleus<>((Single) Single.c(new Configurations(null, null, null, null, null, null, null, null, annotationColor, annotationColor, null)), (Observable) getActions(), (Function3) d3Var, function5, z, 24, (DefaultConstructorMarker) null);
        this.nucleus = nucleus;
        Observable<R> map = nucleus.getState().map(new Function() { // from class: com.sightcall.advancedannotations.domain.drawingmode.DrawingModeSelectorImpl$state$1
            @Override // io.reactivex.rxjava3.functions.Function
            public final Optional<DrawingModeSelector.Mode> apply(DrawingModeSelectorImpl.Configurations configurations) {
                configurations.getClass();
                Optional.Companion companion = Optional.INSTANCE;
                DrawingModeSelector.UpdateCapability writeMode = configurations.getWriteMode();
                return companion.ofNullable(writeMode != null ? new DrawingModeSelector.Mode(writeMode, this.this$0.detectMode(configurations)) : null);
            }
        });
        map.getClass();
        this.state = SubscriptionsKt.filterIfPresent(map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final DrawingModeSelector.ModeConfiguration detectMode(Configurations configurations) {
        DrawingModeSelector.UpdateCapability writeMode = configurations.getWriteMode();
        int i2 = writeMode == null ? -1 : WhenMappings.$EnumSwitchMapping$2[writeMode.ordinal()];
        if (i2 != -1) {
            if (i2 != 1) {
                if (i2 != 2) {
                    v40.g();
                    return null;
                }
                DrawingModeSelector.StandaloneMode standaloneMode = configurations.getStandaloneMode();
                int i3 = standaloneMode == null ? -1 : WhenMappings.$EnumSwitchMapping$1[standaloneMode.ordinal()];
                if (i3 == -1) {
                    return null;
                }
                if (i3 == 1) {
                    return new DrawingModeSelector.ModeConfiguration.StandalonePointer(configurations.getStandalonePointerColor());
                }
                if (i3 == 2) {
                    return new DrawingModeSelector.ModeConfiguration.StandaloneDrawDrop(configurations.getStandaloneDrawDropColor());
                }
                v40.g();
                return null;
            }
            DrawingModeSelector.DrivenMode drivenMode = configurations.getDrivenMode();
            int i4 = drivenMode == null ? -1 : WhenMappings.$EnumSwitchMapping$0[drivenMode.ordinal()];
            if (i4 != -1 && i4 != 1) {
                if (i4 == 2) {
                    return configurations.validDrivenPointer();
                }
                if (i4 == 3) {
                    return configurations.validDrivenDraw();
                }
                if (i4 == 4) {
                    return configurations.validDrivenDrop();
                }
                v40.g();
                return null;
            }
        }
        return null;
    }

    private final Configurations reduceDrivenDraw(Configurations configurations, AnnotationRequestResponse.Parameters parameters) {
        String color;
        return Configurations.copy$default(configurations, null, null, null, null, (parameters == null || (color = parameters.getColor()) == null) ? configurations.getDrivenDrawColor() : new AnnotationColor(color), null, null, DrawingModeSelector.DrivenMode.Draw, null, null, null, 1903, null);
    }

    private final Configurations reduceDrivenDrop(Configurations configurations, AnnotationRequestResponse.Parameters parameters) {
        Integer resourceId;
        String color;
        return Configurations.copy$default(configurations, null, null, null, null, null, (parameters == null || (color = parameters.getColor()) == null) ? configurations.getDrivenDropColor() : new AnnotationColor(color), (parameters == null || (resourceId = parameters.getResourceId()) == null) ? configurations.getDrivenDropResourceId() : new ResourceId(resourceId.intValue()), DrawingModeSelector.DrivenMode.Drop, null, null, null, 1823, null);
    }

    private final Configurations reduceDrivenNone(Configurations configurations) {
        return Configurations.copy$default(configurations, null, null, null, null, null, null, null, DrawingModeSelector.DrivenMode.None, null, null, null, 1919, null);
    }

    private final Configurations reduceDrivenPointer(Configurations configurations, AnnotationRequestResponse.Parameters parameters) {
        Integer scale;
        Integer resourceId;
        String color;
        return Configurations.copy$default(configurations, null, (parameters == null || (color = parameters.getColor()) == null) ? configurations.getDrivenPointerColor() : new AnnotationColor(color), (parameters == null || (resourceId = parameters.getResourceId()) == null) ? configurations.getDrivenPointerResourceId() : new ResourceId(resourceId.intValue()), (parameters == null || (scale = parameters.getScale()) == null) ? configurations.getDrivenPointerScale() : new AnnotationScale(scale.intValue() * 8), null, null, null, DrawingModeSelector.DrivenMode.Pointer, null, null, null, 1905, null);
    }

    private final Configurations reduceStandaloneMode(Configurations configurations, DrawingModeSelector.StandaloneMode standaloneMode) {
        return Configurations.copy$default(configurations, null, null, null, null, null, null, null, null, null, null, standaloneMode, 1023, null);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private final Configurations reduceStateForConfigurationUpdate(Configurations state, AnnotationRequestResponse configuration) {
        String mode = configuration.getMode();
        switch (mode.hashCode()) {
            case -400605635:
                if (mode.equals("pointer")) {
                    return reduceDrivenPointer(state, configuration.getParams());
                }
                return state;
            case 3091780:
                if (mode.equals("draw")) {
                    return reduceDrivenDraw(state, configuration.getParams());
                }
                return state;
            case 3092207:
                if (mode.equals("drop")) {
                    return reduceDrivenDrop(state, configuration.getParams());
                }
                return state;
            case 3387192:
                if (mode.equals("none")) {
                    return reduceDrivenNone(state);
                }
                return state;
            default:
                return state;
        }
    }

    private final Configurations reduceUpdateCapability(Configurations configurations, DrawingModeSelector.UpdateCapability updateCapability) {
        return Configurations.copy$default(configurations, updateCapability, null, null, null, null, null, null, null, null, null, null, 2046, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Pair reducer$lambda$0(DrawingModeSelectorImpl drawingModeSelectorImpl, Nucleus nucleus, Pair pair, Action action) {
        nucleus.getClass();
        pair.getClass();
        action.getClass();
        Configurations configurationsReduceStandaloneMode = (Configurations) pair.f71705b;
        if (action instanceof Update) {
            configurationsReduceStandaloneMode = drawingModeSelectorImpl.reduceStateForConfigurationUpdate(configurationsReduceStandaloneMode, ((Update) action).getConfiguration());
        } else if (action instanceof SetUpdateCapability) {
            configurationsReduceStandaloneMode = drawingModeSelectorImpl.reduceUpdateCapability(configurationsReduceStandaloneMode, ((SetUpdateCapability) action).getCapability());
        } else if (action instanceof SetStandaloneMode) {
            configurationsReduceStandaloneMode = drawingModeSelectorImpl.reduceStandaloneMode(configurationsReduceStandaloneMode, ((SetStandaloneMode) action).getMode());
        }
        return new Pair(configurationsReduceStandaloneMode, action instanceof Parse ? new ParseRequest(((Parse) action).getRequest()) : NoCommand.INSTANCE);
    }

    @Override // com.sightcall.advancedannotations.domain.drawingmode.DrawingModeSelector
    public void clear() {
        this.nucleus.clear();
    }

    @Override // com.sightcall.advancedannotations.domain.drawingmode.DrawingModeSelector
    public Observable<DrawingModeSelector.Mode> getState() {
        return this.state;
    }

    @Override // com.sightcall.advancedannotations.domain.drawingmode.DrawingModeSelector
    public void selectDrivenMode(AdvancedAnnotationsAPI.AnnotationRequest request) {
        request.getClass();
        getActions().onNext(new Parse(request));
    }

    @Override // com.sightcall.advancedannotations.domain.drawingmode.DrawingModeSelector
    public void selectStandaloneMode(DrawingModeSelector.StandaloneMode mode) {
        mode.getClass();
        getActions().onNext(new SetStandaloneMode(mode));
    }

    @Override // com.sightcall.advancedannotations.domain.drawingmode.DrawingModeSelector
    public void selectUpdateCapability(DrawingModeSelector.UpdateCapability capability) {
        capability.getClass();
        getActions().onNext(new SetUpdateCapability(capability));
    }

    @Override // com.sightcall.advancedannotations.domain.drawingmode.DrawingModeSelector
    public Subject<Action> getActions() {
        return this.actions;
    }
}
