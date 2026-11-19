package com.sightcall.universal.internal.model;

import com.google.gson.Gson;
import com.google.gson.annotations.SerializedName;
import com.sightcall.pratik.extensions.JsonException;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u00032\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\f\u001a\u00020\rHÖ\u0081\u0004J\n\u0010\u000e\u001a\u00020\u000fHÖ\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lcom/sightcall/universal/internal/model/LiveTranslationRequest;", "", "translation", "", "<init>", "(Z)V", "getTranslation", "()Z", "component1", "copy", "equals", "other", "hashCode", "", "toString", "", "Companion", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class LiveTranslationRequest {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    @SerializedName("translation")
    private final boolean translation;

    public LiveTranslationRequest(boolean z) {
        this.translation = z;
    }

    public static /* synthetic */ LiveTranslationRequest copy$default(LiveTranslationRequest liveTranslationRequest, boolean z, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            z = liveTranslationRequest.translation;
        }
        return liveTranslationRequest.copy(z);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getTranslation() {
        return this.translation;
    }

    public final LiveTranslationRequest copy(boolean translation) {
        return new LiveTranslationRequest(translation);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof LiveTranslationRequest) && this.translation == ((LiveTranslationRequest) other).translation;
    }

    public final boolean getTranslation() {
        return this.translation;
    }

    public int hashCode() {
        return Boolean.hashCode(this.translation);
    }

    public String toString() {
        return tr.i("LiveTranslationRequest(translation=", ")", this.translation);
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007¨\u0006\b"}, d2 = {"Lcom/sightcall/universal/internal/model/LiveTranslationRequest$Companion;", "", "<init>", "()V", "fromJson", "Lcom/sightcall/universal/internal/model/LiveTranslationRequest;", "liveTranslationRequestAsJson", "", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final LiveTranslationRequest fromJson(String liveTranslationRequestAsJson) throws JsonException {
            liveTranslationRequestAsJson.getClass();
            try {
                return (LiveTranslationRequest) new Gson().fromJson(liveTranslationRequestAsJson, LiveTranslationRequest.class);
            } catch (Exception e2) {
                throw new JsonException(tr.g("Unable to deserialize: ", liveTranslationRequestAsJson), e2);
            }
        }

        private Companion() {
        }
    }
}
