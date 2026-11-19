package com.appsflyer.internal;

import android.content.ContentProviderClient;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.appsflyer.AFLogger;
import com.appsflyer.sdk_base.logger.AFLoggerBase;
import com.appsflyer.sdk_base.logger.LogTag;
import com.appsflyer.sdk_base.referrer.Payload;
import com.appsflyer.sdk_base.referrer.Referrer;
import com.appsflyer.sdk_base.referrer.ReferrerProp;
import defpackage.v40;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.collections.MapsKt;

/* JADX INFO: loaded from: classes.dex */
public final class AFi1iSDK extends Referrer {
    private String AFKeystoreWrapper;
    private final AFc1iSDK d;
    private final AFi1jSDK registerClient;
    private final Runnable unregisterClient;

    public /* synthetic */ class AFa1ySDK {
        public static final /* synthetic */ int[] AFKeystoreWrapper;

        static {
            int[] iArr = new int[AFi1jSDK.values().length];
            try {
                iArr[AFi1jSDK.FACEBOOK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AFi1jSDK.INSTAGRAM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[AFi1jSDK.FACEBOOK_LITE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            AFKeystoreWrapper = iArr;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public AFi1iSDK(AFc1iSDK aFc1iSDK, AFi1jSDK aFi1jSDK, ReferrerProp referrerProp, Runnable runnable) {
        String str;
        aFc1iSDK.getClass();
        aFi1jSDK.getClass();
        referrerProp.getClass();
        runnable.getClass();
        int i2 = AFi1fSDK.AFa1tSDK.AFKeystoreWrapper[aFi1jSDK.ordinal()];
        if (i2 == 1) {
            str = Payload.SOURCE_FACEBOOK;
        } else if (i2 == 2) {
            str = Payload.SOURCE_INSTAGRAM;
        } else {
            if (i2 != 3) {
                v40.g();
                throw null;
            }
            str = Payload.SOURCE_FACEBOOK_LITE;
        }
        super(Payload.TYPE_APP, str, referrerProp);
        this.d = aFc1iSDK;
        this.registerClient = aFi1jSDK;
        this.unregisterClient = runnable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:73:0x0202 A[PHI: r26
      0x0202: PHI (r26v2 android.content.ContentProviderClient) = 
      (r26v1 android.content.ContentProviderClient)
      (r26v3 android.content.ContentProviderClient)
      (r26v3 android.content.ContentProviderClient)
     binds: [B:82:0x0247, B:72:0x0200, B:77:0x0217] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:76:0x0214  */
    public static final void d(AFi1iSDK aFi1iSDK, Context context) {
        Throwable th;
        Cursor cursor;
        ContentProviderClient contentProviderClientAcquireUnstableContentProviderClient;
        Uri uri;
        String string;
        String str;
        aFi1iSDK.start();
        String str2 = aFi1iSDK.AFKeystoreWrapper;
        str2.getClass();
        try {
            AFi1jSDK aFi1jSDK = aFi1iSDK.registerClient;
            int[] iArr = AFa1ySDK.AFKeystoreWrapper;
            int i2 = iArr[aFi1jSDK.ordinal()];
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        throw new NoWhenBranchMatchedException();
                    }
                    if (context.getPackageManager().resolveContentProvider("com.facebook.lite.provider.InstallReferrerProvider", 0) != null) {
                        AFLoggerBase.d$default(AFLogger.INSTANCE, LogTag.META_REFERRER, "Found Facebook Lite content provider", false, 4, null);
                        uri = Uri.parse("content://com.facebook.lite.provider.InstallReferrerProvider/".concat(str2));
                    } else {
                        AFLoggerBase.d$default(AFLogger.INSTANCE, LogTag.META_REFERRER, "Facebook Lite content provider not found", false, 4, null);
                        uri = null;
                    }
                } else if (context.getPackageManager().resolveContentProvider("com.instagram.contentprovider.InstallReferrerProvider", 0) != null) {
                    AFLoggerBase.d$default(AFLogger.INSTANCE, LogTag.META_REFERRER, "Found Instagram content provider", false, 4, null);
                    uri = Uri.parse("content://com.instagram.contentprovider.InstallReferrerProvider/".concat(str2));
                } else {
                    AFLoggerBase.d$default(AFLogger.INSTANCE, LogTag.META_REFERRER, "Instagram content provider not found", false, 4, null);
                    uri = null;
                }
            } else if (context.getPackageManager().resolveContentProvider("com.facebook.katana.provider.InstallReferrerProvider", 0) != null) {
                AFLoggerBase.d$default(AFLogger.INSTANCE, LogTag.META_REFERRER, "Found Facebook content provider", false, 4, null);
                uri = Uri.parse("content://com.facebook.katana.provider.InstallReferrerProvider/".concat(str2));
            } else {
                AFLoggerBase.d$default(AFLogger.INSTANCE, LogTag.META_REFERRER, "Facebook content provider not found", false, 4, null);
                uri = null;
            }
            if (uri != null) {
                contentProviderClientAcquireUnstableContentProviderClient = context.getContentResolver().acquireUnstableContentProviderClient(uri);
                try {
                    Cursor cursorQuery = contentProviderClientAcquireUnstableContentProviderClient != null ? contentProviderClientAcquireUnstableContentProviderClient.query(uri, new String[]{"install_referrer", Payload.META_IS_CLICK_THROUGH_CUSTOM_KEY, "actual_timestamp"}, null, null, null) : null;
                    if (cursorQuery != null) {
                        try {
                            if (cursorQuery.moveToFirst()) {
                                int columnIndex = cursorQuery.getColumnIndex("install_referrer");
                                if (columnIndex != -1) {
                                    string = cursorQuery.getString(columnIndex);
                                } else {
                                    AFLoggerBase.d$default(AFLogger.INSTANCE, LogTag.META_REFERRER, "No such column, " + aFi1iSDK.registerClient + " provider", false, 4, null);
                                    string = null;
                                }
                                if (string != null) {
                                    AFLoggerBase.d$default(AFLogger.INSTANCE, LogTag.META_REFERRER, "Collected " + aFi1iSDK.registerClient + " attribution data.", false, 4, null);
                                    aFi1iSDK.map.put(Payload.RESPONSE, Payload.RESPONSE_OK);
                                    aFi1iSDK.map.put(Payload.RFR, string);
                                    int columnIndex2 = cursorQuery.getColumnIndex("actual_timestamp");
                                    Long lValueOf = columnIndex2 != -1 ? Long.valueOf(cursorQuery.getLong(columnIndex2)) : null;
                                    if (lValueOf != null) {
                                        aFi1iSDK.map.put(Payload.CLICK_TS, Long.valueOf(lValueOf.longValue()));
                                    }
                                    int columnIndex3 = cursorQuery.getColumnIndex(Payload.META_IS_CLICK_THROUGH_CUSTOM_KEY);
                                    Integer numValueOf = columnIndex3 != -1 ? Integer.valueOf(cursorQuery.getInt(columnIndex3)) : null;
                                    if (numValueOf != null) {
                                        aFi1iSDK.map.put(Payload.META_CUSTOM, MapsKt.j(new Pair(Payload.META_IS_CLICK_THROUGH_CUSTOM_KEY, Integer.valueOf(numValueOf.intValue()))));
                                    }
                                    int i3 = iArr[aFi1iSDK.registerClient.ordinal()];
                                    if (i3 == 1) {
                                        str = "com.facebook.katana";
                                    } else if (i3 == 2) {
                                        str = "com.instagram.android";
                                    } else {
                                        if (i3 != 3) {
                                            throw new NoWhenBranchMatchedException();
                                        }
                                        str = "com.facebook.lite";
                                    }
                                    aFi1iSDK.map.put(Payload.API, Long.valueOf(AFj1qSDK.unregisterClient(context, str)));
                                    aFi1iSDK.map.put(Payload.API_NAME, AFj1qSDK.AFKeystoreWrapper(context, str));
                                }
                                cursorQuery.close();
                                if (contentProviderClientAcquireUnstableContentProviderClient != null) {
                                    contentProviderClientAcquireUnstableContentProviderClient.close();
                                }
                            } else {
                                AFLoggerBase.d$default(AFLogger.INSTANCE, LogTag.META_REFERRER, "Content provider returned no data", false, 4, null);
                                if (cursorQuery != null) {
                                    cursorQuery.close();
                                }
                                if (contentProviderClientAcquireUnstableContentProviderClient != null) {
                                    contentProviderClientAcquireUnstableContentProviderClient.close();
                                }
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            cursor = cursorQuery;
                            try {
                                AFLoggerBase.e$default(AFLogger.INSTANCE, LogTag.META_REFERRER, "Error while collecting Meta Install Referrer for " + aFi1iSDK.registerClient.name() + " provider", th, false, false, false, false, 120, null);
                                if (cursor != null) {
                                    cursor.close();
                                }
                                if (contentProviderClientAcquireUnstableContentProviderClient != null) {
                                    contentProviderClientAcquireUnstableContentProviderClient.close();
                                }
                            } catch (Throwable th3) {
                                if (cursor != null) {
                                    cursor.close();
                                }
                                if (contentProviderClientAcquireUnstableContentProviderClient != null) {
                                    contentProviderClientAcquireUnstableContentProviderClient.close();
                                }
                                throw th3;
                            }
                        }
                    } else {
                        AFLoggerBase.d$default(AFLogger.INSTANCE, LogTag.META_REFERRER, "Content provider returned no data", false, 4, null);
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        if (contentProviderClientAcquireUnstableContentProviderClient != null) {
                            contentProviderClientAcquireUnstableContentProviderClient.close();
                        }
                    }
                } catch (Throwable th4) {
                    th = th4;
                    cursor = null;
                }
            }
        } catch (Throwable th5) {
            th = th5;
            cursor = null;
            contentProviderClientAcquireUnstableContentProviderClient = null;
        }
        aFi1iSDK.finish();
        aFi1iSDK.unregisterClient.run();
    }

    /* JADX WARN: Code duplicated, block: B:30:0x007c A[PHI: r0
      0x007c: PHI (r0v6 java.lang.String) = (r0v5 java.lang.String), (r0v23 java.lang.String), (r0v29 java.lang.String) binds: [B:10:0x002b, B:19:0x0052, B:28:0x0079] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00ac, code lost:
    
        if (r11.getPackageManager().resolveContentProvider("com.facebook.lite.provider.InstallReferrerProvider", 0) != null) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00bd, code lost:
    
        if (r11.getPackageManager().resolveContentProvider("com.instagram.contentprovider.InstallReferrerProvider", 0) != null) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00ca, code lost:
    
        if (r11.getPackageManager().resolveContentProvider("com.facebook.katana.provider.InstallReferrerProvider", 0) != null) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00cc, code lost:
    
        getProp().getBackgroundExecutor().execute(new com.appsflyer.internal.m(r10, r11, 5));
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00dd, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00de, code lost:
    
        com.appsflyer.sdk_base.logger.AFLoggerBase.d$default(com.appsflyer.AFLogger.INSTANCE, com.appsflyer.sdk_base.logger.LogTag.META_REFERRER, "Referrer collection disallowed by missing content providers.", false, 4, null);
     */
    @Override // com.appsflyer.sdk_base.referrer.Referrer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void start(android.content.Context r11) {
        /*
            Method dump skipped, instruction units count: 240
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFi1iSDK.start(android.content.Context):void");
    }
}
