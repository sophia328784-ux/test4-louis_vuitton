package com.sightcall.session;

import com.batch.android.s.b;
import com.sightcall.httpclient.AuthorizationToken;
import defpackage.a;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import defpackage.tr;
import java.net.URL;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b#\b\u0086\b\u0018\u00002\u00020\u0001:\b01234567Bu\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\f\u001a\u00020\r\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u0012\u0006\u0010\u0011\u001a\u00020\u0012\u0012\u0006\u0010\u0013\u001a\u00020\u0003\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015¢\u0006\u0004\b\u0016\u0010\u0017J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0007HÆ\u0003J\u0010\u0010\u001e\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010\u001fJ\u0010\u0010 \u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010\u001fJ\u0010\u0010!\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010\u001fJ\t\u0010\"\u001a\u00020\rHÆ\u0003J\u0010\u0010#\u001a\u0004\u0018\u00010\u000fHÆ\u0003¢\u0006\u0002\u0010$J\u0010\u0010%\u001a\u0004\u0018\u00010\u000fHÆ\u0003¢\u0006\u0002\u0010$J\t\u0010&\u001a\u00020\u0012HÆ\u0003J\t\u0010'\u001a\u00020\u0003HÆ\u0003J\u0010\u0010(\u001a\u0004\u0018\u00010\u0015HÆ\u0003¢\u0006\u0002\u0010)J\u0094\u0001\u0010*\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\t2\b\b\u0002\u0010\f\u001a\u00020\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\b\b\u0002\u0010\u0011\u001a\u00020\u00122\b\b\u0002\u0010\u0013\u001a\u00020\u00032\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0015HÆ\u0001¢\u0006\u0002\u0010+J\u0014\u0010,\u001a\u00020\u00152\b\u0010-\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010.\u001a\u00020\tHÖ\u0081\u0004J\n\u0010/\u001a\u00020\u0003HÖ\u0081\u0004R\u0012\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0018R\u0014\u0010\n\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0018R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0018R\u0010\u0010\f\u001a\u00020\r8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0019R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0019R\u0010\u0010\u0011\u001a\u00020\u00128\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u0004\u0018\u00010\u00158\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u001a¨\u00068"}, d2 = {"Lcom/sightcall/session/Reference;", "", b.a.f24015b, "", "useCase", "Lcom/sightcall/session/Reference$UseCase;", "provider", "Lcom/sightcall/session/Reference$Provider;", "productId", "", "locationId", "languageId", "customization", "Lcom/sightcall/session/Reference$Customization;", "acdMask", "", "acdValue", "authorizationToken", "Lcom/sightcall/httpclient/AuthorizationToken;", "authorizationHash", "takeUhdPicture", "", "<init>", "(Ljava/lang/String;Lcom/sightcall/session/Reference$UseCase;Lcom/sightcall/session/Reference$Provider;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/sightcall/session/Reference$Customization;Ljava/lang/Long;Ljava/lang/Long;Lcom/sightcall/httpclient/AuthorizationToken;Ljava/lang/String;Ljava/lang/Boolean;)V", "Ljava/lang/Integer;", "Ljava/lang/Long;", "Ljava/lang/Boolean;", "component1", "component2", "component3", "component4", "()Ljava/lang/Integer;", "component5", "component6", "component7", "component8", "()Ljava/lang/Long;", "component9", "component10", "component11", "component12", "()Ljava/lang/Boolean;", "copy", "(Ljava/lang/String;Lcom/sightcall/session/Reference$UseCase;Lcom/sightcall/session/Reference$Provider;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/sightcall/session/Reference$Customization;Ljava/lang/Long;Ljava/lang/Long;Lcom/sightcall/httpclient/AuthorizationToken;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/sightcall/session/Reference;", "equals", "other", "hashCode", "toString", "UseCase", "Provider", "Customization", "UserRole", "CallDistribution", "Button", "CameraSide", "VideoProfile", "session_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class Reference {
    public final Long acdMask;
    public final Long acdValue;
    public final String authorizationHash;
    public final AuthorizationToken authorizationToken;
    public final Customization customization;
    public final String id;
    public final Integer languageId;
    public final Integer locationId;
    public final Integer productId;
    public final Provider provider;
    public final Boolean takeUhdPicture;
    public final UseCase useCase;

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B1\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0005¢\u0006\u0004\b\t\u0010\nJ\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\t\u0010\r\u001a\u00020\u0005HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0005HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0005HÆ\u0003J=\u0010\u0010\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00052\b\b\u0002\u0010\b\u001a\u00020\u0005HÆ\u0001J\u0014\u0010\u0011\u001a\u00020\u00052\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0013\u001a\u00020\u0014HÖ\u0081\u0004J\n\u0010\u0015\u001a\u00020\u0003HÖ\u0081\u0004R\u0012\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/sightcall/session/Reference$Customization;", "", "acdExternal", "", "pluginShareOverlayDisabled", "", "rtccLocalUdpDisabled", "rtccUsapTurnDisabled", "sslPlugin", "<init>", "(Ljava/lang/String;ZZZZ)V", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "other", "hashCode", "", "toString", "session_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Customization {
        public final String acdExternal;
        public final boolean pluginShareOverlayDisabled;
        public final boolean rtccLocalUdpDisabled;
        public final boolean rtccUsapTurnDisabled;
        public final boolean sslPlugin;

        public Customization(String str, boolean z, boolean z2, boolean z3, boolean z4) {
            this.acdExternal = str;
            this.pluginShareOverlayDisabled = z;
            this.rtccLocalUdpDisabled = z2;
            this.rtccUsapTurnDisabled = z3;
            this.sslPlugin = z4;
        }

        public static /* synthetic */ Customization copy$default(Customization customization, String str, boolean z, boolean z2, boolean z3, boolean z4, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = customization.acdExternal;
            }
            if ((i2 & 2) != 0) {
                z = customization.pluginShareOverlayDisabled;
            }
            if ((i2 & 4) != 0) {
                z2 = customization.rtccLocalUdpDisabled;
            }
            if ((i2 & 8) != 0) {
                z3 = customization.rtccUsapTurnDisabled;
            }
            if ((i2 & 16) != 0) {
                z4 = customization.sslPlugin;
            }
            boolean z5 = z4;
            boolean z6 = z2;
            return customization.copy(str, z, z6, z3, z5);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getAcdExternal() {
            return this.acdExternal;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final boolean getPluginShareOverlayDisabled() {
            return this.pluginShareOverlayDisabled;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final boolean getRtccLocalUdpDisabled() {
            return this.rtccLocalUdpDisabled;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final boolean getRtccUsapTurnDisabled() {
            return this.rtccUsapTurnDisabled;
        }

        /* JADX INFO: renamed from: component5, reason: from getter */
        public final boolean getSslPlugin() {
            return this.sslPlugin;
        }

        public final Customization copy(String acdExternal, boolean pluginShareOverlayDisabled, boolean rtccLocalUdpDisabled, boolean rtccUsapTurnDisabled, boolean sslPlugin) {
            return new Customization(acdExternal, pluginShareOverlayDisabled, rtccLocalUdpDisabled, rtccUsapTurnDisabled, sslPlugin);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Customization)) {
                return false;
            }
            Customization customization = (Customization) other;
            return Intrinsics.c(this.acdExternal, customization.acdExternal) && this.pluginShareOverlayDisabled == customization.pluginShareOverlayDisabled && this.rtccLocalUdpDisabled == customization.rtccLocalUdpDisabled && this.rtccUsapTurnDisabled == customization.rtccUsapTurnDisabled && this.sslPlugin == customization.sslPlugin;
        }

        public int hashCode() {
            String str = this.acdExternal;
            return Boolean.hashCode(this.sslPlugin) + o60.b(o60.b(o60.b((str == null ? 0 : str.hashCode()) * 31, 31, this.pluginShareOverlayDisabled), 31, this.rtccLocalUdpDisabled), 31, this.rtccUsapTurnDisabled);
        }

        public String toString() {
            String str = this.acdExternal;
            boolean z = this.pluginShareOverlayDisabled;
            boolean z2 = this.rtccLocalUdpDisabled;
            boolean z3 = this.rtccUsapTurnDisabled;
            boolean z4 = this.sslPlugin;
            StringBuilder sbS = d21.s("Customization(acdExternal=", str, ", pluginShareOverlayDisabled=", ", rtccLocalUdpDisabled=", z);
            fc.y(sbS, z2, ", rtccUsapTurnDisabled=", z3, ", sslPlugin=");
            return a.p(sbS, z4, ")");
        }
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0014\b\u0086\b\u0018\u00002\u00020\u0001BI\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\f\u0010\rJ\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u0013J\t\u0010\u0014\u001a\u00020\tHÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0003HÆ\u0003J^\u0010\u0017\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\u0018J\u0014\u0010\u0019\u001a\u00020\u00072\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u001b\u001a\u00020\tHÖ\u0081\u0004J\n\u0010\u001c\u001a\u00020\u0003HÖ\u0081\u0004R\u0012\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u000eR\u0010\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lcom/sightcall/session/Reference$Provider;", "", "appId", "", "host", "path", "reportChatContent", "", "deadPartyTimeout", "", "annotationUrl", "rtccJwtAuth", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ILjava/lang/String;Ljava/lang/String;)V", "Ljava/lang/Boolean;", "component1", "component2", "component3", "component4", "()Ljava/lang/Boolean;", "component5", "component6", "component7", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ILjava/lang/String;Ljava/lang/String;)Lcom/sightcall/session/Reference$Provider;", "equals", "other", "hashCode", "toString", "session_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Provider {
        public final String annotationUrl;
        public final String appId;
        public final int deadPartyTimeout;
        public final String host;
        public final String path;
        public final Boolean reportChatContent;
        public final String rtccJwtAuth;

        public Provider(String str, String str2, String str3, Boolean bool, int i2, String str4, String str5) {
            str2.getClass();
            this.appId = str;
            this.host = str2;
            this.path = str3;
            this.reportChatContent = bool;
            this.deadPartyTimeout = i2;
            this.annotationUrl = str4;
            this.rtccJwtAuth = str5;
        }

        public static /* synthetic */ Provider copy$default(Provider provider, String str, String str2, String str3, Boolean bool, int i2, String str4, String str5, int i3, Object obj) {
            if ((i3 & 1) != 0) {
                str = provider.appId;
            }
            if ((i3 & 2) != 0) {
                str2 = provider.host;
            }
            if ((i3 & 4) != 0) {
                str3 = provider.path;
            }
            if ((i3 & 8) != 0) {
                bool = provider.reportChatContent;
            }
            if ((i3 & 16) != 0) {
                i2 = provider.deadPartyTimeout;
            }
            if ((i3 & 32) != 0) {
                str4 = provider.annotationUrl;
            }
            if ((i3 & 64) != 0) {
                str5 = provider.rtccJwtAuth;
            }
            String str6 = str4;
            String str7 = str5;
            int i4 = i2;
            String str8 = str3;
            return provider.copy(str, str2, str8, bool, i4, str6, str7);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getAppId() {
            return this.appId;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getHost() {
            return this.host;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final String getPath() {
            return this.path;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final Boolean getReportChatContent() {
            return this.reportChatContent;
        }

        /* JADX INFO: renamed from: component5, reason: from getter */
        public final int getDeadPartyTimeout() {
            return this.deadPartyTimeout;
        }

        /* JADX INFO: renamed from: component6, reason: from getter */
        public final String getAnnotationUrl() {
            return this.annotationUrl;
        }

        /* JADX INFO: renamed from: component7, reason: from getter */
        public final String getRtccJwtAuth() {
            return this.rtccJwtAuth;
        }

        public final Provider copy(String appId, String host, String path, Boolean reportChatContent, int deadPartyTimeout, String annotationUrl, String rtccJwtAuth) {
            host.getClass();
            return new Provider(appId, host, path, reportChatContent, deadPartyTimeout, annotationUrl, rtccJwtAuth);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Provider)) {
                return false;
            }
            Provider provider = (Provider) other;
            return Intrinsics.c(this.appId, provider.appId) && Intrinsics.c(this.host, provider.host) && Intrinsics.c(this.path, provider.path) && Intrinsics.c(this.reportChatContent, provider.reportChatContent) && this.deadPartyTimeout == provider.deadPartyTimeout && Intrinsics.c(this.annotationUrl, provider.annotationUrl) && Intrinsics.c(this.rtccJwtAuth, provider.rtccJwtAuth);
        }

        public int hashCode() {
            String str = this.appId;
            int iB = fc.b((str == null ? 0 : str.hashCode()) * 31, 31, this.host);
            String str2 = this.path;
            int iHashCode = (iB + (str2 == null ? 0 : str2.hashCode())) * 31;
            Boolean bool = this.reportChatContent;
            int iB2 = tr.b(this.deadPartyTimeout, (iHashCode + (bool == null ? 0 : bool.hashCode())) * 31, 31);
            String str3 = this.annotationUrl;
            int iHashCode2 = (iB2 + (str3 == null ? 0 : str3.hashCode())) * 31;
            String str4 = this.rtccJwtAuth;
            return iHashCode2 + (str4 != null ? str4.hashCode() : 0);
        }

        public String toString() {
            String str = this.appId;
            String str2 = this.host;
            String str3 = this.path;
            Boolean bool = this.reportChatContent;
            int i2 = this.deadPartyTimeout;
            String str4 = this.annotationUrl;
            String str5 = this.rtccJwtAuth;
            StringBuilder sbS = fc.s("Provider(appId=", str, ", host=", str2, ", path=");
            sbS.append(str3);
            sbS.append(", reportChatContent=");
            sbS.append(bool);
            sbS.append(", deadPartyTimeout=");
            sbS.append(i2);
            sbS.append(", annotationUrl=");
            sbS.append(str4);
            sbS.append(", rtccJwtAuth=");
            return n00.r(str5, ")", sbS);
        }
    }

    @Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b2\b\u0086\b\u0018\u00002\u00020\u0001:\u0005YZ[\\]B\u009b\u0002\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\u0006\u0010\u0010\u001a\u00020\r\u0012\u0006\u0010\u0011\u001a\u00020\r\u0012\u0006\u0010\u0012\u001a\u00020\r\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\u000e\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0016\u0012\u0006\u0010\u0018\u001a\u00020\r\u0012\u0006\u0010\u0019\u001a\u00020\u0003\u0012\u0006\u0010\u001a\u001a\u00020\r\u0012\u0006\u0010\u001b\u001a\u00020\r\u0012\u0006\u0010\u001c\u001a\u00020\u001d\u0012\b\u0010\u001e\u001a\u0004\u0018\u00010\u001f\u0012\b\u0010 \u001a\u0004\u0018\u00010\u001f\u0012\b\u0010!\u001a\u0004\u0018\u00010\"\u0012\u0006\u0010#\u001a\u00020\r\u0012\u0006\u0010$\u001a\u00020%\u0012\u0006\u0010&\u001a\u00020\t\u0012\b\u0010'\u001a\u0004\u0018\u00010\t\u0012\b\u0010(\u001a\u0004\u0018\u00010\t\u0012\b\u0010)\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010*\u001a\u00020\r\u0012\b\u0010+\u001a\u0004\u0018\u00010,\u0012\b\u0010-\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010.\u001a\u00020\u0003¢\u0006\u0004\b/\u00100J\u0010\u00103\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u00104J\t\u00105\u001a\u00020\u0005HÆ\u0003J\u000b\u00106\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u00107\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u00108\u001a\u0004\u0018\u00010\u000bHÆ\u0003J\t\u00109\u001a\u00020\rHÆ\u0003J\u000b\u0010:\u001a\u0004\u0018\u00010\u000fHÆ\u0003J\t\u0010;\u001a\u00020\rHÆ\u0003J\t\u0010<\u001a\u00020\rHÆ\u0003J\t\u0010=\u001a\u00020\rHÆ\u0003J\u000b\u0010>\u001a\u0004\u0018\u00010\u0014HÆ\u0003J\u0011\u0010?\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0016HÆ\u0003J\t\u0010@\u001a\u00020\rHÆ\u0003J\t\u0010A\u001a\u00020\u0003HÆ\u0003J\t\u0010B\u001a\u00020\rHÆ\u0003J\t\u0010C\u001a\u00020\rHÆ\u0003J\t\u0010D\u001a\u00020\u001dHÆ\u0003J\u0010\u0010E\u001a\u0004\u0018\u00010\u001fHÆ\u0003¢\u0006\u0002\u0010FJ\u0010\u0010G\u001a\u0004\u0018\u00010\u001fHÆ\u0003¢\u0006\u0002\u0010FJ\u000b\u0010H\u001a\u0004\u0018\u00010\"HÆ\u0003J\t\u0010I\u001a\u00020\rHÆ\u0003J\t\u0010J\u001a\u00020%HÆ\u0003J\t\u0010K\u001a\u00020\tHÆ\u0003J\u000b\u0010L\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010M\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010N\u001a\u0004\u0018\u00010\tHÆ\u0003J\t\u0010O\u001a\u00020\rHÆ\u0003J\u000b\u0010P\u001a\u0004\u0018\u00010,HÆ\u0003J\u000b\u0010Q\u001a\u0004\u0018\u00010\tHÆ\u0003J\t\u0010R\u001a\u00020\u0003HÆ\u0003JÞ\u0002\u0010S\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\b\b\u0002\u0010\f\u001a\u00020\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\r2\b\b\u0002\u0010\u0011\u001a\u00020\r2\b\b\u0002\u0010\u0012\u001a\u00020\r2\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0010\b\u0002\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u00162\b\b\u0002\u0010\u0018\u001a\u00020\r2\b\b\u0002\u0010\u0019\u001a\u00020\u00032\b\b\u0002\u0010\u001a\u001a\u00020\r2\b\b\u0002\u0010\u001b\u001a\u00020\r2\b\b\u0002\u0010\u001c\u001a\u00020\u001d2\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u001f2\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\"2\b\b\u0002\u0010#\u001a\u00020\r2\b\b\u0002\u0010$\u001a\u00020%2\b\b\u0002\u0010&\u001a\u00020\t2\n\b\u0002\u0010'\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010(\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010)\u001a\u0004\u0018\u00010\t2\b\b\u0002\u0010*\u001a\u00020\r2\n\b\u0002\u0010+\u001a\u0004\u0018\u00010,2\n\b\u0002\u0010-\u001a\u0004\u0018\u00010\t2\b\b\u0002\u0010.\u001a\u00020\u0003HÆ\u0001¢\u0006\u0002\u0010TJ\u0014\u0010U\u001a\u00020\r2\b\u0010V\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010W\u001a\u00020\u0003HÖ\u0081\u0004J\n\u0010X\u001a\u00020\tHÖ\u0081\u0004R\u0014\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u00101R\u0010\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u00020\r8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u00020\r8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u00020\r8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u00020\r8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u00148\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u00168\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u00020\r8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u001a\u001a\u00020\r8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u001b\u001a\u00020\r8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u001c\u001a\u00020\u001d8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u001e\u001a\u0004\u0018\u00010\u001f8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u00102R\u0014\u0010 \u001a\u0004\u0018\u00010\u001f8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u00102R\u0012\u0010!\u001a\u0004\u0018\u00010\"8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010#\u001a\u00020\r8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010$\u001a\u00020%8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010&\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010'\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010(\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010)\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010*\u001a\u00020\r8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010+\u001a\u0004\u0018\u00010,8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010-\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010.\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006^"}, d2 = {"Lcom/sightcall/session/Reference$UseCase;", "", b.a.f24015b, "", "userRole", "Lcom/sightcall/session/Reference$UserRole;", "mode", "Lcom/sightcall/session/Reference$CallDistribution;", "name", "", "videoOut", "Lcom/sightcall/session/Reference$CameraSide;", "videoOutStartup", "", "videoProfile", "Lcom/sightcall/session/Reference$VideoProfile;", "videoPointerOut", "mute", "videoOutWhilePicture", "survey", "Lcom/sightcall/session/Reference$UseCase$Survey;", "buttonsLocal", "", "Lcom/sightcall/session/Reference$Button;", "alwaysVisible", "chatMessageOverlayTimeout", "chatQuickActions", "allowUsbCamera", "propositionTemplate", "Lcom/sightcall/session/Reference$UseCase$PropositionTemplate;", "ocrRatio", "", "ocrSafeArea", "guestConsent", "Lcom/sightcall/session/Reference$UseCase$Consent;", "advancedAnnotations", "liveTranslation", "Lcom/sightcall/session/Reference$UseCase$LiveTranslation;", "caseReportId", "reference", "displayNameMode", "displayName", "ignoreConsent", "analytics", "Lcom/sightcall/session/Reference$UseCase$Analytics;", "rtccMpi", "acdRequestTimeout", "<init>", "(Ljava/lang/Integer;Lcom/sightcall/session/Reference$UserRole;Lcom/sightcall/session/Reference$CallDistribution;Ljava/lang/String;Lcom/sightcall/session/Reference$CameraSide;ZLcom/sightcall/session/Reference$VideoProfile;ZZZLcom/sightcall/session/Reference$UseCase$Survey;Ljava/util/List;ZIZZLcom/sightcall/session/Reference$UseCase$PropositionTemplate;Ljava/lang/Double;Ljava/lang/Double;Lcom/sightcall/session/Reference$UseCase$Consent;ZLcom/sightcall/session/Reference$UseCase$LiveTranslation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/sightcall/session/Reference$UseCase$Analytics;Ljava/lang/String;I)V", "Ljava/lang/Integer;", "Ljava/lang/Double;", "component1", "()Ljava/lang/Integer;", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "()Ljava/lang/Double;", "component19", "component20", "component21", "component22", "component23", "component24", "component25", "component26", "component27", "component28", "component29", "component30", "copy", "(Ljava/lang/Integer;Lcom/sightcall/session/Reference$UserRole;Lcom/sightcall/session/Reference$CallDistribution;Ljava/lang/String;Lcom/sightcall/session/Reference$CameraSide;ZLcom/sightcall/session/Reference$VideoProfile;ZZZLcom/sightcall/session/Reference$UseCase$Survey;Ljava/util/List;ZIZZLcom/sightcall/session/Reference$UseCase$PropositionTemplate;Ljava/lang/Double;Ljava/lang/Double;Lcom/sightcall/session/Reference$UseCase$Consent;ZLcom/sightcall/session/Reference$UseCase$LiveTranslation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/sightcall/session/Reference$UseCase$Analytics;Ljava/lang/String;I)Lcom/sightcall/session/Reference$UseCase;", "equals", "other", "hashCode", "toString", "Survey", "PropositionTemplate", "Consent", "LiveTranslation", "Analytics", "session_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class UseCase {
        public final int acdRequestTimeout;
        public final boolean advancedAnnotations;
        public final boolean allowUsbCamera;
        public final boolean alwaysVisible;
        public final Analytics analytics;
        public final List<Button> buttonsLocal;
        public final String caseReportId;
        public final int chatMessageOverlayTimeout;
        public final boolean chatQuickActions;
        public final String displayName;
        public final String displayNameMode;
        public final Consent guestConsent;
        public final Integer id;
        public final boolean ignoreConsent;
        public final LiveTranslation liveTranslation;
        public final CallDistribution mode;
        public final boolean mute;
        public final String name;
        public final Double ocrRatio;
        public final Double ocrSafeArea;
        public final PropositionTemplate propositionTemplate;
        public final String reference;
        public final String rtccMpi;
        public final Survey survey;
        public final UserRole userRole;
        public final CameraSide videoOut;
        public final boolean videoOutStartup;
        public final boolean videoOutWhilePicture;
        public final boolean videoPointerOut;
        public final VideoProfile videoProfile;

        @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\t\u0010\t\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0014\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u000e\u001a\u00020\u000fHÖ\u0081\u0004J\n\u0010\u0010\u001a\u00020\u0005HÖ\u0081\u0004R\u0010\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/sightcall/session/Reference$UseCase$Analytics;", "", "uploadUrl", "Ljava/net/URL;", "token", "", "<init>", "(Ljava/net/URL;Ljava/lang/String;)V", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "session_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class Analytics {
            public final String token;
            public final URL uploadUrl;

            public Analytics(URL url, String str) {
                url.getClass();
                str.getClass();
                this.uploadUrl = url;
                this.token = str;
            }

            public static /* synthetic */ Analytics copy$default(Analytics analytics, URL url, String str, int i2, Object obj) {
                if ((i2 & 1) != 0) {
                    url = analytics.uploadUrl;
                }
                if ((i2 & 2) != 0) {
                    str = analytics.token;
                }
                return analytics.copy(url, str);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final URL getUploadUrl() {
                return this.uploadUrl;
            }

            /* JADX INFO: renamed from: component2, reason: from getter */
            public final String getToken() {
                return this.token;
            }

            public final Analytics copy(URL uploadUrl, String token) {
                uploadUrl.getClass();
                token.getClass();
                return new Analytics(uploadUrl, token);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof Analytics)) {
                    return false;
                }
                Analytics analytics = (Analytics) other;
                return Intrinsics.c(this.uploadUrl, analytics.uploadUrl) && Intrinsics.c(this.token, analytics.token);
            }

            public int hashCode() {
                return this.token.hashCode() + (this.uploadUrl.hashCode() * 31);
            }

            public String toString() {
                return "Analytics(uploadUrl=" + this.uploadUrl + ", token=" + this.token + ")";
            }
        }

        @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u000b\u0010\n\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\f\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\rJ2\u0010\u000e\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÆ\u0001¢\u0006\u0002\u0010\u000fJ\u0014\u0010\u0010\u001a\u00020\u00062\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0012\u001a\u00020\u0013HÖ\u0081\u0004J\n\u0010\u0014\u001a\u00020\u0003HÖ\u0081\u0004R\u0012\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\t¨\u0006\u0015"}, d2 = {"Lcom/sightcall/session/Reference$UseCase$PropositionTemplate;", "", "title", "", "button", "signature", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "component1", "component2", "component3", "()Ljava/lang/Boolean;", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/sightcall/session/Reference$UseCase$PropositionTemplate;", "equals", "other", "hashCode", "", "toString", "session_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class PropositionTemplate {
            public final String button;
            public final Boolean signature;
            public final String title;

            public PropositionTemplate(String str, String str2, Boolean bool) {
                this.title = str;
                this.button = str2;
                this.signature = bool;
            }

            public static /* synthetic */ PropositionTemplate copy$default(PropositionTemplate propositionTemplate, String str, String str2, Boolean bool, int i2, Object obj) {
                if ((i2 & 1) != 0) {
                    str = propositionTemplate.title;
                }
                if ((i2 & 2) != 0) {
                    str2 = propositionTemplate.button;
                }
                if ((i2 & 4) != 0) {
                    bool = propositionTemplate.signature;
                }
                return propositionTemplate.copy(str, str2, bool);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final String getTitle() {
                return this.title;
            }

            /* JADX INFO: renamed from: component2, reason: from getter */
            public final String getButton() {
                return this.button;
            }

            /* JADX INFO: renamed from: component3, reason: from getter */
            public final Boolean getSignature() {
                return this.signature;
            }

            public final PropositionTemplate copy(String title, String button, Boolean signature) {
                return new PropositionTemplate(title, button, signature);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof PropositionTemplate)) {
                    return false;
                }
                PropositionTemplate propositionTemplate = (PropositionTemplate) other;
                return Intrinsics.c(this.title, propositionTemplate.title) && Intrinsics.c(this.button, propositionTemplate.button) && Intrinsics.c(this.signature, propositionTemplate.signature);
            }

            public int hashCode() {
                String str = this.title;
                int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
                String str2 = this.button;
                int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
                Boolean bool = this.signature;
                return iHashCode2 + (bool != null ? bool.hashCode() : 0);
            }

            public String toString() {
                String str = this.title;
                String str2 = this.button;
                Boolean bool = this.signature;
                StringBuilder sbS = fc.s("PropositionTemplate(title=", str, ", button=", str2, ", signature=");
                sbS.append(bool);
                sbS.append(")");
                return sbS.toString();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public UseCase(Integer num, UserRole userRole, CallDistribution callDistribution, String str, CameraSide cameraSide, boolean z, VideoProfile videoProfile, boolean z2, boolean z3, boolean z4, Survey survey, List<? extends Button> list, boolean z5, int i2, boolean z6, boolean z7, PropositionTemplate propositionTemplate, Double d, Double d2, Consent consent, boolean z8, LiveTranslation liveTranslation, String str2, String str3, String str4, String str5, boolean z9, Analytics analytics, String str6, int i3) {
            userRole.getClass();
            propositionTemplate.getClass();
            liveTranslation.getClass();
            str2.getClass();
            this.id = num;
            this.userRole = userRole;
            this.mode = callDistribution;
            this.name = str;
            this.videoOut = cameraSide;
            this.videoOutStartup = z;
            this.videoProfile = videoProfile;
            this.videoPointerOut = z2;
            this.mute = z3;
            this.videoOutWhilePicture = z4;
            this.survey = survey;
            this.buttonsLocal = list;
            this.alwaysVisible = z5;
            this.chatMessageOverlayTimeout = i2;
            this.chatQuickActions = z6;
            this.allowUsbCamera = z7;
            this.propositionTemplate = propositionTemplate;
            this.ocrRatio = d;
            this.ocrSafeArea = d2;
            this.guestConsent = consent;
            this.advancedAnnotations = z8;
            this.liveTranslation = liveTranslation;
            this.caseReportId = str2;
            this.reference = str3;
            this.displayNameMode = str4;
            this.displayName = str5;
            this.ignoreConsent = z9;
            this.analytics = analytics;
            this.rtccMpi = str6;
            this.acdRequestTimeout = i3;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ UseCase copy$default(UseCase useCase, Integer num, UserRole userRole, CallDistribution callDistribution, String str, CameraSide cameraSide, boolean z, VideoProfile videoProfile, boolean z2, boolean z3, boolean z4, Survey survey, List list, boolean z5, int i2, boolean z6, boolean z7, PropositionTemplate propositionTemplate, Double d, Double d2, Consent consent, boolean z8, LiveTranslation liveTranslation, String str2, String str3, String str4, String str5, boolean z9, Analytics analytics, String str6, int i3, int i4, Object obj) {
            int i5;
            String str7;
            Integer num2 = (i4 & 1) != 0 ? useCase.id : num;
            UserRole userRole2 = (i4 & 2) != 0 ? useCase.userRole : userRole;
            CallDistribution callDistribution2 = (i4 & 4) != 0 ? useCase.mode : callDistribution;
            String str8 = (i4 & 8) != 0 ? useCase.name : str;
            CameraSide cameraSide2 = (i4 & 16) != 0 ? useCase.videoOut : cameraSide;
            boolean z10 = (i4 & 32) != 0 ? useCase.videoOutStartup : z;
            VideoProfile videoProfile2 = (i4 & 64) != 0 ? useCase.videoProfile : videoProfile;
            boolean z11 = (i4 & 128) != 0 ? useCase.videoPointerOut : z2;
            boolean z12 = (i4 & 256) != 0 ? useCase.mute : z3;
            boolean z13 = (i4 & 512) != 0 ? useCase.videoOutWhilePicture : z4;
            Survey survey2 = (i4 & 1024) != 0 ? useCase.survey : survey;
            List list2 = (i4 & 2048) != 0 ? useCase.buttonsLocal : list;
            boolean z14 = (i4 & 4096) != 0 ? useCase.alwaysVisible : z5;
            int i6 = (i4 & 8192) != 0 ? useCase.chatMessageOverlayTimeout : i2;
            Integer num3 = num2;
            boolean z15 = (i4 & 16384) != 0 ? useCase.chatQuickActions : z6;
            boolean z16 = (i4 & 32768) != 0 ? useCase.allowUsbCamera : z7;
            PropositionTemplate propositionTemplate2 = (i4 & 65536) != 0 ? useCase.propositionTemplate : propositionTemplate;
            Double d3 = (i4 & 131072) != 0 ? useCase.ocrRatio : d;
            Double d4 = (i4 & 262144) != 0 ? useCase.ocrSafeArea : d2;
            Consent consent2 = (i4 & 524288) != 0 ? useCase.guestConsent : consent;
            boolean z17 = (i4 & 1048576) != 0 ? useCase.advancedAnnotations : z8;
            LiveTranslation liveTranslation2 = (i4 & PKIFailureInfo.badSenderNonce) != 0 ? useCase.liveTranslation : liveTranslation;
            String str9 = (i4 & 4194304) != 0 ? useCase.caseReportId : str2;
            String str10 = (i4 & 8388608) != 0 ? useCase.reference : str3;
            String str11 = (i4 & 16777216) != 0 ? useCase.displayNameMode : str4;
            String str12 = (i4 & 33554432) != 0 ? useCase.displayName : str5;
            boolean z18 = (i4 & 67108864) != 0 ? useCase.ignoreConsent : z9;
            Analytics analytics2 = (i4 & 134217728) != 0 ? useCase.analytics : analytics;
            String str13 = (i4 & 268435456) != 0 ? useCase.rtccMpi : str6;
            if ((i4 & PKIFailureInfo.duplicateCertReq) != 0) {
                str7 = str13;
                i5 = useCase.acdRequestTimeout;
            } else {
                i5 = i3;
                str7 = str13;
            }
            return useCase.copy(num3, userRole2, callDistribution2, str8, cameraSide2, z10, videoProfile2, z11, z12, z13, survey2, list2, z14, i6, z15, z16, propositionTemplate2, d3, d4, consent2, z17, liveTranslation2, str9, str10, str11, str12, z18, analytics2, str7, i5);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final Integer getId() {
            return this.id;
        }

        /* JADX INFO: renamed from: component10, reason: from getter */
        public final boolean getVideoOutWhilePicture() {
            return this.videoOutWhilePicture;
        }

        /* JADX INFO: renamed from: component11, reason: from getter */
        public final Survey getSurvey() {
            return this.survey;
        }

        public final List<Button> component12() {
            return this.buttonsLocal;
        }

        /* JADX INFO: renamed from: component13, reason: from getter */
        public final boolean getAlwaysVisible() {
            return this.alwaysVisible;
        }

        /* JADX INFO: renamed from: component14, reason: from getter */
        public final int getChatMessageOverlayTimeout() {
            return this.chatMessageOverlayTimeout;
        }

        /* JADX INFO: renamed from: component15, reason: from getter */
        public final boolean getChatQuickActions() {
            return this.chatQuickActions;
        }

        /* JADX INFO: renamed from: component16, reason: from getter */
        public final boolean getAllowUsbCamera() {
            return this.allowUsbCamera;
        }

        /* JADX INFO: renamed from: component17, reason: from getter */
        public final PropositionTemplate getPropositionTemplate() {
            return this.propositionTemplate;
        }

        /* JADX INFO: renamed from: component18, reason: from getter */
        public final Double getOcrRatio() {
            return this.ocrRatio;
        }

        /* JADX INFO: renamed from: component19, reason: from getter */
        public final Double getOcrSafeArea() {
            return this.ocrSafeArea;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final UserRole getUserRole() {
            return this.userRole;
        }

        /* JADX INFO: renamed from: component20, reason: from getter */
        public final Consent getGuestConsent() {
            return this.guestConsent;
        }

        /* JADX INFO: renamed from: component21, reason: from getter */
        public final boolean getAdvancedAnnotations() {
            return this.advancedAnnotations;
        }

        /* JADX INFO: renamed from: component22, reason: from getter */
        public final LiveTranslation getLiveTranslation() {
            return this.liveTranslation;
        }

        /* JADX INFO: renamed from: component23, reason: from getter */
        public final String getCaseReportId() {
            return this.caseReportId;
        }

        /* JADX INFO: renamed from: component24, reason: from getter */
        public final String getReference() {
            return this.reference;
        }

        /* JADX INFO: renamed from: component25, reason: from getter */
        public final String getDisplayNameMode() {
            return this.displayNameMode;
        }

        /* JADX INFO: renamed from: component26, reason: from getter */
        public final String getDisplayName() {
            return this.displayName;
        }

        /* JADX INFO: renamed from: component27, reason: from getter */
        public final boolean getIgnoreConsent() {
            return this.ignoreConsent;
        }

        /* JADX INFO: renamed from: component28, reason: from getter */
        public final Analytics getAnalytics() {
            return this.analytics;
        }

        /* JADX INFO: renamed from: component29, reason: from getter */
        public final String getRtccMpi() {
            return this.rtccMpi;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final CallDistribution getMode() {
            return this.mode;
        }

        /* JADX INFO: renamed from: component30, reason: from getter */
        public final int getAcdRequestTimeout() {
            return this.acdRequestTimeout;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final String getName() {
            return this.name;
        }

        /* JADX INFO: renamed from: component5, reason: from getter */
        public final CameraSide getVideoOut() {
            return this.videoOut;
        }

        /* JADX INFO: renamed from: component6, reason: from getter */
        public final boolean getVideoOutStartup() {
            return this.videoOutStartup;
        }

        /* JADX INFO: renamed from: component7, reason: from getter */
        public final VideoProfile getVideoProfile() {
            return this.videoProfile;
        }

        /* JADX INFO: renamed from: component8, reason: from getter */
        public final boolean getVideoPointerOut() {
            return this.videoPointerOut;
        }

        /* JADX INFO: renamed from: component9, reason: from getter */
        public final boolean getMute() {
            return this.mute;
        }

        public final UseCase copy(Integer id, UserRole userRole, CallDistribution mode, String name, CameraSide videoOut, boolean videoOutStartup, VideoProfile videoProfile, boolean videoPointerOut, boolean mute, boolean videoOutWhilePicture, Survey survey, List<? extends Button> buttonsLocal, boolean alwaysVisible, int chatMessageOverlayTimeout, boolean chatQuickActions, boolean allowUsbCamera, PropositionTemplate propositionTemplate, Double ocrRatio, Double ocrSafeArea, Consent guestConsent, boolean advancedAnnotations, LiveTranslation liveTranslation, String caseReportId, String reference, String displayNameMode, String displayName, boolean ignoreConsent, Analytics analytics, String rtccMpi, int acdRequestTimeout) {
            userRole.getClass();
            propositionTemplate.getClass();
            liveTranslation.getClass();
            caseReportId.getClass();
            return new UseCase(id, userRole, mode, name, videoOut, videoOutStartup, videoProfile, videoPointerOut, mute, videoOutWhilePicture, survey, buttonsLocal, alwaysVisible, chatMessageOverlayTimeout, chatQuickActions, allowUsbCamera, propositionTemplate, ocrRatio, ocrSafeArea, guestConsent, advancedAnnotations, liveTranslation, caseReportId, reference, displayNameMode, displayName, ignoreConsent, analytics, rtccMpi, acdRequestTimeout);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof UseCase)) {
                return false;
            }
            UseCase useCase = (UseCase) other;
            return Intrinsics.c(this.id, useCase.id) && Intrinsics.c(this.userRole, useCase.userRole) && Intrinsics.c(this.mode, useCase.mode) && Intrinsics.c(this.name, useCase.name) && Intrinsics.c(this.videoOut, useCase.videoOut) && this.videoOutStartup == useCase.videoOutStartup && Intrinsics.c(this.videoProfile, useCase.videoProfile) && this.videoPointerOut == useCase.videoPointerOut && this.mute == useCase.mute && this.videoOutWhilePicture == useCase.videoOutWhilePicture && Intrinsics.c(this.survey, useCase.survey) && Intrinsics.c(this.buttonsLocal, useCase.buttonsLocal) && this.alwaysVisible == useCase.alwaysVisible && this.chatMessageOverlayTimeout == useCase.chatMessageOverlayTimeout && this.chatQuickActions == useCase.chatQuickActions && this.allowUsbCamera == useCase.allowUsbCamera && Intrinsics.c(this.propositionTemplate, useCase.propositionTemplate) && Intrinsics.c(this.ocrRatio, useCase.ocrRatio) && Intrinsics.c(this.ocrSafeArea, useCase.ocrSafeArea) && Intrinsics.c(this.guestConsent, useCase.guestConsent) && this.advancedAnnotations == useCase.advancedAnnotations && Intrinsics.c(this.liveTranslation, useCase.liveTranslation) && Intrinsics.c(this.caseReportId, useCase.caseReportId) && Intrinsics.c(this.reference, useCase.reference) && Intrinsics.c(this.displayNameMode, useCase.displayNameMode) && Intrinsics.c(this.displayName, useCase.displayName) && this.ignoreConsent == useCase.ignoreConsent && Intrinsics.c(this.analytics, useCase.analytics) && Intrinsics.c(this.rtccMpi, useCase.rtccMpi) && this.acdRequestTimeout == useCase.acdRequestTimeout;
        }

        public int hashCode() {
            Integer num = this.id;
            int iHashCode = (this.userRole.hashCode() + ((num == null ? 0 : num.hashCode()) * 31)) * 31;
            CallDistribution callDistribution = this.mode;
            int iHashCode2 = (iHashCode + (callDistribution == null ? 0 : callDistribution.hashCode())) * 31;
            String str = this.name;
            int iHashCode3 = (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31;
            CameraSide cameraSide = this.videoOut;
            int iB = o60.b((iHashCode3 + (cameraSide == null ? 0 : cameraSide.hashCode())) * 31, 31, this.videoOutStartup);
            VideoProfile videoProfile = this.videoProfile;
            int iB2 = o60.b(o60.b(o60.b((iB + (videoProfile == null ? 0 : videoProfile.hashCode())) * 31, 31, this.videoPointerOut), 31, this.mute), 31, this.videoOutWhilePicture);
            Survey survey = this.survey;
            int iHashCode4 = (iB2 + (survey == null ? 0 : survey.hashCode())) * 31;
            List<Button> list = this.buttonsLocal;
            int iHashCode5 = (this.propositionTemplate.hashCode() + o60.b(o60.b(tr.b(this.chatMessageOverlayTimeout, o60.b((iHashCode4 + (list == null ? 0 : list.hashCode())) * 31, 31, this.alwaysVisible), 31), 31, this.chatQuickActions), 31, this.allowUsbCamera)) * 31;
            Double d = this.ocrRatio;
            int iHashCode6 = (iHashCode5 + (d == null ? 0 : d.hashCode())) * 31;
            Double d2 = this.ocrSafeArea;
            int iHashCode7 = (iHashCode6 + (d2 == null ? 0 : d2.hashCode())) * 31;
            Consent consent = this.guestConsent;
            int iB3 = fc.b((this.liveTranslation.hashCode() + o60.b((iHashCode7 + (consent == null ? 0 : consent.hashCode())) * 31, 31, this.advancedAnnotations)) * 31, 31, this.caseReportId);
            String str2 = this.reference;
            int iHashCode8 = (iB3 + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.displayNameMode;
            int iHashCode9 = (iHashCode8 + (str3 == null ? 0 : str3.hashCode())) * 31;
            String str4 = this.displayName;
            int iB4 = o60.b((iHashCode9 + (str4 == null ? 0 : str4.hashCode())) * 31, 31, this.ignoreConsent);
            Analytics analytics = this.analytics;
            int iHashCode10 = (iB4 + (analytics == null ? 0 : analytics.hashCode())) * 31;
            String str5 = this.rtccMpi;
            return Integer.hashCode(this.acdRequestTimeout) + ((iHashCode10 + (str5 != null ? str5.hashCode() : 0)) * 31);
        }

        public String toString() {
            Integer num = this.id;
            UserRole userRole = this.userRole;
            CallDistribution callDistribution = this.mode;
            String str = this.name;
            CameraSide cameraSide = this.videoOut;
            boolean z = this.videoOutStartup;
            VideoProfile videoProfile = this.videoProfile;
            boolean z2 = this.videoPointerOut;
            boolean z3 = this.mute;
            boolean z4 = this.videoOutWhilePicture;
            Survey survey = this.survey;
            List<Button> list = this.buttonsLocal;
            boolean z5 = this.alwaysVisible;
            int i2 = this.chatMessageOverlayTimeout;
            boolean z6 = this.chatQuickActions;
            boolean z7 = this.allowUsbCamera;
            PropositionTemplate propositionTemplate = this.propositionTemplate;
            Double d = this.ocrRatio;
            Double d2 = this.ocrSafeArea;
            Consent consent = this.guestConsent;
            boolean z8 = this.advancedAnnotations;
            LiveTranslation liveTranslation = this.liveTranslation;
            String str2 = this.caseReportId;
            String str3 = this.reference;
            String str4 = this.displayNameMode;
            String str5 = this.displayName;
            boolean z9 = this.ignoreConsent;
            Analytics analytics = this.analytics;
            String str6 = this.rtccMpi;
            int i3 = this.acdRequestTimeout;
            StringBuilder sb = new StringBuilder("UseCase(id=");
            sb.append(num);
            sb.append(", userRole=");
            sb.append(userRole);
            sb.append(", mode=");
            sb.append(callDistribution);
            sb.append(", name=");
            sb.append(str);
            sb.append(", videoOut=");
            sb.append(cameraSide);
            sb.append(", videoOutStartup=");
            sb.append(z);
            sb.append(", videoProfile=");
            sb.append(videoProfile);
            sb.append(", videoPointerOut=");
            sb.append(z2);
            sb.append(", mute=");
            fc.y(sb, z3, ", videoOutWhilePicture=", z4, ", survey=");
            sb.append(survey);
            sb.append(", buttonsLocal=");
            sb.append(list);
            sb.append(", alwaysVisible=");
            sb.append(z5);
            sb.append(", chatMessageOverlayTimeout=");
            sb.append(i2);
            sb.append(", chatQuickActions=");
            fc.y(sb, z6, ", allowUsbCamera=", z7, ", propositionTemplate=");
            sb.append(propositionTemplate);
            sb.append(", ocrRatio=");
            sb.append(d);
            sb.append(", ocrSafeArea=");
            sb.append(d2);
            sb.append(", guestConsent=");
            sb.append(consent);
            sb.append(", advancedAnnotations=");
            sb.append(z8);
            sb.append(", liveTranslation=");
            sb.append(liveTranslation);
            sb.append(", caseReportId=");
            cj.C(sb, str2, ", reference=", str3, ", displayNameMode=");
            cj.C(sb, str4, ", displayName=", str5, ", ignoreConsent=");
            sb.append(z9);
            sb.append(", analytics=");
            sb.append(analytics);
            sb.append(", rtccMpi=");
            sb.append(str6);
            sb.append(", acdRequestTimeout=");
            sb.append(i3);
            sb.append(")");
            return sb.toString();
        }

        @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0012\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\"BW\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f¢\u0006\u0004\b\r\u0010\u000eJ\u0006\u0010\u0010\u001a\u00020\u0011J\u0006\u0010\u0012\u001a\u00020\u0011J\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0014J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010\u001b\u001a\u00020\fHÆ\u0003Jl\u0010\u001c\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u000b\u001a\u00020\fHÆ\u0001¢\u0006\u0002\u0010\u001dJ\u0014\u0010\u001e\u001a\u00020\u00112\b\u0010\u001f\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010 \u001a\u00020\u0003HÖ\u0081\u0004J\n\u0010!\u001a\u00020\u0005HÖ\u0081\u0004R\u0014\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u000fR\u0012\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006#"}, d2 = {"Lcom/sightcall/session/Reference$UseCase$Consent;", "", "consentId", "", "title", "", "message", "positiveButton", "negativeButton", "termsLabel", "termsUrl", "status", "Lcom/sightcall/session/Reference$UseCase$Consent$Status;", "<init>", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sightcall/session/Reference$UseCase$Consent$Status;)V", "Ljava/lang/Integer;", "isPending", "", "isAccepted", "component1", "()Ljava/lang/Integer;", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sightcall/session/Reference$UseCase$Consent$Status;)Lcom/sightcall/session/Reference$UseCase$Consent;", "equals", "other", "hashCode", "toString", "Status", "session_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class Consent {
            public final Integer consentId;
            public final String message;
            public final String negativeButton;
            public final String positiveButton;
            public Status status;
            public final String termsLabel;
            public final String termsUrl;
            public final String title;

            public /* synthetic */ Consent(Integer num, String str, String str2, String str3, String str4, String str5, String str6, Status status, int i2, DefaultConstructorMarker defaultConstructorMarker) {
                this(num, str, str2, str3, str4, str5, str6, (i2 & 128) != 0 ? Status.Pending.INSTANCE : status);
            }

            public static /* synthetic */ Consent copy$default(Consent consent, Integer num, String str, String str2, String str3, String str4, String str5, String str6, Status status, int i2, Object obj) {
                if ((i2 & 1) != 0) {
                    num = consent.consentId;
                }
                if ((i2 & 2) != 0) {
                    str = consent.title;
                }
                if ((i2 & 4) != 0) {
                    str2 = consent.message;
                }
                if ((i2 & 8) != 0) {
                    str3 = consent.positiveButton;
                }
                if ((i2 & 16) != 0) {
                    str4 = consent.negativeButton;
                }
                if ((i2 & 32) != 0) {
                    str5 = consent.termsLabel;
                }
                if ((i2 & 64) != 0) {
                    str6 = consent.termsUrl;
                }
                if ((i2 & 128) != 0) {
                    status = consent.status;
                }
                String str7 = str6;
                Status status2 = status;
                String str8 = str4;
                String str9 = str5;
                return consent.copy(num, str, str2, str3, str8, str9, str7, status2);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final Integer getConsentId() {
                return this.consentId;
            }

            /* JADX INFO: renamed from: component2, reason: from getter */
            public final String getTitle() {
                return this.title;
            }

            /* JADX INFO: renamed from: component3, reason: from getter */
            public final String getMessage() {
                return this.message;
            }

            /* JADX INFO: renamed from: component4, reason: from getter */
            public final String getPositiveButton() {
                return this.positiveButton;
            }

            /* JADX INFO: renamed from: component5, reason: from getter */
            public final String getNegativeButton() {
                return this.negativeButton;
            }

            /* JADX INFO: renamed from: component6, reason: from getter */
            public final String getTermsLabel() {
                return this.termsLabel;
            }

            /* JADX INFO: renamed from: component7, reason: from getter */
            public final String getTermsUrl() {
                return this.termsUrl;
            }

            /* JADX INFO: renamed from: component8, reason: from getter */
            public final Status getStatus() {
                return this.status;
            }

            public final Consent copy(Integer consentId, String title, String message, String positiveButton, String negativeButton, String termsLabel, String termsUrl, Status status) {
                status.getClass();
                return new Consent(consentId, title, message, positiveButton, negativeButton, termsLabel, termsUrl, status);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof Consent)) {
                    return false;
                }
                Consent consent = (Consent) other;
                return Intrinsics.c(this.consentId, consent.consentId) && Intrinsics.c(this.title, consent.title) && Intrinsics.c(this.message, consent.message) && Intrinsics.c(this.positiveButton, consent.positiveButton) && Intrinsics.c(this.negativeButton, consent.negativeButton) && Intrinsics.c(this.termsLabel, consent.termsLabel) && Intrinsics.c(this.termsUrl, consent.termsUrl) && Intrinsics.c(this.status, consent.status);
            }

            public int hashCode() {
                Integer num = this.consentId;
                int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
                String str = this.title;
                int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
                String str2 = this.message;
                int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
                String str3 = this.positiveButton;
                int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
                String str4 = this.negativeButton;
                int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
                String str5 = this.termsLabel;
                int iHashCode6 = (iHashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
                String str6 = this.termsUrl;
                return this.status.hashCode() + ((iHashCode6 + (str6 != null ? str6.hashCode() : 0)) * 31);
            }

            public final boolean isAccepted() {
                return Intrinsics.c(this.status, Status.Accepted.INSTANCE);
            }

            public final boolean isPending() {
                return Intrinsics.c(this.status, Status.Pending.INSTANCE);
            }

            public String toString() {
                Integer num = this.consentId;
                String str = this.title;
                String str2 = this.message;
                String str3 = this.positiveButton;
                String str4 = this.negativeButton;
                String str5 = this.termsLabel;
                String str6 = this.termsUrl;
                Status status = this.status;
                StringBuilder sb = new StringBuilder("Consent(consentId=");
                sb.append(num);
                sb.append(", title=");
                sb.append(str);
                sb.append(", message=");
                cj.C(sb, str2, ", positiveButton=", str3, ", negativeButton=");
                cj.C(sb, str4, ", termsLabel=", str5, ", termsUrl=");
                sb.append(str6);
                sb.append(", status=");
                sb.append(status);
                sb.append(")");
                return sb.toString();
            }

            @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0003\u0004\u0005\u0006B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0003\u0007\b\t¨\u0006\n"}, d2 = {"Lcom/sightcall/session/Reference$UseCase$Consent$Status;", "", "<init>", "()V", "Pending", "Accepted", "Refused", "Lcom/sightcall/session/Reference$UseCase$Consent$Status$Accepted;", "Lcom/sightcall/session/Reference$UseCase$Consent$Status$Pending;", "Lcom/sightcall/session/Reference$UseCase$Consent$Status$Refused;", "session_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
            public static abstract class Status {

                @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/session/Reference$UseCase$Consent$Status$Accepted;", "Lcom/sightcall/session/Reference$UseCase$Consent$Status;", "<init>", "()V", "session_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
                public static final class Accepted extends Status {
                    public static final Accepted INSTANCE = new Accepted();

                    private Accepted() {
                        super(null);
                    }
                }

                @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/session/Reference$UseCase$Consent$Status$Pending;", "Lcom/sightcall/session/Reference$UseCase$Consent$Status;", "<init>", "()V", "session_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
                public static final class Pending extends Status {
                    public static final Pending INSTANCE = new Pending();

                    private Pending() {
                        super(null);
                    }
                }

                @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/session/Reference$UseCase$Consent$Status$Refused;", "Lcom/sightcall/session/Reference$UseCase$Consent$Status;", "<init>", "()V", "session_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
                public static final class Refused extends Status {
                    public static final Refused INSTANCE = new Refused();

                    private Refused() {
                        super(null);
                    }
                }

                public /* synthetic */ Status(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Status() {
                }
            }

            public Consent(Integer num, String str, String str2, String str3, String str4, String str5, String str6, Status status) {
                status.getClass();
                this.consentId = num;
                this.title = str;
                this.message = str2;
                this.positiveButton = str3;
                this.negativeButton = str4;
                this.termsLabel = str5;
                this.termsUrl = str6;
                this.status = status;
            }
        }

        @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\b\u0010\tJ\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0005HÆ\u0003J7\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0014\u0010\u000f\u001a\u00020\u00032\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0011\u001a\u00020\u0012HÖ\u0081\u0004J\n\u0010\u0013\u001a\u00020\u0005HÖ\u0081\u0004R\u0010\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/sightcall/session/Reference$UseCase$Survey;", "", "immediate", "", "title", "", "button", "raw", "<init>", "(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "component1", "component2", "component3", "component4", "copy", "equals", "other", "hashCode", "", "toString", "session_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class Survey {
            public final String button;
            public final boolean immediate;
            public final String raw;
            public final String title;

            public /* synthetic */ Survey(boolean z, String str, String str2, String str3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
                this(z, (i2 & 2) != 0 ? null : str, (i2 & 4) != 0 ? null : str2, str3);
            }

            public static /* synthetic */ Survey copy$default(Survey survey, boolean z, String str, String str2, String str3, int i2, Object obj) {
                if ((i2 & 1) != 0) {
                    z = survey.immediate;
                }
                if ((i2 & 2) != 0) {
                    str = survey.title;
                }
                if ((i2 & 4) != 0) {
                    str2 = survey.button;
                }
                if ((i2 & 8) != 0) {
                    str3 = survey.raw;
                }
                return survey.copy(z, str, str2, str3);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final boolean getImmediate() {
                return this.immediate;
            }

            /* JADX INFO: renamed from: component2, reason: from getter */
            public final String getTitle() {
                return this.title;
            }

            /* JADX INFO: renamed from: component3, reason: from getter */
            public final String getButton() {
                return this.button;
            }

            /* JADX INFO: renamed from: component4, reason: from getter */
            public final String getRaw() {
                return this.raw;
            }

            public final Survey copy(boolean immediate, String title, String button, String raw) {
                return new Survey(immediate, title, button, raw);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof Survey)) {
                    return false;
                }
                Survey survey = (Survey) other;
                return this.immediate == survey.immediate && Intrinsics.c(this.title, survey.title) && Intrinsics.c(this.button, survey.button) && Intrinsics.c(this.raw, survey.raw);
            }

            public int hashCode() {
                int iHashCode = Boolean.hashCode(this.immediate) * 31;
                String str = this.title;
                int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
                String str2 = this.button;
                int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
                String str3 = this.raw;
                return iHashCode3 + (str3 != null ? str3.hashCode() : 0);
            }

            public String toString() {
                boolean z = this.immediate;
                String str = this.title;
                String str2 = this.button;
                String str3 = this.raw;
                StringBuilder sb = new StringBuilder("Survey(immediate=");
                sb.append(z);
                sb.append(", title=");
                sb.append(str);
                sb.append(", button=");
                return tr.l(sb, str2, ", raw=", str3, ")");
            }

            public Survey(boolean z, String str, String str2, String str3) {
                this.immediate = z;
                this.title = str;
                this.button = str2;
                this.raw = str3;
            }
        }

        @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\b!\b\u0086\b\u0018\u00002\u00020\u0001B\u009d\u0001\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0013\u0010\u0014J\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0019J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010\u001c\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0002\u0010\u001dJ\u0010\u0010\u001e\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010\u001fJ\u0011\u0010 \u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\fHÆ\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010%\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0019J\u0010\u0010&\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0019J¤\u0001\u0010'\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010(J\u0014\u0010)\u001a\u00020\u00032\b\u0010*\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010+\u001a\u00020\bHÖ\u0081\u0004J\n\u0010,\u001a\u00020\u0005HÖ\u0081\u0004R\u0014\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0015R\u0012\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0016R\u0014\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0017R\u0018\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0015R\u0014\u0010\u0012\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0015¨\u0006-"}, d2 = {"Lcom/sightcall/session/Reference$UseCase$LiveTranslation;", "", "liveTranslation", "", "captionDisplayMode", "", "captionFontSize", "captionHeight", "", "captionSentenceTimeout", "", "captionColors", "", "attendeeLanguage", "guestLanguage", "attendeeLanguageMode", "guestLanguageMode", "transcriptHistory", "liveTranslationAutoStart", "<init>", "(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "Ljava/lang/Integer;", "Ljava/lang/Long;", "component1", "()Ljava/lang/Boolean;", "component2", "component3", "component4", "()Ljava/lang/Integer;", "component5", "()Ljava/lang/Long;", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "copy", "(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/sightcall/session/Reference$UseCase$LiveTranslation;", "equals", "other", "hashCode", "toString", "session_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class LiveTranslation {
            public final String attendeeLanguage;
            public final String attendeeLanguageMode;
            public final List<String> captionColors;
            public final String captionDisplayMode;
            public final String captionFontSize;
            public final Integer captionHeight;
            public final Long captionSentenceTimeout;
            public final String guestLanguage;
            public final String guestLanguageMode;
            public final Boolean liveTranslation;
            public final Boolean liveTranslationAutoStart;
            public final Boolean transcriptHistory;

            public /* synthetic */ LiveTranslation(Boolean bool, String str, String str2, Integer num, Long l, List list, String str3, String str4, String str5, String str6, Boolean bool2, Boolean bool3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
                this((i2 & 1) != 0 ? null : bool, (i2 & 2) != 0 ? null : str, (i2 & 4) != 0 ? null : str2, (i2 & 8) != 0 ? null : num, (i2 & 16) != 0 ? null : l, (i2 & 32) != 0 ? null : list, (i2 & 64) != 0 ? null : str3, (i2 & 128) != 0 ? null : str4, (i2 & 256) != 0 ? null : str5, (i2 & 512) != 0 ? null : str6, (i2 & 1024) != 0 ? null : bool2, (i2 & 2048) != 0 ? null : bool3);
            }

            /* JADX WARN: Multi-variable type inference failed */
            public static /* synthetic */ LiveTranslation copy$default(LiveTranslation liveTranslation, Boolean bool, String str, String str2, Integer num, Long l, List list, String str3, String str4, String str5, String str6, Boolean bool2, Boolean bool3, int i2, Object obj) {
                if ((i2 & 1) != 0) {
                    bool = liveTranslation.liveTranslation;
                }
                if ((i2 & 2) != 0) {
                    str = liveTranslation.captionDisplayMode;
                }
                if ((i2 & 4) != 0) {
                    str2 = liveTranslation.captionFontSize;
                }
                if ((i2 & 8) != 0) {
                    num = liveTranslation.captionHeight;
                }
                if ((i2 & 16) != 0) {
                    l = liveTranslation.captionSentenceTimeout;
                }
                if ((i2 & 32) != 0) {
                    list = liveTranslation.captionColors;
                }
                if ((i2 & 64) != 0) {
                    str3 = liveTranslation.attendeeLanguage;
                }
                if ((i2 & 128) != 0) {
                    str4 = liveTranslation.guestLanguage;
                }
                if ((i2 & 256) != 0) {
                    str5 = liveTranslation.attendeeLanguageMode;
                }
                if ((i2 & 512) != 0) {
                    str6 = liveTranslation.guestLanguageMode;
                }
                if ((i2 & 1024) != 0) {
                    bool2 = liveTranslation.transcriptHistory;
                }
                if ((i2 & 2048) != 0) {
                    bool3 = liveTranslation.liveTranslationAutoStart;
                }
                Boolean bool4 = bool2;
                Boolean bool5 = bool3;
                String str7 = str5;
                String str8 = str6;
                String str9 = str3;
                String str10 = str4;
                Long l2 = l;
                List list2 = list;
                return liveTranslation.copy(bool, str, str2, num, l2, list2, str9, str10, str7, str8, bool4, bool5);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final Boolean getLiveTranslation() {
                return this.liveTranslation;
            }

            /* JADX INFO: renamed from: component10, reason: from getter */
            public final String getGuestLanguageMode() {
                return this.guestLanguageMode;
            }

            /* JADX INFO: renamed from: component11, reason: from getter */
            public final Boolean getTranscriptHistory() {
                return this.transcriptHistory;
            }

            /* JADX INFO: renamed from: component12, reason: from getter */
            public final Boolean getLiveTranslationAutoStart() {
                return this.liveTranslationAutoStart;
            }

            /* JADX INFO: renamed from: component2, reason: from getter */
            public final String getCaptionDisplayMode() {
                return this.captionDisplayMode;
            }

            /* JADX INFO: renamed from: component3, reason: from getter */
            public final String getCaptionFontSize() {
                return this.captionFontSize;
            }

            /* JADX INFO: renamed from: component4, reason: from getter */
            public final Integer getCaptionHeight() {
                return this.captionHeight;
            }

            /* JADX INFO: renamed from: component5, reason: from getter */
            public final Long getCaptionSentenceTimeout() {
                return this.captionSentenceTimeout;
            }

            public final List<String> component6() {
                return this.captionColors;
            }

            /* JADX INFO: renamed from: component7, reason: from getter */
            public final String getAttendeeLanguage() {
                return this.attendeeLanguage;
            }

            /* JADX INFO: renamed from: component8, reason: from getter */
            public final String getGuestLanguage() {
                return this.guestLanguage;
            }

            /* JADX INFO: renamed from: component9, reason: from getter */
            public final String getAttendeeLanguageMode() {
                return this.attendeeLanguageMode;
            }

            public final LiveTranslation copy(Boolean liveTranslation, String captionDisplayMode, String captionFontSize, Integer captionHeight, Long captionSentenceTimeout, List<String> captionColors, String attendeeLanguage, String guestLanguage, String attendeeLanguageMode, String guestLanguageMode, Boolean transcriptHistory, Boolean liveTranslationAutoStart) {
                return new LiveTranslation(liveTranslation, captionDisplayMode, captionFontSize, captionHeight, captionSentenceTimeout, captionColors, attendeeLanguage, guestLanguage, attendeeLanguageMode, guestLanguageMode, transcriptHistory, liveTranslationAutoStart);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof LiveTranslation)) {
                    return false;
                }
                LiveTranslation liveTranslation = (LiveTranslation) other;
                return Intrinsics.c(this.liveTranslation, liveTranslation.liveTranslation) && Intrinsics.c(this.captionDisplayMode, liveTranslation.captionDisplayMode) && Intrinsics.c(this.captionFontSize, liveTranslation.captionFontSize) && Intrinsics.c(this.captionHeight, liveTranslation.captionHeight) && Intrinsics.c(this.captionSentenceTimeout, liveTranslation.captionSentenceTimeout) && Intrinsics.c(this.captionColors, liveTranslation.captionColors) && Intrinsics.c(this.attendeeLanguage, liveTranslation.attendeeLanguage) && Intrinsics.c(this.guestLanguage, liveTranslation.guestLanguage) && Intrinsics.c(this.attendeeLanguageMode, liveTranslation.attendeeLanguageMode) && Intrinsics.c(this.guestLanguageMode, liveTranslation.guestLanguageMode) && Intrinsics.c(this.transcriptHistory, liveTranslation.transcriptHistory) && Intrinsics.c(this.liveTranslationAutoStart, liveTranslation.liveTranslationAutoStart);
            }

            public int hashCode() {
                Boolean bool = this.liveTranslation;
                int iHashCode = (bool == null ? 0 : bool.hashCode()) * 31;
                String str = this.captionDisplayMode;
                int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
                String str2 = this.captionFontSize;
                int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
                Integer num = this.captionHeight;
                int iHashCode4 = (iHashCode3 + (num == null ? 0 : num.hashCode())) * 31;
                Long l = this.captionSentenceTimeout;
                int iHashCode5 = (iHashCode4 + (l == null ? 0 : l.hashCode())) * 31;
                List<String> list = this.captionColors;
                int iHashCode6 = (iHashCode5 + (list == null ? 0 : list.hashCode())) * 31;
                String str3 = this.attendeeLanguage;
                int iHashCode7 = (iHashCode6 + (str3 == null ? 0 : str3.hashCode())) * 31;
                String str4 = this.guestLanguage;
                int iHashCode8 = (iHashCode7 + (str4 == null ? 0 : str4.hashCode())) * 31;
                String str5 = this.attendeeLanguageMode;
                int iHashCode9 = (iHashCode8 + (str5 == null ? 0 : str5.hashCode())) * 31;
                String str6 = this.guestLanguageMode;
                int iHashCode10 = (iHashCode9 + (str6 == null ? 0 : str6.hashCode())) * 31;
                Boolean bool2 = this.transcriptHistory;
                int iHashCode11 = (iHashCode10 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
                Boolean bool3 = this.liveTranslationAutoStart;
                return iHashCode11 + (bool3 != null ? bool3.hashCode() : 0);
            }

            public String toString() {
                Boolean bool = this.liveTranslation;
                String str = this.captionDisplayMode;
                String str2 = this.captionFontSize;
                Integer num = this.captionHeight;
                Long l = this.captionSentenceTimeout;
                List<String> list = this.captionColors;
                String str3 = this.attendeeLanguage;
                String str4 = this.guestLanguage;
                String str5 = this.attendeeLanguageMode;
                String str6 = this.guestLanguageMode;
                Boolean bool2 = this.transcriptHistory;
                Boolean bool3 = this.liveTranslationAutoStart;
                StringBuilder sb = new StringBuilder("LiveTranslation(liveTranslation=");
                sb.append(bool);
                sb.append(", captionDisplayMode=");
                sb.append(str);
                sb.append(", captionFontSize=");
                sb.append(str2);
                sb.append(", captionHeight=");
                sb.append(num);
                sb.append(", captionSentenceTimeout=");
                sb.append(l);
                sb.append(", captionColors=");
                sb.append(list);
                sb.append(", attendeeLanguage=");
                cj.C(sb, str3, ", guestLanguage=", str4, ", attendeeLanguageMode=");
                cj.C(sb, str5, ", guestLanguageMode=", str6, ", transcriptHistory=");
                sb.append(bool2);
                sb.append(", liveTranslationAutoStart=");
                sb.append(bool3);
                sb.append(")");
                return sb.toString();
            }

            public LiveTranslation(Boolean bool, String str, String str2, Integer num, Long l, List<String> list, String str3, String str4, String str5, String str6, Boolean bool2, Boolean bool3) {
                this.liveTranslation = bool;
                this.captionDisplayMode = str;
                this.captionFontSize = str2;
                this.captionHeight = num;
                this.captionSentenceTimeout = l;
                this.captionColors = list;
                this.attendeeLanguage = str3;
                this.guestLanguage = str4;
                this.attendeeLanguageMode = str5;
                this.guestLanguageMode = str6;
                this.transcriptHistory = bool2;
                this.liveTranslationAutoStart = bool3;
            }

            public LiveTranslation() {
                this(null, null, null, null, null, null, null, null, null, null, null, null, 4095, null);
            }
        }
    }

    public Reference(String str, UseCase useCase, Provider provider, Integer num, Integer num2, Integer num3, Customization customization, Long l, Long l2, AuthorizationToken authorizationToken, String str2, Boolean bool) {
        useCase.getClass();
        provider.getClass();
        customization.getClass();
        authorizationToken.getClass();
        str2.getClass();
        this.id = str;
        this.useCase = useCase;
        this.provider = provider;
        this.productId = num;
        this.locationId = num2;
        this.languageId = num3;
        this.customization = customization;
        this.acdMask = l;
        this.acdValue = l2;
        this.authorizationToken = authorizationToken;
        this.authorizationHash = str2;
        this.takeUhdPicture = bool;
    }

    public static /* synthetic */ Reference copy$default(Reference reference, String str, UseCase useCase, Provider provider, Integer num, Integer num2, Integer num3, Customization customization, Long l, Long l2, AuthorizationToken authorizationToken, String str2, Boolean bool, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = reference.id;
        }
        if ((i2 & 2) != 0) {
            useCase = reference.useCase;
        }
        if ((i2 & 4) != 0) {
            provider = reference.provider;
        }
        if ((i2 & 8) != 0) {
            num = reference.productId;
        }
        if ((i2 & 16) != 0) {
            num2 = reference.locationId;
        }
        if ((i2 & 32) != 0) {
            num3 = reference.languageId;
        }
        if ((i2 & 64) != 0) {
            customization = reference.customization;
        }
        if ((i2 & 128) != 0) {
            l = reference.acdMask;
        }
        if ((i2 & 256) != 0) {
            l2 = reference.acdValue;
        }
        if ((i2 & 512) != 0) {
            authorizationToken = reference.authorizationToken;
        }
        if ((i2 & 1024) != 0) {
            str2 = reference.authorizationHash;
        }
        if ((i2 & 2048) != 0) {
            bool = reference.takeUhdPicture;
        }
        String str3 = str2;
        Boolean bool2 = bool;
        Long l3 = l2;
        AuthorizationToken authorizationToken2 = authorizationToken;
        Customization customization2 = customization;
        Long l4 = l;
        Integer num4 = num2;
        Integer num5 = num3;
        return reference.copy(str, useCase, provider, num, num4, num5, customization2, l4, l3, authorizationToken2, str3, bool2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final AuthorizationToken getAuthorizationToken() {
        return this.authorizationToken;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final String getAuthorizationHash() {
        return this.authorizationHash;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final Boolean getTakeUhdPicture() {
        return this.takeUhdPicture;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final UseCase getUseCase() {
        return this.useCase;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Provider getProvider() {
        return this.provider;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Integer getProductId() {
        return this.productId;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Integer getLocationId() {
        return this.locationId;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final Integer getLanguageId() {
        return this.languageId;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final Customization getCustomization() {
        return this.customization;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final Long getAcdMask() {
        return this.acdMask;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final Long getAcdValue() {
        return this.acdValue;
    }

    public final Reference copy(String id, UseCase useCase, Provider provider, Integer productId, Integer locationId, Integer languageId, Customization customization, Long acdMask, Long acdValue, AuthorizationToken authorizationToken, String authorizationHash, Boolean takeUhdPicture) {
        useCase.getClass();
        provider.getClass();
        customization.getClass();
        authorizationToken.getClass();
        authorizationHash.getClass();
        return new Reference(id, useCase, provider, productId, locationId, languageId, customization, acdMask, acdValue, authorizationToken, authorizationHash, takeUhdPicture);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Reference)) {
            return false;
        }
        Reference reference = (Reference) other;
        return Intrinsics.c(this.id, reference.id) && Intrinsics.c(this.useCase, reference.useCase) && Intrinsics.c(this.provider, reference.provider) && Intrinsics.c(this.productId, reference.productId) && Intrinsics.c(this.locationId, reference.locationId) && Intrinsics.c(this.languageId, reference.languageId) && Intrinsics.c(this.customization, reference.customization) && Intrinsics.c(this.acdMask, reference.acdMask) && Intrinsics.c(this.acdValue, reference.acdValue) && Intrinsics.c(this.authorizationToken, reference.authorizationToken) && Intrinsics.c(this.authorizationHash, reference.authorizationHash) && Intrinsics.c(this.takeUhdPicture, reference.takeUhdPicture);
    }

    public int hashCode() {
        String str = this.id;
        int iHashCode = (this.provider.hashCode() + ((this.useCase.hashCode() + ((str == null ? 0 : str.hashCode()) * 31)) * 31)) * 31;
        Integer num = this.productId;
        int iHashCode2 = (iHashCode + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.locationId;
        int iHashCode3 = (iHashCode2 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.languageId;
        int iHashCode4 = (this.customization.hashCode() + ((iHashCode3 + (num3 == null ? 0 : num3.hashCode())) * 31)) * 31;
        Long l = this.acdMask;
        int iHashCode5 = (iHashCode4 + (l == null ? 0 : l.hashCode())) * 31;
        Long l2 = this.acdValue;
        int iB = fc.b((this.authorizationToken.hashCode() + ((iHashCode5 + (l2 == null ? 0 : l2.hashCode())) * 31)) * 31, 31, this.authorizationHash);
        Boolean bool = this.takeUhdPicture;
        return iB + (bool != null ? bool.hashCode() : 0);
    }

    public String toString() {
        return "Reference(id=" + this.id + ", useCase=" + this.useCase + ", provider=" + this.provider + ", productId=" + this.productId + ", locationId=" + this.locationId + ", languageId=" + this.languageId + ", customization=" + this.customization + ", acdMask=" + this.acdMask + ", acdValue=" + this.acdValue + ", authorizationToken=" + this.authorizationToken + ", authorizationHash=" + this.authorizationHash + ", takeUhdPicture=" + this.takeUhdPicture + ")";
    }

    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u000b\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000eB\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u000b\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019¨\u0006\u001a"}, d2 = {"Lcom/sightcall/session/Reference$Button;", "", "<init>", "()V", "EraseDrawing", "HangupCall", "OpenChat", "PauseCamera", "ShareMedia", "StartCamera", "StartMicro", "StartScreencast", "StartTorch", "SwitchCamera", "SwitchSpeaker", "Lcom/sightcall/session/Reference$Button$EraseDrawing;", "Lcom/sightcall/session/Reference$Button$HangupCall;", "Lcom/sightcall/session/Reference$Button$OpenChat;", "Lcom/sightcall/session/Reference$Button$PauseCamera;", "Lcom/sightcall/session/Reference$Button$ShareMedia;", "Lcom/sightcall/session/Reference$Button$StartCamera;", "Lcom/sightcall/session/Reference$Button$StartMicro;", "Lcom/sightcall/session/Reference$Button$StartScreencast;", "Lcom/sightcall/session/Reference$Button$StartTorch;", "Lcom/sightcall/session/Reference$Button$SwitchCamera;", "Lcom/sightcall/session/Reference$Button$SwitchSpeaker;", "session_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static abstract class Button {

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/session/Reference$Button$EraseDrawing;", "Lcom/sightcall/session/Reference$Button;", "<init>", "()V", "session_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class EraseDrawing extends Button {
            public static final EraseDrawing INSTANCE = new EraseDrawing();

            private EraseDrawing() {
                super(null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/session/Reference$Button$HangupCall;", "Lcom/sightcall/session/Reference$Button;", "<init>", "()V", "session_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class HangupCall extends Button {
            public static final HangupCall INSTANCE = new HangupCall();

            private HangupCall() {
                super(null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/session/Reference$Button$OpenChat;", "Lcom/sightcall/session/Reference$Button;", "<init>", "()V", "session_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class OpenChat extends Button {
            public static final OpenChat INSTANCE = new OpenChat();

            private OpenChat() {
                super(null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/session/Reference$Button$PauseCamera;", "Lcom/sightcall/session/Reference$Button;", "<init>", "()V", "session_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class PauseCamera extends Button {
            public static final PauseCamera INSTANCE = new PauseCamera();

            private PauseCamera() {
                super(null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/session/Reference$Button$ShareMedia;", "Lcom/sightcall/session/Reference$Button;", "<init>", "()V", "session_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class ShareMedia extends Button {
            public static final ShareMedia INSTANCE = new ShareMedia();

            private ShareMedia() {
                super(null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/session/Reference$Button$StartCamera;", "Lcom/sightcall/session/Reference$Button;", "<init>", "()V", "session_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class StartCamera extends Button {
            public static final StartCamera INSTANCE = new StartCamera();

            private StartCamera() {
                super(null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/session/Reference$Button$StartMicro;", "Lcom/sightcall/session/Reference$Button;", "<init>", "()V", "session_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class StartMicro extends Button {
            public static final StartMicro INSTANCE = new StartMicro();

            private StartMicro() {
                super(null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/session/Reference$Button$StartScreencast;", "Lcom/sightcall/session/Reference$Button;", "<init>", "()V", "session_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class StartScreencast extends Button {
            public static final StartScreencast INSTANCE = new StartScreencast();

            private StartScreencast() {
                super(null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/session/Reference$Button$StartTorch;", "Lcom/sightcall/session/Reference$Button;", "<init>", "()V", "session_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class StartTorch extends Button {
            public static final StartTorch INSTANCE = new StartTorch();

            private StartTorch() {
                super(null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/session/Reference$Button$SwitchCamera;", "Lcom/sightcall/session/Reference$Button;", "<init>", "()V", "session_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class SwitchCamera extends Button {
            public static final SwitchCamera INSTANCE = new SwitchCamera();

            private SwitchCamera() {
                super(null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/session/Reference$Button$SwitchSpeaker;", "Lcom/sightcall/session/Reference$Button;", "<init>", "()V", "session_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class SwitchSpeaker extends Button {
            public static final SwitchSpeaker INSTANCE = new SwitchSpeaker();

            private SwitchSpeaker() {
                super(null);
            }
        }

        public /* synthetic */ Button(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Button() {
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0003\u0004\u0005\u0006B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0003\u0007\b\t¨\u0006\n"}, d2 = {"Lcom/sightcall/session/Reference$CallDistribution;", "", "<init>", "()V", "Acd", "Direct", "Code", "Lcom/sightcall/session/Reference$CallDistribution$Acd;", "Lcom/sightcall/session/Reference$CallDistribution$Code;", "Lcom/sightcall/session/Reference$CallDistribution$Direct;", "session_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static abstract class CallDistribution {

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/session/Reference$CallDistribution$Acd;", "Lcom/sightcall/session/Reference$CallDistribution;", "<init>", "()V", "session_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Acd extends CallDistribution {
            public static final Acd INSTANCE = new Acd();

            private Acd() {
                super(null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/session/Reference$CallDistribution$Code;", "Lcom/sightcall/session/Reference$CallDistribution;", "<init>", "()V", "session_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Code extends CallDistribution {
            public static final Code INSTANCE = new Code();

            private Code() {
                super(null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/session/Reference$CallDistribution$Direct;", "Lcom/sightcall/session/Reference$CallDistribution;", "<init>", "()V", "session_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Direct extends CallDistribution {
            public static final Direct INSTANCE = new Direct();

            private Direct() {
                super(null);
            }
        }

        public /* synthetic */ CallDistribution(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private CallDistribution() {
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0002\u0006\u0007¨\u0006\b"}, d2 = {"Lcom/sightcall/session/Reference$CameraSide;", "", "<init>", "()V", "Front", "Back", "Lcom/sightcall/session/Reference$CameraSide$Back;", "Lcom/sightcall/session/Reference$CameraSide$Front;", "session_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static abstract class CameraSide {

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/session/Reference$CameraSide$Back;", "Lcom/sightcall/session/Reference$CameraSide;", "<init>", "()V", "session_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Back extends CameraSide {
            public static final Back INSTANCE = new Back();

            private Back() {
                super(null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/session/Reference$CameraSide$Front;", "Lcom/sightcall/session/Reference$CameraSide;", "<init>", "()V", "session_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Front extends CameraSide {
            public static final Front INSTANCE = new Front();

            private Front() {
                super(null);
            }
        }

        public /* synthetic */ CameraSide(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private CameraSide() {
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0002\u0006\u0007¨\u0006\b"}, d2 = {"Lcom/sightcall/session/Reference$UserRole;", "", "<init>", "()V", "Guest", "Attendee", "Lcom/sightcall/session/Reference$UserRole$Attendee;", "Lcom/sightcall/session/Reference$UserRole$Guest;", "session_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static abstract class UserRole {

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/session/Reference$UserRole$Attendee;", "Lcom/sightcall/session/Reference$UserRole;", "<init>", "()V", "session_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Attendee extends UserRole {
            public static final Attendee INSTANCE = new Attendee();

            private Attendee() {
                super(null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/session/Reference$UserRole$Guest;", "Lcom/sightcall/session/Reference$UserRole;", "<init>", "()V", "session_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Guest extends UserRole {
            public static final Guest INSTANCE = new Guest();

            private Guest() {
                super(null);
            }
        }

        public /* synthetic */ UserRole(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private UserRole() {
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0002\u0006\u0007¨\u0006\b"}, d2 = {"Lcom/sightcall/session/Reference$VideoProfile;", "", "<init>", "()V", "Sd", "Md", "Lcom/sightcall/session/Reference$VideoProfile$Md;", "Lcom/sightcall/session/Reference$VideoProfile$Sd;", "session_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static abstract class VideoProfile {

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/session/Reference$VideoProfile$Md;", "Lcom/sightcall/session/Reference$VideoProfile;", "<init>", "()V", "session_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Md extends VideoProfile {
            public static final Md INSTANCE = new Md();

            private Md() {
                super(null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/session/Reference$VideoProfile$Sd;", "Lcom/sightcall/session/Reference$VideoProfile;", "<init>", "()V", "session_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Sd extends VideoProfile {
            public static final Sd INSTANCE = new Sd();

            private Sd() {
                super(null);
            }
        }

        public /* synthetic */ VideoProfile(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private VideoProfile() {
        }
    }
}
