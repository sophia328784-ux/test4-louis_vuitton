package com.sightcall.universal.ar;

import android.graphics.Bitmap;
import android.util.Base64;
import com.batch.android.s.b;
import com.batch.android.v0.l;
import com.sightcall.universal.api.JsonApi;
import com.squareup.moshi.Json;
import java.io.ByteArrayOutputStream;

/* JADX INFO: loaded from: classes3.dex */
public class ArPictureUpload implements JsonApi.Included {

    @Json(name = l.f24145h)
    final Attributes attributes;

    @Json(name = b.a.f24015b)
    final String id;

    @Json(name = "type")
    final String type;

    public static class Attributes {

        @Json(name = "content")
        final String base64;

        @Json(name = "case-id")
        final String caseReportId;

        @Json(name = "latitude")
        final Double lat;

        @Json(name = "longitude")
        final Double lng;

        @Json(name = "measures")
        final ArPosition[] measures;

        @Json(name = "origin")
        final String origin = "measure";

        public Attributes(String str, String str2, Double d, Double d2, ArPosition[] arPositionArr) {
            this.base64 = str;
            this.caseReportId = str2;
            this.lat = d;
            this.lng = d2;
            this.measures = arPositionArr;
        }
    }

    public static class Builder {
        private final String base64;
        private final String caseReportId;
        private Double lat;
        private Double lng;
        private ArPosition[] measures;

        public Builder(String str, Bitmap bitmap) {
            this.caseReportId = str;
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            bitmap.compress(Bitmap.CompressFormat.JPEG, 90, byteArrayOutputStream);
            this.base64 = Base64.encodeToString(byteArrayOutputStream.toByteArray(), 0);
        }

        public ArPictureUpload build() {
            return new ArPictureUpload(new Attributes(this.base64, this.caseReportId, this.lat, this.lng, this.measures));
        }

        public Builder latLng(Double d, Double d2) {
            this.lat = d;
            this.lng = d2;
            return this;
        }

        public Builder measures(ArPosition[] arPositionArr) {
            this.measures = arPositionArr;
            return this;
        }
    }

    private ArPictureUpload(String str, Attributes attributes) {
        this.type = "upload-pictures";
        this.id = str;
        this.attributes = attributes;
    }

    @Override // com.sightcall.universal.api.JsonApi.Included
    public String id() {
        return this.id;
    }

    @Override // com.sightcall.universal.api.JsonApi.Included
    public String type() {
        return "upload-pictures";
    }

    public /* synthetic */ ArPictureUpload(Attributes attributes) {
        this(null, attributes);
    }
}
