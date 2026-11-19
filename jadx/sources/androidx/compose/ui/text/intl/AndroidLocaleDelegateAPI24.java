package androidx.compose.ui.text.intl;

import androidx.compose.ui.text.platform.SynchronizedObject;
import java.util.ArrayList;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0001\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/ui/text/intl/AndroidLocaleDelegateAPI24;", "Landroidx/compose/ui/text/intl/PlatformLocaleDelegate;", "<init>", "()V", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidLocaleDelegateAPI24 implements PlatformLocaleDelegate {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public android.os.LocaleList f10867a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public LocaleList f10868b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SynchronizedObject f10869c = new SynchronizedObject();

    public final LocaleList a() {
        android.os.LocaleList localeList = android.os.LocaleList.getDefault();
        synchronized (this.f10869c) {
            LocaleList localeList2 = this.f10868b;
            if (localeList2 != null && localeList == this.f10867a) {
                return localeList2;
            }
            int size = localeList.size();
            ArrayList arrayList = new ArrayList(size);
            for (int i2 = 0; i2 < size; i2++) {
                arrayList.add(new Locale(localeList.get(i2)));
            }
            LocaleList localeList3 = new LocaleList(arrayList);
            this.f10867a = localeList;
            this.f10868b = localeList3;
            return localeList3;
        }
    }
}
