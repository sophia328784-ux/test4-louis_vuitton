package com.sightcall.universal.media;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.squareup.moshi.Json;
import defpackage.n00;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes3.dex */
class Upload {

    /* JADX INFO: renamed from: com.sightcall.universal.media.Upload$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sightcall$universal$media$Metadata$Origin;

        static {
            int[] iArr = new int[Metadata.Origin.values().length];
            $SwitchMap$com$sightcall$universal$media$Metadata$Origin = iArr;
            try {
                iArr[Metadata.Origin.CAMERA.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sightcall$universal$media$Metadata$Origin[Metadata.Origin.PHOTO.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sightcall$universal$media$Metadata$Origin[Metadata.Origin.VIDEO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sightcall$universal$media$Metadata$Origin[Metadata.Origin.PICTURE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sightcall$universal$media$Metadata$Origin[Metadata.Origin.URL.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sightcall$universal$media$Metadata$Origin[Metadata.Origin.UNKNOWN.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public static class Request {

        @Json(name = "uploadPicture")
        final Data data;

        public static class Data {
            private static final String BASE64_ANDROID = "iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAMAAAAoLQ9TAAAACVBMVEWkxjn///+qykWo8KzNAAAAM0lEQVQYlWNgBAIGRkY4BWEzMDEAAbIomA9XwQAHuARQAFgvQgUSSYkAke4AMZH9glcAAER6AHsbcXoqAAAAAElFTkSuQmCC";
            private static final SimpleDateFormat DATE_FORMAT = new SimpleDateFormat(com.android.wiimu.model.cling_callback.renderingcontrol.alarm.b.f22423j, Locale.US);
            private static final String ELAPSED_TIME_FORMAT = "%02d:%02d:%02d";

            @Json(name = "case_id")
            final String caseReportId;

            @Json(name = "content")
            final String content;

            @Json(name = "latitude")
            final Double lat;

            @Json(name = "longitude")
            final Double lng;

            @Json(name = "origin")
            final String origin;

            @Json(name = "reference")
            final String reference;

            @Json(name = "call_duration")
            final String timecode;

            @Json(name = "timestamp")
            final String timestamp;

            @Json(name = "usecase")
            final int usecaseId;

            public Data(Metadata metadata, String str) {
                Date date = new Date(metadata.timestamp);
                this.usecaseId = metadata.usecaseId;
                this.content = str;
                this.timecode = elapsedTime(metadata.timecode);
                this.reference = metadata.reference;
                this.caseReportId = metadata.caseReportId;
                this.origin = parseOrigin(metadata.origin);
                double d = metadata.lat;
                this.lat = d != 0.0d ? Double.valueOf(d) : null;
                double d2 = metadata.lng;
                this.lng = d2 != 0.0d ? Double.valueOf(d2) : null;
                this.timestamp = DATE_FORMAT.format(date);
            }

            public static String elapsedTime(long j2) {
                long j3 = j2 / 3600000;
                TimeUnit timeUnit = TimeUnit.HOURS;
                long millis = (j2 - timeUnit.toMillis(j3)) / 60000;
                return String.format(Locale.US, ELAPSED_TIME_FORMAT, Long.valueOf(j3), Long.valueOf(millis), Long.valueOf(((j2 - timeUnit.toMillis(j3)) - TimeUnit.MINUTES.toMillis(millis)) / 1000));
            }

            public static String parseOrigin(Metadata.Origin origin) {
                int[] iArr = AnonymousClass1.$SwitchMap$com$sightcall$universal$media$Metadata$Origin;
                if (origin == null) {
                    origin = Metadata.Origin.UNKNOWN;
                }
                int i2 = iArr[origin.ordinal()];
                if (i2 == 1) {
                    return "camera";
                }
                if (i2 == 2) {
                    return "photo";
                }
                if (i2 == 3) {
                    return "video";
                }
                if (i2 != 4) {
                    return i2 != 5 ? "" : ConfigurationName.DOWNLOAD_PLUGIN_URL;
                }
                return "picture";
            }

            public String toString() {
                StringBuilder sb = new StringBuilder("Data{usecaseId=");
                sb.append(this.usecaseId);
                sb.append(", origin='");
                sb.append(this.origin);
                sb.append("', caseReportId='");
                sb.append(this.caseReportId);
                sb.append("', reference='");
                sb.append(this.reference);
                sb.append("', lat=");
                sb.append(this.lat);
                sb.append(", lng=");
                sb.append(this.lng);
                sb.append(", timestamp='");
                sb.append(this.timestamp);
                sb.append("', timecode='");
                return n00.r(this.timecode, "'}", sb);
            }
        }

        public Request(Metadata metadata, String str) {
            this.data = new Data(metadata, str);
        }

        public String toString() {
            return "Request{data=" + this.data + '}';
        }
    }
}
