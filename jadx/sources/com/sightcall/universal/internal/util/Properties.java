package com.sightcall.universal.internal.util;

import android.content.Context;
import android.os.Build;
import com.appsflyer.sdk_base.referrer.Payload;
import com.networkbench.nbslens.nbsnativecrashlib.m;
import com.sightcall.pratik.extensions.ContextExtensionsKt;
import com.sightcall.pratik.utils.SdkUtilsKt;
import com.sightcall.session.datasource.reference.v3.ReferenceApiV3ConstKt;
import com.sightcall.universal.model.Moshi;
import com.squareup.moshi.Json;

/* JADX INFO: loaded from: classes3.dex */
public final class Properties {

    @Json(name = Payload.TYPE_APP)
    private final App app;

    @Json(name = "hardware")
    private final Hardware hardware;

    @Json(name = "os")
    private final Os os;

    public Properties(Context context) {
        int i2 = 0;
        this.os = new Os(i2);
        this.hardware = new Hardware(i2);
        this.app = new App(context, i2);
    }

    public String toJson() {
        return Moshi.toJson(Properties.class, this);
    }

    public static class Os {

        @Json(name = "name")
        private final String name;

        @Json(name = "version")
        private final Version version;

        private Os() {
            this.name = ReferenceApiV3ConstKt.OS_NAME;
            this.version = new Version(0);
        }

        public static class Version {

            @Json(name = m.v)
            private final int code;

            @Json(name = "name")
            private final String name;

            private Version() {
                this.name = Build.VERSION.RELEASE;
                this.code = SdkUtilsKt.sdkVersion();
            }

            public /* synthetic */ Version(int i2) {
                this();
            }
        }

        public /* synthetic */ Os(int i2) {
            this();
        }
    }

    public static class App {

        @Json(name = "name")
        private final String name;

        @Json(name = "packagename")
        private final String packageName;

        @Json(name = "version")
        private final Version version;

        private App(Context context) {
            this.name = net.rtccloud.sdk.util.Utils.appName(context);
            this.version = new Version(context, 0);
            this.packageName = context.getPackageName();
        }

        public static class Version {

            @Json(name = m.v)
            private final int code;

            @Json(name = "name")
            private final String name;

            private Version(Context context) {
                this.name = ContextExtensionsKt.appVersionName(context);
                this.code = net.rtccloud.sdk.util.Utils.appVersionCode(context);
            }

            public /* synthetic */ Version(Context context, int i2) {
                this(context);
            }
        }

        public /* synthetic */ App(Context context, int i2) {
            this(context);
        }
    }

    public static class Hardware {

        @Json(name = "brand")
        private final String brand;

        @Json(name = "manufacturer")
        private final String manufacturer;

        @Json(name = "model")
        private final String model;

        private Hardware() {
            this.manufacturer = Build.MANUFACTURER;
            this.brand = Build.BRAND;
            this.model = Build.MODEL;
        }

        public /* synthetic */ Hardware(int i2) {
            this();
        }
    }
}
