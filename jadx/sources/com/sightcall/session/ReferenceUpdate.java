package com.sightcall.session;

import defpackage.fc;
import defpackage.o60;
import defpackage.pq0;
import defpackage.tr;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001:\u0002\u0012\u0013B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\t\u0010\t\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0014\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u000e\u001a\u00020\u000fHÖ\u0081\u0004J\n\u0010\u0010\u001a\u00020\u0011HÖ\u0081\u0004R\u0010\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/sightcall/session/ReferenceUpdate;", "", "useCase", "Lcom/sightcall/session/ReferenceUpdate$UseCase;", "provider", "Lcom/sightcall/session/ReferenceUpdate$Provider;", "<init>", "(Lcom/sightcall/session/ReferenceUpdate$UseCase;Lcom/sightcall/session/ReferenceUpdate$Provider;)V", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "", "UseCase", "Provider", "session_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ReferenceUpdate {
    public final Provider provider;
    public final UseCase useCase;

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\t\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0007J\u001a\u0010\n\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\u000bJ\u0014\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u000f\u001a\u00020\u0003HÖ\u0081\u0004J\n\u0010\u0010\u001a\u00020\u0011HÖ\u0081\u0004R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/sightcall/session/ReferenceUpdate$Provider;", "", "deadPartyTimeout", "", "<init>", "(Ljava/lang/Integer;)V", "getDeadPartyTimeout", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "component1", "copy", "(Ljava/lang/Integer;)Lcom/sightcall/session/ReferenceUpdate$Provider;", "equals", "", "other", "hashCode", "toString", "", "session_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Provider {
        private final Integer deadPartyTimeout;

        public Provider(Integer num) {
            this.deadPartyTimeout = num;
        }

        public static /* synthetic */ Provider copy$default(Provider provider, Integer num, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                num = provider.deadPartyTimeout;
            }
            return provider.copy(num);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final Integer getDeadPartyTimeout() {
            return this.deadPartyTimeout;
        }

        public final Provider copy(Integer deadPartyTimeout) {
            return new Provider(deadPartyTimeout);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Provider) && Intrinsics.c(this.deadPartyTimeout, ((Provider) other).deadPartyTimeout);
        }

        public final Integer getDeadPartyTimeout() {
            return this.deadPartyTimeout;
        }

        public int hashCode() {
            Integer num = this.deadPartyTimeout;
            if (num == null) {
                return 0;
            }
            return num.hashCode();
        }

        public String toString() {
            return "Provider(deadPartyTimeout=" + this.deadPartyTimeout + ")";
        }
    }

    @Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0015\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001Bs\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000b\u001a\u00020\u0007\u0012\u0006\u0010\f\u001a\u00020\u0007\u0012\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e\u0012\u0006\u0010\u0010\u001a\u00020\u0007\u0012\u0006\u0010\u0011\u001a\u00020\u0012\u0012\u0006\u0010\u0013\u001a\u00020\u0007\u0012\u0006\u0010\u0014\u001a\u00020\u0007¢\u0006\u0004\b\u0015\u0010\u0016J\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0007HÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\tHÆ\u0003J\t\u0010\u001b\u001a\u00020\u0007HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0007HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0007HÆ\u0003J\u0011\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000eHÆ\u0003J\t\u0010\u001f\u001a\u00020\u0007HÆ\u0003J\t\u0010 \u001a\u00020\u0012HÆ\u0003J\t\u0010!\u001a\u00020\u0007HÆ\u0003J\t\u0010\"\u001a\u00020\u0007HÆ\u0003J\u008d\u0001\u0010#\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\b\b\u0002\u0010\n\u001a\u00020\u00072\b\b\u0002\u0010\u000b\u001a\u00020\u00072\b\b\u0002\u0010\f\u001a\u00020\u00072\u0010\b\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e2\b\b\u0002\u0010\u0010\u001a\u00020\u00072\b\b\u0002\u0010\u0011\u001a\u00020\u00122\b\b\u0002\u0010\u0013\u001a\u00020\u00072\b\b\u0002\u0010\u0014\u001a\u00020\u0007HÆ\u0001J\u0014\u0010$\u001a\u00020\u00072\b\u0010%\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010&\u001a\u00020\u0012HÖ\u0081\u0004J\n\u0010'\u001a\u00020(HÖ\u0081\u0004R\u0010\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u00020\u00128\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006)"}, d2 = {"Lcom/sightcall/session/ReferenceUpdate$UseCase;", "", "userRole", "Lcom/sightcall/session/Reference$UserRole;", "videoOut", "Lcom/sightcall/session/Reference$CameraSide;", "videoOutStartup", "", "videoProfile", "Lcom/sightcall/session/Reference$VideoProfile;", "videoPointerOut", "mute", "videoOutWhilePicture", "buttonsLocal", "", "Lcom/sightcall/session/Reference$Button;", "alwaysVisible", "chatMessageOverlayTimeout", "", "chatQuickBar", "allowUsbCamera", "<init>", "(Lcom/sightcall/session/Reference$UserRole;Lcom/sightcall/session/Reference$CameraSide;ZLcom/sightcall/session/Reference$VideoProfile;ZZZLjava/util/List;ZIZZ)V", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "copy", "equals", "other", "hashCode", "toString", "", "session_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class UseCase {
        public final boolean allowUsbCamera;
        public final boolean alwaysVisible;
        public final List<Reference.Button> buttonsLocal;
        public final int chatMessageOverlayTimeout;
        public final boolean chatQuickBar;
        public final boolean mute;
        public final Reference.UserRole userRole;
        public final Reference.CameraSide videoOut;
        public final boolean videoOutStartup;
        public final boolean videoOutWhilePicture;
        public final boolean videoPointerOut;
        public final Reference.VideoProfile videoProfile;

        /* JADX WARN: Multi-variable type inference failed */
        public UseCase(Reference.UserRole userRole, Reference.CameraSide cameraSide, boolean z, Reference.VideoProfile videoProfile, boolean z2, boolean z3, boolean z4, List<? extends Reference.Button> list, boolean z5, int i2, boolean z6, boolean z7) {
            userRole.getClass();
            this.userRole = userRole;
            this.videoOut = cameraSide;
            this.videoOutStartup = z;
            this.videoProfile = videoProfile;
            this.videoPointerOut = z2;
            this.mute = z3;
            this.videoOutWhilePicture = z4;
            this.buttonsLocal = list;
            this.alwaysVisible = z5;
            this.chatMessageOverlayTimeout = i2;
            this.chatQuickBar = z6;
            this.allowUsbCamera = z7;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ UseCase copy$default(UseCase useCase, Reference.UserRole userRole, Reference.CameraSide cameraSide, boolean z, Reference.VideoProfile videoProfile, boolean z2, boolean z3, boolean z4, List list, boolean z5, int i2, boolean z6, boolean z7, int i3, Object obj) {
            if ((i3 & 1) != 0) {
                userRole = useCase.userRole;
            }
            if ((i3 & 2) != 0) {
                cameraSide = useCase.videoOut;
            }
            if ((i3 & 4) != 0) {
                z = useCase.videoOutStartup;
            }
            if ((i3 & 8) != 0) {
                videoProfile = useCase.videoProfile;
            }
            if ((i3 & 16) != 0) {
                z2 = useCase.videoPointerOut;
            }
            if ((i3 & 32) != 0) {
                z3 = useCase.mute;
            }
            if ((i3 & 64) != 0) {
                z4 = useCase.videoOutWhilePicture;
            }
            if ((i3 & 128) != 0) {
                list = useCase.buttonsLocal;
            }
            if ((i3 & 256) != 0) {
                z5 = useCase.alwaysVisible;
            }
            if ((i3 & 512) != 0) {
                i2 = useCase.chatMessageOverlayTimeout;
            }
            if ((i3 & 1024) != 0) {
                z6 = useCase.chatQuickBar;
            }
            if ((i3 & 2048) != 0) {
                z7 = useCase.allowUsbCamera;
            }
            boolean z8 = z6;
            boolean z9 = z7;
            boolean z10 = z5;
            int i4 = i2;
            boolean z11 = z4;
            List list2 = list;
            boolean z12 = z2;
            boolean z13 = z3;
            return useCase.copy(userRole, cameraSide, z, videoProfile, z12, z13, z11, list2, z10, i4, z8, z9);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final Reference.UserRole getUserRole() {
            return this.userRole;
        }

        /* JADX INFO: renamed from: component10, reason: from getter */
        public final int getChatMessageOverlayTimeout() {
            return this.chatMessageOverlayTimeout;
        }

        /* JADX INFO: renamed from: component11, reason: from getter */
        public final boolean getChatQuickBar() {
            return this.chatQuickBar;
        }

        /* JADX INFO: renamed from: component12, reason: from getter */
        public final boolean getAllowUsbCamera() {
            return this.allowUsbCamera;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final Reference.CameraSide getVideoOut() {
            return this.videoOut;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final boolean getVideoOutStartup() {
            return this.videoOutStartup;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final Reference.VideoProfile getVideoProfile() {
            return this.videoProfile;
        }

        /* JADX INFO: renamed from: component5, reason: from getter */
        public final boolean getVideoPointerOut() {
            return this.videoPointerOut;
        }

        /* JADX INFO: renamed from: component6, reason: from getter */
        public final boolean getMute() {
            return this.mute;
        }

        /* JADX INFO: renamed from: component7, reason: from getter */
        public final boolean getVideoOutWhilePicture() {
            return this.videoOutWhilePicture;
        }

        public final List<Reference.Button> component8() {
            return this.buttonsLocal;
        }

        /* JADX INFO: renamed from: component9, reason: from getter */
        public final boolean getAlwaysVisible() {
            return this.alwaysVisible;
        }

        public final UseCase copy(Reference.UserRole userRole, Reference.CameraSide videoOut, boolean videoOutStartup, Reference.VideoProfile videoProfile, boolean videoPointerOut, boolean mute, boolean videoOutWhilePicture, List<? extends Reference.Button> buttonsLocal, boolean alwaysVisible, int chatMessageOverlayTimeout, boolean chatQuickBar, boolean allowUsbCamera) {
            userRole.getClass();
            return new UseCase(userRole, videoOut, videoOutStartup, videoProfile, videoPointerOut, mute, videoOutWhilePicture, buttonsLocal, alwaysVisible, chatMessageOverlayTimeout, chatQuickBar, allowUsbCamera);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof UseCase)) {
                return false;
            }
            UseCase useCase = (UseCase) other;
            return Intrinsics.c(this.userRole, useCase.userRole) && Intrinsics.c(this.videoOut, useCase.videoOut) && this.videoOutStartup == useCase.videoOutStartup && Intrinsics.c(this.videoProfile, useCase.videoProfile) && this.videoPointerOut == useCase.videoPointerOut && this.mute == useCase.mute && this.videoOutWhilePicture == useCase.videoOutWhilePicture && Intrinsics.c(this.buttonsLocal, useCase.buttonsLocal) && this.alwaysVisible == useCase.alwaysVisible && this.chatMessageOverlayTimeout == useCase.chatMessageOverlayTimeout && this.chatQuickBar == useCase.chatQuickBar && this.allowUsbCamera == useCase.allowUsbCamera;
        }

        public int hashCode() {
            int iHashCode = this.userRole.hashCode() * 31;
            Reference.CameraSide cameraSide = this.videoOut;
            int iB = o60.b((iHashCode + (cameraSide == null ? 0 : cameraSide.hashCode())) * 31, 31, this.videoOutStartup);
            Reference.VideoProfile videoProfile = this.videoProfile;
            int iB2 = o60.b(o60.b(o60.b((iB + (videoProfile == null ? 0 : videoProfile.hashCode())) * 31, 31, this.videoPointerOut), 31, this.mute), 31, this.videoOutWhilePicture);
            List<Reference.Button> list = this.buttonsLocal;
            return Boolean.hashCode(this.allowUsbCamera) + o60.b(tr.b(this.chatMessageOverlayTimeout, o60.b((iB2 + (list != null ? list.hashCode() : 0)) * 31, 31, this.alwaysVisible), 31), 31, this.chatQuickBar);
        }

        public String toString() {
            Reference.UserRole userRole = this.userRole;
            Reference.CameraSide cameraSide = this.videoOut;
            boolean z = this.videoOutStartup;
            Reference.VideoProfile videoProfile = this.videoProfile;
            boolean z2 = this.videoPointerOut;
            boolean z3 = this.mute;
            boolean z4 = this.videoOutWhilePicture;
            List<Reference.Button> list = this.buttonsLocal;
            boolean z5 = this.alwaysVisible;
            int i2 = this.chatMessageOverlayTimeout;
            boolean z6 = this.chatQuickBar;
            boolean z7 = this.allowUsbCamera;
            StringBuilder sb = new StringBuilder("UseCase(userRole=");
            sb.append(userRole);
            sb.append(", videoOut=");
            sb.append(cameraSide);
            sb.append(", videoOutStartup=");
            sb.append(z);
            sb.append(", videoProfile=");
            sb.append(videoProfile);
            sb.append(", videoPointerOut=");
            fc.y(sb, z2, ", mute=", z3, ", videoOutWhilePicture=");
            sb.append(z4);
            sb.append(", buttonsLocal=");
            sb.append(list);
            sb.append(", alwaysVisible=");
            sb.append(z5);
            sb.append(", chatMessageOverlayTimeout=");
            sb.append(i2);
            sb.append(", chatQuickBar=");
            return pq0.p(sb, z6, ", allowUsbCamera=", z7, ")");
        }
    }

    public ReferenceUpdate(UseCase useCase, Provider provider) {
        useCase.getClass();
        provider.getClass();
        this.useCase = useCase;
        this.provider = provider;
    }

    public static /* synthetic */ ReferenceUpdate copy$default(ReferenceUpdate referenceUpdate, UseCase useCase, Provider provider, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            useCase = referenceUpdate.useCase;
        }
        if ((i2 & 2) != 0) {
            provider = referenceUpdate.provider;
        }
        return referenceUpdate.copy(useCase, provider);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final UseCase getUseCase() {
        return this.useCase;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Provider getProvider() {
        return this.provider;
    }

    public final ReferenceUpdate copy(UseCase useCase, Provider provider) {
        useCase.getClass();
        provider.getClass();
        return new ReferenceUpdate(useCase, provider);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ReferenceUpdate)) {
            return false;
        }
        ReferenceUpdate referenceUpdate = (ReferenceUpdate) other;
        return Intrinsics.c(this.useCase, referenceUpdate.useCase) && Intrinsics.c(this.provider, referenceUpdate.provider);
    }

    public int hashCode() {
        return this.provider.hashCode() + (this.useCase.hashCode() * 31);
    }

    public String toString() {
        return "ReferenceUpdate(useCase=" + this.useCase + ", provider=" + this.provider + ")";
    }
}
