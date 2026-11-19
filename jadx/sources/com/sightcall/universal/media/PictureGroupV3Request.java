package com.sightcall.universal.media;

import com.batch.android.v0.l;
import com.google.gson.annotations.SerializedName;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import defpackage.tr;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@kotlin.Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0011B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\r\u001a\u00020\u000eHÖ\u0081\u0004J\n\u0010\u000f\u001a\u00020\u0010HÖ\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/sightcall/universal/media/PictureGroupV3Request;", "", DbParams.KEY_DATA, "Lcom/sightcall/universal/media/PictureGroupV3Request$Data;", "<init>", "(Lcom/sightcall/universal/media/PictureGroupV3Request$Data;)V", "getData", "()Lcom/sightcall/universal/media/PictureGroupV3Request$Data;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "Data", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class PictureGroupV3Request {

    @SerializedName(DbParams.KEY_DATA)
    private final Data data;

    public PictureGroupV3Request(Data data) {
        data.getClass();
        this.data = data;
    }

    public static /* synthetic */ PictureGroupV3Request copy$default(PictureGroupV3Request pictureGroupV3Request, Data data, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            data = pictureGroupV3Request.data;
        }
        return pictureGroupV3Request.copy(data);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Data getData() {
        return this.data;
    }

    public final PictureGroupV3Request copy(Data data) {
        data.getClass();
        return new PictureGroupV3Request(data);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof PictureGroupV3Request) && Intrinsics.c(this.data, ((PictureGroupV3Request) other).data);
    }

    public final Data getData() {
        return this.data;
    }

    public int hashCode() {
        return this.data.hashCode();
    }

    public String toString() {
        return "PictureGroupV3Request(data=" + this.data + ")";
    }

    @kotlin.Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001:\u0002\u001a\u001bB!\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0007HÆ\u0003J'\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0014\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0017\u001a\u00020\u0018HÖ\u0081\u0004J\n\u0010\u0019\u001a\u00020\u0003HÖ\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001c"}, d2 = {"Lcom/sightcall/universal/media/PictureGroupV3Request$Data;", "", "type", "", l.f24145h, "Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;", "relationships", "Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Relationships;", "<init>", "(Ljava/lang/String;Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Relationships;)V", "getType", "()Ljava/lang/String;", "getAttributes", "()Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;", "getRelationships", "()Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Relationships;", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "Attributes", "Relationships", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Data {

        @SerializedName(l.f24145h)
        private final Attributes attributes;

        @SerializedName("relationships")
        private final Relationships relationships;

        @SerializedName("type")
        private final String type;

        @kotlin.Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0086\b\u0018\u00002\u00020\u0001:\u0002*+Ba\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b\u0012\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u000b¢\u0006\u0004\b\u000f\u0010\u0010J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\"\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000bHÆ\u0003J\u0011\u0010#\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u000bHÆ\u0003Js\u0010$\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b2\u0010\b\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u000bHÆ\u0001J\u0014\u0010%\u001a\u00020&2\b\u0010'\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010(\u001a\u00020\u0005HÖ\u0081\u0004J\n\u0010)\u001a\u00020\u0003HÖ\u0081\u0004R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0012R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0012R\u0018\u0010\b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0012R\u0018\u0010\t\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0012R\u001e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u001e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001a¨\u0006,"}, d2 = {"Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;", "", "reference", "", "pictureCount", "", "emailFrom", "emailTo", "emailSubject", "emailBody", "measures", "", "Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes$Measure;", "ocr", "Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes$Ocr;", "<init>", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V", "getReference", "()Ljava/lang/String;", "getPictureCount", "()I", "getEmailFrom", "getEmailTo", "getEmailSubject", "getEmailBody", "getMeasures", "()Ljava/util/List;", "getOcr", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "equals", "", "other", "hashCode", "toString", "Measure", "Ocr", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class Attributes {

            @SerializedName("emailBody")
            private final String emailBody;

            @SerializedName("emailFrom")
            private final String emailFrom;

            @SerializedName("emailSubject")
            private final String emailSubject;

            @SerializedName("emailTo")
            private final String emailTo;

            @SerializedName("measures")
            private final List<Measure> measures;

            @SerializedName("ocr")
            private final List<Ocr> ocr;

            @SerializedName("pictureCount")
            private final int pictureCount;

            @SerializedName("reference")
            private final String reference;

            @kotlin.Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0014\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0012\u001a\u00020\u0005HÖ\u0081\u0004J\n\u0010\u0013\u001a\u00020\u0003HÖ\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0014"}, d2 = {"Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes$Measure;", "", com.batch.android.s.b.a.f24015b, "", "number", "", "<init>", "(Ljava/lang/String;I)V", "getId", "()Ljava/lang/String;", "getNumber", "()I", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
            public static final /* data */ class Measure {

                @SerializedName(com.batch.android.s.b.a.f24015b)
                private final String id;

                @SerializedName("number")
                private final int number;

                public Measure(String str, int i2) {
                    str.getClass();
                    this.id = str;
                    this.number = i2;
                }

                public static /* synthetic */ Measure copy$default(Measure measure, String str, int i2, int i3, Object obj) {
                    if ((i3 & 1) != 0) {
                        str = measure.id;
                    }
                    if ((i3 & 2) != 0) {
                        i2 = measure.number;
                    }
                    return measure.copy(str, i2);
                }

                /* JADX INFO: renamed from: component1, reason: from getter */
                public final String getId() {
                    return this.id;
                }

                /* JADX INFO: renamed from: component2, reason: from getter */
                public final int getNumber() {
                    return this.number;
                }

                public final Measure copy(String id, int number) {
                    id.getClass();
                    return new Measure(id, number);
                }

                public boolean equals(Object other) {
                    if (this == other) {
                        return true;
                    }
                    if (!(other instanceof Measure)) {
                        return false;
                    }
                    Measure measure = (Measure) other;
                    return Intrinsics.c(this.id, measure.id) && this.number == measure.number;
                }

                public final String getId() {
                    return this.id;
                }

                public final int getNumber() {
                    return this.number;
                }

                public int hashCode() {
                    return Integer.hashCode(this.number) + (this.id.hashCode() * 31);
                }

                public String toString() {
                    return "Measure(id=" + this.id + ", number=" + this.number + ")";
                }
            }

            @kotlin.Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0013\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003¢\u0006\u0004\b\t\u0010\nJ\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J;\u0010\u0017\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u001b\u001a\u00020\u0005HÖ\u0081\u0004J\n\u0010\u001c\u001a\u00020\u0003HÖ\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0016\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\fR\u0016\u0010\u0007\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\fR\u0016\u0010\b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\f¨\u0006\u001d"}, d2 = {"Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes$Ocr;", "", com.batch.android.s.b.a.f24015b, "", "text", "", "translatedText", "language", "translatedLanguage", "<init>", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getId", "()Ljava/lang/String;", "getText", "()I", "getTranslatedText", "getLanguage", "getTranslatedLanguage", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "toString", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
            public static final /* data */ class Ocr {

                @SerializedName(com.batch.android.s.b.a.f24015b)
                private final String id;

                @SerializedName("language")
                private final String language;

                @SerializedName("text")
                private final int text;

                @SerializedName("translatedLanguage")
                private final String translatedLanguage;

                @SerializedName("translatedText")
                private final String translatedText;

                public Ocr(String str, int i2, String str2, String str3, String str4) {
                    d21.y(str, str2, str3, str4);
                    this.id = str;
                    this.text = i2;
                    this.translatedText = str2;
                    this.language = str3;
                    this.translatedLanguage = str4;
                }

                public static /* synthetic */ Ocr copy$default(Ocr ocr, String str, int i2, String str2, String str3, String str4, int i3, Object obj) {
                    if ((i3 & 1) != 0) {
                        str = ocr.id;
                    }
                    if ((i3 & 2) != 0) {
                        i2 = ocr.text;
                    }
                    if ((i3 & 4) != 0) {
                        str2 = ocr.translatedText;
                    }
                    if ((i3 & 8) != 0) {
                        str3 = ocr.language;
                    }
                    if ((i3 & 16) != 0) {
                        str4 = ocr.translatedLanguage;
                    }
                    String str5 = str4;
                    String str6 = str2;
                    return ocr.copy(str, i2, str6, str3, str5);
                }

                /* JADX INFO: renamed from: component1, reason: from getter */
                public final String getId() {
                    return this.id;
                }

                /* JADX INFO: renamed from: component2, reason: from getter */
                public final int getText() {
                    return this.text;
                }

                /* JADX INFO: renamed from: component3, reason: from getter */
                public final String getTranslatedText() {
                    return this.translatedText;
                }

                /* JADX INFO: renamed from: component4, reason: from getter */
                public final String getLanguage() {
                    return this.language;
                }

                /* JADX INFO: renamed from: component5, reason: from getter */
                public final String getTranslatedLanguage() {
                    return this.translatedLanguage;
                }

                public final Ocr copy(String id, int text, String translatedText, String language, String translatedLanguage) {
                    id.getClass();
                    translatedText.getClass();
                    language.getClass();
                    translatedLanguage.getClass();
                    return new Ocr(id, text, translatedText, language, translatedLanguage);
                }

                public boolean equals(Object other) {
                    if (this == other) {
                        return true;
                    }
                    if (!(other instanceof Ocr)) {
                        return false;
                    }
                    Ocr ocr = (Ocr) other;
                    return Intrinsics.c(this.id, ocr.id) && this.text == ocr.text && Intrinsics.c(this.translatedText, ocr.translatedText) && Intrinsics.c(this.language, ocr.language) && Intrinsics.c(this.translatedLanguage, ocr.translatedLanguage);
                }

                public final String getId() {
                    return this.id;
                }

                public final String getLanguage() {
                    return this.language;
                }

                public final int getText() {
                    return this.text;
                }

                public final String getTranslatedLanguage() {
                    return this.translatedLanguage;
                }

                public final String getTranslatedText() {
                    return this.translatedText;
                }

                public int hashCode() {
                    return this.translatedLanguage.hashCode() + fc.b(fc.b(tr.b(this.text, this.id.hashCode() * 31, 31), 31, this.translatedText), 31, this.language);
                }

                public String toString() {
                    String str = this.id;
                    int i2 = this.text;
                    String str2 = this.translatedText;
                    String str3 = this.language;
                    String str4 = this.translatedLanguage;
                    StringBuilder sbR = fc.r(i2, "Ocr(id=", str, ", text=", ", translatedText=");
                    cj.C(sbR, str2, ", language=", str3, ", translatedLanguage=");
                    return n00.r(str4, ")", sbR);
                }
            }

            public Attributes(String str, int i2, String str2, String str3, String str4, String str5, List<Measure> list, List<Ocr> list2) {
                this.reference = str;
                this.pictureCount = i2;
                this.emailFrom = str2;
                this.emailTo = str3;
                this.emailSubject = str4;
                this.emailBody = str5;
                this.measures = list;
                this.ocr = list2;
            }

            /* JADX WARN: Multi-variable type inference failed */
            public static /* synthetic */ Attributes copy$default(Attributes attributes, String str, int i2, String str2, String str3, String str4, String str5, List list, List list2, int i3, Object obj) {
                if ((i3 & 1) != 0) {
                    str = attributes.reference;
                }
                if ((i3 & 2) != 0) {
                    i2 = attributes.pictureCount;
                }
                if ((i3 & 4) != 0) {
                    str2 = attributes.emailFrom;
                }
                if ((i3 & 8) != 0) {
                    str3 = attributes.emailTo;
                }
                if ((i3 & 16) != 0) {
                    str4 = attributes.emailSubject;
                }
                if ((i3 & 32) != 0) {
                    str5 = attributes.emailBody;
                }
                if ((i3 & 64) != 0) {
                    list = attributes.measures;
                }
                if ((i3 & 128) != 0) {
                    list2 = attributes.ocr;
                }
                List list3 = list;
                List list4 = list2;
                String str6 = str4;
                String str7 = str5;
                return attributes.copy(str, i2, str2, str3, str6, str7, list3, list4);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final String getReference() {
                return this.reference;
            }

            /* JADX INFO: renamed from: component2, reason: from getter */
            public final int getPictureCount() {
                return this.pictureCount;
            }

            /* JADX INFO: renamed from: component3, reason: from getter */
            public final String getEmailFrom() {
                return this.emailFrom;
            }

            /* JADX INFO: renamed from: component4, reason: from getter */
            public final String getEmailTo() {
                return this.emailTo;
            }

            /* JADX INFO: renamed from: component5, reason: from getter */
            public final String getEmailSubject() {
                return this.emailSubject;
            }

            /* JADX INFO: renamed from: component6, reason: from getter */
            public final String getEmailBody() {
                return this.emailBody;
            }

            public final List<Measure> component7() {
                return this.measures;
            }

            public final List<Ocr> component8() {
                return this.ocr;
            }

            public final Attributes copy(String reference, int pictureCount, String emailFrom, String emailTo, String emailSubject, String emailBody, List<Measure> measures, List<Ocr> ocr) {
                return new Attributes(reference, pictureCount, emailFrom, emailTo, emailSubject, emailBody, measures, ocr);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof Attributes)) {
                    return false;
                }
                Attributes attributes = (Attributes) other;
                return Intrinsics.c(this.reference, attributes.reference) && this.pictureCount == attributes.pictureCount && Intrinsics.c(this.emailFrom, attributes.emailFrom) && Intrinsics.c(this.emailTo, attributes.emailTo) && Intrinsics.c(this.emailSubject, attributes.emailSubject) && Intrinsics.c(this.emailBody, attributes.emailBody) && Intrinsics.c(this.measures, attributes.measures) && Intrinsics.c(this.ocr, attributes.ocr);
            }

            public final String getEmailBody() {
                return this.emailBody;
            }

            public final String getEmailFrom() {
                return this.emailFrom;
            }

            public final String getEmailSubject() {
                return this.emailSubject;
            }

            public final String getEmailTo() {
                return this.emailTo;
            }

            public final List<Measure> getMeasures() {
                return this.measures;
            }

            public final List<Ocr> getOcr() {
                return this.ocr;
            }

            public final int getPictureCount() {
                return this.pictureCount;
            }

            public final String getReference() {
                return this.reference;
            }

            public int hashCode() {
                String str = this.reference;
                int iB = tr.b(this.pictureCount, (str == null ? 0 : str.hashCode()) * 31, 31);
                String str2 = this.emailFrom;
                int iHashCode = (iB + (str2 == null ? 0 : str2.hashCode())) * 31;
                String str3 = this.emailTo;
                int iHashCode2 = (iHashCode + (str3 == null ? 0 : str3.hashCode())) * 31;
                String str4 = this.emailSubject;
                int iHashCode3 = (iHashCode2 + (str4 == null ? 0 : str4.hashCode())) * 31;
                String str5 = this.emailBody;
                int iHashCode4 = (iHashCode3 + (str5 == null ? 0 : str5.hashCode())) * 31;
                List<Measure> list = this.measures;
                int iHashCode5 = (iHashCode4 + (list == null ? 0 : list.hashCode())) * 31;
                List<Ocr> list2 = this.ocr;
                return iHashCode5 + (list2 != null ? list2.hashCode() : 0);
            }

            public String toString() {
                String str = this.reference;
                int i2 = this.pictureCount;
                String str2 = this.emailFrom;
                String str3 = this.emailTo;
                String str4 = this.emailSubject;
                String str5 = this.emailBody;
                List<Measure> list = this.measures;
                List<Ocr> list2 = this.ocr;
                StringBuilder sbR = fc.r(i2, "Attributes(reference=", str, ", pictureCount=", ", emailFrom=");
                cj.C(sbR, str2, ", emailTo=", str3, ", emailSubject=");
                cj.C(sbR, str4, ", emailBody=", str5, ", measures=");
                sbR.append(list);
                sbR.append(", ocr=");
                sbR.append(list2);
                sbR.append(")");
                return sbR.toString();
            }
        }

        public Data(String str, Attributes attributes, Relationships relationships) {
            str.getClass();
            attributes.getClass();
            relationships.getClass();
            this.type = str;
            this.attributes = attributes;
            this.relationships = relationships;
        }

        public static /* synthetic */ Data copy$default(Data data, String str, Attributes attributes, Relationships relationships, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = data.type;
            }
            if ((i2 & 2) != 0) {
                attributes = data.attributes;
            }
            if ((i2 & 4) != 0) {
                relationships = data.relationships;
            }
            return data.copy(str, attributes, relationships);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getType() {
            return this.type;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final Attributes getAttributes() {
            return this.attributes;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final Relationships getRelationships() {
            return this.relationships;
        }

        public final Data copy(String type, Attributes attributes, Relationships relationships) {
            type.getClass();
            attributes.getClass();
            relationships.getClass();
            return new Data(type, attributes, relationships);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Data)) {
                return false;
            }
            Data data = (Data) other;
            return Intrinsics.c(this.type, data.type) && Intrinsics.c(this.attributes, data.attributes) && Intrinsics.c(this.relationships, data.relationships);
        }

        public final Attributes getAttributes() {
            return this.attributes;
        }

        public final Relationships getRelationships() {
            return this.relationships;
        }

        public final String getType() {
            return this.type;
        }

        public int hashCode() {
            return this.relationships.hashCode() + ((this.attributes.hashCode() + (this.type.hashCode() * 31)) * 31);
        }

        public String toString() {
            return "Data(type=" + this.type + ", attributes=" + this.attributes + ", relationships=" + this.relationships + ")";
        }

        @kotlin.Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\b\u0018\u00002\u00020\u0001:\u0006%&'()*B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\f\u0010\rJ\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u000bHÆ\u0003JA\u0010\u001d\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000bHÆ\u0001J\u0014\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010!\u001a\u00020\"HÖ\u0081\u0004J\n\u0010#\u001a\u00020$HÖ\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0018\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0018\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017¨\u0006+"}, d2 = {"Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Relationships;", "", "caseReport", "Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Relationships$CaseReport;", "usecase", "Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Relationships$Usecase;", "acdProduct", "Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Relationships$AcdProduct;", "acdLanguage", "Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Relationships$AcdLanguage;", "acdLocations", "Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Relationships$AcdLocations;", "<init>", "(Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Relationships$CaseReport;Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Relationships$Usecase;Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Relationships$AcdProduct;Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Relationships$AcdLanguage;Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Relationships$AcdLocations;)V", "getCaseReport", "()Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Relationships$CaseReport;", "getUsecase", "()Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Relationships$Usecase;", "getAcdProduct", "()Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Relationships$AcdProduct;", "getAcdLanguage", "()Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Relationships$AcdLanguage;", "getAcdLocations", "()Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Relationships$AcdLocations;", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "", "toString", "", "Data", "CaseReport", "Usecase", "AcdProduct", "AcdLanguage", "AcdLocations", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class Relationships {

            @SerializedName("acdLanguage")
            private final AcdLanguage acdLanguage;

            @SerializedName("acdLocations")
            private final AcdLocations acdLocations;

            @SerializedName("acdProduct")
            private final AcdProduct acdProduct;

            @SerializedName("caseReport")
            private final CaseReport caseReport;

            @SerializedName("usecase")
            private final Usecase usecase;

            /* JADX INFO: renamed from: com.sightcall.universal.media.PictureGroupV3Request$Data$Relationships$Data, reason: collision with other inner class name */
            @kotlin.Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0010\u001a\u00020\u0011HÖ\u0081\u0004J\n\u0010\u0012\u001a\u00020\u0003HÖ\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\b¨\u0006\u0013"}, d2 = {"Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Relationships$Data;", "", com.batch.android.s.b.a.f24015b, "", "type", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "getId", "()Ljava/lang/String;", "getType", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
            public static final /* data */ class C0251Data {

                @SerializedName(com.batch.android.s.b.a.f24015b)
                private final String id;

                @SerializedName("type")
                private final String type;

                public C0251Data(String str, String str2) {
                    str.getClass();
                    str2.getClass();
                    this.id = str;
                    this.type = str2;
                }

                public static /* synthetic */ C0251Data copy$default(C0251Data c0251Data, String str, String str2, int i2, Object obj) {
                    if ((i2 & 1) != 0) {
                        str = c0251Data.id;
                    }
                    if ((i2 & 2) != 0) {
                        str2 = c0251Data.type;
                    }
                    return c0251Data.copy(str, str2);
                }

                /* JADX INFO: renamed from: component1, reason: from getter */
                public final String getId() {
                    return this.id;
                }

                /* JADX INFO: renamed from: component2, reason: from getter */
                public final String getType() {
                    return this.type;
                }

                public final C0251Data copy(String id, String type) {
                    id.getClass();
                    type.getClass();
                    return new C0251Data(id, type);
                }

                public boolean equals(Object other) {
                    if (this == other) {
                        return true;
                    }
                    if (!(other instanceof C0251Data)) {
                        return false;
                    }
                    C0251Data c0251Data = (C0251Data) other;
                    return Intrinsics.c(this.id, c0251Data.id) && Intrinsics.c(this.type, c0251Data.type);
                }

                public final String getId() {
                    return this.id;
                }

                public final String getType() {
                    return this.type;
                }

                public int hashCode() {
                    return this.type.hashCode() + (this.id.hashCode() * 31);
                }

                public String toString() {
                    return d21.l("Data(id=", this.id, ", type=", this.type, ")");
                }
            }

            public Relationships(CaseReport caseReport, Usecase usecase, AcdProduct acdProduct, AcdLanguage acdLanguage, AcdLocations acdLocations) {
                caseReport.getClass();
                usecase.getClass();
                this.caseReport = caseReport;
                this.usecase = usecase;
                this.acdProduct = acdProduct;
                this.acdLanguage = acdLanguage;
                this.acdLocations = acdLocations;
            }

            public static /* synthetic */ Relationships copy$default(Relationships relationships, CaseReport caseReport, Usecase usecase, AcdProduct acdProduct, AcdLanguage acdLanguage, AcdLocations acdLocations, int i2, Object obj) {
                if ((i2 & 1) != 0) {
                    caseReport = relationships.caseReport;
                }
                if ((i2 & 2) != 0) {
                    usecase = relationships.usecase;
                }
                if ((i2 & 4) != 0) {
                    acdProduct = relationships.acdProduct;
                }
                if ((i2 & 8) != 0) {
                    acdLanguage = relationships.acdLanguage;
                }
                if ((i2 & 16) != 0) {
                    acdLocations = relationships.acdLocations;
                }
                AcdLocations acdLocations2 = acdLocations;
                AcdProduct acdProduct2 = acdProduct;
                return relationships.copy(caseReport, usecase, acdProduct2, acdLanguage, acdLocations2);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final CaseReport getCaseReport() {
                return this.caseReport;
            }

            /* JADX INFO: renamed from: component2, reason: from getter */
            public final Usecase getUsecase() {
                return this.usecase;
            }

            /* JADX INFO: renamed from: component3, reason: from getter */
            public final AcdProduct getAcdProduct() {
                return this.acdProduct;
            }

            /* JADX INFO: renamed from: component4, reason: from getter */
            public final AcdLanguage getAcdLanguage() {
                return this.acdLanguage;
            }

            /* JADX INFO: renamed from: component5, reason: from getter */
            public final AcdLocations getAcdLocations() {
                return this.acdLocations;
            }

            public final Relationships copy(CaseReport caseReport, Usecase usecase, AcdProduct acdProduct, AcdLanguage acdLanguage, AcdLocations acdLocations) {
                caseReport.getClass();
                usecase.getClass();
                return new Relationships(caseReport, usecase, acdProduct, acdLanguage, acdLocations);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof Relationships)) {
                    return false;
                }
                Relationships relationships = (Relationships) other;
                return Intrinsics.c(this.caseReport, relationships.caseReport) && Intrinsics.c(this.usecase, relationships.usecase) && Intrinsics.c(this.acdProduct, relationships.acdProduct) && Intrinsics.c(this.acdLanguage, relationships.acdLanguage) && Intrinsics.c(this.acdLocations, relationships.acdLocations);
            }

            public final AcdLanguage getAcdLanguage() {
                return this.acdLanguage;
            }

            public final AcdLocations getAcdLocations() {
                return this.acdLocations;
            }

            public final AcdProduct getAcdProduct() {
                return this.acdProduct;
            }

            public final CaseReport getCaseReport() {
                return this.caseReport;
            }

            public final Usecase getUsecase() {
                return this.usecase;
            }

            public int hashCode() {
                int iHashCode = (this.usecase.hashCode() + (this.caseReport.hashCode() * 31)) * 31;
                AcdProduct acdProduct = this.acdProduct;
                int iHashCode2 = (iHashCode + (acdProduct == null ? 0 : acdProduct.hashCode())) * 31;
                AcdLanguage acdLanguage = this.acdLanguage;
                int iHashCode3 = (iHashCode2 + (acdLanguage == null ? 0 : acdLanguage.hashCode())) * 31;
                AcdLocations acdLocations = this.acdLocations;
                return iHashCode3 + (acdLocations != null ? acdLocations.hashCode() : 0);
            }

            public String toString() {
                return "Relationships(caseReport=" + this.caseReport + ", usecase=" + this.usecase + ", acdProduct=" + this.acdProduct + ", acdLanguage=" + this.acdLanguage + ", acdLocations=" + this.acdLocations + ")";
            }

            @kotlin.Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005B\u0011\b\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\u0004\u0010\bJ\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0010\u001a\u00020\u0011HÖ\u0081\u0004J\n\u0010\u0012\u001a\u00020\u0007HÖ\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0013"}, d2 = {"Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Relationships$AcdLanguage;", "", DbParams.KEY_DATA, "Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Relationships$Data;", "<init>", "(Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Relationships$Data;)V", com.batch.android.s.b.a.f24015b, "", "(Ljava/lang/String;)V", "getData", "()Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Relationships$Data;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
            public static final /* data */ class AcdLanguage {

                @SerializedName(DbParams.KEY_DATA)
                private final C0251Data data;

                /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
                public AcdLanguage(String str) {
                    this(new C0251Data(str, "acdLanguages"));
                    str.getClass();
                }

                public static /* synthetic */ AcdLanguage copy$default(AcdLanguage acdLanguage, C0251Data c0251Data, int i2, Object obj) {
                    if ((i2 & 1) != 0) {
                        c0251Data = acdLanguage.data;
                    }
                    return acdLanguage.copy(c0251Data);
                }

                /* JADX INFO: renamed from: component1, reason: from getter */
                public final C0251Data getData() {
                    return this.data;
                }

                public final AcdLanguage copy(C0251Data data) {
                    data.getClass();
                    return new AcdLanguage(data);
                }

                public boolean equals(Object other) {
                    if (this == other) {
                        return true;
                    }
                    return (other instanceof AcdLanguage) && Intrinsics.c(this.data, ((AcdLanguage) other).data);
                }

                public final C0251Data getData() {
                    return this.data;
                }

                public int hashCode() {
                    return this.data.hashCode();
                }

                public String toString() {
                    return "AcdLanguage(data=" + this.data + ")";
                }

                public AcdLanguage(C0251Data c0251Data) {
                    c0251Data.getClass();
                    this.data = c0251Data;
                }
            }

            @kotlin.Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005B\u0011\b\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\u0004\u0010\bJ\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0010\u001a\u00020\u0011HÖ\u0081\u0004J\n\u0010\u0012\u001a\u00020\u0007HÖ\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0013"}, d2 = {"Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Relationships$AcdLocations;", "", DbParams.KEY_DATA, "Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Relationships$Data;", "<init>", "(Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Relationships$Data;)V", com.batch.android.s.b.a.f24015b, "", "(Ljava/lang/String;)V", "getData", "()Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Relationships$Data;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
            public static final /* data */ class AcdLocations {

                @SerializedName(DbParams.KEY_DATA)
                private final C0251Data data;

                /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
                public AcdLocations(String str) {
                    this(new C0251Data(str, "acdLocations"));
                    str.getClass();
                }

                public static /* synthetic */ AcdLocations copy$default(AcdLocations acdLocations, C0251Data c0251Data, int i2, Object obj) {
                    if ((i2 & 1) != 0) {
                        c0251Data = acdLocations.data;
                    }
                    return acdLocations.copy(c0251Data);
                }

                /* JADX INFO: renamed from: component1, reason: from getter */
                public final C0251Data getData() {
                    return this.data;
                }

                public final AcdLocations copy(C0251Data data) {
                    data.getClass();
                    return new AcdLocations(data);
                }

                public boolean equals(Object other) {
                    if (this == other) {
                        return true;
                    }
                    return (other instanceof AcdLocations) && Intrinsics.c(this.data, ((AcdLocations) other).data);
                }

                public final C0251Data getData() {
                    return this.data;
                }

                public int hashCode() {
                    return this.data.hashCode();
                }

                public String toString() {
                    return "AcdLocations(data=" + this.data + ")";
                }

                public AcdLocations(C0251Data c0251Data) {
                    c0251Data.getClass();
                    this.data = c0251Data;
                }
            }

            @kotlin.Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005B\u0011\b\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\u0004\u0010\bJ\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0010\u001a\u00020\u0011HÖ\u0081\u0004J\n\u0010\u0012\u001a\u00020\u0007HÖ\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0013"}, d2 = {"Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Relationships$AcdProduct;", "", DbParams.KEY_DATA, "Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Relationships$Data;", "<init>", "(Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Relationships$Data;)V", com.batch.android.s.b.a.f24015b, "", "(Ljava/lang/String;)V", "getData", "()Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Relationships$Data;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
            public static final /* data */ class AcdProduct {

                @SerializedName(DbParams.KEY_DATA)
                private final C0251Data data;

                /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
                public AcdProduct(String str) {
                    this(new C0251Data(str, "acdProducts"));
                    str.getClass();
                }

                public static /* synthetic */ AcdProduct copy$default(AcdProduct acdProduct, C0251Data c0251Data, int i2, Object obj) {
                    if ((i2 & 1) != 0) {
                        c0251Data = acdProduct.data;
                    }
                    return acdProduct.copy(c0251Data);
                }

                /* JADX INFO: renamed from: component1, reason: from getter */
                public final C0251Data getData() {
                    return this.data;
                }

                public final AcdProduct copy(C0251Data data) {
                    data.getClass();
                    return new AcdProduct(data);
                }

                public boolean equals(Object other) {
                    if (this == other) {
                        return true;
                    }
                    return (other instanceof AcdProduct) && Intrinsics.c(this.data, ((AcdProduct) other).data);
                }

                public final C0251Data getData() {
                    return this.data;
                }

                public int hashCode() {
                    return this.data.hashCode();
                }

                public String toString() {
                    return "AcdProduct(data=" + this.data + ")";
                }

                public AcdProduct(C0251Data c0251Data) {
                    c0251Data.getClass();
                    this.data = c0251Data;
                }
            }

            @kotlin.Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005B\u0011\b\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\u0004\u0010\bJ\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0010\u001a\u00020\u0011HÖ\u0081\u0004J\n\u0010\u0012\u001a\u00020\u0007HÖ\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0013"}, d2 = {"Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Relationships$CaseReport;", "", DbParams.KEY_DATA, "Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Relationships$Data;", "<init>", "(Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Relationships$Data;)V", com.batch.android.s.b.a.f24015b, "", "(Ljava/lang/String;)V", "getData", "()Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Relationships$Data;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
            public static final /* data */ class CaseReport {

                @SerializedName(DbParams.KEY_DATA)
                private final C0251Data data;

                /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
                public CaseReport(String str) {
                    this(new C0251Data(str, "caseReports"));
                    str.getClass();
                }

                public static /* synthetic */ CaseReport copy$default(CaseReport caseReport, C0251Data c0251Data, int i2, Object obj) {
                    if ((i2 & 1) != 0) {
                        c0251Data = caseReport.data;
                    }
                    return caseReport.copy(c0251Data);
                }

                /* JADX INFO: renamed from: component1, reason: from getter */
                public final C0251Data getData() {
                    return this.data;
                }

                public final CaseReport copy(C0251Data data) {
                    data.getClass();
                    return new CaseReport(data);
                }

                public boolean equals(Object other) {
                    if (this == other) {
                        return true;
                    }
                    return (other instanceof CaseReport) && Intrinsics.c(this.data, ((CaseReport) other).data);
                }

                public final C0251Data getData() {
                    return this.data;
                }

                public int hashCode() {
                    return this.data.hashCode();
                }

                public String toString() {
                    return "CaseReport(data=" + this.data + ")";
                }

                public CaseReport(C0251Data c0251Data) {
                    c0251Data.getClass();
                    this.data = c0251Data;
                }
            }

            @kotlin.Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005B\u0011\b\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\u0004\u0010\bJ\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0010\u001a\u00020\u0011HÖ\u0081\u0004J\n\u0010\u0012\u001a\u00020\u0007HÖ\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0013"}, d2 = {"Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Relationships$Usecase;", "", DbParams.KEY_DATA, "Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Relationships$Data;", "<init>", "(Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Relationships$Data;)V", com.batch.android.s.b.a.f24015b, "", "(Ljava/lang/String;)V", "getData", "()Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Relationships$Data;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
            public static final /* data */ class Usecase {

                @SerializedName(DbParams.KEY_DATA)
                private final C0251Data data;

                /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
                public Usecase(String str) {
                    this(new C0251Data(str, com.sightcall.universal.agent.Usecase.TYPE));
                    str.getClass();
                }

                public static /* synthetic */ Usecase copy$default(Usecase usecase, C0251Data c0251Data, int i2, Object obj) {
                    if ((i2 & 1) != 0) {
                        c0251Data = usecase.data;
                    }
                    return usecase.copy(c0251Data);
                }

                /* JADX INFO: renamed from: component1, reason: from getter */
                public final C0251Data getData() {
                    return this.data;
                }

                public final Usecase copy(C0251Data data) {
                    data.getClass();
                    return new Usecase(data);
                }

                public boolean equals(Object other) {
                    if (this == other) {
                        return true;
                    }
                    return (other instanceof Usecase) && Intrinsics.c(this.data, ((Usecase) other).data);
                }

                public final C0251Data getData() {
                    return this.data;
                }

                public int hashCode() {
                    return this.data.hashCode();
                }

                public String toString() {
                    return "Usecase(data=" + this.data + ")";
                }

                public Usecase(C0251Data c0251Data) {
                    c0251Data.getClass();
                    this.data = c0251Data;
                }
            }
        }

        public /* synthetic */ Data(String str, Attributes attributes, Relationships relationships, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? "savePictureSessions" : str, attributes, relationships);
        }
    }
}
