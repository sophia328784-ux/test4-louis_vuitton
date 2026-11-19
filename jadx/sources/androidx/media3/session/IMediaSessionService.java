package androidx.media3.session;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public interface IMediaSessionService extends IInterface {

    public static abstract class Stub extends Binder implements IMediaSessionService {

        public static class Proxy implements IMediaSessionService {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public IBinder f17302a;

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f17302a;
            }

            @Override // androidx.media3.session.IMediaSessionService
            public final void e1(IMediaController iMediaController, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.media3.session.IMediaSessionService");
                    parcelObtain.writeStrongInterface(iMediaController);
                    parcelObtain.writeInt(1);
                    bundle.writeToParcel(parcelObtain, 0);
                    this.f17302a.transact(3001, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, "androidx.media3.session.IMediaSessionService");
        }

        public static IMediaSessionService E2(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("androidx.media3.session.IMediaSessionService");
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IMediaSessionService)) {
                return (IMediaSessionService) iInterfaceQueryLocalInterface;
            }
            Proxy proxy = new Proxy();
            proxy.f17302a = iBinder;
            return proxy;
        }

        @Override // android.os.IInterface
        public final IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public final boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            if (i2 >= 1 && i2 <= 16777215) {
                parcel.enforceInterface("androidx.media3.session.IMediaSessionService");
            }
            if (i2 == 1598968902) {
                parcel2.writeString("androidx.media3.session.IMediaSessionService");
                return true;
            }
            if (i2 != 3001) {
                return super.onTransact(i2, parcel, parcel2, i3);
            }
            ((MediaSessionService.MediaSessionServiceStub) this).e1(IMediaController.Stub.E2(parcel.readStrongBinder()), (Bundle) (parcel.readInt() != 0 ? Bundle.CREATOR.createFromParcel(parcel) : null));
            return true;
        }
    }

    void e1(IMediaController iMediaController, Bundle bundle);
}
