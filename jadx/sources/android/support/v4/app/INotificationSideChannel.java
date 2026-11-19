package android.support.v4.app;

import android.app.Notification;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.batch.android.Batch;
import io.jsonwebtoken.JwtParser;

/* JADX INFO: loaded from: classes.dex */
public interface INotificationSideChannel extends IInterface {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f568f = "android$support$v4$app$INotificationSideChannel".replace('$', JwtParser.SEPARATOR_CHAR);

    public static abstract class Stub extends Binder implements INotificationSideChannel {

        public static class Proxy implements INotificationSideChannel {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public IBinder f569a;

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f569a;
            }

            @Override // android.support.v4.app.INotificationSideChannel
            public final void q2(String str, int i2, Notification notification) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(INotificationSideChannel.f568f);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(Batch.NOTIFICATION_TAG);
                    parcelObtain.writeTypedObject(notification, 0);
                    this.f569a.transact(1, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, INotificationSideChannel.f568f);
        }

        public static INotificationSideChannel E2(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(INotificationSideChannel.f568f);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof INotificationSideChannel)) {
                return (INotificationSideChannel) iInterfaceQueryLocalInterface;
            }
            Proxy proxy = new Proxy();
            proxy.f569a = iBinder;
            return proxy;
        }

        @Override // android.os.IInterface
        public final IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public final boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            String str = INotificationSideChannel.f568f;
            if (i2 >= 1 && i2 <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i2 == 1598968902) {
                parcel2.writeString(str);
                return true;
            }
            if (i2 == 1) {
                String string = parcel.readString();
                int i4 = parcel.readInt();
                parcel.readString();
                q2(string, i4, (Notification) parcel.readTypedObject(Notification.CREATOR));
                return true;
            }
            if (i2 != 2) {
                if (i2 != 3) {
                    return super.onTransact(i2, parcel, parcel2, i3);
                }
                parcel.readString();
                D();
                return true;
            }
            parcel.readString();
            parcel.readInt();
            parcel.readString();
            cancel();
            return true;
        }
    }

    void D();

    void cancel();

    void q2(String str, int i2, Notification notification);
}
