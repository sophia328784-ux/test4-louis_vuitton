package androidx.datastore.migrations;

import android.content.SharedPreferences;
import java.util.Set;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u00020\u0001B!\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/datastore/migrations/SharedPreferencesView;", "", "Landroid/content/SharedPreferences;", "prefs", "", "", "keySet", "<init>", "(Landroid/content/SharedPreferences;Ljava/util/Set;)V", "datastore_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class SharedPreferencesView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SharedPreferences f12860a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Set f12861b;

    public SharedPreferencesView(SharedPreferences sharedPreferences, Set<String> set) {
        sharedPreferences.getClass();
        this.f12860a = sharedPreferences;
        this.f12861b = set;
    }
}
