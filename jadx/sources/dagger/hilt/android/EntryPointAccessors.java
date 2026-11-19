package dagger.hilt.android;

import android.content.Context;
import dagger.hilt.EntryPoints;
import dagger.hilt.android.internal.Contexts;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Ldagger/hilt/android/EntryPointAccessors;", "", "hilt-android_main_java_dagger_hilt_android-entry_point_accessors"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class EntryPointAccessors {
    public static final Object a(Context context, Class cls) {
        context.getClass();
        return EntryPoints.a(cls, Contexts.a(context.getApplicationContext()));
    }
}
