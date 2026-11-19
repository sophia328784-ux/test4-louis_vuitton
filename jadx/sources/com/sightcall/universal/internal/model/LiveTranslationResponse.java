package com.sightcall.universal.internal.model;

import com.google.gson.Gson;
import com.google.gson.annotations.SerializedName;
import com.sightcall.pratik.extensions.AnyExtensionsKt;
import com.sightcall.pratik.extensions.JsonException;
import defpackage.cj;
import defpackage.n00;
import defpackage.o60;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0006HÆ\u0003J)\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÆ\u0001J\u0014\u0010\u0012\u001a\u00020\u00032\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0014\u001a\u00020\u0015HÖ\u0081\u0004J\n\u0010\u0016\u001a\u00020\u0006HÖ\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u0018"}, d2 = {"Lcom/sightcall/universal/internal/model/LiveTranslationResponse;", "", "success", "", "translation", "errorReason", "", "<init>", "(ZZLjava/lang/String;)V", "getSuccess", "()Z", "getTranslation", "getErrorReason", "()Ljava/lang/String;", "component1", "component2", "component3", "copy", "equals", "other", "hashCode", "", "toString", "Companion", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class LiveTranslationResponse {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    @SerializedName("errorReason")
    private final String errorReason;

    @SerializedName("success")
    private final boolean success;

    @SerializedName("translation")
    private final boolean translation;

    public LiveTranslationResponse(boolean z, boolean z2, String str) {
        this.success = z;
        this.translation = z2;
        this.errorReason = str;
    }

    public static /* synthetic */ LiveTranslationResponse copy$default(LiveTranslationResponse liveTranslationResponse, boolean z, boolean z2, String str, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            z = liveTranslationResponse.success;
        }
        if ((i2 & 2) != 0) {
            z2 = liveTranslationResponse.translation;
        }
        if ((i2 & 4) != 0) {
            str = liveTranslationResponse.errorReason;
        }
        return liveTranslationResponse.copy(z, z2, str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getSuccess() {
        return this.success;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getTranslation() {
        return this.translation;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getErrorReason() {
        return this.errorReason;
    }

    public final LiveTranslationResponse copy(boolean success, boolean translation, String errorReason) {
        return new LiveTranslationResponse(success, translation, errorReason);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof LiveTranslationResponse)) {
            return false;
        }
        LiveTranslationResponse liveTranslationResponse = (LiveTranslationResponse) other;
        return this.success == liveTranslationResponse.success && this.translation == liveTranslationResponse.translation && Intrinsics.c(this.errorReason, liveTranslationResponse.errorReason);
    }

    public final String getErrorReason() {
        return this.errorReason;
    }

    public final boolean getSuccess() {
        return this.success;
    }

    public final boolean getTranslation() {
        return this.translation;
    }

    public int hashCode() {
        int iB = o60.b(Boolean.hashCode(this.success) * 31, 31, this.translation);
        String str = this.errorReason;
        return iB + (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        return n00.r(this.errorReason, ")", cj.m("LiveTranslationResponse(success=", ", translation=", ", errorReason=", this.success, this.translation));
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0005¨\u0006\n"}, d2 = {"Lcom/sightcall/universal/internal/model/LiveTranslationResponse$Companion;", "", "<init>", "()V", "fromJson", "Lcom/sightcall/universal/internal/model/LiveTranslationResponse;", "liveTranslationResponseAsJson", "", "toJson", "liveTranslationResponse", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final LiveTranslationResponse fromJson(String liveTranslationResponseAsJson) throws JsonException {
            liveTranslationResponseAsJson.getClass();
            try {
                return (LiveTranslationResponse) new Gson().fromJson(liveTranslationResponseAsJson, LiveTranslationResponse.class);
            } catch (Exception e2) {
                throw new JsonException(tr.g("Unable to deserialize: ", liveTranslationResponseAsJson), e2);
            }
        }

        public final String toJson(LiveTranslationResponse liveTranslationResponse) {
            liveTranslationResponse.getClass();
            return AnyExtensionsKt.toJson$default(liveTranslationResponse, false, false, 3, null);
        }

        private Companion() {
        }
    }

    public /* synthetic */ LiveTranslationResponse(boolean z, boolean z2, String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(z, z2, (i2 & 4) != 0 ? null : str);
    }
}
