package android.support.v4.os;

import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public class ResultReceiver implements Parcelable {
    public static final Parcelable.Creator<ResultReceiver> CREATOR = new AnonymousClass1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f649b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Handler f650c;
    public IResultReceiver d;

    /* JADX INFO: renamed from: android.support.v4.os.ResultReceiver$1, reason: invalid class name */
    public class AnonymousClass1 implements Parcelable.Creator<ResultReceiver> {
        @Override // android.os.Parcelable.Creator
        public final ResultReceiver createFromParcel(Parcel parcel) {
            return new ResultReceiver(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final ResultReceiver[] newArray(int i2) {
            return new ResultReceiver[i2];
        }
    }

    public class MyResultReceiver extends IResultReceiver.Stub {
        public MyResultReceiver() {
        }

        @Override // android.support.v4.os.IResultReceiver
        public final void P0(int i2, Bundle bundle) {
            ResultReceiver resultReceiver = ResultReceiver.this;
            Handler handler = resultReceiver.f650c;
            if (handler != null) {
                handler.post(resultReceiver.new MyRunnable(i2, bundle));
            } else {
                resultReceiver.a(i2, bundle);
            }
        }
    }

    public class MyRunnable implements Runnable {
        final int mResultCode;
        final Bundle mResultData;

        public MyRunnable(int i2, Bundle bundle) {
            this.mResultCode = i2;
            this.mResultData = bundle;
        }

        @Override // java.lang.Runnable
        public void run() {
            ResultReceiver.this.a(this.mResultCode, this.mResultData);
        }
    }

    public ResultReceiver(Parcel parcel) {
        this.f649b = false;
        IResultReceiver iResultReceiver = null;
        this.f650c = null;
        IBinder strongBinder = parcel.readStrongBinder();
        int i2 = IResultReceiver.Stub.f647a;
        if (strongBinder != null) {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface(IResultReceiver.g);
            if (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IResultReceiver)) {
                IResultReceiver.Stub.Proxy proxy = new IResultReceiver.Stub.Proxy();
                proxy.f648a = strongBinder;
                iResultReceiver = proxy;
            } else {
                iResultReceiver = (IResultReceiver) iInterfaceQueryLocalInterface;
            }
        }
        this.d = iResultReceiver;
    }

    public void a(int i2, Bundle bundle) {
    }

    public final void b(int i2, Bundle bundle) {
        if (this.f649b) {
            Handler handler = this.f650c;
            if (handler != null) {
                handler.post(new MyRunnable(i2, bundle));
                return;
            } else {
                a(i2, bundle);
                return;
            }
        }
        IResultReceiver iResultReceiver = this.d;
        if (iResultReceiver != null) {
            try {
                iResultReceiver.P0(i2, bundle);
            } catch (RemoteException unused) {
            }
        }
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        synchronized (this) {
            try {
                if (this.d == null) {
                    this.d = new MyResultReceiver();
                }
                parcel.writeStrongBinder(this.d.asBinder());
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public ResultReceiver(Handler handler) {
        this.f649b = true;
        this.f650c = handler;
    }
}
