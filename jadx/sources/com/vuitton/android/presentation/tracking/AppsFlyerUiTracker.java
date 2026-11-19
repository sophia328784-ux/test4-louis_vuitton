package com.vuitton.android.presentation.tracking;

import com.appsflyer.share.AFInAppEventParameterName;
import com.vuitton.android.presentation.screen.appsflyer.AppsFlyerEvent;
import com.vuitton.android.presentation.screen.appsflyer.AppsFlyerTracker;
import defpackage.v40;
import java.util.Map;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.MapsKt;
import kotlin.collections.builders.MapBuilder;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0006B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;", "", "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;", "tracker", "<init>", "(Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AppsFlyerUiTracker {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f65809b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AppsFlyerTracker f65810a;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0082\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker$Companion;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        String strB = Reflection.f71922a.b(AppsFlyerUiTracker.class).B();
        if (strB == null) {
            strB = "";
        }
        f65809b = strB;
    }

    @Inject
    public AppsFlyerUiTracker(AppsFlyerTracker appsFlyerTracker) {
        appsFlyerTracker.getClass();
        this.f65810a = appsFlyerTracker;
    }

    public final void a(AppsFlyerEvent appsFlyerEvent) {
        this.f65810a.a(f65809b, appsFlyerEvent);
    }

    public final void b(AudioGuideActions audioGuideActions, String str) {
        audioGuideActions.getClass();
        str.getClass();
        a(new AppsFlyerEvent.AudioGuide(MapsKt.i(new Pair("action", audioGuideActions.getValue()), new Pair("audio_language", str))));
    }

    public final void c(PassActions passActions, String str) {
        AppsFlyerEvent speedyPass;
        passActions.getClass();
        MapBuilder mapBuilder = new MapBuilder();
        mapBuilder.put("action", passActions.getValue());
        if (str != null) {
            mapBuilder.put("store_id", str);
        }
        MapBuilder mapBuilderC = mapBuilder.c();
        if (passActions instanceof PassActions.LVPass) {
            speedyPass = new AppsFlyerEvent.LVPass(mapBuilderC);
        } else {
            if (!(passActions instanceof PassActions.SpeedyPass)) {
                v40.g();
                return;
            }
            speedyPass = new AppsFlyerEvent.SpeedyPass(mapBuilderC);
        }
        a(speedyPass);
    }

    public final void d(String str) {
        Map mapH = str != null ? MapsKt.h(new Pair(AFInAppEventParameterName.CONTENT_TYPE, str)) : null;
        if (mapH == null) {
            mapH = MapsKt.c();
        }
        a(new AppsFlyerEvent.ListView(mapH));
    }

    public final void e(PersonalSelectionActions personalSelectionActions, String str, String str2, String str3) {
        personalSelectionActions.getClass();
        MapBuilder mapBuilder = new MapBuilder();
        mapBuilder.put("action", personalSelectionActions.getValue());
        if (str != null) {
            mapBuilder.put("product_id", str);
        }
        if (str2 != null) {
            mapBuilder.put("product_category", str2);
        }
        if (str3 != null) {
            mapBuilder.put("origin_store_id", str3);
        }
        a(new AppsFlyerEvent.LookBook(mapBuilder.c()));
    }

    public final void f(PersonalSelectionActions personalSelectionActions, String str, String str2, String str3) {
        personalSelectionActions.getClass();
        MapBuilder mapBuilder = new MapBuilder();
        mapBuilder.put("action", personalSelectionActions.getValue());
        if (str != null) {
            mapBuilder.put("product_id", str);
        }
        if (str2 != null) {
            mapBuilder.put("product_category", str2);
        }
        if (str3 != null) {
            mapBuilder.put("origin_store_id", str3);
        }
        a(new AppsFlyerEvent.OmniWishlist(mapBuilder.c()));
    }
}
