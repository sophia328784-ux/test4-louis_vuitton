package com.sightcall.session.datasource.reference.v3.switchRole;

import com.batch.android.s.b;
import com.batch.android.v0.l;
import com.google.gson.annotations.SerializedName;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.sightcall.session.datasource.reference.v3.Reason;
import com.sightcall.session.datasource.reference.v3.Role;
import com.sightcall.session.datasource.reference.v3.StartupCameraSide;
import com.sightcall.session.datasource.reference.v3.StartupVideoProfile;
import com.sightcall.session.datasource.reference.v3.UserRole;
import defpackage.d21;
import defpackage.fc;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0080\b\u0018\u00002\u00020\u0001:\u0001\u0011B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\r\u001a\u00020\u000eHÖ\u0081\u0004J\n\u0010\u000f\u001a\u00020\u0010HÖ\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchResponseEntity;", "", DbParams.KEY_DATA, "Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchResponseEntity$Data;", "<init>", "(Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchResponseEntity$Data;)V", "getData", "()Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchResponseEntity$Data;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "Data", "session_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ReferenceSwitchResponseEntity {

    @SerializedName(DbParams.KEY_DATA)
    private final Data data;

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0018B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0006HÆ\u0003J'\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0014\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0015\u001a\u00020\u0016HÖ\u0081\u0004J\n\u0010\u0017\u001a\u00020\u0003HÖ\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u0019"}, d2 = {"Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchResponseEntity$Data;", "", "type", "", b.a.f24015b, l.f24145h, "Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchResponseEntity$Data$Attributes;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchResponseEntity$Data$Attributes;)V", "getType", "()Ljava/lang/String;", "getId", "getAttributes", "()Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchResponseEntity$Data$Attributes;", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "Attributes", "session_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Data {

        @SerializedName(l.f24145h)
        private final Attributes attributes;

        @SerializedName(b.a.f24015b)
        private final String id;

        @SerializedName("type")
        private final String type;

        @Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b0\b\u0086\b\u0018\u00002\u00020\u0001:\u0001GB\u0097\u0001\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u0012\u0006\u0010\u0017\u001a\u00020\u0018¢\u0006\u0004\b\u0019\u0010\u001aJ\u0010\u00103\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001cJ\u0011\u00104\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003J\u0010\u00105\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001cJ\u0010\u00106\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010\"J\u0010\u00107\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001cJ\u000b\u00108\u001a\u0004\u0018\u00010\fHÆ\u0003J\u0010\u00109\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001cJ\u000b\u0010:\u001a\u0004\u0018\u00010\u000fHÆ\u0003J\u0010\u0010;\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001cJ\u0010\u0010<\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001cJ\u0010\u0010=\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001cJ\u000b\u0010>\u001a\u0004\u0018\u00010\u0014HÆ\u0003J\u000b\u0010?\u001a\u0004\u0018\u00010\u0016HÆ\u0003J\t\u0010@\u001a\u00020\u0018HÆ\u0003Jº\u0001\u0010A\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\b\b\u0002\u0010\u0017\u001a\u00020\u0018HÆ\u0001¢\u0006\u0002\u0010BJ\u0014\u0010C\u001a\u00020\u00032\b\u0010D\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010E\u001a\u00020\tHÖ\u0081\u0004J\n\u0010F\u001a\u00020\u0016HÖ\u0081\u0004R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001d\u001a\u0004\b\u001b\u0010\u001cR\u001e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001fR\u001a\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001d\u001a\u0004\b \u0010\u001cR\u001a\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010#\u001a\u0004\b!\u0010\"R\u001a\u0010\n\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001d\u001a\u0004\b$\u0010\u001cR\u0018\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b%\u0010&R\u001a\u0010\r\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001d\u001a\u0004\b'\u0010\u001cR\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b(\u0010)R\u001a\u0010\u0010\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001d\u001a\u0004\b*\u0010\u001cR\u001a\u0010\u0011\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001d\u001a\u0004\b+\u0010\u001cR\u001a\u0010\u0012\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001d\u001a\u0004\b,\u0010\u001cR\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00148\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b-\u0010.R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00168\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b/\u00100R\u0016\u0010\u0017\u001a\u00020\u00188\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b1\u00102¨\u0006H"}, d2 = {"Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchResponseEntity$Data$Attributes;", "", "barAlwaysVisible", "", "barButtons", "", "Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchResponseEntity$Data$Attributes$BarButton;", "cameraWhileShareOut", "chatNotificationDisplayTimeout", "", "chatQuickBar", "reason", "Lcom/sightcall/session/datasource/reference/v3/Reason;", "startupCamera", "startupCameraSide", "Lcom/sightcall/session/datasource/reference/v3/StartupCameraSide;", "startupCameraUsb", "startupMicro", "startupPointer", "startupVideoProfile", "Lcom/sightcall/session/datasource/reference/v3/StartupVideoProfile;", "startupVideoSize", "", "userRole", "Lcom/sightcall/session/datasource/reference/v3/UserRole;", "<init>", "(Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/sightcall/session/datasource/reference/v3/Reason;Ljava/lang/Boolean;Lcom/sightcall/session/datasource/reference/v3/StartupCameraSide;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/sightcall/session/datasource/reference/v3/StartupVideoProfile;Ljava/lang/String;Lcom/sightcall/session/datasource/reference/v3/UserRole;)V", "getBarAlwaysVisible", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getBarButtons", "()Ljava/util/List;", "getCameraWhileShareOut", "getChatNotificationDisplayTimeout", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getChatQuickBar", "getReason", "()Lcom/sightcall/session/datasource/reference/v3/Reason;", "getStartupCamera", "getStartupCameraSide", "()Lcom/sightcall/session/datasource/reference/v3/StartupCameraSide;", "getStartupCameraUsb", "getStartupMicro", "getStartupPointer", "getStartupVideoProfile", "()Lcom/sightcall/session/datasource/reference/v3/StartupVideoProfile;", "getStartupVideoSize", "()Ljava/lang/String;", "getUserRole", "()Lcom/sightcall/session/datasource/reference/v3/UserRole;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "component14", "copy", "(Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/sightcall/session/datasource/reference/v3/Reason;Ljava/lang/Boolean;Lcom/sightcall/session/datasource/reference/v3/StartupCameraSide;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/sightcall/session/datasource/reference/v3/StartupVideoProfile;Ljava/lang/String;Lcom/sightcall/session/datasource/reference/v3/UserRole;)Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchResponseEntity$Data$Attributes;", "equals", "other", "hashCode", "toString", "BarButton", "session_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class Attributes {

            @SerializedName("barAlwaysVisible")
            private final Boolean barAlwaysVisible;

            @SerializedName("barButtons")
            private final List<BarButton> barButtons;

            @SerializedName("cameraWhileShareOut")
            private final Boolean cameraWhileShareOut;

            @SerializedName("chatNotificationDisplayTimeout")
            private final Integer chatNotificationDisplayTimeout;

            @SerializedName("chatQuickbar")
            private final Boolean chatQuickBar;

            @SerializedName("reason")
            private final Reason reason;

            @SerializedName("startupCamera")
            private final Boolean startupCamera;

            @SerializedName("startupCameraSide")
            private final StartupCameraSide startupCameraSide;

            @SerializedName("startupCameraUsb")
            private final Boolean startupCameraUsb;

            @SerializedName("startupMicro")
            private final Boolean startupMicro;

            @SerializedName("startupPointer")
            private final Boolean startupPointer;

            @SerializedName("startupVideoProfile")
            private final StartupVideoProfile startupVideoProfile;

            @SerializedName("startupVideoSize")
            private final String startupVideoSize;

            @SerializedName("userRole")
            private final UserRole userRole;

            @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\r\u001a\u00020\u000eHÖ\u0081\u0004J\n\u0010\u000f\u001a\u00020\u0010HÖ\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchResponseEntity$Data$Attributes$BarButton;", "", "role", "Lcom/sightcall/session/datasource/reference/v3/Role;", "<init>", "(Lcom/sightcall/session/datasource/reference/v3/Role;)V", "getRole", "()Lcom/sightcall/session/datasource/reference/v3/Role;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "session_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
            public static final /* data */ class BarButton {

                @SerializedName("role")
                private final Role role;

                public BarButton(Role role) {
                    role.getClass();
                    this.role = role;
                }

                public static /* synthetic */ BarButton copy$default(BarButton barButton, Role role, int i2, Object obj) {
                    if ((i2 & 1) != 0) {
                        role = barButton.role;
                    }
                    return barButton.copy(role);
                }

                /* JADX INFO: renamed from: component1, reason: from getter */
                public final Role getRole() {
                    return this.role;
                }

                public final BarButton copy(Role role) {
                    role.getClass();
                    return new BarButton(role);
                }

                public boolean equals(Object other) {
                    if (this == other) {
                        return true;
                    }
                    return (other instanceof BarButton) && this.role == ((BarButton) other).role;
                }

                public final Role getRole() {
                    return this.role;
                }

                public int hashCode() {
                    return this.role.hashCode();
                }

                public String toString() {
                    return "BarButton(role=" + this.role + ")";
                }
            }

            public Attributes(Boolean bool, List<BarButton> list, Boolean bool2, Integer num, Boolean bool3, Reason reason, Boolean bool4, StartupCameraSide startupCameraSide, Boolean bool5, Boolean bool6, Boolean bool7, StartupVideoProfile startupVideoProfile, String str, UserRole userRole) {
                userRole.getClass();
                this.barAlwaysVisible = bool;
                this.barButtons = list;
                this.cameraWhileShareOut = bool2;
                this.chatNotificationDisplayTimeout = num;
                this.chatQuickBar = bool3;
                this.reason = reason;
                this.startupCamera = bool4;
                this.startupCameraSide = startupCameraSide;
                this.startupCameraUsb = bool5;
                this.startupMicro = bool6;
                this.startupPointer = bool7;
                this.startupVideoProfile = startupVideoProfile;
                this.startupVideoSize = str;
                this.userRole = userRole;
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final Boolean getBarAlwaysVisible() {
                return this.barAlwaysVisible;
            }

            /* JADX INFO: renamed from: component10, reason: from getter */
            public final Boolean getStartupMicro() {
                return this.startupMicro;
            }

            /* JADX INFO: renamed from: component11, reason: from getter */
            public final Boolean getStartupPointer() {
                return this.startupPointer;
            }

            /* JADX INFO: renamed from: component12, reason: from getter */
            public final StartupVideoProfile getStartupVideoProfile() {
                return this.startupVideoProfile;
            }

            /* JADX INFO: renamed from: component13, reason: from getter */
            public final String getStartupVideoSize() {
                return this.startupVideoSize;
            }

            /* JADX INFO: renamed from: component14, reason: from getter */
            public final UserRole getUserRole() {
                return this.userRole;
            }

            public final List<BarButton> component2() {
                return this.barButtons;
            }

            /* JADX INFO: renamed from: component3, reason: from getter */
            public final Boolean getCameraWhileShareOut() {
                return this.cameraWhileShareOut;
            }

            /* JADX INFO: renamed from: component4, reason: from getter */
            public final Integer getChatNotificationDisplayTimeout() {
                return this.chatNotificationDisplayTimeout;
            }

            /* JADX INFO: renamed from: component5, reason: from getter */
            public final Boolean getChatQuickBar() {
                return this.chatQuickBar;
            }

            /* JADX INFO: renamed from: component6, reason: from getter */
            public final Reason getReason() {
                return this.reason;
            }

            /* JADX INFO: renamed from: component7, reason: from getter */
            public final Boolean getStartupCamera() {
                return this.startupCamera;
            }

            /* JADX INFO: renamed from: component8, reason: from getter */
            public final StartupCameraSide getStartupCameraSide() {
                return this.startupCameraSide;
            }

            /* JADX INFO: renamed from: component9, reason: from getter */
            public final Boolean getStartupCameraUsb() {
                return this.startupCameraUsb;
            }

            public final Attributes copy(Boolean barAlwaysVisible, List<BarButton> barButtons, Boolean cameraWhileShareOut, Integer chatNotificationDisplayTimeout, Boolean chatQuickBar, Reason reason, Boolean startupCamera, StartupCameraSide startupCameraSide, Boolean startupCameraUsb, Boolean startupMicro, Boolean startupPointer, StartupVideoProfile startupVideoProfile, String startupVideoSize, UserRole userRole) {
                userRole.getClass();
                return new Attributes(barAlwaysVisible, barButtons, cameraWhileShareOut, chatNotificationDisplayTimeout, chatQuickBar, reason, startupCamera, startupCameraSide, startupCameraUsb, startupMicro, startupPointer, startupVideoProfile, startupVideoSize, userRole);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof Attributes)) {
                    return false;
                }
                Attributes attributes = (Attributes) other;
                return Intrinsics.c(this.barAlwaysVisible, attributes.barAlwaysVisible) && Intrinsics.c(this.barButtons, attributes.barButtons) && Intrinsics.c(this.cameraWhileShareOut, attributes.cameraWhileShareOut) && Intrinsics.c(this.chatNotificationDisplayTimeout, attributes.chatNotificationDisplayTimeout) && Intrinsics.c(this.chatQuickBar, attributes.chatQuickBar) && this.reason == attributes.reason && Intrinsics.c(this.startupCamera, attributes.startupCamera) && this.startupCameraSide == attributes.startupCameraSide && Intrinsics.c(this.startupCameraUsb, attributes.startupCameraUsb) && Intrinsics.c(this.startupMicro, attributes.startupMicro) && Intrinsics.c(this.startupPointer, attributes.startupPointer) && this.startupVideoProfile == attributes.startupVideoProfile && Intrinsics.c(this.startupVideoSize, attributes.startupVideoSize) && this.userRole == attributes.userRole;
            }

            public final Boolean getBarAlwaysVisible() {
                return this.barAlwaysVisible;
            }

            public final List<BarButton> getBarButtons() {
                return this.barButtons;
            }

            public final Boolean getCameraWhileShareOut() {
                return this.cameraWhileShareOut;
            }

            public final Integer getChatNotificationDisplayTimeout() {
                return this.chatNotificationDisplayTimeout;
            }

            public final Boolean getChatQuickBar() {
                return this.chatQuickBar;
            }

            public final Reason getReason() {
                return this.reason;
            }

            public final Boolean getStartupCamera() {
                return this.startupCamera;
            }

            public final StartupCameraSide getStartupCameraSide() {
                return this.startupCameraSide;
            }

            public final Boolean getStartupCameraUsb() {
                return this.startupCameraUsb;
            }

            public final Boolean getStartupMicro() {
                return this.startupMicro;
            }

            public final Boolean getStartupPointer() {
                return this.startupPointer;
            }

            public final StartupVideoProfile getStartupVideoProfile() {
                return this.startupVideoProfile;
            }

            public final String getStartupVideoSize() {
                return this.startupVideoSize;
            }

            public final UserRole getUserRole() {
                return this.userRole;
            }

            public int hashCode() {
                Boolean bool = this.barAlwaysVisible;
                int iHashCode = (bool == null ? 0 : bool.hashCode()) * 31;
                List<BarButton> list = this.barButtons;
                int iHashCode2 = (iHashCode + (list == null ? 0 : list.hashCode())) * 31;
                Boolean bool2 = this.cameraWhileShareOut;
                int iHashCode3 = (iHashCode2 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
                Integer num = this.chatNotificationDisplayTimeout;
                int iHashCode4 = (iHashCode3 + (num == null ? 0 : num.hashCode())) * 31;
                Boolean bool3 = this.chatQuickBar;
                int iHashCode5 = (iHashCode4 + (bool3 == null ? 0 : bool3.hashCode())) * 31;
                Reason reason = this.reason;
                int iHashCode6 = (iHashCode5 + (reason == null ? 0 : reason.hashCode())) * 31;
                Boolean bool4 = this.startupCamera;
                int iHashCode7 = (iHashCode6 + (bool4 == null ? 0 : bool4.hashCode())) * 31;
                StartupCameraSide startupCameraSide = this.startupCameraSide;
                int iHashCode8 = (iHashCode7 + (startupCameraSide == null ? 0 : startupCameraSide.hashCode())) * 31;
                Boolean bool5 = this.startupCameraUsb;
                int iHashCode9 = (iHashCode8 + (bool5 == null ? 0 : bool5.hashCode())) * 31;
                Boolean bool6 = this.startupMicro;
                int iHashCode10 = (iHashCode9 + (bool6 == null ? 0 : bool6.hashCode())) * 31;
                Boolean bool7 = this.startupPointer;
                int iHashCode11 = (iHashCode10 + (bool7 == null ? 0 : bool7.hashCode())) * 31;
                StartupVideoProfile startupVideoProfile = this.startupVideoProfile;
                int iHashCode12 = (iHashCode11 + (startupVideoProfile == null ? 0 : startupVideoProfile.hashCode())) * 31;
                String str = this.startupVideoSize;
                return this.userRole.hashCode() + ((iHashCode12 + (str != null ? str.hashCode() : 0)) * 31);
            }

            public String toString() {
                Boolean bool = this.barAlwaysVisible;
                List<BarButton> list = this.barButtons;
                Boolean bool2 = this.cameraWhileShareOut;
                Integer num = this.chatNotificationDisplayTimeout;
                Boolean bool3 = this.chatQuickBar;
                Reason reason = this.reason;
                Boolean bool4 = this.startupCamera;
                StartupCameraSide startupCameraSide = this.startupCameraSide;
                Boolean bool5 = this.startupCameraUsb;
                Boolean bool6 = this.startupMicro;
                Boolean bool7 = this.startupPointer;
                StartupVideoProfile startupVideoProfile = this.startupVideoProfile;
                String str = this.startupVideoSize;
                UserRole userRole = this.userRole;
                StringBuilder sb = new StringBuilder("Attributes(barAlwaysVisible=");
                sb.append(bool);
                sb.append(", barButtons=");
                sb.append(list);
                sb.append(", cameraWhileShareOut=");
                sb.append(bool2);
                sb.append(", chatNotificationDisplayTimeout=");
                sb.append(num);
                sb.append(", chatQuickBar=");
                sb.append(bool3);
                sb.append(", reason=");
                sb.append(reason);
                sb.append(", startupCamera=");
                sb.append(bool4);
                sb.append(", startupCameraSide=");
                sb.append(startupCameraSide);
                sb.append(", startupCameraUsb=");
                d21.B(sb, bool5, ", startupMicro=", bool6, ", startupPointer=");
                sb.append(bool7);
                sb.append(", startupVideoProfile=");
                sb.append(startupVideoProfile);
                sb.append(", startupVideoSize=");
                sb.append(str);
                sb.append(", userRole=");
                sb.append(userRole);
                sb.append(")");
                return sb.toString();
            }
        }

        public Data(String str, String str2, Attributes attributes) {
            str.getClass();
            str2.getClass();
            attributes.getClass();
            this.type = str;
            this.id = str2;
            this.attributes = attributes;
        }

        public static /* synthetic */ Data copy$default(Data data, String str, String str2, Attributes attributes, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = data.type;
            }
            if ((i2 & 2) != 0) {
                str2 = data.id;
            }
            if ((i2 & 4) != 0) {
                attributes = data.attributes;
            }
            return data.copy(str, str2, attributes);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getType() {
            return this.type;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getId() {
            return this.id;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final Attributes getAttributes() {
            return this.attributes;
        }

        public final Data copy(String type, String id, Attributes attributes) {
            type.getClass();
            id.getClass();
            attributes.getClass();
            return new Data(type, id, attributes);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Data)) {
                return false;
            }
            Data data = (Data) other;
            return Intrinsics.c(this.type, data.type) && Intrinsics.c(this.id, data.id) && Intrinsics.c(this.attributes, data.attributes);
        }

        public final Attributes getAttributes() {
            return this.attributes;
        }

        public final String getId() {
            return this.id;
        }

        public final String getType() {
            return this.type;
        }

        public int hashCode() {
            return this.attributes.hashCode() + fc.b(this.type.hashCode() * 31, 31, this.id);
        }

        public String toString() {
            String str = this.type;
            String str2 = this.id;
            Attributes attributes = this.attributes;
            StringBuilder sbS = fc.s("Data(type=", str, ", id=", str2, ", attributes=");
            sbS.append(attributes);
            sbS.append(")");
            return sbS.toString();
        }
    }

    public ReferenceSwitchResponseEntity(Data data) {
        data.getClass();
        this.data = data;
    }

    public static /* synthetic */ ReferenceSwitchResponseEntity copy$default(ReferenceSwitchResponseEntity referenceSwitchResponseEntity, Data data, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            data = referenceSwitchResponseEntity.data;
        }
        return referenceSwitchResponseEntity.copy(data);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Data getData() {
        return this.data;
    }

    public final ReferenceSwitchResponseEntity copy(Data data) {
        data.getClass();
        return new ReferenceSwitchResponseEntity(data);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof ReferenceSwitchResponseEntity) && Intrinsics.c(this.data, ((ReferenceSwitchResponseEntity) other).data);
    }

    public final Data getData() {
        return this.data;
    }

    public int hashCode() {
        return this.data.hashCode();
    }

    public String toString() {
        return "ReferenceSwitchResponseEntity(data=" + this.data + ")";
    }
}
