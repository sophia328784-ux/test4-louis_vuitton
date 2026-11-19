package androidx.savedstate;

import android.os.Bundle;
import com.appsflyer.sdk_base.referrer.Payload;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmInline;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0087@\u0018\u00002\u00020\u0001\u0088\u0001\u0002\u0092\u0001\u00060\u0003j\u0002`\u0004¨\u0006\u0005"}, d2 = {"Landroidx/savedstate/SavedStateWriter;", "", Payload.SOURCE, "Landroid/os/Bundle;", "Landroidx/savedstate/SavedState;", "savedstate"}, k = 1, mv = {2, 0, 0}, xi = 48)
@JvmInline
public abstract class SavedStateWriter {
    public static final void a(int i2, String str, Bundle bundle) {
        str.getClass();
        bundle.putInt(str, i2);
    }

    public static final void b(String str, List list, Bundle bundle) {
        str.getClass();
        list.getClass();
        bundle.putParcelableArrayList(str, SavedStateWriterKt.a(list));
    }

    public static final void c(Bundle bundle, String str, Bundle bundle2) {
        str.getClass();
        bundle2.getClass();
        bundle.putBundle(str, bundle2);
    }

    public static final void d(String str, String str2, Bundle bundle) {
        str.getClass();
        str2.getClass();
        bundle.putString(str, str2);
    }

    public static final void e(String str, List list, Bundle bundle) {
        str.getClass();
        list.getClass();
        bundle.putStringArrayList(str, SavedStateWriterKt.a(list));
    }
}
