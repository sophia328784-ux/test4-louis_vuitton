package androidx.media3.common;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.UnmodifiableListIterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class BundleListRetriever extends Binder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ImmutableList f13706a;

    public BundleListRetriever(List<Bundle> list) {
        this.f13706a = ImmutableList.t(list);
    }

    public static ImmutableList a(IBinder iBinder) {
        int i2;
        if (iBinder instanceof BundleListRetriever) {
            return ((BundleListRetriever) iBinder).f13706a;
        }
        UnmodifiableListIterator unmodifiableListIterator = ImmutableList.f33587c;
        ImmutableList.Builder builder = new ImmutableList.Builder();
        int i3 = 0;
        int i4 = 1;
        while (i4 != 0) {
            Parcel parcelObtain = Parcel.obtain();
            Parcel parcelObtain2 = Parcel.obtain();
            try {
                parcelObtain.writeInt(i3);
                try {
                    iBinder.transact(1, parcelObtain, parcelObtain2, 0);
                    while (true) {
                        i2 = parcelObtain2.readInt();
                        if (i2 == 1) {
                            Bundle bundle = parcelObtain2.readBundle();
                            bundle.getClass();
                            builder.e(bundle);
                            i3++;
                        }
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    i4 = i2;
                } catch (RemoteException e2) {
                    throw new RuntimeException(e2);
                }
            } catch (Throwable th) {
                parcelObtain2.recycle();
                parcelObtain.recycle();
                throw th;
            }
        }
        return builder.j();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.os.Binder
    public final boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
        if (i2 != 1) {
            return super.onTransact(i2, parcel, parcel2, i3);
        }
        if (parcel2 == null) {
            return false;
        }
        ImmutableList immutableList = this.f13706a;
        int size = immutableList.size();
        int i4 = parcel.readInt();
        while (i4 < size && parcel2.dataSize() < C.f13716a) {
            parcel2.writeInt(1);
            parcel2.writeBundle((Bundle) immutableList.get(i4));
            i4++;
        }
        parcel2.writeInt(i4 < size ? 2 : 0);
        return true;
    }
}
