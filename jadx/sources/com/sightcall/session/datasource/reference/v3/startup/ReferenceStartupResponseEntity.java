package com.sightcall.session.datasource.reference.v3.startup;

import com.batch.android.s.b;
import com.batch.android.v0.l;
import com.google.gson.annotations.SerializedName;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.sightcall.session.datasource.reference.v3.CallDistribution;
import com.sightcall.session.datasource.reference.v3.CustomizationName;
import com.sightcall.session.datasource.reference.v3.Role;
import com.sightcall.session.datasource.reference.v3.StartupCameraSide;
import com.sightcall.session.datasource.reference.v3.StartupVideoProfile;
import com.sightcall.session.datasource.reference.v3.SurveyMode;
import com.sightcall.session.datasource.reference.v3.UserRole;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import defpackage.o60;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0080\b\u0018\u00002\u00020\u0001:\u0001\u0011B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\r\u001a\u00020\u000eHÖ\u0081\u0004J\n\u0010\u000f\u001a\u00020\u0010HÖ\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity;", "", DbParams.KEY_DATA, "Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data;", "<init>", "(Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data;)V", "getData", "()Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "Data", "session_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ReferenceStartupResponseEntity {

    @SerializedName(DbParams.KEY_DATA)
    private final Data data;

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0018B#\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0006HÆ\u0003J+\u0010\u0011\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0014\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0015\u001a\u00020\u0016HÖ\u0081\u0004J\n\u0010\u0017\u001a\u00020\u0003HÖ\u0081\u0004R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u0019"}, d2 = {"Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data;", "", "type", "", b.a.f24015b, l.f24145h, "Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;)V", "getType", "()Ljava/lang/String;", "getId", "getAttributes", "()Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "Attributes", "session_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Data {

        @SerializedName(l.f24145h)
        private final Attributes attributes;

        @SerializedName(b.a.f24015b)
        private final String id;

        @SerializedName("type")
        private final String type;

        @Metadata(d1 = {"\u0000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u0007\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0003\b\u009e\u0001\b\u0086\b\u0018\u00002\u00020\u0001:\u0004é\u0001ê\u0001B¥\u0005\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\f\u001a\u00020\u0006\u0012\u0006\u0010\r\u001a\u00020\u0006\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\u000e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0011\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u000f\u0012\u0006\u0010\u0016\u001a\u00020\u0006\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u000f\u0012\b\u0010\u0019\u001a\u0004\u0018\u00010\u000f\u0012\b\u0010\u001a\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u001b\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u001c\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u001d\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u001e\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u001f\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010 \u001a\u0004\u0018\u00010\u000f\u0012\b\u0010!\u001a\u0004\u0018\u00010\u0006\u0012\u000e\u0010\"\u001a\n\u0012\u0004\u0012\u00020#\u0018\u00010\u0011\u0012\b\u0010$\u001a\u0004\u0018\u00010\u0006\u0012\u000e\u0010%\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0011\u0012\b\u0010&\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010'\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010(\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010)\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010*\u001a\u0004\u0018\u00010\u000f\u0012\b\u0010+\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010,\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010-\u001a\u0004\u0018\u00010\u000f\u0012\b\u0010.\u001a\u0004\u0018\u00010\u000f\u0012\b\u0010/\u001a\u0004\u0018\u00010\u0006\u0012\b\u00100\u001a\u0004\u0018\u00010\u000f\u0012\b\u00101\u001a\u0004\u0018\u00010\u0006\u0012\b\u00102\u001a\u0004\u0018\u000103\u0012\b\u00104\u001a\u0004\u0018\u000103\u0012\b\u00105\u001a\u0004\u0018\u00010\u0006\u0012\b\u00106\u001a\u0004\u0018\u00010\u0003\u0012\b\u00107\u001a\u0004\u0018\u00010\u0006\u0012\b\u00108\u001a\u0004\u0018\u00010\u0006\u0012\b\u00109\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010:\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010;\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010<\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010=\u001a\u0004\u0018\u00010\u000f\u0012\b\u0010>\u001a\u0004\u0018\u00010?\u0012\b\u0010@\u001a\u0004\u0018\u00010\u000f\u0012\b\u0010A\u001a\u0004\u0018\u00010\u000f\u0012\b\u0010B\u001a\u0004\u0018\u00010\u000f\u0012\b\u0010C\u001a\u0004\u0018\u00010D\u0012\b\u0010E\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010F\u001a\u0004\u0018\u00010G\u0012\b\u0010H\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010I\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010J\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010K\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010L\u001a\u00020M\u0012\b\u0010N\u001a\u0004\u0018\u00010\u000f\u0012\b\u0010O\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\bP\u0010QJ\u0011\u0010¡\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010SJ\u0011\u0010¢\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010SJ\f\u0010£\u0001\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u0011\u0010¤\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010SJ\f\u0010¥\u0001\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\f\u0010¦\u0001\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\f\u0010§\u0001\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\f\u0010¨\u0001\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\n\u0010©\u0001\u001a\u00020\u0006HÆ\u0003J\n\u0010ª\u0001\u001a\u00020\u0006HÆ\u0003J\u0011\u0010«\u0001\u001a\u0004\u0018\u00010\u000fHÆ\u0003¢\u0006\u0002\u0010`J\u0012\u0010¬\u0001\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0011HÆ\u0003J\f\u0010\u00ad\u0001\u001a\u0004\u0018\u00010\u0014HÆ\u0003J\u0011\u0010®\u0001\u001a\u0004\u0018\u00010\u000fHÆ\u0003¢\u0006\u0002\u0010`J\n\u0010¯\u0001\u001a\u00020\u0006HÆ\u0003J\u0011\u0010°\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010SJ\u0011\u0010±\u0001\u001a\u0004\u0018\u00010\u000fHÆ\u0003¢\u0006\u0002\u0010`J\u0011\u0010²\u0001\u001a\u0004\u0018\u00010\u000fHÆ\u0003¢\u0006\u0002\u0010`J\u0011\u0010³\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010SJ\f\u0010´\u0001\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\f\u0010µ\u0001\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\f\u0010¶\u0001\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\f\u0010·\u0001\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\f\u0010¸\u0001\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u0011\u0010¹\u0001\u001a\u0004\u0018\u00010\u000fHÆ\u0003¢\u0006\u0002\u0010`J\f\u0010º\u0001\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u0012\u0010»\u0001\u001a\n\u0012\u0004\u0012\u00020#\u0018\u00010\u0011HÆ\u0003J\f\u0010¼\u0001\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u0012\u0010½\u0001\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0011HÆ\u0003J\f\u0010¾\u0001\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\f\u0010¿\u0001\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u0011\u0010À\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010SJ\u0011\u0010Á\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010SJ\u0011\u0010Â\u0001\u001a\u0004\u0018\u00010\u000fHÆ\u0003¢\u0006\u0002\u0010`J\f\u0010Ã\u0001\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\f\u0010Ä\u0001\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u0011\u0010Å\u0001\u001a\u0004\u0018\u00010\u000fHÆ\u0003¢\u0006\u0002\u0010`J\u0011\u0010Æ\u0001\u001a\u0004\u0018\u00010\u000fHÆ\u0003¢\u0006\u0002\u0010`J\f\u0010Ç\u0001\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u0011\u0010È\u0001\u001a\u0004\u0018\u00010\u000fHÆ\u0003¢\u0006\u0002\u0010`J\f\u0010É\u0001\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u0012\u0010Ê\u0001\u001a\u0004\u0018\u000103HÆ\u0003¢\u0006\u0003\u0010\u0083\u0001J\u0012\u0010Ë\u0001\u001a\u0004\u0018\u000103HÆ\u0003¢\u0006\u0003\u0010\u0083\u0001J\f\u0010Ì\u0001\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u0011\u0010Í\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010SJ\f\u0010Î\u0001\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\f\u0010Ï\u0001\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\f\u0010Ð\u0001\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\f\u0010Ñ\u0001\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\f\u0010Ò\u0001\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\f\u0010Ó\u0001\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u0011\u0010Ô\u0001\u001a\u0004\u0018\u00010\u000fHÆ\u0003¢\u0006\u0002\u0010`J\f\u0010Õ\u0001\u001a\u0004\u0018\u00010?HÆ\u0003J\u0011\u0010Ö\u0001\u001a\u0004\u0018\u00010\u000fHÆ\u0003¢\u0006\u0002\u0010`J\u0011\u0010×\u0001\u001a\u0004\u0018\u00010\u000fHÆ\u0003¢\u0006\u0002\u0010`J\u0011\u0010Ø\u0001\u001a\u0004\u0018\u00010\u000fHÆ\u0003¢\u0006\u0002\u0010`J\f\u0010Ù\u0001\u001a\u0004\u0018\u00010DHÆ\u0003J\f\u0010Ú\u0001\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\f\u0010Û\u0001\u001a\u0004\u0018\u00010GHÆ\u0003J\f\u0010Ü\u0001\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\f\u0010Ý\u0001\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u0011\u0010Þ\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010SJ\f\u0010ß\u0001\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\n\u0010à\u0001\u001a\u00020MHÆ\u0003J\u0011\u0010á\u0001\u001a\u0004\u0018\u00010\u000fHÆ\u0003¢\u0006\u0002\u0010`J\u0011\u0010â\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010SJ²\u0006\u0010ã\u0001\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\f\u001a\u00020\u00062\b\b\u0002\u0010\r\u001a\u00020\u00062\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0010\b\u0002\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u00112\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u000f2\b\b\u0002\u0010\u0016\u001a\u00020\u00062\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u00062\u0010\b\u0002\u0010\"\u001a\n\u0012\u0004\u0012\u00020#\u0018\u00010\u00112\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\u00062\u0010\b\u0002\u0010%\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00112\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010'\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010(\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010)\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010*\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010+\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010,\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010-\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010.\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010/\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u00100\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u00101\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u00102\u001a\u0004\u0018\u0001032\n\b\u0002\u00104\u001a\u0004\u0018\u0001032\n\b\u0002\u00105\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u00106\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u00107\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u00108\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u00109\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010:\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010;\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010<\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010=\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010>\u001a\u0004\u0018\u00010?2\n\b\u0002\u0010@\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010A\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010B\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010C\u001a\u0004\u0018\u00010D2\n\b\u0002\u0010E\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010F\u001a\u0004\u0018\u00010G2\n\b\u0002\u0010H\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010I\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010J\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010K\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010L\u001a\u00020M2\n\b\u0002\u0010N\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010O\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0003\u0010ä\u0001J\u0016\u0010å\u0001\u001a\u00020\u000f2\t\u0010æ\u0001\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\u000b\u0010ç\u0001\u001a\u00020\u0003HÖ\u0081\u0004J\u000b\u0010è\u0001\u001a\u00020\u0006HÖ\u0081\u0004R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010T\u001a\u0004\bR\u0010SR\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010T\u001a\u0004\bU\u0010SR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bV\u0010WR\u001a\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010T\u001a\u0004\bX\u0010SR\u0018\u0010\b\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bY\u0010WR\u0018\u0010\t\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bZ\u0010WR\u0018\u0010\n\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b[\u0010WR\u0018\u0010\u000b\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\\\u0010WR\u0016\u0010\f\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b]\u0010WR\u0016\u0010\r\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b^\u0010WR\u001a\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010a\u001a\u0004\b_\u0010`R\u001e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u00118\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bb\u0010cR\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00148\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bd\u0010eR\u001a\u0010\u0015\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010a\u001a\u0004\bf\u0010`R\u0016\u0010\u0016\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bg\u0010WR\u001a\u0010\u0017\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010T\u001a\u0004\bh\u0010SR\u001a\u0010\u0018\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010a\u001a\u0004\bi\u0010`R\u001a\u0010\u0019\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010a\u001a\u0004\bj\u0010`R\u001a\u0010\u001a\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010T\u001a\u0004\bk\u0010SR\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bl\u0010WR\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bm\u0010WR\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bn\u0010WR\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bo\u0010WR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bp\u0010WR\u001a\u0010 \u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010a\u001a\u0004\bq\u0010`R\u0018\u0010!\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\br\u0010WR\u001e\u0010\"\u001a\n\u0012\u0004\u0012\u00020#\u0018\u00010\u00118\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bs\u0010cR\u0018\u0010$\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bt\u0010WR\u001e\u0010%\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00118\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bu\u0010cR\u0018\u0010&\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bv\u0010WR\u0018\u0010'\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bw\u0010WR\u001a\u0010(\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010T\u001a\u0004\bx\u0010SR\u001a\u0010)\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010T\u001a\u0004\by\u0010SR\u001a\u0010*\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010a\u001a\u0004\bz\u0010`R\u0018\u0010+\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b{\u0010WR\u0018\u0010,\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b|\u0010WR\u001a\u0010-\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010a\u001a\u0004\b}\u0010`R\u001a\u0010.\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010a\u001a\u0004\b~\u0010`R\u0018\u0010/\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u007f\u0010WR\u001b\u00100\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\u000b\n\u0002\u0010a\u001a\u0005\b\u0080\u0001\u0010`R\u0019\u00101\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\t\n\u0000\u001a\u0005\b\u0081\u0001\u0010WR\u001d\u00102\u001a\u0004\u0018\u0001038\u0006X\u0087\u0004¢\u0006\r\n\u0003\u0010\u0084\u0001\u001a\u0006\b\u0082\u0001\u0010\u0083\u0001R\u001d\u00104\u001a\u0004\u0018\u0001038\u0006X\u0087\u0004¢\u0006\r\n\u0003\u0010\u0084\u0001\u001a\u0006\b\u0085\u0001\u0010\u0083\u0001R\u0019\u00105\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\t\n\u0000\u001a\u0005\b\u0086\u0001\u0010WR\u001b\u00106\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000b\n\u0002\u0010T\u001a\u0005\b\u0087\u0001\u0010SR\u0019\u00107\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\t\n\u0000\u001a\u0005\b\u0088\u0001\u0010WR\u0019\u00108\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\t\n\u0000\u001a\u0005\b\u0089\u0001\u0010WR\u0019\u00109\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\t\n\u0000\u001a\u0005\b\u008a\u0001\u0010WR\u0019\u0010:\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\t\n\u0000\u001a\u0005\b\u008b\u0001\u0010WR\u0019\u0010;\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\t\n\u0000\u001a\u0005\b\u008c\u0001\u0010WR\u0019\u0010<\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\t\n\u0000\u001a\u0005\b\u008d\u0001\u0010WR\u001b\u0010=\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\u000b\n\u0002\u0010a\u001a\u0005\b\u008e\u0001\u0010`R\u001a\u0010>\u001a\u0004\u0018\u00010?8\u0006X\u0087\u0004¢\u0006\n\n\u0000\u001a\u0006\b\u008f\u0001\u0010\u0090\u0001R\u001b\u0010@\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\u000b\n\u0002\u0010a\u001a\u0005\b\u0091\u0001\u0010`R\u001b\u0010A\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\u000b\n\u0002\u0010a\u001a\u0005\b\u0092\u0001\u0010`R\u001b\u0010B\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\u000b\n\u0002\u0010a\u001a\u0005\b\u0093\u0001\u0010`R\u001a\u0010C\u001a\u0004\u0018\u00010D8\u0006X\u0087\u0004¢\u0006\n\n\u0000\u001a\u0006\b\u0094\u0001\u0010\u0095\u0001R\u0019\u0010E\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\t\n\u0000\u001a\u0005\b\u0096\u0001\u0010WR\u001a\u0010F\u001a\u0004\u0018\u00010G8\u0006X\u0087\u0004¢\u0006\n\n\u0000\u001a\u0006\b\u0097\u0001\u0010\u0098\u0001R\u0019\u0010H\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\t\n\u0000\u001a\u0005\b\u0099\u0001\u0010WR\u0019\u0010I\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\t\n\u0000\u001a\u0005\b\u009a\u0001\u0010WR\u001b\u0010J\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000b\n\u0002\u0010T\u001a\u0005\b\u009b\u0001\u0010SR\u0019\u0010K\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\t\n\u0000\u001a\u0005\b\u009c\u0001\u0010WR\u0018\u0010L\u001a\u00020M8\u0006X\u0087\u0004¢\u0006\n\n\u0000\u001a\u0006\b\u009d\u0001\u0010\u009e\u0001R\u001b\u0010N\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\u000b\n\u0002\u0010a\u001a\u0005\b\u009f\u0001\u0010`R\u001b\u0010O\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000b\n\u0002\u0010T\u001a\u0005\b \u0001\u0010S¨\u0006ë\u0001"}, d2 = {"Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;", "", "acdLanguageId", "", "acdLocationId", "acdMask", "", "acdProductId", "acdValue", "analyticsUploadToken", "analyticsUploadUrl", "annotationsUrl", "authorizationHash", "authorizationToken", "barAlwaysVisible", "", "barButtons", "", "Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes$BarButton;", "callDistribution", "Lcom/sightcall/session/datasource/reference/v3/CallDistribution;", "cameraWhileShareOut", "caseReportId", "chatNotificationDisplayTimeout", "chatQuickBar", "chatTranscript", "consentId", "consentAcceptLabel", "consentDeclineLabel", "consentDescription", "consentEulaLabel", "consentEulaLink", "consentRequired", "consentTitle", "customizations", "Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes$Customization;", "displayNameMode", "liveTranslationCaptionColors", "liveTranslationCaptionDisplayMode", "liveTranslationCaptionFontSize", "liveTranslationCaptionHeight", "liveTranslationCaptionSentenceTimeout", "liveTranslationEnabled", "liveTranslationLanguageMode", "liveTranslationLanguageValue", "liveTranslationTranscript", "liveTranslationAutoStart", "noteOnPictureAcceptLabel", "noteOnPictureSignature", "noteOnPictureTitle", "ocrCollimatorRatio", "", "ocrSafeArea", "reference", "rtccDeadParty", "rtccAppId", "rtccDisplayName", "rtccEnv", "rtccHap", "rtccJwtAuth", "rtccMpi", "startupCamera", "startupCameraSide", "Lcom/sightcall/session/datasource/reference/v3/StartupCameraSide;", "startupCameraUsb", "startupMicro", "startupPointer", "startupVideoProfile", "Lcom/sightcall/session/datasource/reference/v3/StartupVideoProfile;", "surveyLinkLabel", "surveyMode", "Lcom/sightcall/session/datasource/reference/v3/SurveyMode;", "surveyTitle", "surveyUrl", "useCaseId", "useCaseName", "userRole", "Lcom/sightcall/session/datasource/reference/v3/UserRole;", "takeUhdPicture", "acdRequestTimeout", "<init>", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;Lcom/sightcall/session/datasource/reference/v3/CallDistribution;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/sightcall/session/datasource/reference/v3/StartupCameraSide;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/sightcall/session/datasource/reference/v3/StartupVideoProfile;Ljava/lang/String;Lcom/sightcall/session/datasource/reference/v3/SurveyMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lcom/sightcall/session/datasource/reference/v3/UserRole;Ljava/lang/Boolean;Ljava/lang/Integer;)V", "getAcdLanguageId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getAcdLocationId", "getAcdMask", "()Ljava/lang/String;", "getAcdProductId", "getAcdValue", "getAnalyticsUploadToken", "getAnalyticsUploadUrl", "getAnnotationsUrl", "getAuthorizationHash", "getAuthorizationToken", "getBarAlwaysVisible", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getBarButtons", "()Ljava/util/List;", "getCallDistribution", "()Lcom/sightcall/session/datasource/reference/v3/CallDistribution;", "getCameraWhileShareOut", "getCaseReportId", "getChatNotificationDisplayTimeout", "getChatQuickBar", "getChatTranscript", "getConsentId", "getConsentAcceptLabel", "getConsentDeclineLabel", "getConsentDescription", "getConsentEulaLabel", "getConsentEulaLink", "getConsentRequired", "getConsentTitle", "getCustomizations", "getDisplayNameMode", "getLiveTranslationCaptionColors", "getLiveTranslationCaptionDisplayMode", "getLiveTranslationCaptionFontSize", "getLiveTranslationCaptionHeight", "getLiveTranslationCaptionSentenceTimeout", "getLiveTranslationEnabled", "getLiveTranslationLanguageMode", "getLiveTranslationLanguageValue", "getLiveTranslationTranscript", "getLiveTranslationAutoStart", "getNoteOnPictureAcceptLabel", "getNoteOnPictureSignature", "getNoteOnPictureTitle", "getOcrCollimatorRatio", "()Ljava/lang/Float;", "Ljava/lang/Float;", "getOcrSafeArea", "getReference", "getRtccDeadParty", "getRtccAppId", "getRtccDisplayName", "getRtccEnv", "getRtccHap", "getRtccJwtAuth", "getRtccMpi", "getStartupCamera", "getStartupCameraSide", "()Lcom/sightcall/session/datasource/reference/v3/StartupCameraSide;", "getStartupCameraUsb", "getStartupMicro", "getStartupPointer", "getStartupVideoProfile", "()Lcom/sightcall/session/datasource/reference/v3/StartupVideoProfile;", "getSurveyLinkLabel", "getSurveyMode", "()Lcom/sightcall/session/datasource/reference/v3/SurveyMode;", "getSurveyTitle", "getSurveyUrl", "getUseCaseId", "getUseCaseName", "getUserRole", "()Lcom/sightcall/session/datasource/reference/v3/UserRole;", "getTakeUhdPicture", "getAcdRequestTimeout", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component20", "component21", "component22", "component23", "component24", "component25", "component26", "component27", "component28", "component29", "component30", "component31", "component32", "component33", "component34", "component35", "component36", "component37", "component38", "component39", "component40", "component41", "component42", "component43", "component44", "component45", "component46", "component47", "component48", "component49", "component50", "component51", "component52", "component53", "component54", "component55", "component56", "component57", "component58", "component59", "component60", "component61", "component62", "component63", "component64", "component65", "component66", "copy", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;Lcom/sightcall/session/datasource/reference/v3/CallDistribution;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/sightcall/session/datasource/reference/v3/StartupCameraSide;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/sightcall/session/datasource/reference/v3/StartupVideoProfile;Ljava/lang/String;Lcom/sightcall/session/datasource/reference/v3/SurveyMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lcom/sightcall/session/datasource/reference/v3/UserRole;Ljava/lang/Boolean;Ljava/lang/Integer;)Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;", "equals", "other", "hashCode", "toString", "BarButton", "Customization", "session_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class Attributes {

            @SerializedName("acdLanguageId")
            private final Integer acdLanguageId;

            @SerializedName("acdLocationId")
            private final Integer acdLocationId;

            @SerializedName("acdMask")
            private final String acdMask;

            @SerializedName("acdProductId")
            private final Integer acdProductId;

            @SerializedName("acdRequestTimeout")
            private final Integer acdRequestTimeout;

            @SerializedName("acdValue")
            private final String acdValue;

            @SerializedName("analyticsUploadToken")
            private final String analyticsUploadToken;

            @SerializedName("analyticsUploadUrl")
            private final String analyticsUploadUrl;

            @SerializedName("annotationsUrl")
            private final String annotationsUrl;

            @SerializedName("authorizationHash")
            private final String authorizationHash;

            @SerializedName("authorizationToken")
            private final String authorizationToken;

            @SerializedName("barAlwaysVisible")
            private final Boolean barAlwaysVisible;

            @SerializedName("barButtons")
            private final List<BarButton> barButtons;

            @SerializedName("callDistribution")
            private final CallDistribution callDistribution;

            @SerializedName("cameraWhileShareOut")
            private final Boolean cameraWhileShareOut;

            @SerializedName("caseReportId")
            private final String caseReportId;

            @SerializedName("chatNotificationDisplayTimeout")
            private final Integer chatNotificationDisplayTimeout;

            @SerializedName("chatQuickbar")
            private final Boolean chatQuickBar;

            @SerializedName("chatTranscript")
            private final Boolean chatTranscript;

            @SerializedName("consentAcceptLabel")
            private final String consentAcceptLabel;

            @SerializedName("consentDeclineLabel")
            private final String consentDeclineLabel;

            @SerializedName("consentDescription")
            private final String consentDescription;

            @SerializedName("consentEulaLabel")
            private final String consentEulaLabel;

            @SerializedName("consentEulaLink")
            private final String consentEulaLink;

            @SerializedName("consentId")
            private final Integer consentId;

            @SerializedName("consentRequired")
            private final Boolean consentRequired;

            @SerializedName("consentTitle")
            private final String consentTitle;

            @SerializedName("customizations")
            private final List<Customization> customizations;

            @SerializedName("displayNameMode")
            private final String displayNameMode;

            @SerializedName("liveTranslationAutoStart")
            private final Boolean liveTranslationAutoStart;

            @SerializedName("liveTranslationCaptionColors")
            private final List<String> liveTranslationCaptionColors;

            @SerializedName("liveTranslationCaptionDisplayMode")
            private final String liveTranslationCaptionDisplayMode;

            @SerializedName("liveTranslationCaptionFontSize")
            private final String liveTranslationCaptionFontSize;

            @SerializedName("liveTranslationCaptionHeight")
            private final Integer liveTranslationCaptionHeight;

            @SerializedName("liveTranslationCaptionSentenceTimeout")
            private final Integer liveTranslationCaptionSentenceTimeout;

            @SerializedName("liveTranslationEnabled")
            private final Boolean liveTranslationEnabled;

            @SerializedName("liveTranslationLanguageMode")
            private final String liveTranslationLanguageMode;

            @SerializedName("liveTranslationLanguageValue")
            private final String liveTranslationLanguageValue;

            @SerializedName("liveTranslationTranscript")
            private final Boolean liveTranslationTranscript;

            @SerializedName("noteOnPictureAcceptLabel")
            private final String noteOnPictureAcceptLabel;

            @SerializedName("noteOnPictureSignature")
            private final Boolean noteOnPictureSignature;

            @SerializedName("noteOnPictureTitle")
            private final String noteOnPictureTitle;

            @SerializedName("ocrCollimatorRatio")
            private final Float ocrCollimatorRatio;

            @SerializedName("ocrSafeArea")
            private final Float ocrSafeArea;

            @SerializedName("reference")
            private final String reference;

            @SerializedName("rtccAppId")
            private final String rtccAppId;

            @SerializedName("rtccDeadParty")
            private final Integer rtccDeadParty;

            @SerializedName("rtccDisplayName")
            private final String rtccDisplayName;

            @SerializedName("rtccEnv")
            private final String rtccEnv;

            @SerializedName("rtccHap")
            private final String rtccHap;

            @SerializedName("rtccJwtauth")
            private final String rtccJwtAuth;

            @SerializedName("rtccMpi")
            private final String rtccMpi;

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

            @SerializedName("surveyLinkLabel")
            private final String surveyLinkLabel;

            @SerializedName("surveyMode")
            private final SurveyMode surveyMode;

            @SerializedName("surveyTitle")
            private final String surveyTitle;

            @SerializedName("surveyUrl")
            private final String surveyUrl;

            @SerializedName("takeUhdPicture")
            private final Boolean takeUhdPicture;

            @SerializedName("usecaseId")
            private final Integer useCaseId;

            @SerializedName("usecaseName")
            private final String useCaseName;

            @SerializedName("userRole")
            private final UserRole userRole;

            @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\r\u001a\u00020\u000eHÖ\u0081\u0004J\n\u0010\u000f\u001a\u00020\u0010HÖ\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes$BarButton;", "", "role", "Lcom/sightcall/session/datasource/reference/v3/Role;", "<init>", "(Lcom/sightcall/session/datasource/reference/v3/Role;)V", "getRole", "()Lcom/sightcall/session/datasource/reference/v3/Role;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "session_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
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

            @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0014\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0012\u001a\u00020\u0013HÖ\u0081\u0004J\n\u0010\u0014\u001a\u00020\u0005HÖ\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0015"}, d2 = {"Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes$Customization;", "", "name", "Lcom/sightcall/session/datasource/reference/v3/CustomizationName;", "value", "", "<init>", "(Lcom/sightcall/session/datasource/reference/v3/CustomizationName;Ljava/lang/String;)V", "getName", "()Lcom/sightcall/session/datasource/reference/v3/CustomizationName;", "getValue", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "session_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
            public static final /* data */ class Customization {

                @SerializedName("name")
                private final CustomizationName name;

                @SerializedName("value")
                private final String value;

                public Customization(CustomizationName customizationName, String str) {
                    customizationName.getClass();
                    str.getClass();
                    this.name = customizationName;
                    this.value = str;
                }

                public static /* synthetic */ Customization copy$default(Customization customization, CustomizationName customizationName, String str, int i2, Object obj) {
                    if ((i2 & 1) != 0) {
                        customizationName = customization.name;
                    }
                    if ((i2 & 2) != 0) {
                        str = customization.value;
                    }
                    return customization.copy(customizationName, str);
                }

                /* JADX INFO: renamed from: component1, reason: from getter */
                public final CustomizationName getName() {
                    return this.name;
                }

                /* JADX INFO: renamed from: component2, reason: from getter */
                public final String getValue() {
                    return this.value;
                }

                public final Customization copy(CustomizationName name, String value) {
                    name.getClass();
                    value.getClass();
                    return new Customization(name, value);
                }

                public boolean equals(Object other) {
                    if (this == other) {
                        return true;
                    }
                    if (!(other instanceof Customization)) {
                        return false;
                    }
                    Customization customization = (Customization) other;
                    return this.name == customization.name && Intrinsics.c(this.value, customization.value);
                }

                public final CustomizationName getName() {
                    return this.name;
                }

                public final String getValue() {
                    return this.value;
                }

                public int hashCode() {
                    return this.value.hashCode() + (this.name.hashCode() * 31);
                }

                public String toString() {
                    return "Customization(name=" + this.name + ", value=" + this.value + ")";
                }
            }

            public Attributes(Integer num, Integer num2, String str, Integer num3, String str2, String str3, String str4, String str5, String str6, String str7, Boolean bool, List<BarButton> list, CallDistribution callDistribution, Boolean bool2, String str8, Integer num4, Boolean bool3, Boolean bool4, Integer num5, String str9, String str10, String str11, String str12, String str13, Boolean bool5, String str14, List<Customization> list2, String str15, List<String> list3, String str16, String str17, Integer num6, Integer num7, Boolean bool6, String str18, String str19, Boolean bool7, Boolean bool8, String str20, Boolean bool9, String str21, Float f2, Float f3, String str22, Integer num8, String str23, String str24, String str25, String str26, String str27, String str28, Boolean bool10, StartupCameraSide startupCameraSide, Boolean bool11, Boolean bool12, Boolean bool13, StartupVideoProfile startupVideoProfile, String str29, SurveyMode surveyMode, String str30, String str31, Integer num9, String str32, UserRole userRole, Boolean bool14, Integer num10) {
                str6.getClass();
                str7.getClass();
                str8.getClass();
                userRole.getClass();
                this.acdLanguageId = num;
                this.acdLocationId = num2;
                this.acdMask = str;
                this.acdProductId = num3;
                this.acdValue = str2;
                this.analyticsUploadToken = str3;
                this.analyticsUploadUrl = str4;
                this.annotationsUrl = str5;
                this.authorizationHash = str6;
                this.authorizationToken = str7;
                this.barAlwaysVisible = bool;
                this.barButtons = list;
                this.callDistribution = callDistribution;
                this.cameraWhileShareOut = bool2;
                this.caseReportId = str8;
                this.chatNotificationDisplayTimeout = num4;
                this.chatQuickBar = bool3;
                this.chatTranscript = bool4;
                this.consentId = num5;
                this.consentAcceptLabel = str9;
                this.consentDeclineLabel = str10;
                this.consentDescription = str11;
                this.consentEulaLabel = str12;
                this.consentEulaLink = str13;
                this.consentRequired = bool5;
                this.consentTitle = str14;
                this.customizations = list2;
                this.displayNameMode = str15;
                this.liveTranslationCaptionColors = list3;
                this.liveTranslationCaptionDisplayMode = str16;
                this.liveTranslationCaptionFontSize = str17;
                this.liveTranslationCaptionHeight = num6;
                this.liveTranslationCaptionSentenceTimeout = num7;
                this.liveTranslationEnabled = bool6;
                this.liveTranslationLanguageMode = str18;
                this.liveTranslationLanguageValue = str19;
                this.liveTranslationTranscript = bool7;
                this.liveTranslationAutoStart = bool8;
                this.noteOnPictureAcceptLabel = str20;
                this.noteOnPictureSignature = bool9;
                this.noteOnPictureTitle = str21;
                this.ocrCollimatorRatio = f2;
                this.ocrSafeArea = f3;
                this.reference = str22;
                this.rtccDeadParty = num8;
                this.rtccAppId = str23;
                this.rtccDisplayName = str24;
                this.rtccEnv = str25;
                this.rtccHap = str26;
                this.rtccJwtAuth = str27;
                this.rtccMpi = str28;
                this.startupCamera = bool10;
                this.startupCameraSide = startupCameraSide;
                this.startupCameraUsb = bool11;
                this.startupMicro = bool12;
                this.startupPointer = bool13;
                this.startupVideoProfile = startupVideoProfile;
                this.surveyLinkLabel = str29;
                this.surveyMode = surveyMode;
                this.surveyTitle = str30;
                this.surveyUrl = str31;
                this.useCaseId = num9;
                this.useCaseName = str32;
                this.userRole = userRole;
                this.takeUhdPicture = bool14;
                this.acdRequestTimeout = num10;
            }

            /* JADX WARN: Multi-variable type inference failed */
            public static /* synthetic */ Attributes copy$default(Attributes attributes, Integer num, Integer num2, String str, Integer num3, String str2, String str3, String str4, String str5, String str6, String str7, Boolean bool, List list, CallDistribution callDistribution, Boolean bool2, String str8, Integer num4, Boolean bool3, Boolean bool4, Integer num5, String str9, String str10, String str11, String str12, String str13, Boolean bool5, String str14, List list2, String str15, List list3, String str16, String str17, Integer num6, Integer num7, Boolean bool6, String str18, String str19, Boolean bool7, Boolean bool8, String str20, Boolean bool9, String str21, Float f2, Float f3, String str22, Integer num8, String str23, String str24, String str25, String str26, String str27, String str28, Boolean bool10, StartupCameraSide startupCameraSide, Boolean bool11, Boolean bool12, Boolean bool13, StartupVideoProfile startupVideoProfile, String str29, SurveyMode surveyMode, String str30, String str31, Integer num9, String str32, UserRole userRole, Boolean bool14, Integer num10, int i2, int i3, int i4, Object obj) {
                Integer num11;
                Boolean bool15;
                Integer num12 = (i2 & 1) != 0 ? attributes.acdLanguageId : num;
                Integer num13 = (i2 & 2) != 0 ? attributes.acdLocationId : num2;
                String str33 = (i2 & 4) != 0 ? attributes.acdMask : str;
                Integer num14 = (i2 & 8) != 0 ? attributes.acdProductId : num3;
                String str34 = (i2 & 16) != 0 ? attributes.acdValue : str2;
                String str35 = (i2 & 32) != 0 ? attributes.analyticsUploadToken : str3;
                String str36 = (i2 & 64) != 0 ? attributes.analyticsUploadUrl : str4;
                String str37 = (i2 & 128) != 0 ? attributes.annotationsUrl : str5;
                String str38 = (i2 & 256) != 0 ? attributes.authorizationHash : str6;
                String str39 = (i2 & 512) != 0 ? attributes.authorizationToken : str7;
                Boolean bool16 = (i2 & 1024) != 0 ? attributes.barAlwaysVisible : bool;
                List list4 = (i2 & 2048) != 0 ? attributes.barButtons : list;
                CallDistribution callDistribution2 = (i2 & 4096) != 0 ? attributes.callDistribution : callDistribution;
                Integer num15 = num12;
                Boolean bool17 = (i2 & 8192) != 0 ? attributes.cameraWhileShareOut : bool2;
                String str40 = (i2 & 16384) != 0 ? attributes.caseReportId : str8;
                Integer num16 = (i2 & 32768) != 0 ? attributes.chatNotificationDisplayTimeout : num4;
                Boolean bool18 = (i2 & 65536) != 0 ? attributes.chatQuickBar : bool3;
                Boolean bool19 = (i2 & 131072) != 0 ? attributes.chatTranscript : bool4;
                Integer num17 = (i2 & 262144) != 0 ? attributes.consentId : num5;
                String str41 = (i2 & 524288) != 0 ? attributes.consentAcceptLabel : str9;
                String str42 = (i2 & 1048576) != 0 ? attributes.consentDeclineLabel : str10;
                String str43 = (i2 & PKIFailureInfo.badSenderNonce) != 0 ? attributes.consentDescription : str11;
                String str44 = (i2 & 4194304) != 0 ? attributes.consentEulaLabel : str12;
                String str45 = (i2 & 8388608) != 0 ? attributes.consentEulaLink : str13;
                Boolean bool20 = (i2 & 16777216) != 0 ? attributes.consentRequired : bool5;
                String str46 = (i2 & 33554432) != 0 ? attributes.consentTitle : str14;
                List list5 = (i2 & 67108864) != 0 ? attributes.customizations : list2;
                String str47 = (i2 & 134217728) != 0 ? attributes.displayNameMode : str15;
                List list6 = (i2 & 268435456) != 0 ? attributes.liveTranslationCaptionColors : list3;
                String str48 = (i2 & PKIFailureInfo.duplicateCertReq) != 0 ? attributes.liveTranslationCaptionDisplayMode : str16;
                String str49 = (i2 & 1073741824) != 0 ? attributes.liveTranslationCaptionFontSize : str17;
                Integer num18 = (i2 & Integer.MIN_VALUE) != 0 ? attributes.liveTranslationCaptionHeight : num6;
                Integer num19 = (i3 & 1) != 0 ? attributes.liveTranslationCaptionSentenceTimeout : num7;
                Boolean bool21 = (i3 & 2) != 0 ? attributes.liveTranslationEnabled : bool6;
                String str50 = (i3 & 4) != 0 ? attributes.liveTranslationLanguageMode : str18;
                String str51 = (i3 & 8) != 0 ? attributes.liveTranslationLanguageValue : str19;
                Boolean bool22 = (i3 & 16) != 0 ? attributes.liveTranslationTranscript : bool7;
                Boolean bool23 = (i3 & 32) != 0 ? attributes.liveTranslationAutoStart : bool8;
                String str52 = (i3 & 64) != 0 ? attributes.noteOnPictureAcceptLabel : str20;
                Boolean bool24 = (i3 & 128) != 0 ? attributes.noteOnPictureSignature : bool9;
                String str53 = (i3 & 256) != 0 ? attributes.noteOnPictureTitle : str21;
                Float f4 = (i3 & 512) != 0 ? attributes.ocrCollimatorRatio : f2;
                Float f5 = (i3 & 1024) != 0 ? attributes.ocrSafeArea : f3;
                String str54 = (i3 & 2048) != 0 ? attributes.reference : str22;
                Integer num20 = (i3 & 4096) != 0 ? attributes.rtccDeadParty : num8;
                String str55 = (i3 & 8192) != 0 ? attributes.rtccAppId : str23;
                String str56 = (i3 & 16384) != 0 ? attributes.rtccDisplayName : str24;
                String str57 = (i3 & 32768) != 0 ? attributes.rtccEnv : str25;
                String str58 = (i3 & 65536) != 0 ? attributes.rtccHap : str26;
                String str59 = (i3 & 131072) != 0 ? attributes.rtccJwtAuth : str27;
                String str60 = (i3 & 262144) != 0 ? attributes.rtccMpi : str28;
                Boolean bool25 = (i3 & 524288) != 0 ? attributes.startupCamera : bool10;
                StartupCameraSide startupCameraSide2 = (i3 & 1048576) != 0 ? attributes.startupCameraSide : startupCameraSide;
                Boolean bool26 = (i3 & PKIFailureInfo.badSenderNonce) != 0 ? attributes.startupCameraUsb : bool11;
                Boolean bool27 = (i3 & 4194304) != 0 ? attributes.startupMicro : bool12;
                Boolean bool28 = (i3 & 8388608) != 0 ? attributes.startupPointer : bool13;
                StartupVideoProfile startupVideoProfile2 = (i3 & 16777216) != 0 ? attributes.startupVideoProfile : startupVideoProfile;
                String str61 = (i3 & 33554432) != 0 ? attributes.surveyLinkLabel : str29;
                SurveyMode surveyMode2 = (i3 & 67108864) != 0 ? attributes.surveyMode : surveyMode;
                String str62 = (i3 & 134217728) != 0 ? attributes.surveyTitle : str30;
                String str63 = (i3 & 268435456) != 0 ? attributes.surveyUrl : str31;
                Integer num21 = (i3 & PKIFailureInfo.duplicateCertReq) != 0 ? attributes.useCaseId : num9;
                String str64 = (i3 & 1073741824) != 0 ? attributes.useCaseName : str32;
                UserRole userRole2 = (i3 & Integer.MIN_VALUE) != 0 ? attributes.userRole : userRole;
                String str65 = str64;
                Boolean bool29 = (i4 & 1) != 0 ? attributes.takeUhdPicture : bool14;
                if ((i4 & 2) != 0) {
                    bool15 = bool29;
                    num11 = attributes.acdRequestTimeout;
                } else {
                    num11 = num10;
                    bool15 = bool29;
                }
                return attributes.copy(num15, num13, str33, num14, str34, str35, str36, str37, str38, str39, bool16, list4, callDistribution2, bool17, str40, num16, bool18, bool19, num17, str41, str42, str43, str44, str45, bool20, str46, list5, str47, list6, str48, str49, num18, num19, bool21, str50, str51, bool22, bool23, str52, bool24, str53, f4, f5, str54, num20, str55, str56, str57, str58, str59, str60, bool25, startupCameraSide2, bool26, bool27, bool28, startupVideoProfile2, str61, surveyMode2, str62, str63, num21, str65, userRole2, bool15, num11);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final Integer getAcdLanguageId() {
                return this.acdLanguageId;
            }

            /* JADX INFO: renamed from: component10, reason: from getter */
            public final String getAuthorizationToken() {
                return this.authorizationToken;
            }

            /* JADX INFO: renamed from: component11, reason: from getter */
            public final Boolean getBarAlwaysVisible() {
                return this.barAlwaysVisible;
            }

            public final List<BarButton> component12() {
                return this.barButtons;
            }

            /* JADX INFO: renamed from: component13, reason: from getter */
            public final CallDistribution getCallDistribution() {
                return this.callDistribution;
            }

            /* JADX INFO: renamed from: component14, reason: from getter */
            public final Boolean getCameraWhileShareOut() {
                return this.cameraWhileShareOut;
            }

            /* JADX INFO: renamed from: component15, reason: from getter */
            public final String getCaseReportId() {
                return this.caseReportId;
            }

            /* JADX INFO: renamed from: component16, reason: from getter */
            public final Integer getChatNotificationDisplayTimeout() {
                return this.chatNotificationDisplayTimeout;
            }

            /* JADX INFO: renamed from: component17, reason: from getter */
            public final Boolean getChatQuickBar() {
                return this.chatQuickBar;
            }

            /* JADX INFO: renamed from: component18, reason: from getter */
            public final Boolean getChatTranscript() {
                return this.chatTranscript;
            }

            /* JADX INFO: renamed from: component19, reason: from getter */
            public final Integer getConsentId() {
                return this.consentId;
            }

            /* JADX INFO: renamed from: component2, reason: from getter */
            public final Integer getAcdLocationId() {
                return this.acdLocationId;
            }

            /* JADX INFO: renamed from: component20, reason: from getter */
            public final String getConsentAcceptLabel() {
                return this.consentAcceptLabel;
            }

            /* JADX INFO: renamed from: component21, reason: from getter */
            public final String getConsentDeclineLabel() {
                return this.consentDeclineLabel;
            }

            /* JADX INFO: renamed from: component22, reason: from getter */
            public final String getConsentDescription() {
                return this.consentDescription;
            }

            /* JADX INFO: renamed from: component23, reason: from getter */
            public final String getConsentEulaLabel() {
                return this.consentEulaLabel;
            }

            /* JADX INFO: renamed from: component24, reason: from getter */
            public final String getConsentEulaLink() {
                return this.consentEulaLink;
            }

            /* JADX INFO: renamed from: component25, reason: from getter */
            public final Boolean getConsentRequired() {
                return this.consentRequired;
            }

            /* JADX INFO: renamed from: component26, reason: from getter */
            public final String getConsentTitle() {
                return this.consentTitle;
            }

            public final List<Customization> component27() {
                return this.customizations;
            }

            /* JADX INFO: renamed from: component28, reason: from getter */
            public final String getDisplayNameMode() {
                return this.displayNameMode;
            }

            public final List<String> component29() {
                return this.liveTranslationCaptionColors;
            }

            /* JADX INFO: renamed from: component3, reason: from getter */
            public final String getAcdMask() {
                return this.acdMask;
            }

            /* JADX INFO: renamed from: component30, reason: from getter */
            public final String getLiveTranslationCaptionDisplayMode() {
                return this.liveTranslationCaptionDisplayMode;
            }

            /* JADX INFO: renamed from: component31, reason: from getter */
            public final String getLiveTranslationCaptionFontSize() {
                return this.liveTranslationCaptionFontSize;
            }

            /* JADX INFO: renamed from: component32, reason: from getter */
            public final Integer getLiveTranslationCaptionHeight() {
                return this.liveTranslationCaptionHeight;
            }

            /* JADX INFO: renamed from: component33, reason: from getter */
            public final Integer getLiveTranslationCaptionSentenceTimeout() {
                return this.liveTranslationCaptionSentenceTimeout;
            }

            /* JADX INFO: renamed from: component34, reason: from getter */
            public final Boolean getLiveTranslationEnabled() {
                return this.liveTranslationEnabled;
            }

            /* JADX INFO: renamed from: component35, reason: from getter */
            public final String getLiveTranslationLanguageMode() {
                return this.liveTranslationLanguageMode;
            }

            /* JADX INFO: renamed from: component36, reason: from getter */
            public final String getLiveTranslationLanguageValue() {
                return this.liveTranslationLanguageValue;
            }

            /* JADX INFO: renamed from: component37, reason: from getter */
            public final Boolean getLiveTranslationTranscript() {
                return this.liveTranslationTranscript;
            }

            /* JADX INFO: renamed from: component38, reason: from getter */
            public final Boolean getLiveTranslationAutoStart() {
                return this.liveTranslationAutoStart;
            }

            /* JADX INFO: renamed from: component39, reason: from getter */
            public final String getNoteOnPictureAcceptLabel() {
                return this.noteOnPictureAcceptLabel;
            }

            /* JADX INFO: renamed from: component4, reason: from getter */
            public final Integer getAcdProductId() {
                return this.acdProductId;
            }

            /* JADX INFO: renamed from: component40, reason: from getter */
            public final Boolean getNoteOnPictureSignature() {
                return this.noteOnPictureSignature;
            }

            /* JADX INFO: renamed from: component41, reason: from getter */
            public final String getNoteOnPictureTitle() {
                return this.noteOnPictureTitle;
            }

            /* JADX INFO: renamed from: component42, reason: from getter */
            public final Float getOcrCollimatorRatio() {
                return this.ocrCollimatorRatio;
            }

            /* JADX INFO: renamed from: component43, reason: from getter */
            public final Float getOcrSafeArea() {
                return this.ocrSafeArea;
            }

            /* JADX INFO: renamed from: component44, reason: from getter */
            public final String getReference() {
                return this.reference;
            }

            /* JADX INFO: renamed from: component45, reason: from getter */
            public final Integer getRtccDeadParty() {
                return this.rtccDeadParty;
            }

            /* JADX INFO: renamed from: component46, reason: from getter */
            public final String getRtccAppId() {
                return this.rtccAppId;
            }

            /* JADX INFO: renamed from: component47, reason: from getter */
            public final String getRtccDisplayName() {
                return this.rtccDisplayName;
            }

            /* JADX INFO: renamed from: component48, reason: from getter */
            public final String getRtccEnv() {
                return this.rtccEnv;
            }

            /* JADX INFO: renamed from: component49, reason: from getter */
            public final String getRtccHap() {
                return this.rtccHap;
            }

            /* JADX INFO: renamed from: component5, reason: from getter */
            public final String getAcdValue() {
                return this.acdValue;
            }

            /* JADX INFO: renamed from: component50, reason: from getter */
            public final String getRtccJwtAuth() {
                return this.rtccJwtAuth;
            }

            /* JADX INFO: renamed from: component51, reason: from getter */
            public final String getRtccMpi() {
                return this.rtccMpi;
            }

            /* JADX INFO: renamed from: component52, reason: from getter */
            public final Boolean getStartupCamera() {
                return this.startupCamera;
            }

            /* JADX INFO: renamed from: component53, reason: from getter */
            public final StartupCameraSide getStartupCameraSide() {
                return this.startupCameraSide;
            }

            /* JADX INFO: renamed from: component54, reason: from getter */
            public final Boolean getStartupCameraUsb() {
                return this.startupCameraUsb;
            }

            /* JADX INFO: renamed from: component55, reason: from getter */
            public final Boolean getStartupMicro() {
                return this.startupMicro;
            }

            /* JADX INFO: renamed from: component56, reason: from getter */
            public final Boolean getStartupPointer() {
                return this.startupPointer;
            }

            /* JADX INFO: renamed from: component57, reason: from getter */
            public final StartupVideoProfile getStartupVideoProfile() {
                return this.startupVideoProfile;
            }

            /* JADX INFO: renamed from: component58, reason: from getter */
            public final String getSurveyLinkLabel() {
                return this.surveyLinkLabel;
            }

            /* JADX INFO: renamed from: component59, reason: from getter */
            public final SurveyMode getSurveyMode() {
                return this.surveyMode;
            }

            /* JADX INFO: renamed from: component6, reason: from getter */
            public final String getAnalyticsUploadToken() {
                return this.analyticsUploadToken;
            }

            /* JADX INFO: renamed from: component60, reason: from getter */
            public final String getSurveyTitle() {
                return this.surveyTitle;
            }

            /* JADX INFO: renamed from: component61, reason: from getter */
            public final String getSurveyUrl() {
                return this.surveyUrl;
            }

            /* JADX INFO: renamed from: component62, reason: from getter */
            public final Integer getUseCaseId() {
                return this.useCaseId;
            }

            /* JADX INFO: renamed from: component63, reason: from getter */
            public final String getUseCaseName() {
                return this.useCaseName;
            }

            /* JADX INFO: renamed from: component64, reason: from getter */
            public final UserRole getUserRole() {
                return this.userRole;
            }

            /* JADX INFO: renamed from: component65, reason: from getter */
            public final Boolean getTakeUhdPicture() {
                return this.takeUhdPicture;
            }

            /* JADX INFO: renamed from: component66, reason: from getter */
            public final Integer getAcdRequestTimeout() {
                return this.acdRequestTimeout;
            }

            /* JADX INFO: renamed from: component7, reason: from getter */
            public final String getAnalyticsUploadUrl() {
                return this.analyticsUploadUrl;
            }

            /* JADX INFO: renamed from: component8, reason: from getter */
            public final String getAnnotationsUrl() {
                return this.annotationsUrl;
            }

            /* JADX INFO: renamed from: component9, reason: from getter */
            public final String getAuthorizationHash() {
                return this.authorizationHash;
            }

            public final Attributes copy(Integer acdLanguageId, Integer acdLocationId, String acdMask, Integer acdProductId, String acdValue, String analyticsUploadToken, String analyticsUploadUrl, String annotationsUrl, String authorizationHash, String authorizationToken, Boolean barAlwaysVisible, List<BarButton> barButtons, CallDistribution callDistribution, Boolean cameraWhileShareOut, String caseReportId, Integer chatNotificationDisplayTimeout, Boolean chatQuickBar, Boolean chatTranscript, Integer consentId, String consentAcceptLabel, String consentDeclineLabel, String consentDescription, String consentEulaLabel, String consentEulaLink, Boolean consentRequired, String consentTitle, List<Customization> customizations, String displayNameMode, List<String> liveTranslationCaptionColors, String liveTranslationCaptionDisplayMode, String liveTranslationCaptionFontSize, Integer liveTranslationCaptionHeight, Integer liveTranslationCaptionSentenceTimeout, Boolean liveTranslationEnabled, String liveTranslationLanguageMode, String liveTranslationLanguageValue, Boolean liveTranslationTranscript, Boolean liveTranslationAutoStart, String noteOnPictureAcceptLabel, Boolean noteOnPictureSignature, String noteOnPictureTitle, Float ocrCollimatorRatio, Float ocrSafeArea, String reference, Integer rtccDeadParty, String rtccAppId, String rtccDisplayName, String rtccEnv, String rtccHap, String rtccJwtAuth, String rtccMpi, Boolean startupCamera, StartupCameraSide startupCameraSide, Boolean startupCameraUsb, Boolean startupMicro, Boolean startupPointer, StartupVideoProfile startupVideoProfile, String surveyLinkLabel, SurveyMode surveyMode, String surveyTitle, String surveyUrl, Integer useCaseId, String useCaseName, UserRole userRole, Boolean takeUhdPicture, Integer acdRequestTimeout) {
                authorizationHash.getClass();
                authorizationToken.getClass();
                caseReportId.getClass();
                userRole.getClass();
                return new Attributes(acdLanguageId, acdLocationId, acdMask, acdProductId, acdValue, analyticsUploadToken, analyticsUploadUrl, annotationsUrl, authorizationHash, authorizationToken, barAlwaysVisible, barButtons, callDistribution, cameraWhileShareOut, caseReportId, chatNotificationDisplayTimeout, chatQuickBar, chatTranscript, consentId, consentAcceptLabel, consentDeclineLabel, consentDescription, consentEulaLabel, consentEulaLink, consentRequired, consentTitle, customizations, displayNameMode, liveTranslationCaptionColors, liveTranslationCaptionDisplayMode, liveTranslationCaptionFontSize, liveTranslationCaptionHeight, liveTranslationCaptionSentenceTimeout, liveTranslationEnabled, liveTranslationLanguageMode, liveTranslationLanguageValue, liveTranslationTranscript, liveTranslationAutoStart, noteOnPictureAcceptLabel, noteOnPictureSignature, noteOnPictureTitle, ocrCollimatorRatio, ocrSafeArea, reference, rtccDeadParty, rtccAppId, rtccDisplayName, rtccEnv, rtccHap, rtccJwtAuth, rtccMpi, startupCamera, startupCameraSide, startupCameraUsb, startupMicro, startupPointer, startupVideoProfile, surveyLinkLabel, surveyMode, surveyTitle, surveyUrl, useCaseId, useCaseName, userRole, takeUhdPicture, acdRequestTimeout);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof Attributes)) {
                    return false;
                }
                Attributes attributes = (Attributes) other;
                return Intrinsics.c(this.acdLanguageId, attributes.acdLanguageId) && Intrinsics.c(this.acdLocationId, attributes.acdLocationId) && Intrinsics.c(this.acdMask, attributes.acdMask) && Intrinsics.c(this.acdProductId, attributes.acdProductId) && Intrinsics.c(this.acdValue, attributes.acdValue) && Intrinsics.c(this.analyticsUploadToken, attributes.analyticsUploadToken) && Intrinsics.c(this.analyticsUploadUrl, attributes.analyticsUploadUrl) && Intrinsics.c(this.annotationsUrl, attributes.annotationsUrl) && Intrinsics.c(this.authorizationHash, attributes.authorizationHash) && Intrinsics.c(this.authorizationToken, attributes.authorizationToken) && Intrinsics.c(this.barAlwaysVisible, attributes.barAlwaysVisible) && Intrinsics.c(this.barButtons, attributes.barButtons) && this.callDistribution == attributes.callDistribution && Intrinsics.c(this.cameraWhileShareOut, attributes.cameraWhileShareOut) && Intrinsics.c(this.caseReportId, attributes.caseReportId) && Intrinsics.c(this.chatNotificationDisplayTimeout, attributes.chatNotificationDisplayTimeout) && Intrinsics.c(this.chatQuickBar, attributes.chatQuickBar) && Intrinsics.c(this.chatTranscript, attributes.chatTranscript) && Intrinsics.c(this.consentId, attributes.consentId) && Intrinsics.c(this.consentAcceptLabel, attributes.consentAcceptLabel) && Intrinsics.c(this.consentDeclineLabel, attributes.consentDeclineLabel) && Intrinsics.c(this.consentDescription, attributes.consentDescription) && Intrinsics.c(this.consentEulaLabel, attributes.consentEulaLabel) && Intrinsics.c(this.consentEulaLink, attributes.consentEulaLink) && Intrinsics.c(this.consentRequired, attributes.consentRequired) && Intrinsics.c(this.consentTitle, attributes.consentTitle) && Intrinsics.c(this.customizations, attributes.customizations) && Intrinsics.c(this.displayNameMode, attributes.displayNameMode) && Intrinsics.c(this.liveTranslationCaptionColors, attributes.liveTranslationCaptionColors) && Intrinsics.c(this.liveTranslationCaptionDisplayMode, attributes.liveTranslationCaptionDisplayMode) && Intrinsics.c(this.liveTranslationCaptionFontSize, attributes.liveTranslationCaptionFontSize) && Intrinsics.c(this.liveTranslationCaptionHeight, attributes.liveTranslationCaptionHeight) && Intrinsics.c(this.liveTranslationCaptionSentenceTimeout, attributes.liveTranslationCaptionSentenceTimeout) && Intrinsics.c(this.liveTranslationEnabled, attributes.liveTranslationEnabled) && Intrinsics.c(this.liveTranslationLanguageMode, attributes.liveTranslationLanguageMode) && Intrinsics.c(this.liveTranslationLanguageValue, attributes.liveTranslationLanguageValue) && Intrinsics.c(this.liveTranslationTranscript, attributes.liveTranslationTranscript) && Intrinsics.c(this.liveTranslationAutoStart, attributes.liveTranslationAutoStart) && Intrinsics.c(this.noteOnPictureAcceptLabel, attributes.noteOnPictureAcceptLabel) && Intrinsics.c(this.noteOnPictureSignature, attributes.noteOnPictureSignature) && Intrinsics.c(this.noteOnPictureTitle, attributes.noteOnPictureTitle) && Intrinsics.c(this.ocrCollimatorRatio, attributes.ocrCollimatorRatio) && Intrinsics.c(this.ocrSafeArea, attributes.ocrSafeArea) && Intrinsics.c(this.reference, attributes.reference) && Intrinsics.c(this.rtccDeadParty, attributes.rtccDeadParty) && Intrinsics.c(this.rtccAppId, attributes.rtccAppId) && Intrinsics.c(this.rtccDisplayName, attributes.rtccDisplayName) && Intrinsics.c(this.rtccEnv, attributes.rtccEnv) && Intrinsics.c(this.rtccHap, attributes.rtccHap) && Intrinsics.c(this.rtccJwtAuth, attributes.rtccJwtAuth) && Intrinsics.c(this.rtccMpi, attributes.rtccMpi) && Intrinsics.c(this.startupCamera, attributes.startupCamera) && this.startupCameraSide == attributes.startupCameraSide && Intrinsics.c(this.startupCameraUsb, attributes.startupCameraUsb) && Intrinsics.c(this.startupMicro, attributes.startupMicro) && Intrinsics.c(this.startupPointer, attributes.startupPointer) && this.startupVideoProfile == attributes.startupVideoProfile && Intrinsics.c(this.surveyLinkLabel, attributes.surveyLinkLabel) && this.surveyMode == attributes.surveyMode && Intrinsics.c(this.surveyTitle, attributes.surveyTitle) && Intrinsics.c(this.surveyUrl, attributes.surveyUrl) && Intrinsics.c(this.useCaseId, attributes.useCaseId) && Intrinsics.c(this.useCaseName, attributes.useCaseName) && this.userRole == attributes.userRole && Intrinsics.c(this.takeUhdPicture, attributes.takeUhdPicture) && Intrinsics.c(this.acdRequestTimeout, attributes.acdRequestTimeout);
            }

            public final Integer getAcdLanguageId() {
                return this.acdLanguageId;
            }

            public final Integer getAcdLocationId() {
                return this.acdLocationId;
            }

            public final String getAcdMask() {
                return this.acdMask;
            }

            public final Integer getAcdProductId() {
                return this.acdProductId;
            }

            public final Integer getAcdRequestTimeout() {
                return this.acdRequestTimeout;
            }

            public final String getAcdValue() {
                return this.acdValue;
            }

            public final String getAnalyticsUploadToken() {
                return this.analyticsUploadToken;
            }

            public final String getAnalyticsUploadUrl() {
                return this.analyticsUploadUrl;
            }

            public final String getAnnotationsUrl() {
                return this.annotationsUrl;
            }

            public final String getAuthorizationHash() {
                return this.authorizationHash;
            }

            public final String getAuthorizationToken() {
                return this.authorizationToken;
            }

            public final Boolean getBarAlwaysVisible() {
                return this.barAlwaysVisible;
            }

            public final List<BarButton> getBarButtons() {
                return this.barButtons;
            }

            public final CallDistribution getCallDistribution() {
                return this.callDistribution;
            }

            public final Boolean getCameraWhileShareOut() {
                return this.cameraWhileShareOut;
            }

            public final String getCaseReportId() {
                return this.caseReportId;
            }

            public final Integer getChatNotificationDisplayTimeout() {
                return this.chatNotificationDisplayTimeout;
            }

            public final Boolean getChatQuickBar() {
                return this.chatQuickBar;
            }

            public final Boolean getChatTranscript() {
                return this.chatTranscript;
            }

            public final String getConsentAcceptLabel() {
                return this.consentAcceptLabel;
            }

            public final String getConsentDeclineLabel() {
                return this.consentDeclineLabel;
            }

            public final String getConsentDescription() {
                return this.consentDescription;
            }

            public final String getConsentEulaLabel() {
                return this.consentEulaLabel;
            }

            public final String getConsentEulaLink() {
                return this.consentEulaLink;
            }

            public final Integer getConsentId() {
                return this.consentId;
            }

            public final Boolean getConsentRequired() {
                return this.consentRequired;
            }

            public final String getConsentTitle() {
                return this.consentTitle;
            }

            public final List<Customization> getCustomizations() {
                return this.customizations;
            }

            public final String getDisplayNameMode() {
                return this.displayNameMode;
            }

            public final Boolean getLiveTranslationAutoStart() {
                return this.liveTranslationAutoStart;
            }

            public final List<String> getLiveTranslationCaptionColors() {
                return this.liveTranslationCaptionColors;
            }

            public final String getLiveTranslationCaptionDisplayMode() {
                return this.liveTranslationCaptionDisplayMode;
            }

            public final String getLiveTranslationCaptionFontSize() {
                return this.liveTranslationCaptionFontSize;
            }

            public final Integer getLiveTranslationCaptionHeight() {
                return this.liveTranslationCaptionHeight;
            }

            public final Integer getLiveTranslationCaptionSentenceTimeout() {
                return this.liveTranslationCaptionSentenceTimeout;
            }

            public final Boolean getLiveTranslationEnabled() {
                return this.liveTranslationEnabled;
            }

            public final String getLiveTranslationLanguageMode() {
                return this.liveTranslationLanguageMode;
            }

            public final String getLiveTranslationLanguageValue() {
                return this.liveTranslationLanguageValue;
            }

            public final Boolean getLiveTranslationTranscript() {
                return this.liveTranslationTranscript;
            }

            public final String getNoteOnPictureAcceptLabel() {
                return this.noteOnPictureAcceptLabel;
            }

            public final Boolean getNoteOnPictureSignature() {
                return this.noteOnPictureSignature;
            }

            public final String getNoteOnPictureTitle() {
                return this.noteOnPictureTitle;
            }

            public final Float getOcrCollimatorRatio() {
                return this.ocrCollimatorRatio;
            }

            public final Float getOcrSafeArea() {
                return this.ocrSafeArea;
            }

            public final String getReference() {
                return this.reference;
            }

            public final String getRtccAppId() {
                return this.rtccAppId;
            }

            public final Integer getRtccDeadParty() {
                return this.rtccDeadParty;
            }

            public final String getRtccDisplayName() {
                return this.rtccDisplayName;
            }

            public final String getRtccEnv() {
                return this.rtccEnv;
            }

            public final String getRtccHap() {
                return this.rtccHap;
            }

            public final String getRtccJwtAuth() {
                return this.rtccJwtAuth;
            }

            public final String getRtccMpi() {
                return this.rtccMpi;
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

            public final String getSurveyLinkLabel() {
                return this.surveyLinkLabel;
            }

            public final SurveyMode getSurveyMode() {
                return this.surveyMode;
            }

            public final String getSurveyTitle() {
                return this.surveyTitle;
            }

            public final String getSurveyUrl() {
                return this.surveyUrl;
            }

            public final Boolean getTakeUhdPicture() {
                return this.takeUhdPicture;
            }

            public final Integer getUseCaseId() {
                return this.useCaseId;
            }

            public final String getUseCaseName() {
                return this.useCaseName;
            }

            public final UserRole getUserRole() {
                return this.userRole;
            }

            public int hashCode() {
                Integer num = this.acdLanguageId;
                int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
                Integer num2 = this.acdLocationId;
                int iHashCode2 = (iHashCode + (num2 == null ? 0 : num2.hashCode())) * 31;
                String str = this.acdMask;
                int iHashCode3 = (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31;
                Integer num3 = this.acdProductId;
                int iHashCode4 = (iHashCode3 + (num3 == null ? 0 : num3.hashCode())) * 31;
                String str2 = this.acdValue;
                int iHashCode5 = (iHashCode4 + (str2 == null ? 0 : str2.hashCode())) * 31;
                String str3 = this.analyticsUploadToken;
                int iHashCode6 = (iHashCode5 + (str3 == null ? 0 : str3.hashCode())) * 31;
                String str4 = this.analyticsUploadUrl;
                int iHashCode7 = (iHashCode6 + (str4 == null ? 0 : str4.hashCode())) * 31;
                String str5 = this.annotationsUrl;
                int iB = fc.b(fc.b((iHashCode7 + (str5 == null ? 0 : str5.hashCode())) * 31, 31, this.authorizationHash), 31, this.authorizationToken);
                Boolean bool = this.barAlwaysVisible;
                int iHashCode8 = (iB + (bool == null ? 0 : bool.hashCode())) * 31;
                List<BarButton> list = this.barButtons;
                int iHashCode9 = (iHashCode8 + (list == null ? 0 : list.hashCode())) * 31;
                CallDistribution callDistribution = this.callDistribution;
                int iHashCode10 = (iHashCode9 + (callDistribution == null ? 0 : callDistribution.hashCode())) * 31;
                Boolean bool2 = this.cameraWhileShareOut;
                int iB2 = fc.b((iHashCode10 + (bool2 == null ? 0 : bool2.hashCode())) * 31, 31, this.caseReportId);
                Integer num4 = this.chatNotificationDisplayTimeout;
                int iHashCode11 = (iB2 + (num4 == null ? 0 : num4.hashCode())) * 31;
                Boolean bool3 = this.chatQuickBar;
                int iHashCode12 = (iHashCode11 + (bool3 == null ? 0 : bool3.hashCode())) * 31;
                Boolean bool4 = this.chatTranscript;
                int iHashCode13 = (iHashCode12 + (bool4 == null ? 0 : bool4.hashCode())) * 31;
                Integer num5 = this.consentId;
                int iHashCode14 = (iHashCode13 + (num5 == null ? 0 : num5.hashCode())) * 31;
                String str6 = this.consentAcceptLabel;
                int iHashCode15 = (iHashCode14 + (str6 == null ? 0 : str6.hashCode())) * 31;
                String str7 = this.consentDeclineLabel;
                int iHashCode16 = (iHashCode15 + (str7 == null ? 0 : str7.hashCode())) * 31;
                String str8 = this.consentDescription;
                int iHashCode17 = (iHashCode16 + (str8 == null ? 0 : str8.hashCode())) * 31;
                String str9 = this.consentEulaLabel;
                int iHashCode18 = (iHashCode17 + (str9 == null ? 0 : str9.hashCode())) * 31;
                String str10 = this.consentEulaLink;
                int iHashCode19 = (iHashCode18 + (str10 == null ? 0 : str10.hashCode())) * 31;
                Boolean bool5 = this.consentRequired;
                int iHashCode20 = (iHashCode19 + (bool5 == null ? 0 : bool5.hashCode())) * 31;
                String str11 = this.consentTitle;
                int iHashCode21 = (iHashCode20 + (str11 == null ? 0 : str11.hashCode())) * 31;
                List<Customization> list2 = this.customizations;
                int iHashCode22 = (iHashCode21 + (list2 == null ? 0 : list2.hashCode())) * 31;
                String str12 = this.displayNameMode;
                int iHashCode23 = (iHashCode22 + (str12 == null ? 0 : str12.hashCode())) * 31;
                List<String> list3 = this.liveTranslationCaptionColors;
                int iHashCode24 = (iHashCode23 + (list3 == null ? 0 : list3.hashCode())) * 31;
                String str13 = this.liveTranslationCaptionDisplayMode;
                int iHashCode25 = (iHashCode24 + (str13 == null ? 0 : str13.hashCode())) * 31;
                String str14 = this.liveTranslationCaptionFontSize;
                int iHashCode26 = (iHashCode25 + (str14 == null ? 0 : str14.hashCode())) * 31;
                Integer num6 = this.liveTranslationCaptionHeight;
                int iHashCode27 = (iHashCode26 + (num6 == null ? 0 : num6.hashCode())) * 31;
                Integer num7 = this.liveTranslationCaptionSentenceTimeout;
                int iHashCode28 = (iHashCode27 + (num7 == null ? 0 : num7.hashCode())) * 31;
                Boolean bool6 = this.liveTranslationEnabled;
                int iHashCode29 = (iHashCode28 + (bool6 == null ? 0 : bool6.hashCode())) * 31;
                String str15 = this.liveTranslationLanguageMode;
                int iHashCode30 = (iHashCode29 + (str15 == null ? 0 : str15.hashCode())) * 31;
                String str16 = this.liveTranslationLanguageValue;
                int iHashCode31 = (iHashCode30 + (str16 == null ? 0 : str16.hashCode())) * 31;
                Boolean bool7 = this.liveTranslationTranscript;
                int iHashCode32 = (iHashCode31 + (bool7 == null ? 0 : bool7.hashCode())) * 31;
                Boolean bool8 = this.liveTranslationAutoStart;
                int iHashCode33 = (iHashCode32 + (bool8 == null ? 0 : bool8.hashCode())) * 31;
                String str17 = this.noteOnPictureAcceptLabel;
                int iHashCode34 = (iHashCode33 + (str17 == null ? 0 : str17.hashCode())) * 31;
                Boolean bool9 = this.noteOnPictureSignature;
                int iHashCode35 = (iHashCode34 + (bool9 == null ? 0 : bool9.hashCode())) * 31;
                String str18 = this.noteOnPictureTitle;
                int iHashCode36 = (iHashCode35 + (str18 == null ? 0 : str18.hashCode())) * 31;
                Float f2 = this.ocrCollimatorRatio;
                int iHashCode37 = (iHashCode36 + (f2 == null ? 0 : f2.hashCode())) * 31;
                Float f3 = this.ocrSafeArea;
                int iHashCode38 = (iHashCode37 + (f3 == null ? 0 : f3.hashCode())) * 31;
                String str19 = this.reference;
                int iHashCode39 = (iHashCode38 + (str19 == null ? 0 : str19.hashCode())) * 31;
                Integer num8 = this.rtccDeadParty;
                int iHashCode40 = (iHashCode39 + (num8 == null ? 0 : num8.hashCode())) * 31;
                String str20 = this.rtccAppId;
                int iHashCode41 = (iHashCode40 + (str20 == null ? 0 : str20.hashCode())) * 31;
                String str21 = this.rtccDisplayName;
                int iHashCode42 = (iHashCode41 + (str21 == null ? 0 : str21.hashCode())) * 31;
                String str22 = this.rtccEnv;
                int iHashCode43 = (iHashCode42 + (str22 == null ? 0 : str22.hashCode())) * 31;
                String str23 = this.rtccHap;
                int iHashCode44 = (iHashCode43 + (str23 == null ? 0 : str23.hashCode())) * 31;
                String str24 = this.rtccJwtAuth;
                int iHashCode45 = (iHashCode44 + (str24 == null ? 0 : str24.hashCode())) * 31;
                String str25 = this.rtccMpi;
                int iHashCode46 = (iHashCode45 + (str25 == null ? 0 : str25.hashCode())) * 31;
                Boolean bool10 = this.startupCamera;
                int iHashCode47 = (iHashCode46 + (bool10 == null ? 0 : bool10.hashCode())) * 31;
                StartupCameraSide startupCameraSide = this.startupCameraSide;
                int iHashCode48 = (iHashCode47 + (startupCameraSide == null ? 0 : startupCameraSide.hashCode())) * 31;
                Boolean bool11 = this.startupCameraUsb;
                int iHashCode49 = (iHashCode48 + (bool11 == null ? 0 : bool11.hashCode())) * 31;
                Boolean bool12 = this.startupMicro;
                int iHashCode50 = (iHashCode49 + (bool12 == null ? 0 : bool12.hashCode())) * 31;
                Boolean bool13 = this.startupPointer;
                int iHashCode51 = (iHashCode50 + (bool13 == null ? 0 : bool13.hashCode())) * 31;
                StartupVideoProfile startupVideoProfile = this.startupVideoProfile;
                int iHashCode52 = (iHashCode51 + (startupVideoProfile == null ? 0 : startupVideoProfile.hashCode())) * 31;
                String str26 = this.surveyLinkLabel;
                int iHashCode53 = (iHashCode52 + (str26 == null ? 0 : str26.hashCode())) * 31;
                SurveyMode surveyMode = this.surveyMode;
                int iHashCode54 = (iHashCode53 + (surveyMode == null ? 0 : surveyMode.hashCode())) * 31;
                String str27 = this.surveyTitle;
                int iHashCode55 = (iHashCode54 + (str27 == null ? 0 : str27.hashCode())) * 31;
                String str28 = this.surveyUrl;
                int iHashCode56 = (iHashCode55 + (str28 == null ? 0 : str28.hashCode())) * 31;
                Integer num9 = this.useCaseId;
                int iHashCode57 = (iHashCode56 + (num9 == null ? 0 : num9.hashCode())) * 31;
                String str29 = this.useCaseName;
                int iHashCode58 = (this.userRole.hashCode() + ((iHashCode57 + (str29 == null ? 0 : str29.hashCode())) * 31)) * 31;
                Boolean bool14 = this.takeUhdPicture;
                int iHashCode59 = (iHashCode58 + (bool14 == null ? 0 : bool14.hashCode())) * 31;
                Integer num10 = this.acdRequestTimeout;
                return iHashCode59 + (num10 != null ? num10.hashCode() : 0);
            }

            public String toString() {
                Integer num = this.acdLanguageId;
                Integer num2 = this.acdLocationId;
                String str = this.acdMask;
                Integer num3 = this.acdProductId;
                String str2 = this.acdValue;
                String str3 = this.analyticsUploadToken;
                String str4 = this.analyticsUploadUrl;
                String str5 = this.annotationsUrl;
                String str6 = this.authorizationHash;
                String str7 = this.authorizationToken;
                Boolean bool = this.barAlwaysVisible;
                List<BarButton> list = this.barButtons;
                CallDistribution callDistribution = this.callDistribution;
                Boolean bool2 = this.cameraWhileShareOut;
                String str8 = this.caseReportId;
                Integer num4 = this.chatNotificationDisplayTimeout;
                Boolean bool3 = this.chatQuickBar;
                Boolean bool4 = this.chatTranscript;
                Integer num5 = this.consentId;
                String str9 = this.consentAcceptLabel;
                String str10 = this.consentDeclineLabel;
                String str11 = this.consentDescription;
                String str12 = this.consentEulaLabel;
                String str13 = this.consentEulaLink;
                Boolean bool5 = this.consentRequired;
                String str14 = this.consentTitle;
                List<Customization> list2 = this.customizations;
                String str15 = this.displayNameMode;
                List<String> list3 = this.liveTranslationCaptionColors;
                String str16 = this.liveTranslationCaptionDisplayMode;
                String str17 = this.liveTranslationCaptionFontSize;
                Integer num6 = this.liveTranslationCaptionHeight;
                Integer num7 = this.liveTranslationCaptionSentenceTimeout;
                Boolean bool6 = this.liveTranslationEnabled;
                String str18 = this.liveTranslationLanguageMode;
                String str19 = this.liveTranslationLanguageValue;
                Boolean bool7 = this.liveTranslationTranscript;
                Boolean bool8 = this.liveTranslationAutoStart;
                String str20 = this.noteOnPictureAcceptLabel;
                Boolean bool9 = this.noteOnPictureSignature;
                String str21 = this.noteOnPictureTitle;
                Float f2 = this.ocrCollimatorRatio;
                Float f3 = this.ocrSafeArea;
                String str22 = this.reference;
                Integer num8 = this.rtccDeadParty;
                String str23 = this.rtccAppId;
                String str24 = this.rtccDisplayName;
                String str25 = this.rtccEnv;
                String str26 = this.rtccHap;
                String str27 = this.rtccJwtAuth;
                String str28 = this.rtccMpi;
                Boolean bool10 = this.startupCamera;
                StartupCameraSide startupCameraSide = this.startupCameraSide;
                Boolean bool11 = this.startupCameraUsb;
                Boolean bool12 = this.startupMicro;
                Boolean bool13 = this.startupPointer;
                StartupVideoProfile startupVideoProfile = this.startupVideoProfile;
                String str29 = this.surveyLinkLabel;
                SurveyMode surveyMode = this.surveyMode;
                String str30 = this.surveyTitle;
                String str31 = this.surveyUrl;
                Integer num9 = this.useCaseId;
                String str32 = this.useCaseName;
                UserRole userRole = this.userRole;
                Boolean bool14 = this.takeUhdPicture;
                Integer num10 = this.acdRequestTimeout;
                StringBuilder sb = new StringBuilder("Attributes(acdLanguageId=");
                sb.append(num);
                sb.append(", acdLocationId=");
                sb.append(num2);
                sb.append(", acdMask=");
                sb.append(str);
                sb.append(", acdProductId=");
                sb.append(num3);
                sb.append(", acdValue=");
                cj.C(sb, str2, ", analyticsUploadToken=", str3, ", analyticsUploadUrl=");
                cj.C(sb, str4, ", annotationsUrl=", str5, ", authorizationHash=");
                cj.C(sb, str6, ", authorizationToken=", str7, ", barAlwaysVisible=");
                sb.append(bool);
                sb.append(", barButtons=");
                sb.append(list);
                sb.append(", callDistribution=");
                sb.append(callDistribution);
                sb.append(", cameraWhileShareOut=");
                sb.append(bool2);
                sb.append(", caseReportId=");
                sb.append(str8);
                sb.append(", chatNotificationDisplayTimeout=");
                sb.append(num4);
                sb.append(", chatQuickBar=");
                d21.B(sb, bool3, ", chatTranscript=", bool4, ", consentId=");
                sb.append(num5);
                sb.append(", consentAcceptLabel=");
                sb.append(str9);
                sb.append(", consentDeclineLabel=");
                cj.C(sb, str10, ", consentDescription=", str11, ", consentEulaLabel=");
                cj.C(sb, str12, ", consentEulaLink=", str13, ", consentRequired=");
                sb.append(bool5);
                sb.append(", consentTitle=");
                sb.append(str14);
                sb.append(", customizations=");
                o60.B(", displayNameMode=", str15, ", liveTranslationCaptionColors=", sb, list2);
                o60.B(", liveTranslationCaptionDisplayMode=", str16, ", liveTranslationCaptionFontSize=", sb, list3);
                sb.append(str17);
                sb.append(", liveTranslationCaptionHeight=");
                sb.append(num6);
                sb.append(", liveTranslationCaptionSentenceTimeout=");
                sb.append(num7);
                sb.append(", liveTranslationEnabled=");
                sb.append(bool6);
                sb.append(", liveTranslationLanguageMode=");
                cj.C(sb, str18, ", liveTranslationLanguageValue=", str19, ", liveTranslationTranscript=");
                d21.B(sb, bool7, ", liveTranslationAutoStart=", bool8, ", noteOnPictureAcceptLabel=");
                sb.append(str20);
                sb.append(", noteOnPictureSignature=");
                sb.append(bool9);
                sb.append(", noteOnPictureTitle=");
                sb.append(str21);
                sb.append(", ocrCollimatorRatio=");
                sb.append(f2);
                sb.append(", ocrSafeArea=");
                sb.append(f3);
                sb.append(", reference=");
                sb.append(str22);
                sb.append(", rtccDeadParty=");
                sb.append(num8);
                sb.append(", rtccAppId=");
                sb.append(str23);
                sb.append(", rtccDisplayName=");
                cj.C(sb, str24, ", rtccEnv=", str25, ", rtccHap=");
                cj.C(sb, str26, ", rtccJwtAuth=", str27, ", rtccMpi=");
                sb.append(str28);
                sb.append(", startupCamera=");
                sb.append(bool10);
                sb.append(", startupCameraSide=");
                sb.append(startupCameraSide);
                sb.append(", startupCameraUsb=");
                sb.append(bool11);
                sb.append(", startupMicro=");
                d21.B(sb, bool12, ", startupPointer=", bool13, ", startupVideoProfile=");
                sb.append(startupVideoProfile);
                sb.append(", surveyLinkLabel=");
                sb.append(str29);
                sb.append(", surveyMode=");
                sb.append(surveyMode);
                sb.append(", surveyTitle=");
                sb.append(str30);
                sb.append(", surveyUrl=");
                sb.append(str31);
                sb.append(", useCaseId=");
                sb.append(num9);
                sb.append(", useCaseName=");
                sb.append(str32);
                sb.append(", userRole=");
                sb.append(userRole);
                sb.append(", takeUhdPicture=");
                sb.append(bool14);
                sb.append(", acdRequestTimeout=");
                sb.append(num10);
                sb.append(")");
                return sb.toString();
            }
        }

        public Data(String str, String str2, Attributes attributes) {
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
            String str = this.type;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.id;
            return this.attributes.hashCode() + ((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31);
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

    public ReferenceStartupResponseEntity(Data data) {
        data.getClass();
        this.data = data;
    }

    public static /* synthetic */ ReferenceStartupResponseEntity copy$default(ReferenceStartupResponseEntity referenceStartupResponseEntity, Data data, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            data = referenceStartupResponseEntity.data;
        }
        return referenceStartupResponseEntity.copy(data);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Data getData() {
        return this.data;
    }

    public final ReferenceStartupResponseEntity copy(Data data) {
        data.getClass();
        return new ReferenceStartupResponseEntity(data);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof ReferenceStartupResponseEntity) && Intrinsics.c(this.data, ((ReferenceStartupResponseEntity) other).data);
    }

    public final Data getData() {
        return this.data;
    }

    public int hashCode() {
        return this.data.hashCode();
    }

    public String toString() {
        return "ReferenceStartupResponseEntity(data=" + this.data + ")";
    }
}
