package androidx.media3.session.legacy;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public interface IMediaControllerCallback extends IInterface {

    public static abstract class Stub extends Binder implements IMediaControllerCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int f17702a = 0;

        public static class Proxy implements IMediaControllerCallback {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public IBinder f17703a;

            @Override // androidx.media3.session.legacy.IMediaControllerCallback
            public final void A(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
                    parcelObtain.writeInt(i2);
                    if (!this.f17703a.transact(9, parcelObtain, null, 1)) {
                        int i3 = Stub.f17702a;
                    }
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f17703a;
            }

            @Override // androidx.media3.session.legacy.IMediaControllerCallback
            public final void l0(PlaybackStateCompat playbackStateCompat) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
                    parcelObtain.writeInt(1);
                    playbackStateCompat.writeToParcel(parcelObtain, 0);
                    if (!this.f17703a.transact(3, parcelObtain, null, 1)) {
                        int i2 = Stub.f17702a;
                    }
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.media3.session.legacy.IMediaControllerCallback
            public final void m0(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
                    parcelObtain.writeInt(i2);
                    if (!this.f17703a.transact(12, parcelObtain, null, 1)) {
                        int i3 = Stub.f17702a;
                    }
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, "android.support.v4.media.session.IMediaControllerCallback");
        }

        @Override // android.os.IInterface
        public final IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public final boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            if (i2 == 3) {
                parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                ((MediaControllerCompat.Callback.CallbackStub) this).l0(parcel.readInt() != 0 ? PlaybackStateCompat.CREATOR.createFromParcel(parcel) : null);
                return true;
            }
            if (i2 == 9) {
                parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                ((MediaControllerCompat.Callback.CallbackStub) this).A(parcel.readInt());
                return true;
            }
            if (i2 == 1598968902) {
                parcel2.getClass();
                parcel2.writeString("android.support.v4.media.session.IMediaControllerCallback");
                return true;
            }
            switch (i2) {
                case 11:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                    boolean z = parcel.readInt() != 0;
                    MediaControllerCompat.Callback callback = (MediaControllerCompat.Callback) ((MediaControllerCompat.Callback.CallbackStub) this).f17767b.get();
                    if (callback != null) {
                        callback.m(11, Boolean.valueOf(z));
                    }
                    return true;
                case 12:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                    ((MediaControllerCompat.Callback.CallbackStub) this).m0(parcel.readInt());
                    return true;
                case 13:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                    MediaControllerCompat.Callback callback2 = (MediaControllerCompat.Callback) ((MediaControllerCompat.Callback.CallbackStub) this).f17767b.get();
                    if (callback2 != null) {
                        callback2.m(13, null);
                        return true;
                    }
                    return true;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }
    }

    void A(int i2);

    void l0(PlaybackStateCompat playbackStateCompat);

    void m0(int i2);
}
