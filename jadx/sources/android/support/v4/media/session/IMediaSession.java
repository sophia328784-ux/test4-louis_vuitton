package android.support.v4.media.session;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import defpackage.a61;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes.dex */
public interface IMediaSession extends IInterface {

    public static abstract class Stub extends Binder implements IMediaSession {

        public static class Proxy implements IMediaSession {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public IBinder f604a;

            @Override // android.support.v4.media.session.IMediaSession
            public final void R0(IMediaControllerCallback iMediaControllerCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    parcelObtain.writeStrongInterface(iMediaControllerCallback);
                    this.f604a.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f604a;
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
            proxy.f604a = iBinder;
            return proxy;
        }

        @Override // android.os.IInterface
        public final IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public final boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            int i4;
            Bundle bundle;
            if (i2 >= 1 && i2 <= 16777215) {
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
            }
            if (i2 == 1598968902) {
                parcel2.writeString("android.support.v4.media.session.IMediaSession");
                return true;
            }
            IMediaControllerCallback iMediaControllerCallback = null;
            bundle = null;
            Bundle bundle2 = null;
            IMediaControllerCallback iMediaControllerCallback2 = null;
            switch (i2) {
                case 1:
                    parcel.readString();
                    a61.h();
                    return false;
                case 2:
                    a61.h();
                    return false;
                case 3:
                    IBinder strongBinder = parcel.readStrongBinder();
                    if (strongBinder != null) {
                        IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("android.support.v4.media.session.IMediaControllerCallback");
                        if (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IMediaControllerCallback)) {
                            IMediaControllerCallback.Stub.Proxy proxy = new IMediaControllerCallback.Stub.Proxy();
                            proxy.f603a = strongBinder;
                            iMediaControllerCallback = proxy;
                        } else {
                            iMediaControllerCallback = (IMediaControllerCallback) iInterfaceQueryLocalInterface;
                        }
                    }
                    ((MediaSessionCompat.MediaSessionImplApi21.ExtraSession) this).R0(iMediaControllerCallback);
                    parcel2.writeNoException();
                    return true;
                case 4:
                    IBinder strongBinder2 = parcel.readStrongBinder();
                    if (strongBinder2 != null) {
                        IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("android.support.v4.media.session.IMediaControllerCallback");
                        if (iInterfaceQueryLocalInterface2 == null || !(iInterfaceQueryLocalInterface2 instanceof IMediaControllerCallback)) {
                            IMediaControllerCallback.Stub.Proxy proxy2 = new IMediaControllerCallback.Stub.Proxy();
                            proxy2.f603a = strongBinder2;
                            iMediaControllerCallback2 = proxy2;
                        } else {
                            iMediaControllerCallback2 = (IMediaControllerCallback) iInterfaceQueryLocalInterface2;
                        }
                    }
                    MediaSessionCompat.MediaSessionImplApi21 mediaSessionImplApi21 = (MediaSessionCompat.MediaSessionImplApi21) ((MediaSessionCompat.MediaSessionImplApi21.ExtraSession) this).f625a.get();
                    if (mediaSessionImplApi21 != null) {
                        mediaSessionImplApi21.f623e.unregister(iMediaControllerCallback2);
                        Binder.getCallingPid();
                        Binder.getCallingUid();
                        synchronized (mediaSessionImplApi21.f622c) {
                            break;
                        }
                    }
                    parcel2.writeNoException();
                    return true;
                case 5:
                    a61.h();
                    return false;
                case 6:
                    a61.h();
                    return false;
                case 7:
                    a61.h();
                    return false;
                case 8:
                    a61.h();
                    return false;
                case 9:
                    a61.h();
                    return false;
                case 10:
                    a61.h();
                    return false;
                case 11:
                    parcel.readInt();
                    parcel.readInt();
                    parcel.readString();
                    a61.h();
                    return false;
                case 12:
                    parcel.readInt();
                    parcel.readInt();
                    parcel.readString();
                    a61.h();
                    return false;
                case 13:
                    a61.h();
                    return false;
                case 14:
                    parcel.readString();
                    a61.h();
                    return false;
                case 15:
                    parcel.readString();
                    a61.h();
                    return false;
                case 16:
                    a61.h();
                    return false;
                case 17:
                    parcel.readLong();
                    a61.h();
                    return false;
                case 18:
                    a61.h();
                    return false;
                case 19:
                    a61.h();
                    return false;
                case 20:
                    a61.h();
                    return false;
                case 21:
                    a61.h();
                    return false;
                case 22:
                    a61.h();
                    return false;
                case 23:
                    a61.h();
                    return false;
                case 24:
                    parcel.readLong();
                    a61.h();
                    return false;
                case 25:
                    a61.h();
                    return false;
                case 26:
                    parcel.readString();
                    a61.h();
                    return false;
                case 27:
                    a61.h();
                    return false;
                case 28:
                    parcel2.writeNoException();
                    parcel2.writeInt(0);
                    return true;
                case 29:
                    parcel2.writeNoException();
                    parcel2.writeInt(-1);
                    return true;
                case 30:
                    a61.h();
                    return false;
                case 31:
                    a61.h();
                    return false;
                case 32:
                    parcel2.writeNoException();
                    parcel2.writeInt(0);
                    return true;
                case 33:
                    a61.h();
                    return false;
                case 34:
                    parcel.readString();
                    a61.h();
                    return false;
                case 35:
                    parcel.readString();
                    a61.h();
                    return false;
                case 36:
                    a61.h();
                    return false;
                case 37:
                    i4 = ((MediaSessionCompat.MediaSessionImplApi21) ((MediaSessionCompat.MediaSessionImplApi21.ExtraSession) this).f625a.get()) != null ? 0 : -1;
                    parcel2.writeNoException();
                    parcel2.writeInt(i4);
                    return true;
                case 38:
                    parcel2.writeNoException();
                    parcel2.writeInt(0);
                    return true;
                case 39:
                    parcel.readInt();
                    a61.h();
                    return false;
                case 40:
                    parcel.readInt();
                    parcel2.writeNoException();
                    return true;
                case 41:
                    a61.h();
                    return false;
                case EACTags.CURRENCY_CODE /* 42 */:
                    parcel.readInt();
                    a61.h();
                    return false;
                case EACTags.DATE_OF_BIRTH /* 43 */:
                    a61.h();
                    return false;
                case EACTags.CARDHOLDER_NATIONALITY /* 44 */:
                    parcel.readInt();
                    a61.h();
                    return false;
                case EACTags.LANGUAGE_PREFERENCES /* 45 */:
                    parcel2.writeNoException();
                    parcel2.writeInt(0);
                    return true;
                case 46:
                    parcel.readInt();
                    a61.h();
                    return false;
                case EACTags.PIN_USAGE_POLICY /* 47 */:
                    i4 = ((MediaSessionCompat.MediaSessionImplApi21) ((MediaSessionCompat.MediaSessionImplApi21.ExtraSession) this).f625a.get()) != null ? 0 : -1;
                    parcel2.writeNoException();
                    parcel2.writeInt(i4);
                    return true;
                case 48:
                    parcel.readInt();
                    a61.h();
                    return false;
                case 49:
                    parcel.readFloat();
                    a61.h();
                    return false;
                case 50:
                    MediaSessionCompat.MediaSessionImplApi21 mediaSessionImplApi22 = (MediaSessionCompat.MediaSessionImplApi21) ((MediaSessionCompat.MediaSessionImplApi21.ExtraSession) this).f625a.get();
                    if (mediaSessionImplApi22 != null && (bundle = mediaSessionImplApi22.d) != null) {
                        bundle2 = new Bundle(bundle);
                    }
                    parcel2.writeNoException();
                    if (bundle2 == null) {
                        parcel2.writeInt(0);
                        return true;
                    }
                    parcel2.writeInt(1);
                    bundle2.writeToParcel(parcel2, 1);
                    return true;
                case EACTags.TRANSACTION_DATE /* 51 */:
                    a61.h();
                    return false;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }
    }

    public static class _Parcel {
        public static Object a(Parcel parcel, Parcelable.Creator creator) {
            if (parcel.readInt() != 0) {
                return creator.createFromParcel(parcel);
            }
            return null;
        }
    }

    void R0(IMediaControllerCallback iMediaControllerCallback);
}
