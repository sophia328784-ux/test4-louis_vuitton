package androidx.media3.common;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.SharedMemory;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Iterables;
import com.google.common.collect.UnmodifiableListIterator;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class BundleableByteArray {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f13707e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f13708f;
    public static final String g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f13709a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final InProcessBinder f13710b = new InProcessBinder();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public SharedMemoryApi27 f13711c;
    public SplitArrayRetriever d;

    public final class InProcessBinder extends Binder {
        public InProcessBinder() {
        }
    }

    public static final class SharedMemoryApi27 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final SharedMemory f13713a;

        public SharedMemoryApi27(SharedMemory sharedMemory) {
            this.f13713a = sharedMemory;
        }
    }

    public static final class SplitArrayRetriever {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final int f13714b = C.f13716a;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final BundleListRetriever f13715a;

        public SplitArrayRetriever(byte[] bArr) {
            UnmodifiableListIterator unmodifiableListIterator = ImmutableList.f33587c;
            ImmutableList.Builder builder = new ImmutableList.Builder();
            int length = bArr.length;
            int i2 = f13714b;
            int iG = Util.g(length, i2);
            for (int i3 = 0; i3 < iG; i3++) {
                Bundle bundle = new Bundle();
                int i4 = i3 * i2;
                bundle.putByteArray("bytes", Arrays.copyOfRange(bArr, i4, Math.min(i4 + i2, bArr.length)));
                builder.e(bundle);
            }
            this.f13715a = new BundleListRetriever(builder.j());
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static byte[] a(Bundle bundle) {
            IBinder binder = bundle.getBinder(BundleableByteArray.g);
            if (binder != null) {
                try {
                    ImmutableList immutableListA = BundleListRetriever.a(binder);
                    if (immutableListA.isEmpty()) {
                        return Util.f14243b;
                    }
                    byte[] byteArray = ((Bundle) Iterables.b(immutableListA)).getByteArray("bytes");
                    if (byteArray != null) {
                        int size = immutableListA.size() - 1;
                        int i2 = f13714b;
                        int i3 = size * i2;
                        byte[] bArr = new byte[byteArray.length + i3];
                        System.arraycopy(byteArray, 0, bArr, i3, byteArray.length);
                        for (int i4 = 0; i4 < size; i4++) {
                            byte[] byteArray2 = ((Bundle) immutableListA.get(i4)).getByteArray("bytes");
                            if (byteArray2 != null && byteArray2.length == i2) {
                                System.arraycopy(byteArray2, 0, bArr, i4 * i2, i2);
                            }
                        }
                        return bArr;
                    }
                } catch (RuntimeException e2) {
                    Log.h("Failed to read byte array from bundle list retriever", e2);
                    return null;
                }
            }
            return null;
        }
    }

    static {
        String str = Util.f14242a;
        f13707e = Integer.toString(0, 36);
        f13708f = Integer.toString(1, 36);
        g = Integer.toString(2, 36);
    }

    public BundleableByteArray(byte[] bArr) {
        this.f13709a = bArr;
    }
}
