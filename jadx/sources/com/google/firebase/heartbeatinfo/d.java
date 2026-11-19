package com.google.firebase.heartbeatinfo;

import androidx.datastore.preferences.core.MutablePreferences;
import androidx.datastore.preferences.core.Preferences;
import defpackage.cj;
import defpackage.md;
import java.util.Collections;
import java.util.HashSet;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class d implements Function1 {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        MutablePreferences mutablePreferences = (MutablePreferences) obj;
        Preferences.Key key = HeartBeatInfoStorage.f35136c;
        long j2 = 0;
        for (Map.Entry entry : mutablePreferences.a().entrySet()) {
            if (entry.getValue() instanceof Set) {
                Preferences.Key key2 = (Preferences.Key) entry.getKey();
                Set set = (Set) entry.getValue();
                String strB = HeartBeatInfoStorage.b(System.currentTimeMillis());
                if (set.contains(strB)) {
                    Object[] objArr = {strB};
                    HashSet hashSet = new HashSet(1);
                    Object obj2 = objArr[0];
                    Objects.requireNonNull(obj2);
                    if (!hashSet.add(obj2)) {
                        md.n(cj.i(obj2, "duplicate element: "));
                        return null;
                    }
                    mutablePreferences.e(key2, Collections.unmodifiableSet(hashSet));
                    j2++;
                } else {
                    mutablePreferences.d(key2);
                }
            }
        }
        if (j2 == 0) {
            mutablePreferences.d(key);
        } else {
            mutablePreferences.e(key, Long.valueOf(j2));
        }
        return null;
    }
}
