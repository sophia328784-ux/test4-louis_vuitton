package com.sightcall.capabilities.datasource.rtcc;

import com.networkbench.nbslens.nbsnativecrashlib.m;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b0\u0018\u00002\u00020\u0001:\u0010\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017B\u0011\b\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007\u0082\u0001\u0010\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\"#$%&'¨\u0006("}, d2 = {"Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability;", "", m.v, "", "<init>", "(Ljava/lang/String;)V", "getCode", "()Ljava/lang/String;", "Snapshot", "Zoom", "Flashlight", "ShareFromGallery", "Ocr", "CoBrowsing", "ScreenCast", "Note", "ChangeCamera", "CameraPause", "GuestSwitch", "AdvancedAnnotations", "TouchScreen", "PictureEdition", "TranslationRemote", "CaseReportV3", "Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$AdvancedAnnotations;", "Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$CameraPause;", "Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$CaseReportV3;", "Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$ChangeCamera;", "Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$CoBrowsing;", "Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$Flashlight;", "Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$GuestSwitch;", "Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$Note;", "Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$Ocr;", "Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$PictureEdition;", "Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$ScreenCast;", "Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$ShareFromGallery;", "Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$Snapshot;", "Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$TouchScreen;", "Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$TranslationRemote;", "Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$Zoom;", "capabilities_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class RtccCapability {
    private final String code;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$AdvancedAnnotations;", "Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability;", "<init>", "()V", "capabilities_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class AdvancedAnnotations extends RtccCapability {
        public static final AdvancedAnnotations INSTANCE = new AdvancedAnnotations();

        private AdvancedAnnotations() {
            super("aa", null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$CameraPause;", "Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability;", "<init>", "()V", "capabilities_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class CameraPause extends RtccCapability {
        public static final CameraPause INSTANCE = new CameraPause();

        private CameraPause() {
            super("cp", null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$CaseReportV3;", "Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability;", "<init>", "()V", "capabilities_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class CaseReportV3 extends RtccCapability {
        public static final CaseReportV3 INSTANCE = new CaseReportV3();

        private CaseReportV3() {
            super("cr", null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$ChangeCamera;", "Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability;", "<init>", "()V", "capabilities_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class ChangeCamera extends RtccCapability {
        public static final ChangeCamera INSTANCE = new ChangeCamera();

        private ChangeCamera() {
            super("cc", null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$CoBrowsing;", "Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability;", "<init>", "()V", "capabilities_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class CoBrowsing extends RtccCapability {
        public static final CoBrowsing INSTANCE = new CoBrowsing();

        private CoBrowsing() {
            super("cb", null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$Flashlight;", "Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability;", "<init>", "()V", "capabilities_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Flashlight extends RtccCapability {
        public static final Flashlight INSTANCE = new Flashlight();

        private Flashlight() {
            super("fl", null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$GuestSwitch;", "Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability;", "<init>", "()V", "capabilities_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class GuestSwitch extends RtccCapability {
        public static final GuestSwitch INSTANCE = new GuestSwitch();

        private GuestSwitch() {
            super("gs", null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$Note;", "Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability;", "<init>", "()V", "capabilities_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Note extends RtccCapability {
        public static final Note INSTANCE = new Note();

        private Note() {
            super("ns", null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$Ocr;", "Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability;", "<init>", "()V", "capabilities_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Ocr extends RtccCapability {
        public static final Ocr INSTANCE = new Ocr();

        private Ocr() {
            super("oc", null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$PictureEdition;", "Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability;", "<init>", "()V", "capabilities_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class PictureEdition extends RtccCapability {
        public static final PictureEdition INSTANCE = new PictureEdition();

        private PictureEdition() {
            super("pe", null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$ScreenCast;", "Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability;", "<init>", "()V", "capabilities_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class ScreenCast extends RtccCapability {
        public static final ScreenCast INSTANCE = new ScreenCast();

        private ScreenCast() {
            super("sc", null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$ShareFromGallery;", "Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability;", "<init>", "()V", "capabilities_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class ShareFromGallery extends RtccCapability {
        public static final ShareFromGallery INSTANCE = new ShareFromGallery();

        private ShareFromGallery() {
            super("ga", null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$Snapshot;", "Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability;", "<init>", "()V", "capabilities_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Snapshot extends RtccCapability {
        public static final Snapshot INSTANCE = new Snapshot();

        private Snapshot() {
            super("sn", null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$TouchScreen;", "Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability;", "<init>", "()V", "capabilities_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class TouchScreen extends RtccCapability {
        public static final TouchScreen INSTANCE = new TouchScreen();

        private TouchScreen() {
            super("ts", null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$TranslationRemote;", "Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability;", "<init>", "()V", "capabilities_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class TranslationRemote extends RtccCapability {
        public static final TranslationRemote INSTANCE = new TranslationRemote();

        private TranslationRemote() {
            super("tr", null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability$Zoom;", "Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability;", "<init>", "()V", "capabilities_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Zoom extends RtccCapability {
        public static final Zoom INSTANCE = new Zoom();

        private Zoom() {
            super("zo", null);
        }
    }

    private RtccCapability(String str) {
        this.code = str;
    }

    public final String getCode() {
        return this.code;
    }

    public /* synthetic */ RtccCapability(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(str);
    }
}
