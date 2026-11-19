package androidx.room;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import io.jsonwebtoken.JwtParser;

/* JADX INFO: loaded from: classes.dex */
public interface IMultiInstanceInvalidationCallback extends IInterface {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final String f19392h = "androidx$room$IMultiInstanceInvalidationCallback".replace('$', JwtParser.SEPARATOR_CHAR);

    public static abstract class Stub extends Binder implements IMultiInstanceInvalidationCallback {

        public static class Proxy implements IMultiInstanceInvalidationCallback {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public IBinder f19393a;

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f19393a;
            }

            @Override // androidx.room.IMultiInstanceInvalidationCallback
            public final void x(String[] strArr) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IMultiInstanceInvalidationCallback.f19392h);
                    parcelObtain.writeStringArray(strArr);
                    this.f19393a.transact(1, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, IMultiInstanceInvalidationCallback.f19392h);
        }

        @Override // android.os.IInterface
        public final IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public final boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            String str = IMultiInstanceInvalidationCallback.f19392h;
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
            ((MultiInstanceInvalidationClient$invalidationCallback$1) this).x(parcel.createStringArray());
            return true;
        }
    }

    void x(String[] strArr);
}
