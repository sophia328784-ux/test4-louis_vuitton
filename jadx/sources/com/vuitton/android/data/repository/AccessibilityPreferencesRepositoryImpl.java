package com.vuitton.android.data.repository;

import android.app.UiModeManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.provider.Settings;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.domain.provider.feature.FeatureCheckerProvider;
import com.vuitton.android.domain.repository.AccessibilityPreferencesRepository;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.account.accessibility.AccessibilityPreferenceType;
import com.vuitton.foundation.model.domain.model.sync.Feature;
import dagger.Lazy;
import dagger.hilt.android.qualifiers.ApplicationContext;
import defpackage.a;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.LinkedHashMapSerializer;
import kotlinx.serialization.json.Json;
import net.rtccloud.sdk.Call;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u000fB;\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0001\u0010\u0005\u001a\u00020\u0004\u0012\u000e\b\u0001\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/data/repository/AccessibilityPreferencesRepositoryImpl;", "Lcom/vuitton/android/domain/repository/AccessibilityPreferencesRepository;", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "Ldagger/Lazy;", "Landroid/content/SharedPreferences;", "sharedPreferences", "Lkotlinx/serialization/json/Json;", "json", "Lcom/vuitton/android/domain/provider/feature/FeatureCheckerProvider;", "featureCheckerProvider", "<init>", "(Lcom/vuitton/foundation/logger/Logger;Landroid/content/Context;Ldagger/Lazy;Lkotlinx/serialization/json/Json;Lcom/vuitton/android/domain/provider/feature/FeatureCheckerProvider;)V", "Companion", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AccessibilityPreferencesRepositoryImpl implements AccessibilityPreferencesRepository {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f47127f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f47128a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f47129b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Lazy f47130c;
    public final Json d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final FeatureCheckerProvider f47131e;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001R\u001c\u0010\u0004\u001a\n \u0003*\u0004\u0018\u00010\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0006\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0005¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/data/repository/AccessibilityPreferencesRepositoryImpl$Companion;", "", "", "kotlin.jvm.PlatformType", "TAG", "Ljava/lang/String;", "KEY_ACCESSIBILITY_REFERENCES", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f47132a;

        static {
            int[] iArr = new int[AccessibilityPreferenceType.values().length];
            try {
                iArr[AccessibilityPreferenceType.SIMPLIFY_NAVIGATION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AccessibilityPreferenceType.DISABLE_AUTOPLAY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[AccessibilityPreferenceType.ENHANCED_CONTRAST.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f47132a = iArr;
        }
    }

    static {
        new Companion(null);
        f47127f = "AccessibilityPreferencesRepositoryImpl";
    }

    @Inject
    public AccessibilityPreferencesRepositoryImpl(Logger logger, @ApplicationContext Context context, Lazy<SharedPreferences> lazy, Json json, FeatureCheckerProvider featureCheckerProvider) {
        logger.getClass();
        context.getClass();
        lazy.getClass();
        json.getClass();
        featureCheckerProvider.getClass();
        this.f47128a = logger;
        this.f47129b = context;
        this.f47130c = lazy;
        this.d = json;
        this.f47131e = featureCheckerProvider;
    }

    @Override // com.vuitton.android.domain.repository.AccessibilityPreferencesRepository
    public final boolean a() {
        Object failure;
        Context context = this.f47129b;
        try {
            Result.Companion companion = Result.INSTANCE;
            boolean z = false;
            boolean z2 = Settings.Secure.getInt(context.getContentResolver(), "high_text_contrast_enabled", 0) == 1;
            if (Build.VERSION.SDK_INT >= 34) {
                UiModeManager uiModeManager = (UiModeManager) context.getSystemService(UiModeManager.class);
                if (!Intrinsics.b(uiModeManager != null ? Float.valueOf(uiModeManager.getContrast()) : null, Call.Parameters.DEFAULT_CAMERA_ZOOM) || z2) {
                    z = true;
                }
            } else {
                z = z2;
            }
            failure = Boolean.valueOf(z);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        if (Result.a(failure) != null) {
            failure = Boolean.FALSE;
        }
        return ((Boolean) failure).booleanValue();
    }

    @Override // com.vuitton.android.domain.repository.AccessibilityPreferencesRepository
    public final Object b(Map map) {
        Object failure;
        try {
            Result.Companion companion = Result.INSTANCE;
            Json json = this.d;
            json.getClass();
            String strC = json.c(new LinkedHashMapSerializer(AccessibilityPreferenceType.INSTANCE.serializer(), BooleanSerializer.f75574a), map);
            Object obj = this.f47130c.get();
            obj.getClass();
            SharedPreferences.Editor editorEdit = ((SharedPreferences) obj).edit();
            editorEdit.putString("accessibility_preferences", strC);
            editorEdit.apply();
            failure = Unit.f71739a;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            a.y("Failed to serialize accessibility preferences: ", thA.getMessage(), this.f47128a, f47127f, null);
        }
        return failure;
    }

    @Override // com.vuitton.android.domain.repository.AccessibilityPreferencesRepository
    public final Object c(boolean z) {
        Object failure;
        Object failure2;
        boolean z2;
        Object objB;
        FeatureCheckerProvider featureCheckerProvider = this.f47131e;
        try {
            Result.Companion companion = Result.INSTANCE;
            String string = ((SharedPreferences) this.f47130c.get()).getString("accessibility_preferences", null);
            if (string == null) {
                AccessibilityPreferenceType accessibilityPreferenceType = AccessibilityPreferenceType.SIMPLIFY_NAVIGATION;
                Boolean bool = Boolean.FALSE;
                Map mapI = MapsKt.i(new Pair(accessibilityPreferenceType, bool), new Pair(AccessibilityPreferenceType.DISABLE_AUTOPLAY, bool), new Pair(AccessibilityPreferenceType.ENHANCED_CONTRAST, bool));
                b(mapI);
                failure = mapI;
            } else {
                Json json = this.d;
                try {
                    if (StringsKt.w(string)) {
                        objB = null;
                    } else {
                        json.getClass();
                        objB = json.b(new LinkedHashMapSerializer(AccessibilityPreferenceType.INSTANCE.serializer(), BooleanSerializer.f75574a), string);
                    }
                    failure2 = new Result(objB);
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.INSTANCE;
                    failure2 = new Result.Failure(th);
                }
                Throwable thA = Result.a(failure2);
                if (thA != null) {
                    if (thA instanceof CancellationException) {
                        throw thA;
                    }
                    failure2 = new Result(new Result.Failure(thA));
                }
                Object obj = ((Result) failure2).f71708b;
                if (obj instanceof Result.Failure) {
                    obj = null;
                }
                obj.getClass();
                Map map = (Map) obj;
                if (z) {
                    failure = map;
                } else {
                    boolean zA = featureCheckerProvider.a(new Feature[]{Feature.ACCESSIBILITY_SIMPLIFY_NAVIGATION});
                    boolean zA2 = featureCheckerProvider.a(new Feature[]{Feature.ACCESSIBILITY_DISABLE_AUTOPLAY});
                    boolean zA3 = featureCheckerProvider.a(new Feature[]{Feature.ACCESSIBILITY_ENHANCED_CONTRAST});
                    LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt.g(map.size()));
                    for (Object obj2 : map.entrySet()) {
                        Object key = ((Map.Entry) obj2).getKey();
                        Map.Entry entry = (Map.Entry) obj2;
                        boolean z3 = false;
                        if (((Boolean) entry.getValue()).booleanValue()) {
                            int i2 = WhenMappings.f47132a[((AccessibilityPreferenceType) entry.getKey()).ordinal()];
                            if (i2 == 1) {
                                z2 = zA;
                            } else if (i2 == 2) {
                                z2 = zA2;
                            } else {
                                if (i2 != 3) {
                                    throw new NoWhenBranchMatchedException();
                                }
                                z2 = zA3 && !a();
                            }
                            if (z2) {
                                z3 = true;
                            }
                        }
                        linkedHashMap.put(key, Boolean.valueOf(z3));
                    }
                    failure = linkedHashMap;
                }
            }
        } catch (Throwable th2) {
            Result.Companion companion3 = Result.INSTANCE;
            failure = new Result.Failure(th2);
        }
        Throwable thA2 = Result.a(failure);
        if (thA2 != null) {
            a.y("Failed to retrieve accessibility preferences: ", thA2.getMessage(), this.f47128a, f47127f, null);
        }
        return failure;
    }
}
