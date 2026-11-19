package com.sightcall.universal.internal.proposition;

import android.os.Parcel;
import android.os.Parcelable;
import com.batch.android.s.b;
import com.sightcall.session.Reference;
import com.sightcall.universal.agent.Usecase;
import com.sightcall.universal.model.Moshi;
import com.squareup.moshi.Json;

/* JADX INFO: loaded from: classes3.dex */
public class Proposition implements Parcelable {
    public static final Parcelable.Creator<Proposition> CREATOR = new Parcelable.Creator<Proposition>() { // from class: com.sightcall.universal.internal.proposition.Proposition.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Proposition createFromParcel(Parcel parcel) {
            return new Proposition(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Proposition[] newArray(int i2) {
            return new Proposition[i2];
        }
    };

    @Json(name = "accept_url")
    String acceptUrl;

    @Json(name = "cancel_url")
    String cancelUrl;

    @Json(name = "extra_fields")
    KeyValuePair[] extras;

    @Json(name = "regular_fields")
    KeyValuePair[] fields;

    @Json(name = "guest_uid")
    String guestUid;

    @Json(name = b.a.f24015b)
    String id;
    transient boolean isAccepted;
    transient boolean isDenied;

    @Json(name = "usecase_proposition")
    int parentId;

    @Json(name = "signature_upload_token")
    String signatureUploadToken;

    @Json(name = "signature_upload_url")
    String signatureUploadUrl;

    @Json(name = "state")
    State state;
    transient Reference.UseCase.PropositionTemplate template;

    public enum State {
        CREATED,
        ACCEPTED,
        CANCELED,
        DELETED
    }

    public Proposition(Parcel parcel) {
        this.id = parcel.readString();
        this.parentId = parcel.readInt();
        this.guestUid = parcel.readString();
        Parcelable.Creator<KeyValuePair> creator = KeyValuePair.CREATOR;
        this.fields = (KeyValuePair[]) parcel.createTypedArray(creator);
        this.extras = (KeyValuePair[]) parcel.createTypedArray(creator);
        int i2 = parcel.readInt();
        this.state = i2 == -1 ? null : State.values()[i2];
        this.acceptUrl = parcel.readString();
        this.cancelUrl = parcel.readString();
        this.signatureUploadUrl = parcel.readString();
        this.signatureUploadToken = parcel.readString();
    }

    public static Proposition fromJson(String str, Usecase usecase) {
        Reference.UseCase.PropositionTemplate propositionTemplate;
        if (usecase == null || (propositionTemplate = usecase.propositionTemplate) == null) {
            return null;
        }
        Proposition proposition = (Proposition) Moshi.fromJson(Proposition.class, str);
        if (proposition != null) {
            proposition.template = propositionTemplate;
        }
        return proposition;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String id() {
        return this.id;
    }

    public boolean is(State state) {
        return this.state == state;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.id);
        parcel.writeInt(this.parentId);
        parcel.writeString(this.guestUid);
        parcel.writeTypedArray(this.fields, i2);
        parcel.writeTypedArray(this.extras, i2);
        State state = this.state;
        parcel.writeInt(state == null ? -1 : state.ordinal());
        parcel.writeString(this.acceptUrl);
        parcel.writeString(this.cancelUrl);
        parcel.writeString(this.signatureUploadUrl);
        parcel.writeString(this.signatureUploadToken);
    }

    public static class KeyValuePair implements Parcelable {
        public static final Parcelable.Creator<KeyValuePair> CREATOR = new Parcelable.Creator<KeyValuePair>() { // from class: com.sightcall.universal.internal.proposition.Proposition.KeyValuePair.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public KeyValuePair createFromParcel(Parcel parcel) {
                return new KeyValuePair(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public KeyValuePair[] newArray(int i2) {
                return new KeyValuePair[i2];
            }
        };

        @Json(name = "name")
        String key;

        @Json(name = "value")
        String value;

        public KeyValuePair(Parcel parcel) {
            this.key = parcel.readString();
            this.value = parcel.readString();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeString(this.key);
            parcel.writeString(this.value);
        }

        public KeyValuePair() {
        }
    }

    public Proposition() {
    }
}
