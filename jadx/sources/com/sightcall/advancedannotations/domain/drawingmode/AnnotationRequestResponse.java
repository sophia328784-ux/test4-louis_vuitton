package com.sightcall.advancedannotations.domain.drawingmode;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0082\b\u0018\u00002\u00020\u0001:\u0001\u0015B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u001f\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0014\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0012\u001a\u00020\u0013HÖ\u0081\u0004J\n\u0010\u0014\u001a\u00020\u0003HÖ\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0016"}, d2 = {"Lcom/sightcall/advancedannotations/domain/drawingmode/AnnotationRequestResponse;", "", "mode", "", "params", "Lcom/sightcall/advancedannotations/domain/drawingmode/AnnotationRequestResponse$Parameters;", "<init>", "(Ljava/lang/String;Lcom/sightcall/advancedannotations/domain/drawingmode/AnnotationRequestResponse$Parameters;)V", "getMode", "()Ljava/lang/String;", "getParams", "()Lcom/sightcall/advancedannotations/domain/drawingmode/AnnotationRequestResponse$Parameters;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "Parameters", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
final /* data */ class AnnotationRequestResponse {

    @SerializedName("mode")
    private final String mode;

    @SerializedName("params")
    private final Parameters params;

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\fJ\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\fJ2\u0010\u0012\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u0013J\u0014\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0017\u001a\u00020\u0005HÖ\u0081\u0004J\n\u0010\u0018\u001a\u00020\u0003HÖ\u0081\u0004R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\r\u001a\u0004\b\u000b\u0010\fR\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\r\u001a\u0004\b\u000e\u0010\f¨\u0006\u0019"}, d2 = {"Lcom/sightcall/advancedannotations/domain/drawingmode/AnnotationRequestResponse$Parameters;", "", "color", "", "resourceId", "", "scale", "<init>", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V", "getColor", "()Ljava/lang/String;", "getResourceId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getScale", "component1", "component2", "component3", "copy", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/sightcall/advancedannotations/domain/drawingmode/AnnotationRequestResponse$Parameters;", "equals", "", "other", "hashCode", "toString", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Parameters {

        @SerializedName("color")
        private final String color;

        @SerializedName("type")
        private final Integer resourceId;

        @SerializedName("scale")
        private final Integer scale;

        public Parameters(String str, Integer num, Integer num2) {
            this.color = str;
            this.resourceId = num;
            this.scale = num2;
        }

        public static /* synthetic */ Parameters copy$default(Parameters parameters, String str, Integer num, Integer num2, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = parameters.color;
            }
            if ((i2 & 2) != 0) {
                num = parameters.resourceId;
            }
            if ((i2 & 4) != 0) {
                num2 = parameters.scale;
            }
            return parameters.copy(str, num, num2);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getColor() {
            return this.color;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final Integer getResourceId() {
            return this.resourceId;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final Integer getScale() {
            return this.scale;
        }

        public final Parameters copy(String color, Integer resourceId, Integer scale) {
            return new Parameters(color, resourceId, scale);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Parameters)) {
                return false;
            }
            Parameters parameters = (Parameters) other;
            return Intrinsics.c(this.color, parameters.color) && Intrinsics.c(this.resourceId, parameters.resourceId) && Intrinsics.c(this.scale, parameters.scale);
        }

        public final String getColor() {
            return this.color;
        }

        public final Integer getResourceId() {
            return this.resourceId;
        }

        public final Integer getScale() {
            return this.scale;
        }

        public int hashCode() {
            String str = this.color;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            Integer num = this.resourceId;
            int iHashCode2 = (iHashCode + (num == null ? 0 : num.hashCode())) * 31;
            Integer num2 = this.scale;
            return iHashCode2 + (num2 != null ? num2.hashCode() : 0);
        }

        public String toString() {
            return "Parameters(color=" + this.color + ", resourceId=" + this.resourceId + ", scale=" + this.scale + ")";
        }
    }

    public AnnotationRequestResponse(String str, Parameters parameters) {
        str.getClass();
        this.mode = str;
        this.params = parameters;
    }

    public static /* synthetic */ AnnotationRequestResponse copy$default(AnnotationRequestResponse annotationRequestResponse, String str, Parameters parameters, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = annotationRequestResponse.mode;
        }
        if ((i2 & 2) != 0) {
            parameters = annotationRequestResponse.params;
        }
        return annotationRequestResponse.copy(str, parameters);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getMode() {
        return this.mode;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Parameters getParams() {
        return this.params;
    }

    public final AnnotationRequestResponse copy(String mode, Parameters params) {
        mode.getClass();
        return new AnnotationRequestResponse(mode, params);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AnnotationRequestResponse)) {
            return false;
        }
        AnnotationRequestResponse annotationRequestResponse = (AnnotationRequestResponse) other;
        return Intrinsics.c(this.mode, annotationRequestResponse.mode) && Intrinsics.c(this.params, annotationRequestResponse.params);
    }

    public final String getMode() {
        return this.mode;
    }

    public final Parameters getParams() {
        return this.params;
    }

    public int hashCode() {
        int iHashCode = this.mode.hashCode() * 31;
        Parameters parameters = this.params;
        return iHashCode + (parameters == null ? 0 : parameters.hashCode());
    }

    public String toString() {
        return "AnnotationRequestResponse(mode=" + this.mode + ", params=" + this.params + ")";
    }
}
