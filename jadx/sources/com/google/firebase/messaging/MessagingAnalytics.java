package com.google.firebase.messaging;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.Event;
import com.google.android.datatransport.ProductData;
import com.google.android.datatransport.TransportFactory;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.FirebaseApp;
import com.google.firebase.FirebaseOptions;
import com.google.firebase.analytics.connector.AnalyticsConnector;
import com.google.firebase.installations.FirebaseInstallations;
import com.google.firebase.installations.FirebaseInstallationsApi;
import com.google.firebase.messaging.reporting.MessagingClientEvent;
import com.google.firebase.messaging.reporting.MessagingClientEventExtension;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.lc0;
import defpackage.x1;
import java.util.concurrent.ExecutionException;

/* JADX INFO: loaded from: classes2.dex */
public class MessagingAnalytics {
    public static boolean a() {
        ApplicationInfo applicationInfo;
        Bundle bundle;
        try {
            FirebaseApp.d();
            FirebaseApp firebaseAppD = FirebaseApp.d();
            firebaseAppD.a();
            Context context = firebaseAppD.f34330a;
            SharedPreferences sharedPreferences = context.getSharedPreferences("com.google.firebase.messaging", 0);
            if (sharedPreferences.contains("export_to_big_query")) {
                return sharedPreferences.getBoolean("export_to_big_query", false);
            }
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null && (applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 128)) != null && (bundle = applicationInfo.metaData) != null && bundle.containsKey("delivery_metrics_exported_to_big_query_enabled")) {
                return applicationInfo.metaData.getBoolean("delivery_metrics_exported_to_big_query_enabled", false);
            }
            return false;
        } catch (PackageManager.NameNotFoundException | IllegalStateException unused) {
        }
    }

    /* JADX WARN: Code duplicated, block: B:122:0x0154 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:42:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:46:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:47:0x00db  */
    /* JADX WARN: Code duplicated, block: B:50:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:84:0x0159  */
    /* JADX WARN: Code duplicated, block: B:86:0x0166 A[Catch: NumberFormatException -> 0x0174, TRY_ENTER, TRY_LEAVE, TryCatch #3 {NumberFormatException -> 0x0174, blocks: (B:86:0x0166, B:94:0x017f), top: B:118:0x0164 }] */
    /* JADX WARN: Code duplicated, block: B:88:0x016b  */
    /* JADX WARN: Code duplicated, block: B:91:0x0176  */
    /* JADX WARN: Code duplicated, block: B:94:0x017f A[Catch: NumberFormatException -> 0x0174, TRY_ENTER, TRY_LEAVE, TryCatch #3 {NumberFormatException -> 0x0174, blocks: (B:86:0x0166, B:94:0x017f), top: B:118:0x0164 }] */
    /* JADX WARN: Multi-variable type inference failed */
    public static void b(Intent intent) {
        int iIntValue;
        Object[] objArr;
        long j2;
        FirebaseApp firebaseAppD;
        FirebaseOptions firebaseOptions;
        String str;
        String str2;
        String[] strArrSplit;
        String str3;
        if (d(intent)) {
            c("_nr", intent.getExtras());
        }
        int i2 = 0;
        if ((intent == null || "com.google.firebase.messaging.RECEIVE_DIRECT_BOOT".equals(intent.getAction())) ? false : a()) {
            MessagingClientEvent.Event event = MessagingClientEvent.Event.MESSAGE_DELIVERED;
            TransportFactory transportFactory = (TransportFactory) FirebaseMessaging.o.get();
            if (transportFactory == null) {
                return;
            }
            MessagingClientEvent messagingClientEventA = null;
            str = null;
            String str4 = null;
            if (intent != null) {
                Bundle extras = intent.getExtras();
                if (extras == null) {
                    extras = Bundle.EMPTY;
                }
                int i3 = MessagingClientEvent.n;
                MessagingClientEvent.Builder builder = new MessagingClientEvent.Builder();
                Object obj = extras.get("google.ttl");
                if (obj instanceof Integer) {
                    iIntValue = ((Integer) obj).intValue();
                } else if (obj instanceof String) {
                    try {
                        iIntValue = Integer.parseInt((String) obj);
                    } catch (NumberFormatException unused) {
                        iIntValue = 0;
                    }
                } else {
                    iIntValue = 0;
                }
                builder.f35354i = iIntValue;
                builder.f35356k = event;
                String string = extras.getString("google.to");
                if (TextUtils.isEmpty(string)) {
                    try {
                        FirebaseApp firebaseAppD2 = FirebaseApp.d();
                        Object obj2 = FirebaseInstallations.m;
                        string = (String) Tasks.a(((FirebaseInstallations) firebaseAppD2.b(FirebaseInstallationsApi.class)).getId());
                    } catch (InterruptedException | ExecutionException e2) {
                        x1.m(e2);
                        return;
                    }
                }
                builder.f35350c = string;
                FirebaseApp firebaseAppD3 = FirebaseApp.d();
                firebaseAppD3.a();
                builder.f35352f = firebaseAppD3.f34330a.getPackageName();
                builder.f35351e = MessagingClientEvent.SDKPlatform.ANDROID;
                builder.d = NotificationParams.f(extras) ? MessagingClientEvent.MessageType.DISPLAY_NOTIFICATION : MessagingClientEvent.MessageType.DATA_MESSAGE;
                String string2 = extras.getString("google.delivered_priority");
                if (string2 != null) {
                    if ("high".equals(string2)) {
                        objArr = 1;
                    } else if ("normal".equals(string2)) {
                        objArr = 2;
                    } else {
                        objArr = 0;
                    }
                } else if ("1".equals(extras.getString("google.priority_reduced"))) {
                    objArr = 2;
                } else {
                    string2 = extras.getString("google.priority");
                    if ("high".equals(string2)) {
                        objArr = 1;
                    } else if ("normal".equals(string2)) {
                        objArr = 2;
                    } else {
                        objArr = 0;
                    }
                }
                if (objArr == 2) {
                    i2 = 5;
                } else if (objArr == 1) {
                    i2 = 10;
                }
                builder.f35353h = i2;
                String string3 = extras.getString("google.message_id");
                if (string3 == null) {
                    string3 = extras.getString("message_id");
                }
                if (string3 != null) {
                    builder.f35349b = string3;
                }
                String string4 = extras.getString("from");
                if (string4 != null && string4.startsWith("/topics/")) {
                    str4 = string4;
                }
                if (str4 != null) {
                    builder.f35355j = str4;
                }
                String string5 = extras.getString("collapse_key");
                if (string5 != null) {
                    builder.g = string5;
                }
                String string6 = extras.getString("google.c.a.m_l");
                if (string6 != null) {
                    builder.l = string6;
                }
                String string7 = extras.getString("google.c.a.c_l");
                if (string7 != null) {
                    builder.m = string7;
                }
                if (extras.containsKey("google.c.sender.id")) {
                    try {
                        j2 = Long.parseLong(extras.getString("google.c.sender.id"));
                    } catch (NumberFormatException unused2) {
                        firebaseAppD = FirebaseApp.d();
                        firebaseOptions = firebaseAppD.f34332c;
                        firebaseAppD.a();
                        str = firebaseOptions.f34348e;
                        if (str != null) {
                            try {
                                j2 = Long.parseLong(str);
                            } catch (NumberFormatException unused3) {
                                firebaseAppD.a();
                                str2 = firebaseOptions.f34346b;
                                try {
                                    if (str2.startsWith("1:")) {
                                        strArrSplit = str2.split(":");
                                        if (strArrSplit.length >= 2) {
                                            str3 = strArrSplit[1];
                                            if (!str3.isEmpty()) {
                                                j2 = Long.parseLong(str3);
                                            }
                                        }
                                        j2 = 0;
                                    } else {
                                        j2 = Long.parseLong(str2);
                                    }
                                } catch (NumberFormatException unused4) {
                                }
                            }
                        } else {
                            firebaseAppD.a();
                            str2 = firebaseOptions.f34346b;
                            if (str2.startsWith("1:")) {
                                j2 = Long.parseLong(str2);
                            } else {
                                strArrSplit = str2.split(":");
                                if (strArrSplit.length >= 2) {
                                    str3 = strArrSplit[1];
                                    if (!str3.isEmpty()) {
                                        j2 = Long.parseLong(str3);
                                    }
                                }
                                j2 = 0;
                            }
                        }
                    }
                } else {
                    firebaseAppD = FirebaseApp.d();
                    firebaseOptions = firebaseAppD.f34332c;
                    firebaseAppD.a();
                    str = firebaseOptions.f34348e;
                    if (str != null) {
                        j2 = Long.parseLong(str);
                    } else {
                        firebaseAppD.a();
                        str2 = firebaseOptions.f34346b;
                        if (str2.startsWith("1:")) {
                            j2 = Long.parseLong(str2);
                        } else {
                            strArrSplit = str2.split(":");
                            if (strArrSplit.length >= 2) {
                                str3 = strArrSplit[1];
                                if (!str3.isEmpty()) {
                                    j2 = Long.parseLong(str3);
                                }
                            }
                            j2 = 0;
                        }
                    }
                }
                if (j2 > 0) {
                    builder.f35348a = j2;
                }
                messagingClientEventA = builder.a();
            }
            if (messagingClientEventA == null) {
                return;
            }
            try {
                transportFactory.a("FCM_CLIENT_EVENT_LOGGING", new Encoding("proto"), new lc0(7)).b(Event.f(new MessagingClientEventExtension(messagingClientEventA), ProductData.b(Integer.valueOf(intent.getIntExtra("google.product_id", 111881503)))));
            } catch (RuntimeException unused5) {
            }
        }
    }

    public static void c(String str, Bundle bundle) {
        try {
            FirebaseApp.d();
            if (bundle == null) {
                bundle = new Bundle();
            }
            Bundle bundle2 = new Bundle();
            String string = bundle.getString("google.c.a.c_id");
            if (string != null) {
                bundle2.putString("_nmid", string);
            }
            String string2 = bundle.getString("google.c.a.c_l");
            if (string2 != null) {
                bundle2.putString("_nmn", string2);
            }
            String string3 = bundle.getString("google.c.a.m_l");
            if (!TextUtils.isEmpty(string3)) {
                bundle2.putString("label", string3);
            }
            String string4 = bundle.getString("google.c.a.m_c");
            if (!TextUtils.isEmpty(string4)) {
                bundle2.putString("message_channel", string4);
            }
            String string5 = bundle.getString("from");
            if (string5 == null || !string5.startsWith("/topics/")) {
                string5 = null;
            }
            if (string5 != null) {
                bundle2.putString("_nt", string5);
            }
            String string6 = bundle.getString("google.c.a.ts");
            if (string6 != null) {
                try {
                    bundle2.putInt("_nmt", Integer.parseInt(string6));
                } catch (NumberFormatException unused) {
                }
            }
            String string7 = bundle.containsKey("google.c.a.udt") ? bundle.getString("google.c.a.udt") : null;
            if (string7 != null) {
                try {
                    bundle2.putInt("_ndt", Integer.parseInt(string7));
                } catch (NumberFormatException unused2) {
                }
            }
            String str2 = NotificationParams.f(bundle) ? "display" : DbParams.KEY_DATA;
            if ("_nr".equals(str) || "_nf".equals(str)) {
                bundle2.putString("_nmc", str2);
            }
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                bundle2.toString();
            }
            AnalyticsConnector analyticsConnector = (AnalyticsConnector) FirebaseApp.d().b(AnalyticsConnector.class);
            if (analyticsConnector != null) {
                analyticsConnector.a("fcm", str, bundle2);
            }
        } catch (IllegalStateException unused3) {
        }
    }

    public static boolean d(Intent intent) {
        Bundle extras;
        if (intent == null || "com.google.firebase.messaging.RECEIVE_DIRECT_BOOT".equals(intent.getAction()) || (extras = intent.getExtras()) == null) {
            return false;
        }
        return "1".equals(extras.getString("google.c.a.e"));
    }
}
