package com.sightcall.universal.agent;

import android.text.TextUtils;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.sightcall.universal.api.JsonApi;
import com.squareup.moshi.Json;

/* JADX INFO: loaded from: classes3.dex */
public class Code {

    @Json(name = "caseReportId")
    String caseReportId;

    @Json(name = "deleted")
    boolean deleted;

    @Json(name = "media")
    Media media;

    @Json(name = "mpi")
    final String mpi;

    @Json(name = "recipient")
    final String recipient;

    @Json(name = "reference")
    final String reference;

    @Json(name = "resent")
    boolean resent;

    @Json(name = ConfigurationName.DOWNLOAD_PLUGIN_URL)
    final String url;

    @Json(name = "usecase")
    final String usecaseId;

    @Json(name = "value")
    final String value;

    /* JADX INFO: renamed from: com.sightcall.universal.agent.Code$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sightcall$universal$agent$Code$Media;
        static final /* synthetic */ int[] $SwitchMap$com$sightcall$universal$agent$Pincode$Media;

        static {
            int[] iArr = new int[Media.values().length];
            $SwitchMap$com$sightcall$universal$agent$Code$Media = iArr;
            try {
                iArr[Media.SMS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sightcall$universal$agent$Code$Media[Media.EMAIL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sightcall$universal$agent$Code$Media[Media.URL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[Pincode.Media.values().length];
            $SwitchMap$com$sightcall$universal$agent$Pincode$Media = iArr2;
            try {
                iArr2[Pincode.Media.SMS.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sightcall$universal$agent$Pincode$Media[Pincode.Media.EMAIL.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sightcall$universal$agent$Pincode$Media[Pincode.Media.URL.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public enum Media {
        SMS,
        EMAIL,
        URL
    }

    public Code(Pincode pincode) {
        this.value = pincode.id;
        Pincode.Attributes attributes = pincode.attributes;
        this.mpi = attributes.mpi;
        this.reference = attributes.reference;
        this.recipient = attributes.recipient;
        this.url = attributes.url;
        int i2 = AnonymousClass1.$SwitchMap$com$sightcall$universal$agent$Pincode$Media[attributes.media.ordinal()];
        if (i2 == 1) {
            this.media = Media.SMS;
        } else if (i2 == 2) {
            this.media = Media.EMAIL;
        } else if (i2 == 3) {
            this.media = Media.URL;
        }
        JsonApi.Linkage linkage = (JsonApi.Linkage) JsonApi.Wrapper.unwrap(pincode.relationships.usecase);
        this.usecaseId = linkage != null ? linkage.id() : null;
        JsonApi.Linkage linkage2 = (JsonApi.Linkage) JsonApi.Wrapper.unwrap(pincode.relationships.caseReport);
        this.caseReportId = linkage2 != null ? linkage2.id() : null;
    }

    public void applyState(Code code) {
        if (code == null || !correspondsTo(code)) {
            return;
        }
        this.resent = code.resent;
        this.deleted = code.deleted;
    }

    public boolean canBeResent() {
        Media media = this.media;
        if (media == null) {
            return false;
        }
        int i2 = AnonymousClass1.$SwitchMap$com$sightcall$universal$agent$Code$Media[media.ordinal()];
        if (i2 == 1 || i2 == 2) {
            return !isResent();
        }
        return false;
    }

    public String caseReportId() {
        return this.caseReportId;
    }

    public boolean correspondsTo(Code code) {
        return code != null && TextUtils.equals(code.value(), value()) && TextUtils.equals(code.usecaseId(), usecaseId());
    }

    public boolean isDeleted() {
        return this.deleted;
    }

    public boolean isResent() {
        return this.resent;
    }

    public Media media() {
        return this.media;
    }

    public String mpi() {
        return this.mpi;
    }

    public String recipient() {
        return this.recipient;
    }

    public String reference() {
        return this.reference;
    }

    public String url() {
        return this.url;
    }

    public String usecaseId() {
        return this.usecaseId;
    }

    public String value() {
        return this.value;
    }
}
