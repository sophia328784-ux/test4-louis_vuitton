package com.sightcall.advancedannotations;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0010\bf\u0018\u00002\u00020\u0001:\n%&'()*+,-.J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH&J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH&J\u0010\u0010\f\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000eH&J\u0018\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H&J\b\u0010\u0015\u001a\u00020\u0003H&J\b\u0010\u0016\u001a\u00020\u0003H&J\b\u0010\u0017\u001a\u00020\u0003H&J\b\u0010\u0018\u001a\u00020\u0003H&J\b\u0010\u0019\u001a\u00020\u0003H&J\b\u0010\u001a\u001a\u00020\u0003H&R\u0012\u0010\u001b\u001a\u00020\u0010X¦\u0004¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001dR\u0012\u0010\u001e\u001a\u00020\u001fX¦\u0004¢\u0006\u0006\u001a\u0004\b \u0010!R\u0018\u0010\"\u001a\u00020\u0010X¦\u000e¢\u0006\f\u001a\u0004\b\"\u0010\u001d\"\u0004\b#\u0010$¨\u0006/À\u0006\u0003"}, d2 = {"Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;", "", "processAnnotation", "", "annotation", "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InbandMessageAnnotation;", "selectDrivenMode", "request", "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AnnotationRequest;", "selectUpdateCapability", "capability", "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$UpdateCapability;", "selectStandaloneMode", "mode", "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StandaloneMode;", "processTouch", "", "touch", "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$Touch;", "fromView", "Landroid/view/View;", "clear", "processDeleteAll", "pauseAnnotations", "resumeAnnotations", "enableLocalTouch", "disableLocalTouch", "ready", "getReady", "()Z", "container", "Landroid/view/ViewGroup;", "getContainer", "()Landroid/view/ViewGroup;", "isEphemeral", "setEphemeral", "(Z)V", "InbandMessageAnnotation", "AnnotationRequest", "UpdateCapability", "StandaloneMode", "Touch", "AdvancedAnnotationsSettingsUrl", "MessageSender", "StateHandler", "SenderIdGetter", "InitialSenderColor", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface AdvancedAnnotationsAPI {

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000b\u0010\b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0015\u0010\t\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\r\u001a\u00020\u000eHÖ\u0081\u0004J\n\u0010\u000f\u001a\u00020\u0003HÖ\u0081\u0004R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0010"}, d2 = {"Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AdvancedAnnotationsSettingsUrl;", "", ConfigurationName.DOWNLOAD_PLUGIN_URL, "", "<init>", "(Ljava/lang/String;)V", "getUrl", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class AdvancedAnnotationsSettingsUrl {
        private final String url;

        public AdvancedAnnotationsSettingsUrl(String str) {
            this.url = str;
        }

        public static /* synthetic */ AdvancedAnnotationsSettingsUrl copy$default(AdvancedAnnotationsSettingsUrl advancedAnnotationsSettingsUrl, String str, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = advancedAnnotationsSettingsUrl.url;
            }
            return advancedAnnotationsSettingsUrl.copy(str);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getUrl() {
            return this.url;
        }

        public final AdvancedAnnotationsSettingsUrl copy(String url) {
            return new AdvancedAnnotationsSettingsUrl(url);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof AdvancedAnnotationsSettingsUrl) && Intrinsics.c(this.url, ((AdvancedAnnotationsSettingsUrl) other).url);
        }

        public final String getUrl() {
            return this.url;
        }

        public int hashCode() {
            String str = this.url;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public String toString() {
            return fc.h("AdvancedAnnotationsSettingsUrl(url=", this.url, ")");
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\r\u001a\u00020\u000eHÖ\u0081\u0004J\n\u0010\u000f\u001a\u00020\u0003HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0010"}, d2 = {"Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AnnotationRequest;", "", "jsonValue", "", "<init>", "(Ljava/lang/String;)V", "getJsonValue", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class AnnotationRequest {
        private final String jsonValue;

        public AnnotationRequest(String str) {
            str.getClass();
            this.jsonValue = str;
        }

        public static /* synthetic */ AnnotationRequest copy$default(AnnotationRequest annotationRequest, String str, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = annotationRequest.jsonValue;
            }
            return annotationRequest.copy(str);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getJsonValue() {
            return this.jsonValue;
        }

        public final AnnotationRequest copy(String jsonValue) {
            jsonValue.getClass();
            return new AnnotationRequest(jsonValue);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof AnnotationRequest) && Intrinsics.c(this.jsonValue, ((AnnotationRequest) other).jsonValue);
        }

        public final String getJsonValue() {
            return this.jsonValue;
        }

        public int hashCode() {
            return this.jsonValue.hashCode();
        }

        public String toString() {
            return fc.h("AnnotationRequest(jsonValue=", this.jsonValue, ")");
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\r\u001a\u00020\u000eHÖ\u0081\u0004J\n\u0010\u000f\u001a\u00020\u0003HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0010"}, d2 = {"Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InbandMessageAnnotation;", "", "message", "", "<init>", "(Ljava/lang/String;)V", "getMessage", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class InbandMessageAnnotation {
        private final String message;

        public InbandMessageAnnotation(String str) {
            str.getClass();
            this.message = str;
        }

        public static /* synthetic */ InbandMessageAnnotation copy$default(InbandMessageAnnotation inbandMessageAnnotation, String str, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = inbandMessageAnnotation.message;
            }
            return inbandMessageAnnotation.copy(str);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getMessage() {
            return this.message;
        }

        public final InbandMessageAnnotation copy(String message) {
            message.getClass();
            return new InbandMessageAnnotation(message);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof InbandMessageAnnotation) && Intrinsics.c(this.message, ((InbandMessageAnnotation) other).message);
        }

        public final String getMessage() {
            return this.message;
        }

        public int hashCode() {
            return this.message.hashCode();
        }

        public String toString() {
            return fc.h("InbandMessageAnnotation(message=", this.message, ")");
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\r\u001a\u00020\u000eHÖ\u0081\u0004J\n\u0010\u000f\u001a\u00020\u0003HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0010"}, d2 = {"Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InitialSenderColor;", "", "value", "", "<init>", "(Ljava/lang/String;)V", "getValue", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class InitialSenderColor {
        private final String value;

        public InitialSenderColor(String str) {
            str.getClass();
            this.value = str;
        }

        public static /* synthetic */ InitialSenderColor copy$default(InitialSenderColor initialSenderColor, String str, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = initialSenderColor.value;
            }
            return initialSenderColor.copy(str);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getValue() {
            return this.value;
        }

        public final InitialSenderColor copy(String value) {
            value.getClass();
            return new InitialSenderColor(value);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof InitialSenderColor) && Intrinsics.c(this.value, ((InitialSenderColor) other).value);
        }

        public final String getValue() {
            return this.value;
        }

        public int hashCode() {
            return this.value.hashCode();
        }

        public String toString() {
            return fc.h("InitialSenderColor(value=", this.value, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006À\u0006\u0003"}, d2 = {"Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$MessageSender;", "", "processMessage", "", "messageAnnotation", "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InbandMessageAnnotation;", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface MessageSender {
        void processMessage(InbandMessageAnnotation messageAnnotation);
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&¨\u0006\u0004À\u0006\u0003"}, d2 = {"Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$SenderIdGetter;", "", "getUserId", "", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface SenderIdGetter {
        int getUserId();
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StandaloneMode;", "", "<init>", "(Ljava/lang/String;I)V", "Pointer", "DrawDrop", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public enum StandaloneMode {
        Pointer,
        DrawDrop;

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.a(values());

        public static EnumEntries<StandaloneMode> getEntries() {
            return $ENTRIES;
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\b\u0010\u0006\u001a\u00020\u0003H&¨\u0006\u0007À\u0006\u0003"}, d2 = {"Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StateHandler;", "", "onError", "", "throwable", "", "onReady", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface StateHandler {
        void onError(Throwable throwable);

        void onReady();
    }

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\r\u001a\u00020\u000eHÖ\u0081\u0004J\n\u0010\u000f\u001a\u00020\u0010HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$Touch;", "", "motionEvent", "Landroid/view/MotionEvent;", "<init>", "(Landroid/view/MotionEvent;)V", "getMotionEvent", "()Landroid/view/MotionEvent;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Touch {
        private final MotionEvent motionEvent;

        public Touch(MotionEvent motionEvent) {
            motionEvent.getClass();
            this.motionEvent = motionEvent;
        }

        public static /* synthetic */ Touch copy$default(Touch touch, MotionEvent motionEvent, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                motionEvent = touch.motionEvent;
            }
            return touch.copy(motionEvent);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final MotionEvent getMotionEvent() {
            return this.motionEvent;
        }

        public final Touch copy(MotionEvent motionEvent) {
            motionEvent.getClass();
            return new Touch(motionEvent);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Touch) && Intrinsics.c(this.motionEvent, ((Touch) other).motionEvent);
        }

        public final MotionEvent getMotionEvent() {
            return this.motionEvent;
        }

        public int hashCode() {
            return this.motionEvent.hashCode();
        }

        public String toString() {
            return "Touch(motionEvent=" + this.motionEvent + ")";
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$UpdateCapability;", "", "<init>", "(Ljava/lang/String;I)V", "Driven", "Standalone", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public enum UpdateCapability {
        Driven,
        Standalone;

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.a(values());

        public static EnumEntries<UpdateCapability> getEntries() {
            return $ENTRIES;
        }
    }

    void clear();

    void disableLocalTouch();

    void enableLocalTouch();

    ViewGroup getContainer();

    boolean getReady();

    boolean isEphemeral();

    void pauseAnnotations();

    void processAnnotation(InbandMessageAnnotation annotation);

    void processDeleteAll();

    boolean processTouch(Touch touch, View fromView);

    void resumeAnnotations();

    void selectDrivenMode(AnnotationRequest request);

    void selectStandaloneMode(StandaloneMode mode);

    void selectUpdateCapability(UpdateCapability capability);

    void setEphemeral(boolean z);
}
