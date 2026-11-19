package androidx.media3.session.legacy;

import android.media.session.PlaybackState;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.media3.common.util.Util;
import com.google.common.collect.ImmutableList;
import defpackage.md;
import defpackage.o60;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class PlaybackStateCompat implements Parcelable {
    public static final Parcelable.Creator<PlaybackStateCompat> CREATOR = new AnonymousClass1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f17830b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f17831c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f17832e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f17833f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final CharSequence f17834h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long f17835i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final List f17836j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final long f17837k;
    public final Bundle l;
    public PlaybackState m;

    /* JADX INFO: renamed from: androidx.media3.session.legacy.PlaybackStateCompat$1, reason: invalid class name */
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
    public @interface ErrorCode {
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
        this.f17830b = parcel.readInt();
        this.f17831c = parcel.readLong();
        this.f17832e = parcel.readFloat();
        this.f17835i = parcel.readLong();
        this.d = parcel.readLong();
        this.f17833f = parcel.readLong();
        this.f17834h = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        List listCreateTypedArrayList = parcel.createTypedArrayList(CustomAction.CREATOR);
        this.f17836j = listCreateTypedArrayList == null ? ImmutableList.x() : listCreateTypedArrayList;
        this.f17837k = parcel.readLong();
        this.l = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
        this.g = parcel.readInt();
    }

    public static PlaybackStateCompat a(PlaybackState playbackState) {
        ArrayList arrayList = null;
        if (playbackState == null) {
            return null;
        }
        List<PlaybackState.CustomAction> customActions = playbackState.getCustomActions();
        if (customActions != null) {
            arrayList = new ArrayList(customActions.size());
            for (PlaybackState.CustomAction customAction : customActions) {
                if (customAction != null) {
                    CustomAction customAction2 = new CustomAction(customAction.getAction(), customAction.getName(), customAction.getIcon(), Util.p(customAction.getExtras()));
                    customAction2.f17850f = customAction;
                    arrayList.add(customAction2);
                }
            }
        }
        PlaybackStateCompat playbackStateCompat = new PlaybackStateCompat(playbackState.getState(), playbackState.getPosition(), playbackState.getBufferedPosition(), playbackState.getPlaybackSpeed(), playbackState.getActions(), 0, playbackState.getErrorMessage(), playbackState.getLastPositionUpdateTime(), arrayList, playbackState.getActiveQueueItemId(), Util.p(playbackState.getExtras()));
        playbackStateCompat.m = playbackState;
        return playbackStateCompat;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PlaybackState {state=");
        sb.append(this.f17830b);
        sb.append(", position=");
        sb.append(this.f17831c);
        sb.append(", buffered position=");
        sb.append(this.d);
        sb.append(", speed=");
        sb.append(this.f17832e);
        sb.append(", updated=");
        sb.append(this.f17835i);
        sb.append(", actions=");
        sb.append(this.f17833f);
        sb.append(", error code=");
        sb.append(this.g);
        sb.append(", error message=");
        sb.append(this.f17834h);
        sb.append(", custom actions=");
        sb.append(this.f17836j);
        sb.append(", active item id=");
        return o60.j(this.f17837k, "}", sb);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.f17830b);
        parcel.writeLong(this.f17831c);
        parcel.writeFloat(this.f17832e);
        parcel.writeLong(this.f17835i);
        parcel.writeLong(this.d);
        parcel.writeLong(this.f17833f);
        TextUtils.writeToParcel(this.f17834h, parcel, i2);
        parcel.writeTypedList(this.f17836j);
        parcel.writeLong(this.f17837k);
        parcel.writeBundle(this.l);
        parcel.writeInt(this.g);
    }

    public static final class CustomAction implements Parcelable {
        public static final Parcelable.Creator<CustomAction> CREATOR = new AnonymousClass1();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f17847b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final CharSequence f17848c;
        public final int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final Bundle f17849e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public PlaybackState.CustomAction f17850f;

        /* JADX INFO: renamed from: androidx.media3.session.legacy.PlaybackStateCompat$CustomAction$1, reason: invalid class name */
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

        public static final class Builder {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final String f17851a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final CharSequence f17852b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final int f17853c;

            public Builder(String str, CharSequence charSequence, int i2) {
                if (TextUtils.isEmpty(str)) {
                    md.n("You must specify an action to build a CustomAction");
                    throw null;
                }
                if (TextUtils.isEmpty(charSequence)) {
                    md.n("You must specify a name to build a CustomAction");
                    throw null;
                }
                if (i2 == 0) {
                    md.n("You must specify an icon resource id to build a CustomAction");
                    throw null;
                }
                this.f17851a = str;
                this.f17852b = charSequence;
                this.f17853c = i2;
            }
        }

        public CustomAction(Parcel parcel) {
            String string = parcel.readString();
            string.getClass();
            this.f17847b = string;
            CharSequence charSequence = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            charSequence.getClass();
            this.f17848c = charSequence;
            this.d = parcel.readInt();
            this.f17849e = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final String toString() {
            return "Action:mName='" + ((Object) this.f17848c) + ", mIcon=" + this.d + ", mExtras=" + this.f17849e;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.writeString(this.f17847b);
            TextUtils.writeToParcel(this.f17848c, parcel, i2);
            parcel.writeInt(this.d);
            parcel.writeBundle(this.f17849e);
        }

        public CustomAction(String str, CharSequence charSequence, int i2, Bundle bundle) {
            this.f17847b = str;
            this.f17848c = charSequence;
            this.d = i2;
            this.f17849e = bundle;
        }
    }

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ArrayList f17838a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f17839b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public long f17840c;
        public long d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public float f17841e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public long f17842f;
        public int g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public CharSequence f17843h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public long f17844i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public long f17845j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public Bundle f17846k;

        public Builder(PlaybackStateCompat playbackStateCompat) {
            ArrayList arrayList = new ArrayList();
            this.f17838a = arrayList;
            this.f17845j = -1L;
            this.f17839b = playbackStateCompat.f17830b;
            this.f17840c = playbackStateCompat.f17831c;
            this.f17841e = playbackStateCompat.f17832e;
            this.f17844i = playbackStateCompat.f17835i;
            this.d = playbackStateCompat.d;
            this.f17842f = playbackStateCompat.f17833f;
            this.g = playbackStateCompat.g;
            this.f17843h = playbackStateCompat.f17834h;
            List list = playbackStateCompat.f17836j;
            if (list != null) {
                arrayList.addAll(list);
            }
            this.f17845j = playbackStateCompat.f17837k;
            this.f17846k = playbackStateCompat.l;
        }

        public final PlaybackStateCompat a() {
            return new PlaybackStateCompat(this.f17839b, this.f17840c, this.d, this.f17841e, this.f17842f, this.g, this.f17843h, this.f17844i, this.f17838a, this.f17845j, this.f17846k);
        }

        public Builder() {
            this.f17838a = new ArrayList();
            this.f17845j = -1L;
        }
    }

    public PlaybackStateCompat(int i2, long j2, long j3, float f2, long j4, int i3, CharSequence charSequence, long j5, ArrayList arrayList, long j6, Bundle bundle) {
        this.f17830b = i2;
        this.f17831c = j2;
        this.d = j3;
        this.f17832e = f2;
        this.f17833f = j4;
        this.g = i3;
        this.f17834h = charSequence;
        this.f17835i = j5;
        this.f17836j = arrayList == null ? ImmutableList.x() : new ArrayList(arrayList);
        this.f17837k = j6;
        this.l = bundle;
    }
}
