package com.google.android.gms.common.api;

import android.text.TextUtils;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.internal.ApiKey;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class AvailabilityException extends Exception {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayMap f28981b;

    public AvailabilityException(ArrayMap arrayMap) {
        this.f28981b = arrayMap;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        ArrayList arrayList = new ArrayList();
        ArrayMap arrayMap = this.f28981b;
        boolean z = true;
        for (ApiKey apiKey : arrayMap.keySet()) {
            ConnectionResult connectionResult = (ConnectionResult) arrayMap.get(apiKey);
            Preconditions.h(connectionResult);
            z &= !connectionResult.W1();
            String str = apiKey.f29013b.f28973b;
            String strValueOf = String.valueOf(connectionResult);
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 2 + strValueOf.length());
            sb.append(str);
            sb.append(": ");
            sb.append(strValueOf);
            arrayList.add(sb.toString());
        }
        StringBuilder sb2 = new StringBuilder();
        if (z) {
            sb2.append("None of the queried APIs are available. ");
        } else {
            sb2.append("Some of the queried APIs are unavailable. ");
        }
        sb2.append(TextUtils.join("; ", arrayList));
        return sb2.toString();
    }
}
