package android.support.v4.media.session;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import defpackage.o60;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class PlaybackStateCompat implements Parcelable {
    public static final Parcelable.Creator<PlaybackStateCompat> CREATOR = new AnonymousClass1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f636b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f637c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f638e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f639f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final CharSequence f640h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long f641i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ArrayList f642j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final long f643k;
    public final Bundle l;

    /* JADX INFO: renamed from: android.support.v4.media.session.PlaybackStateCompat$1, reason: invalid class name */
    public class AnonymousClass1 implements Parcelable.Creator<PlaybackStateCompat> {
        @Override // android.os.Parcelable.Creator
        public final PlaybackStateCompat createFromParcel(Parcel parcel) {
            return new PlaybackStateCompat(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final PlaybackStateCompat[] newArray(int i2) {
            return new PlaybackStateCompat[i2];
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Actions {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface MediaKeyAction {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface RepeatMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ShuffleMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface State {
    }

    public PlaybackStateCompat(Parcel parcel) {
        this.f636b = parcel.readInt();
        this.f637c = parcel.readLong();
        this.f638e = parcel.readFloat();
        this.f641i = parcel.readLong();
        this.d = parcel.readLong();
        this.f639f = parcel.readLong();
        this.f640h = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f642j = parcel.createTypedArrayList(CustomAction.CREATOR);
        this.f643k = parcel.readLong();
        this.l = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
        this.g = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PlaybackState {state=");
        sb.append(this.f636b);
        sb.append(", position=");
        sb.append(this.f637c);
        sb.append(", buffered position=");
        sb.append(this.d);
        sb.append(", speed=");
        sb.append(this.f638e);
        sb.append(", updated=");
        sb.append(this.f641i);
        sb.append(", actions=");
        sb.append(this.f639f);
        sb.append(", error code=");
        sb.append(this.g);
        sb.append(", error message=");
        sb.append(this.f640h);
        sb.append(", custom actions=");
        sb.append(this.f642j);
        sb.append(", active item id=");
        return o60.j(this.f643k, "}", sb);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.f636b);
        parcel.writeLong(this.f637c);
        parcel.writeFloat(this.f638e);
        parcel.writeLong(this.f641i);
        parcel.writeLong(this.d);
        parcel.writeLong(this.f639f);
        TextUtils.writeToParcel(this.f640h, parcel, i2);
        parcel.writeTypedList(this.f642j);
        parcel.writeLong(this.f643k);
        parcel.writeBundle(this.l);
        parcel.writeInt(this.g);
    }

    @Deprecated
    public static final class CustomAction implements Parcelable {
        public static final Parcelable.Creator<CustomAction> CREATOR = new AnonymousClass1();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f644b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final CharSequence f645c;
        public final int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final Bundle f646e;

        /* JADX INFO: renamed from: android.support.v4.media.session.PlaybackStateCompat$CustomAction$1, reason: invalid class name */
        public class AnonymousClass1 implements Parcelable.Creator<CustomAction> {
            @Override // android.os.Parcelable.Creator
            public final CustomAction createFromParcel(Parcel parcel) {
                return new CustomAction(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final CustomAction[] newArray(int i2) {
                return new CustomAction[i2];
            }
        }

        public CustomAction(Parcel parcel) {
            this.f644b = parcel.readString();
            this.f645c = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.d = parcel.readInt();
            this.f646e = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final String toString() {
            return "Action:mName='" + ((Object) this.f645c) + ", mIcon=" + this.d + ", mExtras=" + this.f646e;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.writeString(this.f644b);
            TextUtils.writeToParcel(this.f645c, parcel, i2);
            parcel.writeInt(this.d);
            parcel.writeBundle(this.f646e);
        }

        public CustomAction(String str, CharSequence charSequence, int i2, Bundle bundle) {
            this.f644b = str;
            this.f645c = charSequence;
            this.d = i2;
            this.f646e = bundle;
        }
    }

    public PlaybackStateCompat(int i2, long j2, long j3, float f2, long j4, int i3, CharSequence charSequence, long j5, List list, long j6, Bundle bundle) {
        this.f636b = i2;
        this.f637c = j2;
        this.d = j3;
        this.f638e = f2;
        this.f639f = j4;
        this.g = i3;
        this.f640h = charSequence;
        this.f641i = j5;
        this.f642j = new ArrayList(list);
        this.f643k = j6;
        this.l = bundle;
    }
}
