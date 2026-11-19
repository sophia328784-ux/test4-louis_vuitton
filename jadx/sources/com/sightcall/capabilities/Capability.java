package com.sightcall.capabilities;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b0\u0018\u00002\u00020\u0001:\u0010\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016B\u0011\b\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0006\u0082\u0001\u0010\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\"#$%&¨\u0006'"}, d2 = {"Lcom/sightcall/capabilities/Capability;", "", "isAvailableOnInstantApp", "", "<init>", "(Z)V", "()Z", "Snapshot", "Zoom", "Flashlight", "ShareFromGallery", "Ocr", "CoBrowsing", "ScreenCast", "Note", "ChangeCamera", "CameraPause", "GuestSwitch", "AdvancedAnnotations", "TouchScreen", "PictureEdition", "TranslationRemote", "CaseReportV3", "Lcom/sightcall/capabilities/Capability$AdvancedAnnotations;", "Lcom/sightcall/capabilities/Capability$CameraPause;", "Lcom/sightcall/capabilities/Capability$CaseReportV3;", "Lcom/sightcall/capabilities/Capability$ChangeCamera;", "Lcom/sightcall/capabilities/Capability$CoBrowsing;", "Lcom/sightcall/capabilities/Capability$Flashlight;", "Lcom/sightcall/capabilities/Capability$GuestSwitch;", "Lcom/sightcall/capabilities/Capability$Note;", "Lcom/sightcall/capabilities/Capability$Ocr;", "Lcom/sightcall/capabilities/Capability$PictureEdition;", "Lcom/sightcall/capabilities/Capability$ScreenCast;", "Lcom/sightcall/capabilities/Capability$ShareFromGallery;", "Lcom/sightcall/capabilities/Capability$Snapshot;", "Lcom/sightcall/capabilities/Capability$TouchScreen;", "Lcom/sightcall/capabilities/Capability$TranslationRemote;", "Lcom/sightcall/capabilities/Capability$Zoom;", "capabilities_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class Capability {
    private final boolean isAvailableOnInstantApp;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/capabilities/Capability$AdvancedAnnotations;", "Lcom/sightcall/capabilities/Capability;", "<init>", "()V", "capabilities_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class AdvancedAnnotations extends Capability {
        public static final AdvancedAnnotations INSTANCE = new AdvancedAnnotations();

        private AdvancedAnnotations() {
            super(true, null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/capabilities/Capability$CameraPause;", "Lcom/sightcall/capabilities/Capability;", "<init>", "()V", "capabilities_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class CameraPause extends Capability {
        public static final CameraPause INSTANCE = new CameraPause();

        private CameraPause() {
            super(true, null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/capabilities/Capability$CaseReportV3;", "Lcom/sightcall/capabilities/Capability;", "<init>", "()V", "capabilities_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class CaseReportV3 extends Capability {
        public static final CaseReportV3 INSTANCE = new CaseReportV3();

        private CaseReportV3() {
            super(true, null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/capabilities/Capability$ChangeCamera;", "Lcom/sightcall/capabilities/Capability;", "<init>", "()V", "capabilities_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class ChangeCamera extends Capability {
        public static final ChangeCamera INSTANCE = new ChangeCamera();

        private ChangeCamera() {
            super(true, null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/capabilities/Capability$CoBrowsing;", "Lcom/sightcall/capabilities/Capability;", "<init>", "()V", "capabilities_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class CoBrowsing extends Capability {
        public static final CoBrowsing INSTANCE = new CoBrowsing();

        private CoBrowsing() {
            super(true, null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/capabilities/Capability$Flashlight;", "Lcom/sightcall/capabilities/Capability;", "<init>", "()V", "capabilities_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Flashlight extends Capability {
        public static final Flashlight INSTANCE = new Flashlight();

        private Flashlight() {
            super(true, null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/capabilities/Capability$GuestSwitch;", "Lcom/sightcall/capabilities/Capability;", "<init>", "()V", "capabilities_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class GuestSwitch extends Capability {
        public static final GuestSwitch INSTANCE = new GuestSwitch();

        private GuestSwitch() {
            super(true, null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/capabilities/Capability$Note;", "Lcom/sightcall/capabilities/Capability;", "<init>", "()V", "capabilities_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Note extends Capability {
        public static final Note INSTANCE = new Note();

        private Note() {
            super(true, null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/capabilities/Capability$Ocr;", "Lcom/sightcall/capabilities/Capability;", "<init>", "()V", "capabilities_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Ocr extends Capability {
        public static final Ocr INSTANCE = new Ocr();

        private Ocr() {
            super(true, null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/capabilities/Capability$PictureEdition;", "Lcom/sightcall/capabilities/Capability;", "<init>", "()V", "capabilities_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class PictureEdition extends Capability {
        public static final PictureEdition INSTANCE = new PictureEdition();

        private PictureEdition() {
            super(true, null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/capabilities/Capability$ScreenCast;", "Lcom/sightcall/capabilities/Capability;", "<init>", "()V", "capabilities_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class ScreenCast extends Capability {
        public static final ScreenCast INSTANCE = new ScreenCast();

        private ScreenCast() {
            super(false, null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/capabilities/Capability$ShareFromGallery;", "Lcom/sightcall/capabilities/Capability;", "<init>", "()V", "capabilities_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class ShareFromGallery extends Capability {
        public static final ShareFromGallery INSTANCE = new ShareFromGallery();

        private ShareFromGallery() {
            super(false, null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/capabilities/Capability$Snapshot;", "Lcom/sightcall/capabilities/Capability;", "<init>", "()V", "capabilities_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Snapshot extends Capability {
        public static final Snapshot INSTANCE = new Snapshot();

        private Snapshot() {
            super(true, null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/capabilities/Capability$TouchScreen;", "Lcom/sightcall/capabilities/Capability;", "<init>", "()V", "capabilities_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class TouchScreen extends Capability {
        public static final TouchScreen INSTANCE = new TouchScreen();

        private TouchScreen() {
            super(true, null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/capabilities/Capability$TranslationRemote;", "Lcom/sightcall/capabilities/Capability;", "<init>", "()V", "capabilities_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class TranslationRemote extends Capability {
        public static final TranslationRemote INSTANCE = new TranslationRemote();

        private TranslationRemote() {
            super(true, null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/capabilities/Capability$Zoom;", "Lcom/sightcall/capabilities/Capability;", "<init>", "()V", "capabilities_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Zoom extends Capability {
        public static final Zoom INSTANCE = new Zoom();

        private Zoom() {
            super(true, null);
        }
    }

    private Capability(boolean z) {
        this.isAvailableOnInstantApp = z;
    }

    /* JADX INFO: renamed from: isAvailableOnInstantApp, reason: from getter */
    public final boolean getIsAvailableOnInstantApp() {
        return this.isAvailableOnInstantApp;
    }

    public /* synthetic */ Capability(boolean z, DefaultConstructorMarker defaultConstructorMarker) {
        this(z);
    }
}
