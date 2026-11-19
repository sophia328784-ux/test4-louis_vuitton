package com.batch.android;

import android.content.Context;
import android.os.Bundle;
import com.batch.android.e.r;
import com.batch.android.e.t;
import com.google.firebase.messaging.RemoteMessage;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class d {
    public static synchronized boolean a(Context context, r rVar) {
        String strJ = rVar.j();
        if (strJ == null || a(context, strJ)) {
            return true;
        }
        t.e(com.batch.android.v0.j.m, "Received notification[" + rVar.r() + "] for another install id[" + strJ + "], aborting");
        return false;
    }

    public static Bundle a(RemoteMessage remoteMessage) {
        if (remoteMessage == null) {
            return null;
        }
        HashMap mapW1 = remoteMessage.W1();
        if (mapW1.size() == 0) {
            return null;
        }
        Bundle bundle = new Bundle();
        for (Map.Entry entry : mapW1.entrySet()) {
            bundle.putString((String) entry.getKey(), (String) entry.getValue());
        }
        return bundle;
    }

    private static boolean a(Context context, String str) {
        return str.equals(new g(context).b());
    }
}
