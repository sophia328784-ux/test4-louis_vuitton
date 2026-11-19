package com.sightcall.advancedannotations.domain.drawingmode;

import com.sightcall.advancedannotations.AdvancedAnnotationsAPI;
import com.sightcall.advancedannotations.domain.drawer.AnnotationColor;
import com.sightcall.advancedannotations.domain.drawer.AnnotationScale;
import com.sightcall.advancedannotations.domain.drawer.ResourceId;
import com.sightcall.libraries.archi.nucleus.Action;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b`\u0018\u00002\u00020\u0001:\u0005\u0017\u0018\u0019\u001a\u001bJ\b\u0010\f\u001a\u00020\rH&J\u0010\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0010H&J\u0010\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u0013H&J\u0010\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u0016H&R\u0018\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u0018\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX¦\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000b¨\u0006\u001cÀ\u0006\u0003"}, d2 = {"Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector;", "", "actions", "Lio/reactivex/rxjava3/core/Observer;", "Lcom/sightcall/libraries/archi/nucleus/Action;", "getActions", "()Lio/reactivex/rxjava3/core/Observer;", "state", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$Mode;", "getState", "()Lio/reactivex/rxjava3/core/Observable;", "clear", "", "selectDrivenMode", "request", "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AnnotationRequest;", "selectUpdateCapability", "capability", "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$UpdateCapability;", "selectStandaloneMode", "mode", "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$StandaloneMode;", "Mode", "ModeConfiguration", "UpdateCapability", "DrivenMode", "StandaloneMode", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface DrawingModeSelector {

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$DrivenMode;", "", "<init>", "(Ljava/lang/String;I)V", "None", "Pointer", "Draw", "Drop", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public enum DrivenMode {
        None,
        Pointer,
        Draw,
        Drop;

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.a(values());

        public static EnumEntries<DrivenMode> getEntries() {
            return $ENTRIES;
        }
    }

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u001f\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0014\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0012\u001a\u00020\u0013HÖ\u0081\u0004J\n\u0010\u0014\u001a\u00020\u0015HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0016"}, d2 = {"Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$Mode;", "", "writeMode", "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$UpdateCapability;", "mode", "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration;", "<init>", "(Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$UpdateCapability;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration;)V", "getWriteMode", "()Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$UpdateCapability;", "getMode", "()Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Mode {
        private final ModeConfiguration mode;
        private final UpdateCapability writeMode;

        public Mode(UpdateCapability updateCapability, ModeConfiguration modeConfiguration) {
            updateCapability.getClass();
            this.writeMode = updateCapability;
            this.mode = modeConfiguration;
        }

        public static /* synthetic */ Mode copy$default(Mode mode, UpdateCapability updateCapability, ModeConfiguration modeConfiguration, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                updateCapability = mode.writeMode;
            }
            if ((i2 & 2) != 0) {
                modeConfiguration = mode.mode;
            }
            return mode.copy(updateCapability, modeConfiguration);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final UpdateCapability getWriteMode() {
            return this.writeMode;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final ModeConfiguration getMode() {
            return this.mode;
        }

        public final Mode copy(UpdateCapability writeMode, ModeConfiguration mode) {
            writeMode.getClass();
            return new Mode(writeMode, mode);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Mode)) {
                return false;
            }
            Mode mode = (Mode) other;
            return this.writeMode == mode.writeMode && Intrinsics.c(this.mode, mode.mode);
        }

        public final ModeConfiguration getMode() {
            return this.mode;
        }

        public final UpdateCapability getWriteMode() {
            return this.writeMode;
        }

        public int hashCode() {
            int iHashCode = this.writeMode.hashCode() * 31;
            ModeConfiguration modeConfiguration = this.mode;
            return iHashCode + (modeConfiguration == null ? 0 : modeConfiguration.hashCode());
        }

        public String toString() {
            return "Mode(writeMode=" + this.writeMode + ", mode=" + this.mode + ")";
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$StandaloneMode;", "", "<init>", "(Ljava/lang/String;I)V", "Pointer", "DrawDrop", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public enum StandaloneMode {
        Pointer,
        DrawDrop;

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.a(values());

        public static EnumEntries<StandaloneMode> getEntries() {
            return $ENTRIES;
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$UpdateCapability;", "", "<init>", "(Ljava/lang/String;I)V", "Driven", "Standalone", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public enum UpdateCapability {
        Driven,
        Standalone;

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.a(values());

        public static EnumEntries<UpdateCapability> getEntries() {
            return $ENTRIES;
        }
    }

    void clear();

    Observer<Action> getActions();

    Observable<Mode> getState();

    void selectDrivenMode(AdvancedAnnotationsAPI.AnnotationRequest request);

    void selectStandaloneMode(StandaloneMode mode);

    void selectUpdateCapability(UpdateCapability capability);

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0005\u0004\u0005\u0006\u0007\bB\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0005\t\n\u000b\f\r¨\u0006\u000e"}, d2 = {"Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration;", "", "<init>", "()V", "DrivenPointer", "DrivenDraw", "DrivenDrop", "StandalonePointer", "StandaloneDrawDrop", "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDraw;", "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDrop;", "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenPointer;", "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$StandaloneDrawDrop;", "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$StandalonePointer;", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static abstract class ModeConfiguration {

        @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0083\u0004J\n\u0010\u000e\u001a\u00020\u000fHÖ\u0081\u0004J\n\u0010\u0010\u001a\u00020\u0011HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDraw;", "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration;", "color", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;", "<init>", "(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;)V", "getColor", "()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class DrivenDraw extends ModeConfiguration {
            private final AnnotationColor color;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public DrivenDraw(AnnotationColor annotationColor) {
                super(null);
                annotationColor.getClass();
                this.color = annotationColor;
            }

            public static /* synthetic */ DrivenDraw copy$default(DrivenDraw drivenDraw, AnnotationColor annotationColor, int i2, Object obj) {
                if ((i2 & 1) != 0) {
                    annotationColor = drivenDraw.color;
                }
                return drivenDraw.copy(annotationColor);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final AnnotationColor getColor() {
                return this.color;
            }

            public final DrivenDraw copy(AnnotationColor color) {
                color.getClass();
                return new DrivenDraw(color);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof DrivenDraw) && Intrinsics.c(this.color, ((DrivenDraw) other).color);
            }

            public final AnnotationColor getColor() {
                return this.color;
            }

            public int hashCode() {
                return this.color.hashCode();
            }

            public String toString() {
                return "DrivenDraw(color=" + this.color + ")";
            }
        }

        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0014\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÖ\u0083\u0004J\n\u0010\u0013\u001a\u00020\u0014HÖ\u0081\u0004J\n\u0010\u0015\u001a\u00020\u0016HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0017"}, d2 = {"Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDrop;", "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration;", "color", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;", "resourceId", "Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;", "<init>", "(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;)V", "getColor", "()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;", "getResourceId", "()Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class DrivenDrop extends ModeConfiguration {
            private final AnnotationColor color;
            private final ResourceId resourceId;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public DrivenDrop(AnnotationColor annotationColor, ResourceId resourceId) {
                super(null);
                annotationColor.getClass();
                resourceId.getClass();
                this.color = annotationColor;
                this.resourceId = resourceId;
            }

            public static /* synthetic */ DrivenDrop copy$default(DrivenDrop drivenDrop, AnnotationColor annotationColor, ResourceId resourceId, int i2, Object obj) {
                if ((i2 & 1) != 0) {
                    annotationColor = drivenDrop.color;
                }
                if ((i2 & 2) != 0) {
                    resourceId = drivenDrop.resourceId;
                }
                return drivenDrop.copy(annotationColor, resourceId);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final AnnotationColor getColor() {
                return this.color;
            }

            /* JADX INFO: renamed from: component2, reason: from getter */
            public final ResourceId getResourceId() {
                return this.resourceId;
            }

            public final DrivenDrop copy(AnnotationColor color, ResourceId resourceId) {
                color.getClass();
                resourceId.getClass();
                return new DrivenDrop(color, resourceId);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof DrivenDrop)) {
                    return false;
                }
                DrivenDrop drivenDrop = (DrivenDrop) other;
                return Intrinsics.c(this.color, drivenDrop.color) && Intrinsics.c(this.resourceId, drivenDrop.resourceId);
            }

            public final AnnotationColor getColor() {
                return this.color;
            }

            public final ResourceId getResourceId() {
                return this.resourceId;
            }

            public int hashCode() {
                return this.resourceId.hashCode() + (this.color.hashCode() * 31);
            }

            public String toString() {
                return "DrivenDrop(color=" + this.color + ", resourceId=" + this.resourceId + ")";
            }
        }

        @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0007HÆ\u0003J'\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0014\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017HÖ\u0083\u0004J\n\u0010\u0018\u001a\u00020\u0019HÖ\u0081\u0004J\n\u0010\u001a\u001a\u00020\u001bHÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001c"}, d2 = {"Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenPointer;", "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration;", "color", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;", "resourceId", "Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;", "scale", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;", "<init>", "(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;)V", "getColor", "()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;", "getResourceId", "()Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;", "getScale", "()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;", "component1", "component2", "component3", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class DrivenPointer extends ModeConfiguration {
            private final AnnotationColor color;
            private final ResourceId resourceId;
            private final AnnotationScale scale;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public DrivenPointer(AnnotationColor annotationColor, ResourceId resourceId, AnnotationScale annotationScale) {
                super(null);
                annotationColor.getClass();
                resourceId.getClass();
                annotationScale.getClass();
                this.color = annotationColor;
                this.resourceId = resourceId;
                this.scale = annotationScale;
            }

            public static /* synthetic */ DrivenPointer copy$default(DrivenPointer drivenPointer, AnnotationColor annotationColor, ResourceId resourceId, AnnotationScale annotationScale, int i2, Object obj) {
                if ((i2 & 1) != 0) {
                    annotationColor = drivenPointer.color;
                }
                if ((i2 & 2) != 0) {
                    resourceId = drivenPointer.resourceId;
                }
                if ((i2 & 4) != 0) {
                    annotationScale = drivenPointer.scale;
                }
                return drivenPointer.copy(annotationColor, resourceId, annotationScale);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final AnnotationColor getColor() {
                return this.color;
            }

            /* JADX INFO: renamed from: component2, reason: from getter */
            public final ResourceId getResourceId() {
                return this.resourceId;
            }

            /* JADX INFO: renamed from: component3, reason: from getter */
            public final AnnotationScale getScale() {
                return this.scale;
            }

            public final DrivenPointer copy(AnnotationColor color, ResourceId resourceId, AnnotationScale scale) {
                color.getClass();
                resourceId.getClass();
                scale.getClass();
                return new DrivenPointer(color, resourceId, scale);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof DrivenPointer)) {
                    return false;
                }
                DrivenPointer drivenPointer = (DrivenPointer) other;
                return Intrinsics.c(this.color, drivenPointer.color) && Intrinsics.c(this.resourceId, drivenPointer.resourceId) && Intrinsics.c(this.scale, drivenPointer.scale);
            }

            public final AnnotationColor getColor() {
                return this.color;
            }

            public final ResourceId getResourceId() {
                return this.resourceId;
            }

            public final AnnotationScale getScale() {
                return this.scale;
            }

            public int hashCode() {
                return this.scale.hashCode() + ((this.resourceId.hashCode() + (this.color.hashCode() * 31)) * 31);
            }

            public String toString() {
                return "DrivenPointer(color=" + this.color + ", resourceId=" + this.resourceId + ", scale=" + this.scale + ")";
            }
        }

        @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0083\u0004J\n\u0010\u000e\u001a\u00020\u000fHÖ\u0081\u0004J\n\u0010\u0010\u001a\u00020\u0011HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$StandaloneDrawDrop;", "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration;", "color", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;", "<init>", "(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;)V", "getColor", "()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class StandaloneDrawDrop extends ModeConfiguration {
            private final AnnotationColor color;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public StandaloneDrawDrop(AnnotationColor annotationColor) {
                super(null);
                annotationColor.getClass();
                this.color = annotationColor;
            }

            public static /* synthetic */ StandaloneDrawDrop copy$default(StandaloneDrawDrop standaloneDrawDrop, AnnotationColor annotationColor, int i2, Object obj) {
                if ((i2 & 1) != 0) {
                    annotationColor = standaloneDrawDrop.color;
                }
                return standaloneDrawDrop.copy(annotationColor);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final AnnotationColor getColor() {
                return this.color;
            }

            public final StandaloneDrawDrop copy(AnnotationColor color) {
                color.getClass();
                return new StandaloneDrawDrop(color);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof StandaloneDrawDrop) && Intrinsics.c(this.color, ((StandaloneDrawDrop) other).color);
            }

            public final AnnotationColor getColor() {
                return this.color;
            }

            public int hashCode() {
                return this.color.hashCode();
            }

            public String toString() {
                return "StandaloneDrawDrop(color=" + this.color + ")";
            }
        }

        @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0083\u0004J\n\u0010\u000e\u001a\u00020\u000fHÖ\u0081\u0004J\n\u0010\u0010\u001a\u00020\u0011HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$StandalonePointer;", "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration;", "color", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;", "<init>", "(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;)V", "getColor", "()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class StandalonePointer extends ModeConfiguration {
            private final AnnotationColor color;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public StandalonePointer(AnnotationColor annotationColor) {
                super(null);
                annotationColor.getClass();
                this.color = annotationColor;
            }

            public static /* synthetic */ StandalonePointer copy$default(StandalonePointer standalonePointer, AnnotationColor annotationColor, int i2, Object obj) {
                if ((i2 & 1) != 0) {
                    annotationColor = standalonePointer.color;
                }
                return standalonePointer.copy(annotationColor);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final AnnotationColor getColor() {
                return this.color;
            }

            public final StandalonePointer copy(AnnotationColor color) {
                color.getClass();
                return new StandalonePointer(color);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof StandalonePointer) && Intrinsics.c(this.color, ((StandalonePointer) other).color);
            }

            public final AnnotationColor getColor() {
                return this.color;
            }

            public int hashCode() {
                return this.color.hashCode();
            }

            public String toString() {
                return "StandalonePointer(color=" + this.color + ")";
            }
        }

        public /* synthetic */ ModeConfiguration(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private ModeConfiguration() {
        }
    }
}
