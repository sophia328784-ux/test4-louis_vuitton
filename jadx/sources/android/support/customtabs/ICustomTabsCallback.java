package android.support.customtabs;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import io.jsonwebtoken.JwtParser;

/* JADX INFO: loaded from: classes.dex */
public interface ICustomTabsCallback extends IInterface {
    public static final String d = "android$support$customtabs$ICustomTabsCallback".replace('$', JwtParser.SEPARATOR_CHAR);

    public static abstract class Stub extends Binder implements ICustomTabsCallback {

        public static class Proxy implements ICustomTabsCallback {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public IBinder f565a;

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f565a;
            }
        }

        public Stub() {
            attachInterface(this, ICustomTabsCallback.d);
        }

        public static ICustomTabsCallback E2(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(ICustomTabsCallback.d);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof ICustomTabsCallback)) {
                return (ICustomTabsCallback) iInterfaceQueryLocalInterface;
            }
            Proxy proxy = new Proxy();
            proxy.f565a = iBinder;
            return proxy;
        }

        @Override // android.os.IInterface
        public final IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public final boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            String str = ICustomTabsCallback.d;
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
                    parcel.readInt();
                    t0();
                    return true;
                case 3:
                    parcel.readString();
                    h1();
                    return true;
                case 4:
                    v1();
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.readString();
                    w0();
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.readInt();
                    parcel.readInt();
                    d1();
                    return true;
                case 7:
                    parcel.readString();
                    Bundle bundleQ = Q();
                    parcel2.writeNoException();
                    parcel2.writeTypedObject(bundleQ, 1);
                    return true;
                case 8:
                    parcel.readInt();
                    parcel.readInt();
                    n0();
                    return true;
                case 9:
                    N0();
                    return true;
                case 10:
                    parcel.readInt();
                    parcel.readInt();
                    parcel.readInt();
                    parcel.readInt();
                    parcel.readInt();
                    s1();
                    return true;
                case 11:
                    m2();
                    return true;
                case 12:
                    d0();
                    return true;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }
    }

    void N0();

    Bundle Q();

    int d();

    void d0();

    void d1();

    void h1();

    void m2();

    void n0();

    void s1();

    void t0();

    void v1();

    void w0();
}
