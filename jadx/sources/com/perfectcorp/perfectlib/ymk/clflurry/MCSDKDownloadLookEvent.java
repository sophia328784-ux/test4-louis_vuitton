package com.perfectcorp.perfectlib.ymk.clflurry;

import android.text.TextUtils;
import com.appsflyer.sdk_base.referrer.Payload;
import java.util.HashMap;

/* JADX INFO: loaded from: classes3.dex */
public class MCSDKDownloadLookEvent extends BaseEvent {

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Status f41952a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f41953b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f41954c;
        public final Source d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f41955e;

        public Builder(Status status, Source source) {
            this.f41952a = status;
            this.d = source;
        }

        public final void a() {
            if (this.d == Source.UNKNOWN) {
                return;
            }
            MCSDKDownloadLookEvent mCSDKDownloadLookEvent = new MCSDKDownloadLookEvent("MCSDK_download_look");
            HashMap map = new HashMap();
            map.put("ver", "1");
            Status status = this.f41952a;
            map.put("status", status.f41959a);
            if (!TextUtils.isEmpty(this.f41953b)) {
                map.put("look_guid", this.f41953b);
            }
            map.put("size", this.f41954c);
            if (this.f41955e > 0) {
                map.put(status.f41960b, Long.toString(this.f41955e));
            }
            mCSDKDownloadLookEvent.c(map);
            mCSDKDownloadLookEvent.b();
        }

        public final void b(long j2) {
            this.f41954c = String.format("%1.3f", Double.valueOf(j2 / 1000.0d));
        }
    }

    public enum Source {
        UNKNOWN("unknown"),
        STORE(Payload.TYPE_STORE),
        CAM("cam");


        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f41957a;

        Source(String str) {
            this.f41957a = str;
        }
    }

    public enum Status {
        CLICK_DOWNLOAD("click_download", ""),
        START_DOWNLOAD("start_download", "diff_time_1"),
        COMPLETE_DOWNLOAD("complete_download", "diff_time_2"),
        LOOK_AVAILABLE("look_available", "diff_time_3"),
        FAIL_DOWNLOAD("fail_download", "");


        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f41959a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final String f41960b;

        Status(String str, String str2) {
            this.f41959a = str;
            this.f41960b = str2;
        }
    }
}
