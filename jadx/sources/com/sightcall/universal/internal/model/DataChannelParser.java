package com.sightcall.universal.internal.model;

import android.content.Context;
import android.text.TextUtils;
import com.sightcall.common.DataChannelParserConst;
import com.sightcall.pratik.extensions.UriExtensionsKt;
import com.sightcall.session.datasource.reference.v3.ReferenceApiV3ConstKt;
import com.sightcall.universal.agent.Usecase;
import com.sightcall.universal.internal.messaging.Message;
import com.sightcall.universal.model.Moshi;
import com.sightcall.universal.model.Session;
import com.squareup.moshi.Json;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Locale;
import net.rtccloud.sdk.Rtcc;
import net.rtccloud.sdk.User;

/* JADX INFO: loaded from: classes3.dex */
public final class DataChannelParser {

    public static final class Location {
        public static final SimpleDateFormat DATE_FORMAT = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss Z", Locale.US);
        public final int accuracy;
        public final double lat;
        public final double lng;
        public final long timestamp;

        public Location(double d, double d2, long j2, int i2) {
            this.lat = d;
            this.lng = d2;
            this.timestamp = j2;
            this.accuracy = i2;
        }

        public static String format(double d, double d2, String str, int i2) {
            return String.format(Locale.US, DataChannelParserConst.Format, Double.valueOf(d), Double.valueOf(d2), str, Integer.valueOf(i2));
        }

        public static Location parse(String str) {
            int i2;
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            String[] strArrSplit = str.split("\\|");
            if (strArrSplit.length <= 0) {
                return null;
            }
            String[] strArrSplit2 = strArrSplit[0].split(":");
            if (strArrSplit2.length < 2) {
                return null;
            }
            try {
                double d = Double.parseDouble(strArrSplit2[0]);
                double d2 = Double.parseDouble(strArrSplit2[1]);
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (strArrSplit.length > 1) {
                    try {
                        jCurrentTimeMillis = DATE_FORMAT.parse(strArrSplit[1]).getTime();
                    } catch (ParseException e2) {
                        e2.printStackTrace();
                    }
                }
                long j2 = jCurrentTimeMillis;
                if (strArrSplit.length > 2) {
                    try {
                        i2 = Integer.parseInt(strArrSplit[2]);
                    } catch (NumberFormatException unused) {
                        i2 = -1;
                    }
                } else {
                    i2 = -1;
                }
                return new Location(d, d2, j2, i2);
            } catch (Exception unused2) {
                return null;
            }
        }
    }

    public static final class Messaging {

        @Json(name = "msg")
        private final String content;

        @Json(name = "role")
        private final String role;

        @Json(name = "from")
        private final String uid;

        public Messaging(String str, String str2, String str3) {
            this.content = str;
            this.uid = str2;
            this.role = str3;
        }

        public static Message.Incoming fromJson(String str) {
            Messaging messaging;
            if (str == null || (messaging = (Messaging) Moshi.fromJson(Messaging.class, str)) == null) {
                return null;
            }
            return Message.newIncomingMessage().content(messaging.content).uid(messaging.uid).role(messaging.role).build();
        }

        public static String toJson(Message.Outgoing outgoing) {
            return Moshi.toJson(Messaging.class, new Messaging(outgoing.content(), outgoing.uid(), outgoing.role()));
        }
    }

    public static final class UserInfo {

        @Json(name = "caseAttendee")
        private final String caseReportId;

        @Json(name = "displayname")
        private final String displayName;

        @Json(name = "ip")
        private final String ip;

        @Json(name = "os")
        private final String os;

        @Json(name = "sixDigits")
        private final String pincode;

        @Json(name = "product")
        private final Integer product;

        @Json(name = "usecase")
        private final String usecaseId;

        @Json(name = "isMobile")
        private final boolean isMobile = true;

        @Json(name = "clientMode")
        private final String clientMode = "mobileApp";

        public UserInfo(Context context, Session session) {
            Usecase usecase = session.usecase;
            this.usecaseId = usecase.id();
            Integer num = usecase.productId;
            this.product = num == null ? null : num;
            this.os = context.getResources().getConfiguration().smallestScreenWidthDp >= 600 ? "apad" : ReferenceApiV3ConstKt.Device_TYPE;
            User user = Rtcc.instance().user();
            this.displayName = UriExtensionsKt.getDisplayName(session.config.uri());
            this.ip = user != null ? user.ip() : null;
            this.pincode = session.config.pin();
            this.caseReportId = session.caseReportId();
        }

        public String toJson() {
            return Moshi.toJson(UserInfo.class, this);
        }
    }

    private DataChannelParser() {
    }
}
