package androidx.room;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import io.jsonwebtoken.JwtParser;

/* JADX INFO: loaded from: classes.dex */
public interface IMultiInstanceInvalidationService extends IInterface {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String f19394i = "androidx$room$IMultiInstanceInvalidationService".replace('$', JwtParser.SEPARATOR_CHAR);

    public static abstract class Stub extends Binder implements IMultiInstanceInvalidationService {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int f19395a = 0;

        public static class Proxy implements IMultiInstanceInvalidationService {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public IBinder f19396a;

            @Override // androidx.room.IMultiInstanceInvalidationService
            public final void C0(int i2, String[] strArr) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IMultiInstanceInvalidationService.f19394i);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeStringArray(strArr);
                    this.f19396a.transact(3, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f19396a;
            }

            @Override // androidx.room.IMultiInstanceInvalidationService
            public final int m1(IMultiInstanceInvalidationCallback iMultiInstanceInvalidationCallback, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IMultiInstanceInvalidationService.f19394i);
                    parcelObtain.writeStrongInterface(iMultiInstanceInvalidationCallback);
                    parcelObtain.writeString(str);
                    this.f19396a.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.room.IMultiInstanceInvalidationService
            public final void z2(IMultiInstanceInvalidationCallback iMultiInstanceInvalidationCallback, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IMultiInstanceInvalidationService.f19394i);
                    parcelObtain.writeStrongInterface(iMultiInstanceInvalidationCallback);
                    parcelObtain.writeInt(i2);
                    this.f19396a.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, IMultiInstanceInvalidationService.f19394i);
        }

        @Override // android.os.IInterface
        public final IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public final boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            String str = IMultiInstanceInvalidationService.f19394i;
            if (i2 >= 1 && i2 <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i2 == 1598968902) {
                parcel2.writeString(str);
                return true;
            }
            IMultiInstanceInvalidationCallback iMultiInstanceInvalidationCallback = null;
            IMultiInstanceInvalidationCallback iMultiInstanceInvalidationCallback2 = null;
            if (i2 == 1) {
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder != null) {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface(IMultiInstanceInvalidationCallback.f19392h);
                    if (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IMultiInstanceInvalidationCallback)) {
                        IMultiInstanceInvalidationCallback.Stub.Proxy proxy = new IMultiInstanceInvalidationCallback.Stub.Proxy();
                        proxy.f19393a = strongBinder;
                        iMultiInstanceInvalidationCallback = proxy;
                    } else {
                        iMultiInstanceInvalidationCallback = (IMultiInstanceInvalidationCallback) iInterfaceQueryLocalInterface;
                    }
                }
                int iM1 = ((MultiInstanceInvalidationService$binder$1) this).m1(iMultiInstanceInvalidationCallback, parcel.readString());
                parcel2.writeNoException();
                parcel2.writeInt(iM1);
                return true;
            }
            if (i2 != 2) {
                if (i2 != 3) {
                    return super.onTransact(i2, parcel, parcel2, i3);
                }
                ((MultiInstanceInvalidationService$binder$1) this).C0(parcel.readInt(), parcel.createStringArray());
                return true;
            }
            IBinder strongBinder2 = parcel.readStrongBinder();
            if (strongBinder2 != null) {
                IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface(IMultiInstanceInvalidationCallback.f19392h);
                if (iInterfaceQueryLocalInterface2 == null || !(iInterfaceQueryLocalInterface2 instanceof IMultiInstanceInvalidationCallback)) {
                    IMultiInstanceInvalidationCallback.Stub.Proxy proxy2 = new IMultiInstanceInvalidationCallback.Stub.Proxy();
                    proxy2.f19393a = strongBinder2;
                    iMultiInstanceInvalidationCallback2 = proxy2;
                } else {
                    iMultiInstanceInvalidationCallback2 = (IMultiInstanceInvalidationCallback) iInterfaceQueryLocalInterface2;
                }
            }
            ((MultiInstanceInvalidationService$binder$1) this).z2(iMultiInstanceInvalidationCallback2, parcel.readInt());
            parcel2.writeNoException();
            return true;
        }
    }

    void C0(int i2, String[] strArr);

    int m1(IMultiInstanceInvalidationCallback iMultiInstanceInvalidationCallback, String str);

    void z2(IMultiInstanceInvalidationCallback iMultiInstanceInvalidationCallback, int i2);
}
