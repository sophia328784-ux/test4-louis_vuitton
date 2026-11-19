package androidx.savedstate;

import android.os.Bundle;
import com.appsflyer.sdk_base.referrer.Payload;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.JvmInline;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0087@\u0018\u00002\u00020\u0001\u0088\u0001\u0002\u0092\u0001\u00060\u0003j\u0002`\u0004¨\u0006\u0005"}, d2 = {"Landroidx/savedstate/SavedStateReader;", "", Payload.SOURCE, "Landroid/os/Bundle;", "Landroidx/savedstate/SavedState;", "savedstate"}, k = 1, mv = {2, 0, 0}, xi = 48)
@JvmInline
public abstract class SavedStateReader {
    public static final boolean a(String str, Bundle bundle) {
        str.getClass();
        return bundle.containsKey(str);
    }

    public static final boolean b(Bundle bundle, Bundle bundle2) {
        return SavedStateReaderKt__SavedStateReader_androidKt.a(bundle, bundle2);
    }

    public static final int c(Bundle bundle) {
        return SavedStateReaderKt__SavedStateReader_androidKt.b(bundle);
    }

    public static final boolean d(String str, Bundle bundle) {
        str.getClass();
        boolean z = bundle.getBoolean(str, false);
        if (z || !bundle.getBoolean(str, true)) {
            return z;
        }
        SavedStateReaderKt.a(str);
        throw null;
    }

    public static final double e(String str, Bundle bundle) {
        str.getClass();
        double d = bundle.getDouble(str, Double.MIN_VALUE);
        if (d != Double.MIN_VALUE || bundle.getDouble(str, Double.MAX_VALUE) != Double.MAX_VALUE) {
            return d;
        }
        SavedStateReaderKt.a(str);
        throw null;
    }

    public static final float f(String str, Bundle bundle) {
        str.getClass();
        float f2 = bundle.getFloat(str, Float.MIN_VALUE);
        if (f2 != Float.MIN_VALUE || bundle.getFloat(str, Float.MAX_VALUE) != Float.MAX_VALUE) {
            return f2;
        }
        SavedStateReaderKt.a(str);
        throw null;
    }

    public static final int g(String str, Bundle bundle) {
        str.getClass();
        int i2 = bundle.getInt(str, Integer.MIN_VALUE);
        if (i2 != Integer.MIN_VALUE || bundle.getInt(str, Integer.MAX_VALUE) != Integer.MAX_VALUE) {
            return i2;
        }
        SavedStateReaderKt.a(str);
        throw null;
    }

    public static final int[] h(String str, Bundle bundle) {
        str.getClass();
        int[] intArray = bundle.getIntArray(str);
        if (intArray != null) {
            return intArray;
        }
        SavedStateReaderKt.a(str);
        throw null;
    }

    public static final long i(String str, Bundle bundle) {
        str.getClass();
        long j2 = bundle.getLong(str, Long.MIN_VALUE);
        if (j2 != Long.MIN_VALUE || bundle.getLong(str, Long.MAX_VALUE) != Long.MAX_VALUE) {
            return j2;
        }
        SavedStateReaderKt.a(str);
        throw null;
    }

    public static final Bundle j(String str, Bundle bundle) {
        str.getClass();
        Bundle bundle2 = bundle.getBundle(str);
        if (bundle2 != null) {
            return bundle2;
        }
        SavedStateReaderKt.a(str);
        throw null;
    }

    public static final String k(String str, Bundle bundle) {
        str.getClass();
        String string = bundle.getString(str);
        if (string != null) {
            return string;
        }
        SavedStateReaderKt.a(str);
        throw null;
    }

    public static final String[] l(String str, Bundle bundle) {
        str.getClass();
        String[] stringArray = bundle.getStringArray(str);
        if (stringArray != null) {
            return stringArray;
        }
        SavedStateReaderKt.a(str);
        throw null;
    }

    public static final ArrayList m(String str, Bundle bundle) {
        str.getClass();
        ArrayList<String> stringArrayList = bundle.getStringArrayList(str);
        if (stringArrayList != null) {
            return stringArrayList;
        }
        SavedStateReaderKt.a(str);
        throw null;
    }

    public static final boolean n(String str, Bundle bundle) {
        str.getClass();
        return a(str, bundle) && bundle.get(str) == null;
    }
}
