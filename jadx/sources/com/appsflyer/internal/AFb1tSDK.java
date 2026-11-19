package com.appsflyer.internal;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.appsflyer.AFLogger;
import com.appsflyer.sdk_base.logger.AFLoggerBase;
import com.appsflyer.sdk_base.logger.LogTag;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class AFb1tSDK implements AFa1aSDK {
    private boolean AFKeystoreWrapper;
    Map<String, Object> AFLogger;
    private final AFd1zSDK d;

    public static final class AFa1uSDK implements AFa1cSDK.AFa1tSDK {
        private /* synthetic */ long unregisterClient;

        public AFa1uSDK(long j2) {
            this.unregisterClient = j2;
        }

        @Override // com.appsflyer.internal.AFa1cSDK.AFa1tSDK
        public final void AFKeystoreWrapper(String str) {
            Map<String, Object> map = AFb1tSDK.this.AFLogger;
            if (map != null) {
                map.put("error", str);
            }
        }

        @Override // com.appsflyer.internal.AFa1cSDK.AFa1tSDK
        public final void AFLogger(String str, String str2, String str3) {
            Map<String, Object> map;
            if (str != null) {
                AFLoggerBase.i$default(AFLogger.INSTANCE, LogTag.META_REFERRER, "Facebook Deferred AppLink data received: ".concat(str), false, 4, null);
                Map<String, Object> map2 = AFb1tSDK.this.AFLogger;
                if (map2 != null) {
                    map2.put("link", str);
                }
                if (str2 != null && (map = AFb1tSDK.this.AFLogger) != null) {
                    map.put("target_url", str2);
                }
                if (str3 != null) {
                    AFb1tSDK aFb1tSDK = AFb1tSDK.this;
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                    linkedHashMap2.put("promo_code", str3);
                    linkedHashMap.put("deeplink_context", linkedHashMap2);
                    Map<String, Object> map3 = aFb1tSDK.AFLogger;
                    if (map3 != null) {
                        map3.put("extras", linkedHashMap);
                    }
                }
            } else {
                Map<String, Object> map4 = AFb1tSDK.this.AFLogger;
                if (map4 != null) {
                    map4.put("link", "");
                }
            }
            String strValueOf = String.valueOf(System.currentTimeMillis() - this.unregisterClient);
            Map<String, Object> map5 = AFb1tSDK.this.AFLogger;
            if (map5 != null) {
                map5.put("ttr", strValueOf);
            }
        }
    }

    public AFb1tSDK(AFd1zSDK aFd1zSDK) {
        aFd1zSDK.getClass();
        this.d = aFd1zSDK;
    }

    @Override // com.appsflyer.internal.AFa1aSDK
    public final void AFLogger(boolean z) {
        this.AFKeystoreWrapper = z;
    }

    @Override // com.appsflyer.internal.AFa1aSDK
    public final Map<String, Object> d() {
        return this.AFLogger;
    }

    @Override // com.appsflyer.internal.AFa1aSDK
    public final boolean registerClient() {
        if (!this.AFKeystoreWrapper) {
            return false;
        }
        Map<String, Object> map = this.AFLogger;
        return map == null || map.isEmpty();
    }

    @Override // com.appsflyer.internal.AFa1aSDK
    public final void unregisterClient() {
        Context context;
        if (this.AFKeystoreWrapper && (context = this.d.d) != null) {
            this.AFLogger = new LinkedHashMap();
            AFa1uSDK aFa1uSDK = new AFa1uSDK(System.currentTimeMillis());
            try {
                Class.forName("com.facebook.FacebookSdk").getMethod("sdkInitialize", Context.class).invoke(null, context);
                Class<?> cls = Class.forName("com.facebook.applinks.AppLinkData");
                Class<?> cls2 = Class.forName("com.facebook.applinks.AppLinkData$CompletionHandler");
                Method method = cls.getMethod("fetchDeferredAppLinkData", Context.class, String.class, cls2);
                Object objNewProxyInstance = Proxy.newProxyInstance(cls2.getClassLoader(), new Class[]{cls2}, new InvocationHandler() { // from class: com.appsflyer.internal.AFa1cSDK.5
                    private /* synthetic */ AFa1tSDK d;
                    private /* synthetic */ Class unregisterClient;

                    public AnonymousClass5() {
                        cls = cls;
                        aFa1tSDK = aFa1uSDK;
                    }

                    @Override // java.lang.reflect.InvocationHandler
                    public final Object invoke(Object obj, Method method2, Object[] objArr) throws Throwable {
                        String string;
                        String string2;
                        String string3;
                        Bundle bundle;
                        if (!method2.getName().equals("onDeferredAppLinkDataFetched")) {
                            AFa1tSDK aFa1tSDK = aFa1tSDK;
                            if (aFa1tSDK != null) {
                                aFa1tSDK.AFKeystoreWrapper("onDeferredAppLinkDataFetched invocation failed");
                            }
                            return null;
                        }
                        Object obj2 = objArr[0];
                        if (obj2 != null) {
                            Bundle bundle2 = (Bundle) Bundle.class.cast(cls.getMethod("getArgumentBundle", null).invoke(cls.cast(obj2), null));
                            if (bundle2 != null) {
                                string2 = bundle2.getString("com.facebook.platform.APPLINK_NATIVE_URL");
                                string3 = bundle2.getString("target_url");
                                Bundle bundle3 = bundle2.getBundle("extras");
                                string = (bundle3 == null || (bundle = bundle3.getBundle("deeplink_context")) == null) ? null : bundle.getString("promo_code");
                            } else {
                                string = null;
                                string2 = null;
                                string3 = null;
                            }
                            AFa1tSDK aFa1tSDK2 = aFa1tSDK;
                            if (aFa1tSDK2 != null) {
                                aFa1tSDK2.AFLogger(string2, string3, string);
                            }
                        } else {
                            AFa1tSDK aFa1tSDK3 = aFa1tSDK;
                            if (aFa1tSDK3 != null) {
                                aFa1tSDK3.AFLogger(null, null, null);
                            }
                        }
                        return null;
                    }
                });
                String string = context.getString(context.getResources().getIdentifier("facebook_app_id", "string", context.getPackageName()));
                if (TextUtils.isEmpty(string)) {
                    aFa1uSDK.AFKeystoreWrapper("Facebook app id not defined in resources");
                } else {
                    method.invoke(null, context, string, objNewProxyInstance);
                }
            } catch (ClassNotFoundException e2) {
                AFLogger.INSTANCE.e(LogTag.META_REFERRER, "FB class missing error", e2, false, false);
                aFa1uSDK.AFKeystoreWrapper(e2.toString());
            } catch (IllegalAccessException e3) {
                AFLogger.INSTANCE.e(LogTag.META_REFERRER, "FB illegal access", e3, false, false);
                aFa1uSDK.AFKeystoreWrapper(e3.toString());
            } catch (NoSuchMethodException e4) {
                AFLogger.INSTANCE.e(LogTag.META_REFERRER, "FB method missing error", e4, false, false);
                aFa1uSDK.AFKeystoreWrapper(e4.toString());
            } catch (InvocationTargetException e5) {
                AFLogger.INSTANCE.e(LogTag.META_REFERRER, "FB invocation error", e5, false, false);
                aFa1uSDK.AFKeystoreWrapper(e5.toString());
            }
        }
    }
}
