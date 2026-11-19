package androidx.media3.session.legacy;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public interface IMediaSession extends IInterface {

    public static abstract class Stub extends Binder implements IMediaSession {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int f17704a = 0;

        public static class Proxy implements IMediaSession {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public IBinder f17705a;

            @Override // androidx.media3.session.legacy.IMediaSession
            public final void C2(IMediaControllerCallback iMediaControllerCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    parcelObtain.writeStrongBinder((IMediaControllerCallback.Stub) iMediaControllerCallback);
                    if (!this.f17705a.transact(3, parcelObtain, parcelObtain2, 0)) {
                        int i2 = Stub.f17704a;
                    }
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.media3.session.legacy.IMediaSession
            public final void O1(IMediaControllerCallback iMediaControllerCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    parcelObtain.writeStrongBinder(iMediaControllerCallback.asBinder());
                    if (!this.f17705a.transact(4, parcelObtain, parcelObtain2, 0)) {
                        int i2 = Stub.f17704a;
                    }
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f17705a;
            }

            @Override // androidx.media3.session.legacy.IMediaSession
            public final PlaybackStateCompat h() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    if (!this.f17705a.transact(28, parcelObtain, parcelObtain2, 0)) {
                        int i2 = Stub.f17704a;
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? PlaybackStateCompat.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.media3.session.legacy.IMediaSession
            public final int i() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    if (!this.f17705a.transact(37, parcelObtain, parcelObtain2, 0)) {
                        int i2 = Stub.f17704a;
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.media3.session.legacy.IMediaSession
            public final int i0() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    if (!this.f17705a.transact(47, parcelObtain, parcelObtain2, 0)) {
                        int i2 = Stub.f17704a;
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.media3.session.legacy.IMediaSession
            public final boolean j0() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    if (!this.f17705a.transact(45, parcelObtain, parcelObtain2, 0)) {
                        int i2 = Stub.f17704a;
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, "android.support.v4.media.session.IMediaSession");
        }

        public static IMediaSession E2(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("android.support.v4.media.session.IMediaSession");
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IMediaSession)) {
                return (IMediaSession) iInterfaceQueryLocalInterface;
            }
            Proxy proxy = new Proxy();
            proxy.f17705a = iBinder;
            return proxy;
        }

        @Override // android.os.IInterface
        public final IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public final boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            Bundle bundle;
            IMediaControllerCallback iMediaControllerCallback = null;
            bundle = null;
            Bundle bundle2 = null;
            IMediaControllerCallback iMediaControllerCallback2 = null;
            if (i2 == 3) {
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder != null) {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("android.support.v4.media.session.IMediaControllerCallback");
                    if (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IMediaControllerCallback)) {
                        IMediaControllerCallback.Stub.Proxy proxy = new IMediaControllerCallback.Stub.Proxy();
                        proxy.f17703a = strongBinder;
                        iMediaControllerCallback = proxy;
                    } else {
                        iMediaControllerCallback = (IMediaControllerCallback) iInterfaceQueryLocalInterface;
                    }
                }
                ((MediaSessionCompat.MediaSessionImplApi23.ExtraSession) this).C2(iMediaControllerCallback);
                parcel2.getClass();
                parcel2.writeNoException();
                return true;
            }
            if (i2 == 4) {
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                IBinder strongBinder2 = parcel.readStrongBinder();
                if (strongBinder2 != null) {
                    IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("android.support.v4.media.session.IMediaControllerCallback");
                    if (iInterfaceQueryLocalInterface2 == null || !(iInterfaceQueryLocalInterface2 instanceof IMediaControllerCallback)) {
                        IMediaControllerCallback.Stub.Proxy proxy2 = new IMediaControllerCallback.Stub.Proxy();
                        proxy2.f17703a = strongBinder2;
                        iMediaControllerCallback2 = proxy2;
                    } else {
                        iMediaControllerCallback2 = (IMediaControllerCallback) iInterfaceQueryLocalInterface2;
                    }
                }
                ((MediaSessionCompat.MediaSessionImplApi23.ExtraSession) this).O1(iMediaControllerCallback2);
                parcel2.getClass();
                parcel2.writeNoException();
                return true;
            }
            if (i2 == 28) {
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                PlaybackStateCompat playbackStateCompatH = ((MediaSessionCompat.MediaSessionImplApi23.ExtraSession) this).h();
                parcel2.getClass();
                parcel2.writeNoException();
                if (playbackStateCompatH == null) {
                    parcel2.writeInt(0);
                    return true;
                }
                parcel2.writeInt(1);
                playbackStateCompatH.writeToParcel(parcel2, 1);
                return true;
            }
            if (i2 == 37) {
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                int i4 = ((MediaSessionCompat.MediaSessionImplApi23.ExtraSession) this).i();
                parcel2.getClass();
                parcel2.writeNoException();
                parcel2.writeInt(i4);
                return true;
            }
            if (i2 == 45) {
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                ((MediaSessionCompat.MediaSessionImplApi23.ExtraSession) this).j0();
                parcel2.getClass();
                parcel2.writeNoException();
                parcel2.writeInt(0);
                return true;
            }
            if (i2 == 47) {
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                int iI0 = ((MediaSessionCompat.MediaSessionImplApi23.ExtraSession) this).i0();
                parcel2.getClass();
                parcel2.writeNoException();
                parcel2.writeInt(iI0);
                return true;
            }
            if (i2 != 50) {
                if (i2 != 1598968902) {
                    return super.onTransact(i2, parcel, parcel2, i3);
                }
                parcel2.getClass();
                parcel2.writeString("android.support.v4.media.session.IMediaSession");
                return true;
            }
            parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
            MediaSessionCompat.MediaSessionImplApi23 mediaSessionImplApi23 = (MediaSessionCompat.MediaSessionImplApi23) ((MediaSessionCompat.MediaSessionImplApi23.ExtraSession) this).f17814b.get();
            if (mediaSessionImplApi23 != null && (bundle = mediaSessionImplApi23.f17808e) != null) {
                bundle2 = new Bundle(bundle);
            }
            parcel2.getClass();
            parcel2.writeNoException();
            if (bundle2 == null) {
                parcel2.writeInt(0);
                return true;
            }
            parcel2.writeInt(1);
            bundle2.writeToParcel(parcel2, 1);
            return true;
        }
    }

    void C2(IMediaControllerCallback iMediaControllerCallback);

    void O1(IMediaControllerCallback iMediaControllerCallback);

    PlaybackStateCompat h();

    int i();

    int i0();

    boolean j0();
}
