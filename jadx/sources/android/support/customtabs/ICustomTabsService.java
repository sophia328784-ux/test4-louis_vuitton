package android.support.customtabs;

import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import io.jsonwebtoken.JwtParser;

/* JADX INFO: loaded from: classes.dex */
public interface ICustomTabsService extends IInterface {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f566e = "android$support$customtabs$ICustomTabsService".replace('$', JwtParser.SEPARATOR_CHAR);

    public static abstract class Stub extends Binder implements ICustomTabsService {

        public static class Proxy implements ICustomTabsService {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public IBinder f567a;

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f567a;
            }
        }

        public Stub() {
            attachInterface(this, ICustomTabsService.f566e);
        }

        public static ICustomTabsService E2(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(ICustomTabsService.f566e);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof ICustomTabsService)) {
                return (ICustomTabsService) iInterfaceQueryLocalInterface;
            }
            Proxy proxy = new Proxy();
            proxy.f567a = iBinder;
            return proxy;
        }

        @Override // android.os.IInterface
        public final IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public final boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            IInterface iInterfaceQueryLocalInterface;
            String str = ICustomTabsService.f566e;
            if (i2 >= 1 && i2 <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i2 == 1598968902) {
                parcel2.writeString(str);
                return true;
            }
            if (i2 == 16777215) {
                parcel2.writeNoException();
                parcel2.writeInt(d());
                return true;
            }
            switch (i2) {
                case 2:
                    parcel.readLong();
                    boolean zX2 = x2();
                    parcel2.writeNoException();
                    parcel2.writeInt(zX2 ? 1 : 0);
                    return true;
                case 3:
                    ICustomTabsCallback.Stub.E2(parcel.readStrongBinder());
                    boolean zU1 = u1();
                    parcel2.writeNoException();
                    parcel2.writeInt(zU1 ? 1 : 0);
                    return true;
                case 4:
                    ICustomTabsCallback.Stub.E2(parcel.readStrongBinder());
                    Parcelable.Creator creator = Bundle.CREATOR;
                    parcel.createTypedArrayList(creator);
                    boolean zW0 = W0();
                    parcel2.writeNoException();
                    parcel2.writeInt(zW0 ? 1 : 0);
                    return true;
                case 5:
                    parcel.readString();
                    Bundle bundleC2 = c2();
                    parcel2.writeNoException();
                    parcel2.writeTypedObject(bundleC2, 1);
                    return true;
                case 6:
                    ICustomTabsCallback.Stub.E2(parcel.readStrongBinder());
                    boolean zD1 = D1();
                    parcel2.writeNoException();
                    parcel2.writeInt(zD1 ? 1 : 0);
                    return true;
                case 7:
                    ICustomTabsCallback.Stub.E2(parcel.readStrongBinder());
                    boolean zA2 = a2();
                    parcel2.writeNoException();
                    parcel2.writeInt(zA2 ? 1 : 0);
                    return true;
                case 8:
                    ICustomTabsCallback.Stub.E2(parcel.readStrongBinder());
                    parcel.readString();
                    int iF1 = F1();
                    parcel2.writeNoException();
                    parcel2.writeInt(iF1);
                    return true;
                case 9:
                    ICustomTabsCallback.Stub.E2(parcel.readStrongBinder());
                    parcel.readInt();
                    boolean zZ1 = z1();
                    parcel2.writeNoException();
                    parcel2.writeInt(zZ1 ? 1 : 0);
                    return true;
                case 10:
                    ICustomTabsCallback.Stub.E2(parcel.readStrongBinder());
                    boolean zQ0 = q0();
                    parcel2.writeNoException();
                    parcel2.writeInt(zQ0 ? 1 : 0);
                    return true;
                case 11:
                    ICustomTabsCallback.Stub.E2(parcel.readStrongBinder());
                    boolean Z = Z();
                    parcel2.writeNoException();
                    parcel2.writeInt(Z ? 1 : 0);
                    return true;
                case 12:
                    ICustomTabsCallback.Stub.E2(parcel.readStrongBinder());
                    parcel.readInt();
                    boolean zI1 = i1();
                    parcel2.writeNoException();
                    parcel2.writeInt(zI1 ? 1 : 0);
                    return true;
                case 13:
                    ICustomTabsCallback.Stub.E2(parcel.readStrongBinder());
                    boolean zK1 = k1();
                    parcel2.writeNoException();
                    parcel2.writeInt(zK1 ? 1 : 0);
                    return true;
                case 14:
                    ICustomTabsCallback.Stub.E2(parcel.readStrongBinder());
                    parcel.readStrongBinder();
                    boolean zT1 = t1();
                    parcel2.writeNoException();
                    parcel2.writeInt(zT1 ? 1 : 0);
                    return true;
                case 15:
                    ICustomTabsCallback.Stub.E2(parcel.readStrongBinder());
                    c1();
                    parcel2.writeNoException();
                    return true;
                case 16:
                    ICustomTabsCallback.Stub.E2(parcel.readStrongBinder());
                    parcel.createTypedArrayList(Uri.CREATOR);
                    w();
                    parcel2.writeNoException();
                    return true;
                case 17:
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
                case 18:
                    IBinder strongBinder = parcel.readStrongBinder();
                    if (strongBinder != null && (iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface(IAuthTabCallback.f564c)) != null) {
                        boolean z = iInterfaceQueryLocalInterface instanceof IAuthTabCallback;
                    }
                    boolean zY1 = y1();
                    parcel2.writeNoException();
                    parcel2.writeInt(zY1 ? 1 : 0);
                    return true;
            }
        }
    }

    boolean D1();

    int F1();

    boolean W0();

    boolean Z();

    boolean a2();

    void c1();

    Bundle c2();

    int d();

    boolean i1();

    boolean k1();

    boolean q0();

    boolean t1();

    boolean u1();

    void w();

    boolean x2();

    boolean y1();

    boolean z1();
}
