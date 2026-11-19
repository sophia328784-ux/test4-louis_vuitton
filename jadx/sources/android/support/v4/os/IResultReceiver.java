package android.support.v4.os;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import io.jsonwebtoken.JwtParser;

/* JADX INFO: loaded from: classes.dex */
public interface IResultReceiver extends IInterface {
    public static final String g = "android$support$v4$os$IResultReceiver".replace('$', JwtParser.SEPARATOR_CHAR);

    public static abstract class Stub extends Binder implements IResultReceiver {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int f647a = 0;

        public static class Proxy implements IResultReceiver {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public IBinder f648a;

            @Override // android.support.v4.os.IResultReceiver
            public final void P0(int i2, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IResultReceiver.g);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeTypedObject(bundle, 0);
                    this.f648a.transact(1, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f648a;
            }
        }

        public Stub() {
            attachInterface(this, IResultReceiver.g);
        }

        @Override // android.os.IInterface
        public final IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public final boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            String str = IResultReceiver.g;
            if (i2 >= 1 && i2 <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i2 == 1598968902) {
                parcel2.writeString(str);
                return true;
            }
            if (i2 != 1) {
                return super.onTransact(i2, parcel, parcel2, i3);
            }
            ((ResultReceiver.MyResultReceiver) this).P0(parcel.readInt(), (Bundle) parcel.readTypedObject(Bundle.CREATOR));
            return true;
        }
    }

    void P0(int i2, Bundle bundle);
}
