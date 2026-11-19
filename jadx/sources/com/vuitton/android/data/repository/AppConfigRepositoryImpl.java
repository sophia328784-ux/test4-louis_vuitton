package com.vuitton.android.data.repository;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.datasource.config.AbTestLocalDataSource;
import com.vuitton.android.data.datasource.config.AppConfigLocalDataSource;
import com.vuitton.android.data.datasource.config.AppConfigRemoteDataSource;
import com.vuitton.android.data.dto.common.mapper.AssetMapperKt;
import com.vuitton.android.data.dto.common.mapper.FeatureThemeMapperKt;
import com.vuitton.android.data.dto.config.AICompanionConfigDto;
import com.vuitton.android.data.dto.config.AICompanionOnboardingDto;
import com.vuitton.android.data.dto.config.AbTestDto;
import com.vuitton.android.data.dto.config.AddressAutocompleteConfigDto;
import com.vuitton.android.data.dto.config.AppConfigDto;
import com.vuitton.android.data.dto.config.HelpConfigDto;
import com.vuitton.android.data.dto.config.NativeCartConfigDto;
import com.vuitton.android.data.dto.config.PersonalSelectionsConfigDto;
import com.vuitton.android.data.dto.config.PersonalisationConfigDto;
import com.vuitton.android.data.dto.config.PowerFrontConfigDto;
import com.vuitton.android.data.dto.config.ServicesConfigDto;
import com.vuitton.android.data.dto.config.UrlCatchingConfigDto;
import com.vuitton.android.data.dto.config.VatIncludedConfigDto;
import com.vuitton.android.data.dto.config.VirtualStudioConfigDto;
import com.vuitton.android.data.dto.config.mapper.AppConfigMapperKt;
import com.vuitton.android.data.exception.MappingException;
import com.vuitton.android.domain.repository.AppConfigRepository;
import com.vuitton.android.platform.extensions.StringExtKt;
import com.vuitton.foundation.model.domain.extensions.StringKtExtKt;
import com.vuitton.foundation.model.domain.model.common.AssetVideo;
import com.vuitton.foundation.model.domain.model.common.FeatureTheme;
import com.vuitton.foundation.model.domain.model.config.AICompanionConfig;
import com.vuitton.foundation.model.domain.model.config.AICompanionOnboarding;
import com.vuitton.foundation.model.domain.model.config.AbTest;
import com.vuitton.foundation.model.domain.model.config.AddressAutocompleteConfig;
import com.vuitton.foundation.model.domain.model.config.AppConfig;
import com.vuitton.foundation.model.domain.model.config.CertificateConfig;
import com.vuitton.foundation.model.domain.model.config.DistantRepairsConfig;
import com.vuitton.foundation.model.domain.model.config.FeaturesConfig;
import com.vuitton.foundation.model.domain.model.config.FeedConfig;
import com.vuitton.foundation.model.domain.model.config.HelpConfig;
import com.vuitton.foundation.model.domain.model.config.NativeCartConfig;
import com.vuitton.foundation.model.domain.model.config.PersonalSelectionsConfig;
import com.vuitton.foundation.model.domain.model.config.PersonalisationConfig;
import com.vuitton.foundation.model.domain.model.config.PowerFrontConfig;
import com.vuitton.foundation.model.domain.model.config.Region;
import com.vuitton.foundation.model.domain.model.config.ServicesConfig;
import com.vuitton.foundation.model.domain.model.config.UrlCatchingConfig;
import com.vuitton.foundation.model.domain.model.config.VatIncludedConfig;
import com.vuitton.foundation.model.domain.model.config.VirtualStudioConfig;
import defpackage.md;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B!\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl;", "Lcom/vuitton/android/domain/repository/AppConfigRepository;", "Lcom/vuitton/android/data/datasource/config/AppConfigRemoteDataSource;", "appConfigRemoteDataSource", "Lcom/vuitton/android/data/datasource/config/AppConfigLocalDataSource;", "appConfigLocalDataSource", "Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource;", "abTestLocalDataSource", "<init>", "(Lcom/vuitton/android/data/datasource/config/AppConfigRemoteDataSource;Lcom/vuitton/android/data/datasource/config/AppConfigLocalDataSource;Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AppConfigRepositoryImpl implements AppConfigRepository {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AppConfigRemoteDataSource f47221a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppConfigLocalDataSource f47222b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AbTestLocalDataSource f47223c;

    @Inject
    public AppConfigRepositoryImpl(AppConfigRemoteDataSource appConfigRemoteDataSource, AppConfigLocalDataSource appConfigLocalDataSource, AbTestLocalDataSource abTestLocalDataSource) {
        appConfigRemoteDataSource.getClass();
        appConfigLocalDataSource.getClass();
        abTestLocalDataSource.getClass();
        this.f47221a = appConfigRemoteDataSource;
        this.f47222b = appConfigLocalDataSource;
        this.f47223c = abTestLocalDataSource;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.AppConfigRepository
    public final Object a(String str, AppConfig appConfig, String str2, ContinuationImpl continuationImpl) throws Throwable {
        AppConfigRepositoryImpl$isFeatureFlagActiveInAbTest$1 appConfigRepositoryImpl$isFeatureFlagActiveInAbTest$1;
        if (continuationImpl instanceof AppConfigRepositoryImpl$isFeatureFlagActiveInAbTest$1) {
            appConfigRepositoryImpl$isFeatureFlagActiveInAbTest$1 = (AppConfigRepositoryImpl$isFeatureFlagActiveInAbTest$1) continuationImpl;
            int i2 = appConfigRepositoryImpl$isFeatureFlagActiveInAbTest$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                appConfigRepositoryImpl$isFeatureFlagActiveInAbTest$1.d = i2 - Integer.MIN_VALUE;
            } else {
                appConfigRepositoryImpl$isFeatureFlagActiveInAbTest$1 = new AppConfigRepositoryImpl$isFeatureFlagActiveInAbTest$1(this, continuationImpl);
            }
        } else {
            appConfigRepositoryImpl$isFeatureFlagActiveInAbTest$1 = new AppConfigRepositoryImpl$isFeatureFlagActiveInAbTest$1(this, continuationImpl);
        }
        Object obj = appConfigRepositoryImpl$isFeatureFlagActiveInAbTest$1.f47234b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = appConfigRepositoryImpl$isFeatureFlagActiveInAbTest$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            appConfigRepositoryImpl$isFeatureFlagActiveInAbTest$1.d = 1;
            Object objC = this.f47223c.c(str, appConfig, str2, appConfigRepositoryImpl$isFeatureFlagActiveInAbTest$1);
            return objC == coroutineSingletons ? coroutineSingletons : objC;
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            return ((Result) obj).f71708b;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.AppConfigRepository
    public final Object b(ContinuationImpl continuationImpl) {
        AppConfigRepositoryImpl$clearAppConfig$1 appConfigRepositoryImpl$clearAppConfig$1;
        if (continuationImpl instanceof AppConfigRepositoryImpl$clearAppConfig$1) {
            appConfigRepositoryImpl$clearAppConfig$1 = (AppConfigRepositoryImpl$clearAppConfig$1) continuationImpl;
            int i2 = appConfigRepositoryImpl$clearAppConfig$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                appConfigRepositoryImpl$clearAppConfig$1.d = i2 - Integer.MIN_VALUE;
            } else {
                appConfigRepositoryImpl$clearAppConfig$1 = new AppConfigRepositoryImpl$clearAppConfig$1(this, continuationImpl);
            }
        } else {
            appConfigRepositoryImpl$clearAppConfig$1 = new AppConfigRepositoryImpl$clearAppConfig$1(this, continuationImpl);
        }
        Object obj = appConfigRepositoryImpl$clearAppConfig$1.f47224b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = appConfigRepositoryImpl$clearAppConfig$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            appConfigRepositoryImpl$clearAppConfig$1.d = 1;
            Object objA = this.f47222b.a(appConfigRepositoryImpl$clearAppConfig$1);
            return objA == coroutineSingletons ? coroutineSingletons : objA;
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            return ((Result) obj).f71708b;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }

    @Override // com.vuitton.android.domain.repository.AppConfigRepository
    public final AppConfig c() {
        return this.f47222b.c();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.AppConfigRepository
    public final Object d(String str, AbTest abTest, ContinuationImpl continuationImpl) throws Throwable {
        AppConfigRepositoryImpl$getAbTestAssignment$1 appConfigRepositoryImpl$getAbTestAssignment$1;
        if (continuationImpl instanceof AppConfigRepositoryImpl$getAbTestAssignment$1) {
            appConfigRepositoryImpl$getAbTestAssignment$1 = (AppConfigRepositoryImpl$getAbTestAssignment$1) continuationImpl;
            int i2 = appConfigRepositoryImpl$getAbTestAssignment$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                appConfigRepositoryImpl$getAbTestAssignment$1.d = i2 - Integer.MIN_VALUE;
            } else {
                appConfigRepositoryImpl$getAbTestAssignment$1 = new AppConfigRepositoryImpl$getAbTestAssignment$1(this, continuationImpl);
            }
        } else {
            appConfigRepositoryImpl$getAbTestAssignment$1 = new AppConfigRepositoryImpl$getAbTestAssignment$1(this, continuationImpl);
        }
        Object obj = appConfigRepositoryImpl$getAbTestAssignment$1.f47226b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = appConfigRepositoryImpl$getAbTestAssignment$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            appConfigRepositoryImpl$getAbTestAssignment$1.d = 1;
            Object objB = this.f47223c.b(str, abTest, appConfigRepositoryImpl$getAbTestAssignment$1);
            return objB == coroutineSingletons ? coroutineSingletons : objB;
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            return ((Result) obj).f71708b;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0250 A[Catch: all -> 0x00d7, TryCatch #0 {all -> 0x00d7, blocks: (B:38:0x00ab, B:40:0x00af, B:41:0x00ba, B:43:0x00c0, B:46:0x00cf, B:48:0x00d3, B:53:0x00df, B:55:0x00ef, B:57:0x00f7, B:59:0x0111, B:61:0x0119, B:63:0x012f, B:65:0x013b, B:67:0x013f, B:68:0x0141, B:71:0x015b, B:73:0x016f, B:75:0x0178, B:77:0x01b9, B:79:0x01bd, B:80:0x01c8, B:82:0x01d2, B:84:0x01ea, B:86:0x01f2, B:88:0x01fc, B:90:0x0202, B:92:0x020b, B:94:0x0215, B:95:0x022a, B:97:0x0230, B:101:0x0259, B:103:0x025d, B:105:0x0266, B:107:0x026a, B:108:0x026c, B:110:0x0278, B:112:0x029b, B:114:0x029f, B:116:0x02c7, B:118:0x02cb, B:120:0x02e5, B:122:0x02e9, B:124:0x02f2, B:126:0x02f6, B:128:0x02ff, B:130:0x0307, B:132:0x030d, B:134:0x0311, B:136:0x0317, B:139:0x0320, B:144:0x033e, B:146:0x0348, B:148:0x035a, B:152:0x0364, B:154:0x0370, B:156:0x0374, B:158:0x0380, B:160:0x038c, B:162:0x0392, B:164:0x0398, B:167:0x03af, B:169:0x03bb, B:173:0x03c8, B:176:0x03d9, B:170:0x03be, B:172:0x03c6, B:166:0x03a2, B:100:0x0250), top: B:218:0x00ab }] */
    /* JADX WARN: Code duplicated, block: B:103:0x025d A[Catch: all -> 0x00d7, TryCatch #0 {all -> 0x00d7, blocks: (B:38:0x00ab, B:40:0x00af, B:41:0x00ba, B:43:0x00c0, B:46:0x00cf, B:48:0x00d3, B:53:0x00df, B:55:0x00ef, B:57:0x00f7, B:59:0x0111, B:61:0x0119, B:63:0x012f, B:65:0x013b, B:67:0x013f, B:68:0x0141, B:71:0x015b, B:73:0x016f, B:75:0x0178, B:77:0x01b9, B:79:0x01bd, B:80:0x01c8, B:82:0x01d2, B:84:0x01ea, B:86:0x01f2, B:88:0x01fc, B:90:0x0202, B:92:0x020b, B:94:0x0215, B:95:0x022a, B:97:0x0230, B:101:0x0259, B:103:0x025d, B:105:0x0266, B:107:0x026a, B:108:0x026c, B:110:0x0278, B:112:0x029b, B:114:0x029f, B:116:0x02c7, B:118:0x02cb, B:120:0x02e5, B:122:0x02e9, B:124:0x02f2, B:126:0x02f6, B:128:0x02ff, B:130:0x0307, B:132:0x030d, B:134:0x0311, B:136:0x0317, B:139:0x0320, B:144:0x033e, B:146:0x0348, B:148:0x035a, B:152:0x0364, B:154:0x0370, B:156:0x0374, B:158:0x0380, B:160:0x038c, B:162:0x0392, B:164:0x0398, B:167:0x03af, B:169:0x03bb, B:173:0x03c8, B:176:0x03d9, B:170:0x03be, B:172:0x03c6, B:166:0x03a2, B:100:0x0250), top: B:218:0x00ab }] */
    /* JADX WARN: Code duplicated, block: B:104:0x0264  */
    /* JADX WARN: Code duplicated, block: B:107:0x026a A[Catch: all -> 0x00d7, TryCatch #0 {all -> 0x00d7, blocks: (B:38:0x00ab, B:40:0x00af, B:41:0x00ba, B:43:0x00c0, B:46:0x00cf, B:48:0x00d3, B:53:0x00df, B:55:0x00ef, B:57:0x00f7, B:59:0x0111, B:61:0x0119, B:63:0x012f, B:65:0x013b, B:67:0x013f, B:68:0x0141, B:71:0x015b, B:73:0x016f, B:75:0x0178, B:77:0x01b9, B:79:0x01bd, B:80:0x01c8, B:82:0x01d2, B:84:0x01ea, B:86:0x01f2, B:88:0x01fc, B:90:0x0202, B:92:0x020b, B:94:0x0215, B:95:0x022a, B:97:0x0230, B:101:0x0259, B:103:0x025d, B:105:0x0266, B:107:0x026a, B:108:0x026c, B:110:0x0278, B:112:0x029b, B:114:0x029f, B:116:0x02c7, B:118:0x02cb, B:120:0x02e5, B:122:0x02e9, B:124:0x02f2, B:126:0x02f6, B:128:0x02ff, B:130:0x0307, B:132:0x030d, B:134:0x0311, B:136:0x0317, B:139:0x0320, B:144:0x033e, B:146:0x0348, B:148:0x035a, B:152:0x0364, B:154:0x0370, B:156:0x0374, B:158:0x0380, B:160:0x038c, B:162:0x0392, B:164:0x0398, B:167:0x03af, B:169:0x03bb, B:173:0x03c8, B:176:0x03d9, B:170:0x03be, B:172:0x03c6, B:166:0x03a2, B:100:0x0250), top: B:218:0x00ab }] */
    /* JADX WARN: Code duplicated, block: B:110:0x0278 A[Catch: all -> 0x00d7, TryCatch #0 {all -> 0x00d7, blocks: (B:38:0x00ab, B:40:0x00af, B:41:0x00ba, B:43:0x00c0, B:46:0x00cf, B:48:0x00d3, B:53:0x00df, B:55:0x00ef, B:57:0x00f7, B:59:0x0111, B:61:0x0119, B:63:0x012f, B:65:0x013b, B:67:0x013f, B:68:0x0141, B:71:0x015b, B:73:0x016f, B:75:0x0178, B:77:0x01b9, B:79:0x01bd, B:80:0x01c8, B:82:0x01d2, B:84:0x01ea, B:86:0x01f2, B:88:0x01fc, B:90:0x0202, B:92:0x020b, B:94:0x0215, B:95:0x022a, B:97:0x0230, B:101:0x0259, B:103:0x025d, B:105:0x0266, B:107:0x026a, B:108:0x026c, B:110:0x0278, B:112:0x029b, B:114:0x029f, B:116:0x02c7, B:118:0x02cb, B:120:0x02e5, B:122:0x02e9, B:124:0x02f2, B:126:0x02f6, B:128:0x02ff, B:130:0x0307, B:132:0x030d, B:134:0x0311, B:136:0x0317, B:139:0x0320, B:144:0x033e, B:146:0x0348, B:148:0x035a, B:152:0x0364, B:154:0x0370, B:156:0x0374, B:158:0x0380, B:160:0x038c, B:162:0x0392, B:164:0x0398, B:167:0x03af, B:169:0x03bb, B:173:0x03c8, B:176:0x03d9, B:170:0x03be, B:172:0x03c6, B:166:0x03a2, B:100:0x0250), top: B:218:0x00ab }] */
    /* JADX WARN: Code duplicated, block: B:111:0x0295  */
    /* JADX WARN: Code duplicated, block: B:114:0x029f A[Catch: all -> 0x00d7, TryCatch #0 {all -> 0x00d7, blocks: (B:38:0x00ab, B:40:0x00af, B:41:0x00ba, B:43:0x00c0, B:46:0x00cf, B:48:0x00d3, B:53:0x00df, B:55:0x00ef, B:57:0x00f7, B:59:0x0111, B:61:0x0119, B:63:0x012f, B:65:0x013b, B:67:0x013f, B:68:0x0141, B:71:0x015b, B:73:0x016f, B:75:0x0178, B:77:0x01b9, B:79:0x01bd, B:80:0x01c8, B:82:0x01d2, B:84:0x01ea, B:86:0x01f2, B:88:0x01fc, B:90:0x0202, B:92:0x020b, B:94:0x0215, B:95:0x022a, B:97:0x0230, B:101:0x0259, B:103:0x025d, B:105:0x0266, B:107:0x026a, B:108:0x026c, B:110:0x0278, B:112:0x029b, B:114:0x029f, B:116:0x02c7, B:118:0x02cb, B:120:0x02e5, B:122:0x02e9, B:124:0x02f2, B:126:0x02f6, B:128:0x02ff, B:130:0x0307, B:132:0x030d, B:134:0x0311, B:136:0x0317, B:139:0x0320, B:144:0x033e, B:146:0x0348, B:148:0x035a, B:152:0x0364, B:154:0x0370, B:156:0x0374, B:158:0x0380, B:160:0x038c, B:162:0x0392, B:164:0x0398, B:167:0x03af, B:169:0x03bb, B:173:0x03c8, B:176:0x03d9, B:170:0x03be, B:172:0x03c6, B:166:0x03a2, B:100:0x0250), top: B:218:0x00ab }] */
    /* JADX WARN: Code duplicated, block: B:115:0x02c5  */
    /* JADX WARN: Code duplicated, block: B:118:0x02cb A[Catch: all -> 0x00d7, TryCatch #0 {all -> 0x00d7, blocks: (B:38:0x00ab, B:40:0x00af, B:41:0x00ba, B:43:0x00c0, B:46:0x00cf, B:48:0x00d3, B:53:0x00df, B:55:0x00ef, B:57:0x00f7, B:59:0x0111, B:61:0x0119, B:63:0x012f, B:65:0x013b, B:67:0x013f, B:68:0x0141, B:71:0x015b, B:73:0x016f, B:75:0x0178, B:77:0x01b9, B:79:0x01bd, B:80:0x01c8, B:82:0x01d2, B:84:0x01ea, B:86:0x01f2, B:88:0x01fc, B:90:0x0202, B:92:0x020b, B:94:0x0215, B:95:0x022a, B:97:0x0230, B:101:0x0259, B:103:0x025d, B:105:0x0266, B:107:0x026a, B:108:0x026c, B:110:0x0278, B:112:0x029b, B:114:0x029f, B:116:0x02c7, B:118:0x02cb, B:120:0x02e5, B:122:0x02e9, B:124:0x02f2, B:126:0x02f6, B:128:0x02ff, B:130:0x0307, B:132:0x030d, B:134:0x0311, B:136:0x0317, B:139:0x0320, B:144:0x033e, B:146:0x0348, B:148:0x035a, B:152:0x0364, B:154:0x0370, B:156:0x0374, B:158:0x0380, B:160:0x038c, B:162:0x0392, B:164:0x0398, B:167:0x03af, B:169:0x03bb, B:173:0x03c8, B:176:0x03d9, B:170:0x03be, B:172:0x03c6, B:166:0x03a2, B:100:0x0250), top: B:218:0x00ab }] */
    /* JADX WARN: Code duplicated, block: B:119:0x02e3  */
    /* JADX WARN: Code duplicated, block: B:122:0x02e9 A[Catch: all -> 0x00d7, TryCatch #0 {all -> 0x00d7, blocks: (B:38:0x00ab, B:40:0x00af, B:41:0x00ba, B:43:0x00c0, B:46:0x00cf, B:48:0x00d3, B:53:0x00df, B:55:0x00ef, B:57:0x00f7, B:59:0x0111, B:61:0x0119, B:63:0x012f, B:65:0x013b, B:67:0x013f, B:68:0x0141, B:71:0x015b, B:73:0x016f, B:75:0x0178, B:77:0x01b9, B:79:0x01bd, B:80:0x01c8, B:82:0x01d2, B:84:0x01ea, B:86:0x01f2, B:88:0x01fc, B:90:0x0202, B:92:0x020b, B:94:0x0215, B:95:0x022a, B:97:0x0230, B:101:0x0259, B:103:0x025d, B:105:0x0266, B:107:0x026a, B:108:0x026c, B:110:0x0278, B:112:0x029b, B:114:0x029f, B:116:0x02c7, B:118:0x02cb, B:120:0x02e5, B:122:0x02e9, B:124:0x02f2, B:126:0x02f6, B:128:0x02ff, B:130:0x0307, B:132:0x030d, B:134:0x0311, B:136:0x0317, B:139:0x0320, B:144:0x033e, B:146:0x0348, B:148:0x035a, B:152:0x0364, B:154:0x0370, B:156:0x0374, B:158:0x0380, B:160:0x038c, B:162:0x0392, B:164:0x0398, B:167:0x03af, B:169:0x03bb, B:173:0x03c8, B:176:0x03d9, B:170:0x03be, B:172:0x03c6, B:166:0x03a2, B:100:0x0250), top: B:218:0x00ab }] */
    /* JADX WARN: Code duplicated, block: B:123:0x02f0  */
    /* JADX WARN: Code duplicated, block: B:126:0x02f6 A[Catch: all -> 0x00d7, TryCatch #0 {all -> 0x00d7, blocks: (B:38:0x00ab, B:40:0x00af, B:41:0x00ba, B:43:0x00c0, B:46:0x00cf, B:48:0x00d3, B:53:0x00df, B:55:0x00ef, B:57:0x00f7, B:59:0x0111, B:61:0x0119, B:63:0x012f, B:65:0x013b, B:67:0x013f, B:68:0x0141, B:71:0x015b, B:73:0x016f, B:75:0x0178, B:77:0x01b9, B:79:0x01bd, B:80:0x01c8, B:82:0x01d2, B:84:0x01ea, B:86:0x01f2, B:88:0x01fc, B:90:0x0202, B:92:0x020b, B:94:0x0215, B:95:0x022a, B:97:0x0230, B:101:0x0259, B:103:0x025d, B:105:0x0266, B:107:0x026a, B:108:0x026c, B:110:0x0278, B:112:0x029b, B:114:0x029f, B:116:0x02c7, B:118:0x02cb, B:120:0x02e5, B:122:0x02e9, B:124:0x02f2, B:126:0x02f6, B:128:0x02ff, B:130:0x0307, B:132:0x030d, B:134:0x0311, B:136:0x0317, B:139:0x0320, B:144:0x033e, B:146:0x0348, B:148:0x035a, B:152:0x0364, B:154:0x0370, B:156:0x0374, B:158:0x0380, B:160:0x038c, B:162:0x0392, B:164:0x0398, B:167:0x03af, B:169:0x03bb, B:173:0x03c8, B:176:0x03d9, B:170:0x03be, B:172:0x03c6, B:166:0x03a2, B:100:0x0250), top: B:218:0x00ab }] */
    /* JADX WARN: Code duplicated, block: B:127:0x02fd  */
    /* JADX WARN: Code duplicated, block: B:130:0x0307 A[Catch: all -> 0x00d7, TryCatch #0 {all -> 0x00d7, blocks: (B:38:0x00ab, B:40:0x00af, B:41:0x00ba, B:43:0x00c0, B:46:0x00cf, B:48:0x00d3, B:53:0x00df, B:55:0x00ef, B:57:0x00f7, B:59:0x0111, B:61:0x0119, B:63:0x012f, B:65:0x013b, B:67:0x013f, B:68:0x0141, B:71:0x015b, B:73:0x016f, B:75:0x0178, B:77:0x01b9, B:79:0x01bd, B:80:0x01c8, B:82:0x01d2, B:84:0x01ea, B:86:0x01f2, B:88:0x01fc, B:90:0x0202, B:92:0x020b, B:94:0x0215, B:95:0x022a, B:97:0x0230, B:101:0x0259, B:103:0x025d, B:105:0x0266, B:107:0x026a, B:108:0x026c, B:110:0x0278, B:112:0x029b, B:114:0x029f, B:116:0x02c7, B:118:0x02cb, B:120:0x02e5, B:122:0x02e9, B:124:0x02f2, B:126:0x02f6, B:128:0x02ff, B:130:0x0307, B:132:0x030d, B:134:0x0311, B:136:0x0317, B:139:0x0320, B:144:0x033e, B:146:0x0348, B:148:0x035a, B:152:0x0364, B:154:0x0370, B:156:0x0374, B:158:0x0380, B:160:0x038c, B:162:0x0392, B:164:0x0398, B:167:0x03af, B:169:0x03bb, B:173:0x03c8, B:176:0x03d9, B:170:0x03be, B:172:0x03c6, B:166:0x03a2, B:100:0x0250), top: B:218:0x00ab }] */
    /* JADX WARN: Code duplicated, block: B:131:0x030c  */
    /* JADX WARN: Code duplicated, block: B:134:0x0311 A[Catch: all -> 0x00d7, TryCatch #0 {all -> 0x00d7, blocks: (B:38:0x00ab, B:40:0x00af, B:41:0x00ba, B:43:0x00c0, B:46:0x00cf, B:48:0x00d3, B:53:0x00df, B:55:0x00ef, B:57:0x00f7, B:59:0x0111, B:61:0x0119, B:63:0x012f, B:65:0x013b, B:67:0x013f, B:68:0x0141, B:71:0x015b, B:73:0x016f, B:75:0x0178, B:77:0x01b9, B:79:0x01bd, B:80:0x01c8, B:82:0x01d2, B:84:0x01ea, B:86:0x01f2, B:88:0x01fc, B:90:0x0202, B:92:0x020b, B:94:0x0215, B:95:0x022a, B:97:0x0230, B:101:0x0259, B:103:0x025d, B:105:0x0266, B:107:0x026a, B:108:0x026c, B:110:0x0278, B:112:0x029b, B:114:0x029f, B:116:0x02c7, B:118:0x02cb, B:120:0x02e5, B:122:0x02e9, B:124:0x02f2, B:126:0x02f6, B:128:0x02ff, B:130:0x0307, B:132:0x030d, B:134:0x0311, B:136:0x0317, B:139:0x0320, B:144:0x033e, B:146:0x0348, B:148:0x035a, B:152:0x0364, B:154:0x0370, B:156:0x0374, B:158:0x0380, B:160:0x038c, B:162:0x0392, B:164:0x0398, B:167:0x03af, B:169:0x03bb, B:173:0x03c8, B:176:0x03d9, B:170:0x03be, B:172:0x03c6, B:166:0x03a2, B:100:0x0250), top: B:218:0x00ab }] */
    /* JADX WARN: Code duplicated, block: B:135:0x0316  */
    /* JADX WARN: Code duplicated, block: B:139:0x0320 A[Catch: all -> 0x00d7, TRY_ENTER, TryCatch #0 {all -> 0x00d7, blocks: (B:38:0x00ab, B:40:0x00af, B:41:0x00ba, B:43:0x00c0, B:46:0x00cf, B:48:0x00d3, B:53:0x00df, B:55:0x00ef, B:57:0x00f7, B:59:0x0111, B:61:0x0119, B:63:0x012f, B:65:0x013b, B:67:0x013f, B:68:0x0141, B:71:0x015b, B:73:0x016f, B:75:0x0178, B:77:0x01b9, B:79:0x01bd, B:80:0x01c8, B:82:0x01d2, B:84:0x01ea, B:86:0x01f2, B:88:0x01fc, B:90:0x0202, B:92:0x020b, B:94:0x0215, B:95:0x022a, B:97:0x0230, B:101:0x0259, B:103:0x025d, B:105:0x0266, B:107:0x026a, B:108:0x026c, B:110:0x0278, B:112:0x029b, B:114:0x029f, B:116:0x02c7, B:118:0x02cb, B:120:0x02e5, B:122:0x02e9, B:124:0x02f2, B:126:0x02f6, B:128:0x02ff, B:130:0x0307, B:132:0x030d, B:134:0x0311, B:136:0x0317, B:139:0x0320, B:144:0x033e, B:146:0x0348, B:148:0x035a, B:152:0x0364, B:154:0x0370, B:156:0x0374, B:158:0x0380, B:160:0x038c, B:162:0x0392, B:164:0x0398, B:167:0x03af, B:169:0x03bb, B:173:0x03c8, B:176:0x03d9, B:170:0x03be, B:172:0x03c6, B:166:0x03a2, B:100:0x0250), top: B:218:0x00ab }] */
    /* JADX WARN: Code duplicated, block: B:141:0x0330  */
    /* JADX WARN: Code duplicated, block: B:143:0x033b  */
    /* JADX WARN: Code duplicated, block: B:145:0x0344  */
    /* JADX WARN: Code duplicated, block: B:148:0x035a A[Catch: all -> 0x00d7, TryCatch #0 {all -> 0x00d7, blocks: (B:38:0x00ab, B:40:0x00af, B:41:0x00ba, B:43:0x00c0, B:46:0x00cf, B:48:0x00d3, B:53:0x00df, B:55:0x00ef, B:57:0x00f7, B:59:0x0111, B:61:0x0119, B:63:0x012f, B:65:0x013b, B:67:0x013f, B:68:0x0141, B:71:0x015b, B:73:0x016f, B:75:0x0178, B:77:0x01b9, B:79:0x01bd, B:80:0x01c8, B:82:0x01d2, B:84:0x01ea, B:86:0x01f2, B:88:0x01fc, B:90:0x0202, B:92:0x020b, B:94:0x0215, B:95:0x022a, B:97:0x0230, B:101:0x0259, B:103:0x025d, B:105:0x0266, B:107:0x026a, B:108:0x026c, B:110:0x0278, B:112:0x029b, B:114:0x029f, B:116:0x02c7, B:118:0x02cb, B:120:0x02e5, B:122:0x02e9, B:124:0x02f2, B:126:0x02f6, B:128:0x02ff, B:130:0x0307, B:132:0x030d, B:134:0x0311, B:136:0x0317, B:139:0x0320, B:144:0x033e, B:146:0x0348, B:148:0x035a, B:152:0x0364, B:154:0x0370, B:156:0x0374, B:158:0x0380, B:160:0x038c, B:162:0x0392, B:164:0x0398, B:167:0x03af, B:169:0x03bb, B:173:0x03c8, B:176:0x03d9, B:170:0x03be, B:172:0x03c6, B:166:0x03a2, B:100:0x0250), top: B:218:0x00ab }] */
    /* JADX WARN: Code duplicated, block: B:150:0x0362  */
    /* JADX WARN: Code duplicated, block: B:151:0x0363  */
    /* JADX WARN: Code duplicated, block: B:153:0x036e  */
    /* JADX WARN: Code duplicated, block: B:156:0x0374 A[Catch: all -> 0x00d7, TryCatch #0 {all -> 0x00d7, blocks: (B:38:0x00ab, B:40:0x00af, B:41:0x00ba, B:43:0x00c0, B:46:0x00cf, B:48:0x00d3, B:53:0x00df, B:55:0x00ef, B:57:0x00f7, B:59:0x0111, B:61:0x0119, B:63:0x012f, B:65:0x013b, B:67:0x013f, B:68:0x0141, B:71:0x015b, B:73:0x016f, B:75:0x0178, B:77:0x01b9, B:79:0x01bd, B:80:0x01c8, B:82:0x01d2, B:84:0x01ea, B:86:0x01f2, B:88:0x01fc, B:90:0x0202, B:92:0x020b, B:94:0x0215, B:95:0x022a, B:97:0x0230, B:101:0x0259, B:103:0x025d, B:105:0x0266, B:107:0x026a, B:108:0x026c, B:110:0x0278, B:112:0x029b, B:114:0x029f, B:116:0x02c7, B:118:0x02cb, B:120:0x02e5, B:122:0x02e9, B:124:0x02f2, B:126:0x02f6, B:128:0x02ff, B:130:0x0307, B:132:0x030d, B:134:0x0311, B:136:0x0317, B:139:0x0320, B:144:0x033e, B:146:0x0348, B:148:0x035a, B:152:0x0364, B:154:0x0370, B:156:0x0374, B:158:0x0380, B:160:0x038c, B:162:0x0392, B:164:0x0398, B:167:0x03af, B:169:0x03bb, B:173:0x03c8, B:176:0x03d9, B:170:0x03be, B:172:0x03c6, B:166:0x03a2, B:100:0x0250), top: B:218:0x00ab }] */
    /* JADX WARN: Code duplicated, block: B:157:0x037e  */
    /* JADX WARN: Code duplicated, block: B:160:0x038c A[Catch: all -> 0x00d7, TryCatch #0 {all -> 0x00d7, blocks: (B:38:0x00ab, B:40:0x00af, B:41:0x00ba, B:43:0x00c0, B:46:0x00cf, B:48:0x00d3, B:53:0x00df, B:55:0x00ef, B:57:0x00f7, B:59:0x0111, B:61:0x0119, B:63:0x012f, B:65:0x013b, B:67:0x013f, B:68:0x0141, B:71:0x015b, B:73:0x016f, B:75:0x0178, B:77:0x01b9, B:79:0x01bd, B:80:0x01c8, B:82:0x01d2, B:84:0x01ea, B:86:0x01f2, B:88:0x01fc, B:90:0x0202, B:92:0x020b, B:94:0x0215, B:95:0x022a, B:97:0x0230, B:101:0x0259, B:103:0x025d, B:105:0x0266, B:107:0x026a, B:108:0x026c, B:110:0x0278, B:112:0x029b, B:114:0x029f, B:116:0x02c7, B:118:0x02cb, B:120:0x02e5, B:122:0x02e9, B:124:0x02f2, B:126:0x02f6, B:128:0x02ff, B:130:0x0307, B:132:0x030d, B:134:0x0311, B:136:0x0317, B:139:0x0320, B:144:0x033e, B:146:0x0348, B:148:0x035a, B:152:0x0364, B:154:0x0370, B:156:0x0374, B:158:0x0380, B:160:0x038c, B:162:0x0392, B:164:0x0398, B:167:0x03af, B:169:0x03bb, B:173:0x03c8, B:176:0x03d9, B:170:0x03be, B:172:0x03c6, B:166:0x03a2, B:100:0x0250), top: B:218:0x00ab }] */
    /* JADX WARN: Code duplicated, block: B:162:0x0392 A[Catch: all -> 0x00d7, TryCatch #0 {all -> 0x00d7, blocks: (B:38:0x00ab, B:40:0x00af, B:41:0x00ba, B:43:0x00c0, B:46:0x00cf, B:48:0x00d3, B:53:0x00df, B:55:0x00ef, B:57:0x00f7, B:59:0x0111, B:61:0x0119, B:63:0x012f, B:65:0x013b, B:67:0x013f, B:68:0x0141, B:71:0x015b, B:73:0x016f, B:75:0x0178, B:77:0x01b9, B:79:0x01bd, B:80:0x01c8, B:82:0x01d2, B:84:0x01ea, B:86:0x01f2, B:88:0x01fc, B:90:0x0202, B:92:0x020b, B:94:0x0215, B:95:0x022a, B:97:0x0230, B:101:0x0259, B:103:0x025d, B:105:0x0266, B:107:0x026a, B:108:0x026c, B:110:0x0278, B:112:0x029b, B:114:0x029f, B:116:0x02c7, B:118:0x02cb, B:120:0x02e5, B:122:0x02e9, B:124:0x02f2, B:126:0x02f6, B:128:0x02ff, B:130:0x0307, B:132:0x030d, B:134:0x0311, B:136:0x0317, B:139:0x0320, B:144:0x033e, B:146:0x0348, B:148:0x035a, B:152:0x0364, B:154:0x0370, B:156:0x0374, B:158:0x0380, B:160:0x038c, B:162:0x0392, B:164:0x0398, B:167:0x03af, B:169:0x03bb, B:173:0x03c8, B:176:0x03d9, B:170:0x03be, B:172:0x03c6, B:166:0x03a2, B:100:0x0250), top: B:218:0x00ab }] */
    /* JADX WARN: Code duplicated, block: B:163:0x0397  */
    /* JADX WARN: Code duplicated, block: B:166:0x03a2 A[Catch: all -> 0x00d7, TryCatch #0 {all -> 0x00d7, blocks: (B:38:0x00ab, B:40:0x00af, B:41:0x00ba, B:43:0x00c0, B:46:0x00cf, B:48:0x00d3, B:53:0x00df, B:55:0x00ef, B:57:0x00f7, B:59:0x0111, B:61:0x0119, B:63:0x012f, B:65:0x013b, B:67:0x013f, B:68:0x0141, B:71:0x015b, B:73:0x016f, B:75:0x0178, B:77:0x01b9, B:79:0x01bd, B:80:0x01c8, B:82:0x01d2, B:84:0x01ea, B:86:0x01f2, B:88:0x01fc, B:90:0x0202, B:92:0x020b, B:94:0x0215, B:95:0x022a, B:97:0x0230, B:101:0x0259, B:103:0x025d, B:105:0x0266, B:107:0x026a, B:108:0x026c, B:110:0x0278, B:112:0x029b, B:114:0x029f, B:116:0x02c7, B:118:0x02cb, B:120:0x02e5, B:122:0x02e9, B:124:0x02f2, B:126:0x02f6, B:128:0x02ff, B:130:0x0307, B:132:0x030d, B:134:0x0311, B:136:0x0317, B:139:0x0320, B:144:0x033e, B:146:0x0348, B:148:0x035a, B:152:0x0364, B:154:0x0370, B:156:0x0374, B:158:0x0380, B:160:0x038c, B:162:0x0392, B:164:0x0398, B:167:0x03af, B:169:0x03bb, B:173:0x03c8, B:176:0x03d9, B:170:0x03be, B:172:0x03c6, B:166:0x03a2, B:100:0x0250), top: B:218:0x00ab }] */
    /* JADX WARN: Code duplicated, block: B:169:0x03bb A[Catch: all -> 0x00d7, TryCatch #0 {all -> 0x00d7, blocks: (B:38:0x00ab, B:40:0x00af, B:41:0x00ba, B:43:0x00c0, B:46:0x00cf, B:48:0x00d3, B:53:0x00df, B:55:0x00ef, B:57:0x00f7, B:59:0x0111, B:61:0x0119, B:63:0x012f, B:65:0x013b, B:67:0x013f, B:68:0x0141, B:71:0x015b, B:73:0x016f, B:75:0x0178, B:77:0x01b9, B:79:0x01bd, B:80:0x01c8, B:82:0x01d2, B:84:0x01ea, B:86:0x01f2, B:88:0x01fc, B:90:0x0202, B:92:0x020b, B:94:0x0215, B:95:0x022a, B:97:0x0230, B:101:0x0259, B:103:0x025d, B:105:0x0266, B:107:0x026a, B:108:0x026c, B:110:0x0278, B:112:0x029b, B:114:0x029f, B:116:0x02c7, B:118:0x02cb, B:120:0x02e5, B:122:0x02e9, B:124:0x02f2, B:126:0x02f6, B:128:0x02ff, B:130:0x0307, B:132:0x030d, B:134:0x0311, B:136:0x0317, B:139:0x0320, B:144:0x033e, B:146:0x0348, B:148:0x035a, B:152:0x0364, B:154:0x0370, B:156:0x0374, B:158:0x0380, B:160:0x038c, B:162:0x0392, B:164:0x0398, B:167:0x03af, B:169:0x03bb, B:173:0x03c8, B:176:0x03d9, B:170:0x03be, B:172:0x03c6, B:166:0x03a2, B:100:0x0250), top: B:218:0x00ab }] */
    /* JADX WARN: Code duplicated, block: B:170:0x03be A[Catch: all -> 0x00d7, TryCatch #0 {all -> 0x00d7, blocks: (B:38:0x00ab, B:40:0x00af, B:41:0x00ba, B:43:0x00c0, B:46:0x00cf, B:48:0x00d3, B:53:0x00df, B:55:0x00ef, B:57:0x00f7, B:59:0x0111, B:61:0x0119, B:63:0x012f, B:65:0x013b, B:67:0x013f, B:68:0x0141, B:71:0x015b, B:73:0x016f, B:75:0x0178, B:77:0x01b9, B:79:0x01bd, B:80:0x01c8, B:82:0x01d2, B:84:0x01ea, B:86:0x01f2, B:88:0x01fc, B:90:0x0202, B:92:0x020b, B:94:0x0215, B:95:0x022a, B:97:0x0230, B:101:0x0259, B:103:0x025d, B:105:0x0266, B:107:0x026a, B:108:0x026c, B:110:0x0278, B:112:0x029b, B:114:0x029f, B:116:0x02c7, B:118:0x02cb, B:120:0x02e5, B:122:0x02e9, B:124:0x02f2, B:126:0x02f6, B:128:0x02ff, B:130:0x0307, B:132:0x030d, B:134:0x0311, B:136:0x0317, B:139:0x0320, B:144:0x033e, B:146:0x0348, B:148:0x035a, B:152:0x0364, B:154:0x0370, B:156:0x0374, B:158:0x0380, B:160:0x038c, B:162:0x0392, B:164:0x0398, B:167:0x03af, B:169:0x03bb, B:173:0x03c8, B:176:0x03d9, B:170:0x03be, B:172:0x03c6, B:166:0x03a2, B:100:0x0250), top: B:218:0x00ab }] */
    /* JADX WARN: Code duplicated, block: B:172:0x03c6 A[Catch: all -> 0x00d7, TryCatch #0 {all -> 0x00d7, blocks: (B:38:0x00ab, B:40:0x00af, B:41:0x00ba, B:43:0x00c0, B:46:0x00cf, B:48:0x00d3, B:53:0x00df, B:55:0x00ef, B:57:0x00f7, B:59:0x0111, B:61:0x0119, B:63:0x012f, B:65:0x013b, B:67:0x013f, B:68:0x0141, B:71:0x015b, B:73:0x016f, B:75:0x0178, B:77:0x01b9, B:79:0x01bd, B:80:0x01c8, B:82:0x01d2, B:84:0x01ea, B:86:0x01f2, B:88:0x01fc, B:90:0x0202, B:92:0x020b, B:94:0x0215, B:95:0x022a, B:97:0x0230, B:101:0x0259, B:103:0x025d, B:105:0x0266, B:107:0x026a, B:108:0x026c, B:110:0x0278, B:112:0x029b, B:114:0x029f, B:116:0x02c7, B:118:0x02cb, B:120:0x02e5, B:122:0x02e9, B:124:0x02f2, B:126:0x02f6, B:128:0x02ff, B:130:0x0307, B:132:0x030d, B:134:0x0311, B:136:0x0317, B:139:0x0320, B:144:0x033e, B:146:0x0348, B:148:0x035a, B:152:0x0364, B:154:0x0370, B:156:0x0374, B:158:0x0380, B:160:0x038c, B:162:0x0392, B:164:0x0398, B:167:0x03af, B:169:0x03bb, B:173:0x03c8, B:176:0x03d9, B:170:0x03be, B:172:0x03c6, B:166:0x03a2, B:100:0x0250), top: B:218:0x00ab }] */
    /* JADX WARN: Code duplicated, block: B:175:0x03d6  */
    /* JADX WARN: Code duplicated, block: B:179:0x0400 A[Catch: all -> 0x040a, TryCatch #1 {all -> 0x040a, blocks: (B:178:0x03fa, B:179:0x0400, B:180:0x0409, B:183:0x040c, B:184:0x0415, B:185:0x0416, B:186:0x041f, B:187:0x0420, B:188:0x0429, B:189:0x042a, B:190:0x0431, B:191:0x0432, B:192:0x0439, B:193:0x043a, B:194:0x0443, B:195:0x0444, B:196:0x044d), top: B:220:0x012d }] */
    /* JADX WARN: Code duplicated, block: B:183:0x040c A[Catch: all -> 0x040a, TryCatch #1 {all -> 0x040a, blocks: (B:178:0x03fa, B:179:0x0400, B:180:0x0409, B:183:0x040c, B:184:0x0415, B:185:0x0416, B:186:0x041f, B:187:0x0420, B:188:0x0429, B:189:0x042a, B:190:0x0431, B:191:0x0432, B:192:0x0439, B:193:0x043a, B:194:0x0443, B:195:0x0444, B:196:0x044d), top: B:220:0x012d }] */
    /* JADX WARN: Code duplicated, block: B:185:0x0416 A[Catch: all -> 0x040a, TryCatch #1 {all -> 0x040a, blocks: (B:178:0x03fa, B:179:0x0400, B:180:0x0409, B:183:0x040c, B:184:0x0415, B:185:0x0416, B:186:0x041f, B:187:0x0420, B:188:0x0429, B:189:0x042a, B:190:0x0431, B:191:0x0432, B:192:0x0439, B:193:0x043a, B:194:0x0443, B:195:0x0444, B:196:0x044d), top: B:220:0x012d }] */
    /* JADX WARN: Code duplicated, block: B:187:0x0420 A[Catch: all -> 0x040a, TryCatch #1 {all -> 0x040a, blocks: (B:178:0x03fa, B:179:0x0400, B:180:0x0409, B:183:0x040c, B:184:0x0415, B:185:0x0416, B:186:0x041f, B:187:0x0420, B:188:0x0429, B:189:0x042a, B:190:0x0431, B:191:0x0432, B:192:0x0439, B:193:0x043a, B:194:0x0443, B:195:0x0444, B:196:0x044d), top: B:220:0x012d }] */
    /* JADX WARN: Code duplicated, block: B:189:0x042a A[Catch: all -> 0x040a, TryCatch #1 {all -> 0x040a, blocks: (B:178:0x03fa, B:179:0x0400, B:180:0x0409, B:183:0x040c, B:184:0x0415, B:185:0x0416, B:186:0x041f, B:187:0x0420, B:188:0x0429, B:189:0x042a, B:190:0x0431, B:191:0x0432, B:192:0x0439, B:193:0x043a, B:194:0x0443, B:195:0x0444, B:196:0x044d), top: B:220:0x012d }] */
    /* JADX WARN: Code duplicated, block: B:191:0x0432 A[Catch: all -> 0x040a, TryCatch #1 {all -> 0x040a, blocks: (B:178:0x03fa, B:179:0x0400, B:180:0x0409, B:183:0x040c, B:184:0x0415, B:185:0x0416, B:186:0x041f, B:187:0x0420, B:188:0x0429, B:189:0x042a, B:190:0x0431, B:191:0x0432, B:192:0x0439, B:193:0x043a, B:194:0x0443, B:195:0x0444, B:196:0x044d), top: B:220:0x012d }] */
    /* JADX WARN: Code duplicated, block: B:193:0x043a A[Catch: all -> 0x040a, TryCatch #1 {all -> 0x040a, blocks: (B:178:0x03fa, B:179:0x0400, B:180:0x0409, B:183:0x040c, B:184:0x0415, B:185:0x0416, B:186:0x041f, B:187:0x0420, B:188:0x0429, B:189:0x042a, B:190:0x0431, B:191:0x0432, B:192:0x0439, B:193:0x043a, B:194:0x0443, B:195:0x0444, B:196:0x044d), top: B:220:0x012d }] */
    /* JADX WARN: Code duplicated, block: B:195:0x0444 A[Catch: all -> 0x040a, TryCatch #1 {all -> 0x040a, blocks: (B:178:0x03fa, B:179:0x0400, B:180:0x0409, B:183:0x040c, B:184:0x0415, B:185:0x0416, B:186:0x041f, B:187:0x0420, B:188:0x0429, B:189:0x042a, B:190:0x0431, B:191:0x0432, B:192:0x0439, B:193:0x043a, B:194:0x0443, B:195:0x0444, B:196:0x044d), top: B:220:0x012d }] */
    /* JADX WARN: Code duplicated, block: B:201:0x045d  */
    /* JADX WARN: Code duplicated, block: B:203:0x0461  */
    /* JADX WARN: Code duplicated, block: B:205:0x0471  */
    /* JADX WARN: Code duplicated, block: B:206:0x0472  */
    /* JADX WARN: Code duplicated, block: B:209:0x047f  */
    /* JADX WARN: Code duplicated, block: B:212:0x0495  */
    /* JADX WARN: Code duplicated, block: B:215:0x04a0  */
    /* JADX WARN: Code duplicated, block: B:216:0x04a4  */
    /* JADX WARN: Code duplicated, block: B:222:0x00d3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:224:0x00ba A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:227:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:37:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:40:0x00af A[Catch: all -> 0x00d7, TryCatch #0 {all -> 0x00d7, blocks: (B:38:0x00ab, B:40:0x00af, B:41:0x00ba, B:43:0x00c0, B:46:0x00cf, B:48:0x00d3, B:53:0x00df, B:55:0x00ef, B:57:0x00f7, B:59:0x0111, B:61:0x0119, B:63:0x012f, B:65:0x013b, B:67:0x013f, B:68:0x0141, B:71:0x015b, B:73:0x016f, B:75:0x0178, B:77:0x01b9, B:79:0x01bd, B:80:0x01c8, B:82:0x01d2, B:84:0x01ea, B:86:0x01f2, B:88:0x01fc, B:90:0x0202, B:92:0x020b, B:94:0x0215, B:95:0x022a, B:97:0x0230, B:101:0x0259, B:103:0x025d, B:105:0x0266, B:107:0x026a, B:108:0x026c, B:110:0x0278, B:112:0x029b, B:114:0x029f, B:116:0x02c7, B:118:0x02cb, B:120:0x02e5, B:122:0x02e9, B:124:0x02f2, B:126:0x02f6, B:128:0x02ff, B:130:0x0307, B:132:0x030d, B:134:0x0311, B:136:0x0317, B:139:0x0320, B:144:0x033e, B:146:0x0348, B:148:0x035a, B:152:0x0364, B:154:0x0370, B:156:0x0374, B:158:0x0380, B:160:0x038c, B:162:0x0392, B:164:0x0398, B:167:0x03af, B:169:0x03bb, B:173:0x03c8, B:176:0x03d9, B:170:0x03be, B:172:0x03c6, B:166:0x03a2, B:100:0x0250), top: B:218:0x00ab }] */
    /* JADX WARN: Code duplicated, block: B:43:0x00c0 A[Catch: all -> 0x00d7, TryCatch #0 {all -> 0x00d7, blocks: (B:38:0x00ab, B:40:0x00af, B:41:0x00ba, B:43:0x00c0, B:46:0x00cf, B:48:0x00d3, B:53:0x00df, B:55:0x00ef, B:57:0x00f7, B:59:0x0111, B:61:0x0119, B:63:0x012f, B:65:0x013b, B:67:0x013f, B:68:0x0141, B:71:0x015b, B:73:0x016f, B:75:0x0178, B:77:0x01b9, B:79:0x01bd, B:80:0x01c8, B:82:0x01d2, B:84:0x01ea, B:86:0x01f2, B:88:0x01fc, B:90:0x0202, B:92:0x020b, B:94:0x0215, B:95:0x022a, B:97:0x0230, B:101:0x0259, B:103:0x025d, B:105:0x0266, B:107:0x026a, B:108:0x026c, B:110:0x0278, B:112:0x029b, B:114:0x029f, B:116:0x02c7, B:118:0x02cb, B:120:0x02e5, B:122:0x02e9, B:124:0x02f2, B:126:0x02f6, B:128:0x02ff, B:130:0x0307, B:132:0x030d, B:134:0x0311, B:136:0x0317, B:139:0x0320, B:144:0x033e, B:146:0x0348, B:148:0x035a, B:152:0x0364, B:154:0x0370, B:156:0x0374, B:158:0x0380, B:160:0x038c, B:162:0x0392, B:164:0x0398, B:167:0x03af, B:169:0x03bb, B:173:0x03c8, B:176:0x03d9, B:170:0x03be, B:172:0x03c6, B:166:0x03a2, B:100:0x0250), top: B:218:0x00ab }] */
    /* JADX WARN: Code duplicated, block: B:45:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:52:0x00de  */
    /* JADX WARN: Code duplicated, block: B:55:0x00ef A[Catch: all -> 0x00d7, TryCatch #0 {all -> 0x00d7, blocks: (B:38:0x00ab, B:40:0x00af, B:41:0x00ba, B:43:0x00c0, B:46:0x00cf, B:48:0x00d3, B:53:0x00df, B:55:0x00ef, B:57:0x00f7, B:59:0x0111, B:61:0x0119, B:63:0x012f, B:65:0x013b, B:67:0x013f, B:68:0x0141, B:71:0x015b, B:73:0x016f, B:75:0x0178, B:77:0x01b9, B:79:0x01bd, B:80:0x01c8, B:82:0x01d2, B:84:0x01ea, B:86:0x01f2, B:88:0x01fc, B:90:0x0202, B:92:0x020b, B:94:0x0215, B:95:0x022a, B:97:0x0230, B:101:0x0259, B:103:0x025d, B:105:0x0266, B:107:0x026a, B:108:0x026c, B:110:0x0278, B:112:0x029b, B:114:0x029f, B:116:0x02c7, B:118:0x02cb, B:120:0x02e5, B:122:0x02e9, B:124:0x02f2, B:126:0x02f6, B:128:0x02ff, B:130:0x0307, B:132:0x030d, B:134:0x0311, B:136:0x0317, B:139:0x0320, B:144:0x033e, B:146:0x0348, B:148:0x035a, B:152:0x0364, B:154:0x0370, B:156:0x0374, B:158:0x0380, B:160:0x038c, B:162:0x0392, B:164:0x0398, B:167:0x03af, B:169:0x03bb, B:173:0x03c8, B:176:0x03d9, B:170:0x03be, B:172:0x03c6, B:166:0x03a2, B:100:0x0250), top: B:218:0x00ab }] */
    /* JADX WARN: Code duplicated, block: B:57:0x00f7 A[Catch: all -> 0x00d7, TryCatch #0 {all -> 0x00d7, blocks: (B:38:0x00ab, B:40:0x00af, B:41:0x00ba, B:43:0x00c0, B:46:0x00cf, B:48:0x00d3, B:53:0x00df, B:55:0x00ef, B:57:0x00f7, B:59:0x0111, B:61:0x0119, B:63:0x012f, B:65:0x013b, B:67:0x013f, B:68:0x0141, B:71:0x015b, B:73:0x016f, B:75:0x0178, B:77:0x01b9, B:79:0x01bd, B:80:0x01c8, B:82:0x01d2, B:84:0x01ea, B:86:0x01f2, B:88:0x01fc, B:90:0x0202, B:92:0x020b, B:94:0x0215, B:95:0x022a, B:97:0x0230, B:101:0x0259, B:103:0x025d, B:105:0x0266, B:107:0x026a, B:108:0x026c, B:110:0x0278, B:112:0x029b, B:114:0x029f, B:116:0x02c7, B:118:0x02cb, B:120:0x02e5, B:122:0x02e9, B:124:0x02f2, B:126:0x02f6, B:128:0x02ff, B:130:0x0307, B:132:0x030d, B:134:0x0311, B:136:0x0317, B:139:0x0320, B:144:0x033e, B:146:0x0348, B:148:0x035a, B:152:0x0364, B:154:0x0370, B:156:0x0374, B:158:0x0380, B:160:0x038c, B:162:0x0392, B:164:0x0398, B:167:0x03af, B:169:0x03bb, B:173:0x03c8, B:176:0x03d9, B:170:0x03be, B:172:0x03c6, B:166:0x03a2, B:100:0x0250), top: B:218:0x00ab }] */
    /* JADX WARN: Code duplicated, block: B:58:0x0110  */
    /* JADX WARN: Code duplicated, block: B:60:0x0117  */
    /* JADX WARN: Code duplicated, block: B:63:0x012f A[Catch: all -> 0x00d7, TryCatch #0 {all -> 0x00d7, blocks: (B:38:0x00ab, B:40:0x00af, B:41:0x00ba, B:43:0x00c0, B:46:0x00cf, B:48:0x00d3, B:53:0x00df, B:55:0x00ef, B:57:0x00f7, B:59:0x0111, B:61:0x0119, B:63:0x012f, B:65:0x013b, B:67:0x013f, B:68:0x0141, B:71:0x015b, B:73:0x016f, B:75:0x0178, B:77:0x01b9, B:79:0x01bd, B:80:0x01c8, B:82:0x01d2, B:84:0x01ea, B:86:0x01f2, B:88:0x01fc, B:90:0x0202, B:92:0x020b, B:94:0x0215, B:95:0x022a, B:97:0x0230, B:101:0x0259, B:103:0x025d, B:105:0x0266, B:107:0x026a, B:108:0x026c, B:110:0x0278, B:112:0x029b, B:114:0x029f, B:116:0x02c7, B:118:0x02cb, B:120:0x02e5, B:122:0x02e9, B:124:0x02f2, B:126:0x02f6, B:128:0x02ff, B:130:0x0307, B:132:0x030d, B:134:0x0311, B:136:0x0317, B:139:0x0320, B:144:0x033e, B:146:0x0348, B:148:0x035a, B:152:0x0364, B:154:0x0370, B:156:0x0374, B:158:0x0380, B:160:0x038c, B:162:0x0392, B:164:0x0398, B:167:0x03af, B:169:0x03bb, B:173:0x03c8, B:176:0x03d9, B:170:0x03be, B:172:0x03c6, B:166:0x03a2, B:100:0x0250), top: B:218:0x00ab }] */
    /* JADX WARN: Code duplicated, block: B:65:0x013b A[Catch: all -> 0x00d7, TryCatch #0 {all -> 0x00d7, blocks: (B:38:0x00ab, B:40:0x00af, B:41:0x00ba, B:43:0x00c0, B:46:0x00cf, B:48:0x00d3, B:53:0x00df, B:55:0x00ef, B:57:0x00f7, B:59:0x0111, B:61:0x0119, B:63:0x012f, B:65:0x013b, B:67:0x013f, B:68:0x0141, B:71:0x015b, B:73:0x016f, B:75:0x0178, B:77:0x01b9, B:79:0x01bd, B:80:0x01c8, B:82:0x01d2, B:84:0x01ea, B:86:0x01f2, B:88:0x01fc, B:90:0x0202, B:92:0x020b, B:94:0x0215, B:95:0x022a, B:97:0x0230, B:101:0x0259, B:103:0x025d, B:105:0x0266, B:107:0x026a, B:108:0x026c, B:110:0x0278, B:112:0x029b, B:114:0x029f, B:116:0x02c7, B:118:0x02cb, B:120:0x02e5, B:122:0x02e9, B:124:0x02f2, B:126:0x02f6, B:128:0x02ff, B:130:0x0307, B:132:0x030d, B:134:0x0311, B:136:0x0317, B:139:0x0320, B:144:0x033e, B:146:0x0348, B:148:0x035a, B:152:0x0364, B:154:0x0370, B:156:0x0374, B:158:0x0380, B:160:0x038c, B:162:0x0392, B:164:0x0398, B:167:0x03af, B:169:0x03bb, B:173:0x03c8, B:176:0x03d9, B:170:0x03be, B:172:0x03c6, B:166:0x03a2, B:100:0x0250), top: B:218:0x00ab }] */
    /* JADX WARN: Code duplicated, block: B:67:0x013f A[Catch: all -> 0x00d7, TryCatch #0 {all -> 0x00d7, blocks: (B:38:0x00ab, B:40:0x00af, B:41:0x00ba, B:43:0x00c0, B:46:0x00cf, B:48:0x00d3, B:53:0x00df, B:55:0x00ef, B:57:0x00f7, B:59:0x0111, B:61:0x0119, B:63:0x012f, B:65:0x013b, B:67:0x013f, B:68:0x0141, B:71:0x015b, B:73:0x016f, B:75:0x0178, B:77:0x01b9, B:79:0x01bd, B:80:0x01c8, B:82:0x01d2, B:84:0x01ea, B:86:0x01f2, B:88:0x01fc, B:90:0x0202, B:92:0x020b, B:94:0x0215, B:95:0x022a, B:97:0x0230, B:101:0x0259, B:103:0x025d, B:105:0x0266, B:107:0x026a, B:108:0x026c, B:110:0x0278, B:112:0x029b, B:114:0x029f, B:116:0x02c7, B:118:0x02cb, B:120:0x02e5, B:122:0x02e9, B:124:0x02f2, B:126:0x02f6, B:128:0x02ff, B:130:0x0307, B:132:0x030d, B:134:0x0311, B:136:0x0317, B:139:0x0320, B:144:0x033e, B:146:0x0348, B:148:0x035a, B:152:0x0364, B:154:0x0370, B:156:0x0374, B:158:0x0380, B:160:0x038c, B:162:0x0392, B:164:0x0398, B:167:0x03af, B:169:0x03bb, B:173:0x03c8, B:176:0x03d9, B:170:0x03be, B:172:0x03c6, B:166:0x03a2, B:100:0x0250), top: B:218:0x00ab }] */
    /* JADX WARN: Code duplicated, block: B:71:0x015b A[Catch: all -> 0x00d7, TRY_ENTER, TryCatch #0 {all -> 0x00d7, blocks: (B:38:0x00ab, B:40:0x00af, B:41:0x00ba, B:43:0x00c0, B:46:0x00cf, B:48:0x00d3, B:53:0x00df, B:55:0x00ef, B:57:0x00f7, B:59:0x0111, B:61:0x0119, B:63:0x012f, B:65:0x013b, B:67:0x013f, B:68:0x0141, B:71:0x015b, B:73:0x016f, B:75:0x0178, B:77:0x01b9, B:79:0x01bd, B:80:0x01c8, B:82:0x01d2, B:84:0x01ea, B:86:0x01f2, B:88:0x01fc, B:90:0x0202, B:92:0x020b, B:94:0x0215, B:95:0x022a, B:97:0x0230, B:101:0x0259, B:103:0x025d, B:105:0x0266, B:107:0x026a, B:108:0x026c, B:110:0x0278, B:112:0x029b, B:114:0x029f, B:116:0x02c7, B:118:0x02cb, B:120:0x02e5, B:122:0x02e9, B:124:0x02f2, B:126:0x02f6, B:128:0x02ff, B:130:0x0307, B:132:0x030d, B:134:0x0311, B:136:0x0317, B:139:0x0320, B:144:0x033e, B:146:0x0348, B:148:0x035a, B:152:0x0364, B:154:0x0370, B:156:0x0374, B:158:0x0380, B:160:0x038c, B:162:0x0392, B:164:0x0398, B:167:0x03af, B:169:0x03bb, B:173:0x03c8, B:176:0x03d9, B:170:0x03be, B:172:0x03c6, B:166:0x03a2, B:100:0x0250), top: B:218:0x00ab }] */
    /* JADX WARN: Code duplicated, block: B:73:0x016f A[Catch: all -> 0x00d7, TryCatch #0 {all -> 0x00d7, blocks: (B:38:0x00ab, B:40:0x00af, B:41:0x00ba, B:43:0x00c0, B:46:0x00cf, B:48:0x00d3, B:53:0x00df, B:55:0x00ef, B:57:0x00f7, B:59:0x0111, B:61:0x0119, B:63:0x012f, B:65:0x013b, B:67:0x013f, B:68:0x0141, B:71:0x015b, B:73:0x016f, B:75:0x0178, B:77:0x01b9, B:79:0x01bd, B:80:0x01c8, B:82:0x01d2, B:84:0x01ea, B:86:0x01f2, B:88:0x01fc, B:90:0x0202, B:92:0x020b, B:94:0x0215, B:95:0x022a, B:97:0x0230, B:101:0x0259, B:103:0x025d, B:105:0x0266, B:107:0x026a, B:108:0x026c, B:110:0x0278, B:112:0x029b, B:114:0x029f, B:116:0x02c7, B:118:0x02cb, B:120:0x02e5, B:122:0x02e9, B:124:0x02f2, B:126:0x02f6, B:128:0x02ff, B:130:0x0307, B:132:0x030d, B:134:0x0311, B:136:0x0317, B:139:0x0320, B:144:0x033e, B:146:0x0348, B:148:0x035a, B:152:0x0364, B:154:0x0370, B:156:0x0374, B:158:0x0380, B:160:0x038c, B:162:0x0392, B:164:0x0398, B:167:0x03af, B:169:0x03bb, B:173:0x03c8, B:176:0x03d9, B:170:0x03be, B:172:0x03c6, B:166:0x03a2, B:100:0x0250), top: B:218:0x00ab }] */
    /* JADX WARN: Code duplicated, block: B:74:0x0176  */
    /* JADX WARN: Code duplicated, block: B:77:0x01b9 A[Catch: all -> 0x00d7, TryCatch #0 {all -> 0x00d7, blocks: (B:38:0x00ab, B:40:0x00af, B:41:0x00ba, B:43:0x00c0, B:46:0x00cf, B:48:0x00d3, B:53:0x00df, B:55:0x00ef, B:57:0x00f7, B:59:0x0111, B:61:0x0119, B:63:0x012f, B:65:0x013b, B:67:0x013f, B:68:0x0141, B:71:0x015b, B:73:0x016f, B:75:0x0178, B:77:0x01b9, B:79:0x01bd, B:80:0x01c8, B:82:0x01d2, B:84:0x01ea, B:86:0x01f2, B:88:0x01fc, B:90:0x0202, B:92:0x020b, B:94:0x0215, B:95:0x022a, B:97:0x0230, B:101:0x0259, B:103:0x025d, B:105:0x0266, B:107:0x026a, B:108:0x026c, B:110:0x0278, B:112:0x029b, B:114:0x029f, B:116:0x02c7, B:118:0x02cb, B:120:0x02e5, B:122:0x02e9, B:124:0x02f2, B:126:0x02f6, B:128:0x02ff, B:130:0x0307, B:132:0x030d, B:134:0x0311, B:136:0x0317, B:139:0x0320, B:144:0x033e, B:146:0x0348, B:148:0x035a, B:152:0x0364, B:154:0x0370, B:156:0x0374, B:158:0x0380, B:160:0x038c, B:162:0x0392, B:164:0x0398, B:167:0x03af, B:169:0x03bb, B:173:0x03c8, B:176:0x03d9, B:170:0x03be, B:172:0x03c6, B:166:0x03a2, B:100:0x0250), top: B:218:0x00ab }] */
    /* JADX WARN: Code duplicated, block: B:79:0x01bd A[Catch: all -> 0x00d7, TryCatch #0 {all -> 0x00d7, blocks: (B:38:0x00ab, B:40:0x00af, B:41:0x00ba, B:43:0x00c0, B:46:0x00cf, B:48:0x00d3, B:53:0x00df, B:55:0x00ef, B:57:0x00f7, B:59:0x0111, B:61:0x0119, B:63:0x012f, B:65:0x013b, B:67:0x013f, B:68:0x0141, B:71:0x015b, B:73:0x016f, B:75:0x0178, B:77:0x01b9, B:79:0x01bd, B:80:0x01c8, B:82:0x01d2, B:84:0x01ea, B:86:0x01f2, B:88:0x01fc, B:90:0x0202, B:92:0x020b, B:94:0x0215, B:95:0x022a, B:97:0x0230, B:101:0x0259, B:103:0x025d, B:105:0x0266, B:107:0x026a, B:108:0x026c, B:110:0x0278, B:112:0x029b, B:114:0x029f, B:116:0x02c7, B:118:0x02cb, B:120:0x02e5, B:122:0x02e9, B:124:0x02f2, B:126:0x02f6, B:128:0x02ff, B:130:0x0307, B:132:0x030d, B:134:0x0311, B:136:0x0317, B:139:0x0320, B:144:0x033e, B:146:0x0348, B:148:0x035a, B:152:0x0364, B:154:0x0370, B:156:0x0374, B:158:0x0380, B:160:0x038c, B:162:0x0392, B:164:0x0398, B:167:0x03af, B:169:0x03bb, B:173:0x03c8, B:176:0x03d9, B:170:0x03be, B:172:0x03c6, B:166:0x03a2, B:100:0x0250), top: B:218:0x00ab }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Code duplicated, block: B:82:0x01d2 A[Catch: all -> 0x00d7, TryCatch #0 {all -> 0x00d7, blocks: (B:38:0x00ab, B:40:0x00af, B:41:0x00ba, B:43:0x00c0, B:46:0x00cf, B:48:0x00d3, B:53:0x00df, B:55:0x00ef, B:57:0x00f7, B:59:0x0111, B:61:0x0119, B:63:0x012f, B:65:0x013b, B:67:0x013f, B:68:0x0141, B:71:0x015b, B:73:0x016f, B:75:0x0178, B:77:0x01b9, B:79:0x01bd, B:80:0x01c8, B:82:0x01d2, B:84:0x01ea, B:86:0x01f2, B:88:0x01fc, B:90:0x0202, B:92:0x020b, B:94:0x0215, B:95:0x022a, B:97:0x0230, B:101:0x0259, B:103:0x025d, B:105:0x0266, B:107:0x026a, B:108:0x026c, B:110:0x0278, B:112:0x029b, B:114:0x029f, B:116:0x02c7, B:118:0x02cb, B:120:0x02e5, B:122:0x02e9, B:124:0x02f2, B:126:0x02f6, B:128:0x02ff, B:130:0x0307, B:132:0x030d, B:134:0x0311, B:136:0x0317, B:139:0x0320, B:144:0x033e, B:146:0x0348, B:148:0x035a, B:152:0x0364, B:154:0x0370, B:156:0x0374, B:158:0x0380, B:160:0x038c, B:162:0x0392, B:164:0x0398, B:167:0x03af, B:169:0x03bb, B:173:0x03c8, B:176:0x03d9, B:170:0x03be, B:172:0x03c6, B:166:0x03a2, B:100:0x0250), top: B:218:0x00ab }] */
    /* JADX WARN: Code duplicated, block: B:84:0x01ea A[Catch: all -> 0x00d7, TryCatch #0 {all -> 0x00d7, blocks: (B:38:0x00ab, B:40:0x00af, B:41:0x00ba, B:43:0x00c0, B:46:0x00cf, B:48:0x00d3, B:53:0x00df, B:55:0x00ef, B:57:0x00f7, B:59:0x0111, B:61:0x0119, B:63:0x012f, B:65:0x013b, B:67:0x013f, B:68:0x0141, B:71:0x015b, B:73:0x016f, B:75:0x0178, B:77:0x01b9, B:79:0x01bd, B:80:0x01c8, B:82:0x01d2, B:84:0x01ea, B:86:0x01f2, B:88:0x01fc, B:90:0x0202, B:92:0x020b, B:94:0x0215, B:95:0x022a, B:97:0x0230, B:101:0x0259, B:103:0x025d, B:105:0x0266, B:107:0x026a, B:108:0x026c, B:110:0x0278, B:112:0x029b, B:114:0x029f, B:116:0x02c7, B:118:0x02cb, B:120:0x02e5, B:122:0x02e9, B:124:0x02f2, B:126:0x02f6, B:128:0x02ff, B:130:0x0307, B:132:0x030d, B:134:0x0311, B:136:0x0317, B:139:0x0320, B:144:0x033e, B:146:0x0348, B:148:0x035a, B:152:0x0364, B:154:0x0370, B:156:0x0374, B:158:0x0380, B:160:0x038c, B:162:0x0392, B:164:0x0398, B:167:0x03af, B:169:0x03bb, B:173:0x03c8, B:176:0x03d9, B:170:0x03be, B:172:0x03c6, B:166:0x03a2, B:100:0x0250), top: B:218:0x00ab }] */
    /* JADX WARN: Code duplicated, block: B:86:0x01f2 A[Catch: all -> 0x00d7, TryCatch #0 {all -> 0x00d7, blocks: (B:38:0x00ab, B:40:0x00af, B:41:0x00ba, B:43:0x00c0, B:46:0x00cf, B:48:0x00d3, B:53:0x00df, B:55:0x00ef, B:57:0x00f7, B:59:0x0111, B:61:0x0119, B:63:0x012f, B:65:0x013b, B:67:0x013f, B:68:0x0141, B:71:0x015b, B:73:0x016f, B:75:0x0178, B:77:0x01b9, B:79:0x01bd, B:80:0x01c8, B:82:0x01d2, B:84:0x01ea, B:86:0x01f2, B:88:0x01fc, B:90:0x0202, B:92:0x020b, B:94:0x0215, B:95:0x022a, B:97:0x0230, B:101:0x0259, B:103:0x025d, B:105:0x0266, B:107:0x026a, B:108:0x026c, B:110:0x0278, B:112:0x029b, B:114:0x029f, B:116:0x02c7, B:118:0x02cb, B:120:0x02e5, B:122:0x02e9, B:124:0x02f2, B:126:0x02f6, B:128:0x02ff, B:130:0x0307, B:132:0x030d, B:134:0x0311, B:136:0x0317, B:139:0x0320, B:144:0x033e, B:146:0x0348, B:148:0x035a, B:152:0x0364, B:154:0x0370, B:156:0x0374, B:158:0x0380, B:160:0x038c, B:162:0x0392, B:164:0x0398, B:167:0x03af, B:169:0x03bb, B:173:0x03c8, B:176:0x03d9, B:170:0x03be, B:172:0x03c6, B:166:0x03a2, B:100:0x0250), top: B:218:0x00ab }] */
    /* JADX WARN: Code duplicated, block: B:88:0x01fc A[Catch: all -> 0x00d7, TryCatch #0 {all -> 0x00d7, blocks: (B:38:0x00ab, B:40:0x00af, B:41:0x00ba, B:43:0x00c0, B:46:0x00cf, B:48:0x00d3, B:53:0x00df, B:55:0x00ef, B:57:0x00f7, B:59:0x0111, B:61:0x0119, B:63:0x012f, B:65:0x013b, B:67:0x013f, B:68:0x0141, B:71:0x015b, B:73:0x016f, B:75:0x0178, B:77:0x01b9, B:79:0x01bd, B:80:0x01c8, B:82:0x01d2, B:84:0x01ea, B:86:0x01f2, B:88:0x01fc, B:90:0x0202, B:92:0x020b, B:94:0x0215, B:95:0x022a, B:97:0x0230, B:101:0x0259, B:103:0x025d, B:105:0x0266, B:107:0x026a, B:108:0x026c, B:110:0x0278, B:112:0x029b, B:114:0x029f, B:116:0x02c7, B:118:0x02cb, B:120:0x02e5, B:122:0x02e9, B:124:0x02f2, B:126:0x02f6, B:128:0x02ff, B:130:0x0307, B:132:0x030d, B:134:0x0311, B:136:0x0317, B:139:0x0320, B:144:0x033e, B:146:0x0348, B:148:0x035a, B:152:0x0364, B:154:0x0370, B:156:0x0374, B:158:0x0380, B:160:0x038c, B:162:0x0392, B:164:0x0398, B:167:0x03af, B:169:0x03bb, B:173:0x03c8, B:176:0x03d9, B:170:0x03be, B:172:0x03c6, B:166:0x03a2, B:100:0x0250), top: B:218:0x00ab }] */
    /* JADX WARN: Code duplicated, block: B:90:0x0202 A[Catch: all -> 0x00d7, TryCatch #0 {all -> 0x00d7, blocks: (B:38:0x00ab, B:40:0x00af, B:41:0x00ba, B:43:0x00c0, B:46:0x00cf, B:48:0x00d3, B:53:0x00df, B:55:0x00ef, B:57:0x00f7, B:59:0x0111, B:61:0x0119, B:63:0x012f, B:65:0x013b, B:67:0x013f, B:68:0x0141, B:71:0x015b, B:73:0x016f, B:75:0x0178, B:77:0x01b9, B:79:0x01bd, B:80:0x01c8, B:82:0x01d2, B:84:0x01ea, B:86:0x01f2, B:88:0x01fc, B:90:0x0202, B:92:0x020b, B:94:0x0215, B:95:0x022a, B:97:0x0230, B:101:0x0259, B:103:0x025d, B:105:0x0266, B:107:0x026a, B:108:0x026c, B:110:0x0278, B:112:0x029b, B:114:0x029f, B:116:0x02c7, B:118:0x02cb, B:120:0x02e5, B:122:0x02e9, B:124:0x02f2, B:126:0x02f6, B:128:0x02ff, B:130:0x0307, B:132:0x030d, B:134:0x0311, B:136:0x0317, B:139:0x0320, B:144:0x033e, B:146:0x0348, B:148:0x035a, B:152:0x0364, B:154:0x0370, B:156:0x0374, B:158:0x0380, B:160:0x038c, B:162:0x0392, B:164:0x0398, B:167:0x03af, B:169:0x03bb, B:173:0x03c8, B:176:0x03d9, B:170:0x03be, B:172:0x03c6, B:166:0x03a2, B:100:0x0250), top: B:218:0x00ab }] */
    /* JADX WARN: Code duplicated, block: B:91:0x0209  */
    /* JADX WARN: Code duplicated, block: B:94:0x0215 A[Catch: all -> 0x00d7, TryCatch #0 {all -> 0x00d7, blocks: (B:38:0x00ab, B:40:0x00af, B:41:0x00ba, B:43:0x00c0, B:46:0x00cf, B:48:0x00d3, B:53:0x00df, B:55:0x00ef, B:57:0x00f7, B:59:0x0111, B:61:0x0119, B:63:0x012f, B:65:0x013b, B:67:0x013f, B:68:0x0141, B:71:0x015b, B:73:0x016f, B:75:0x0178, B:77:0x01b9, B:79:0x01bd, B:80:0x01c8, B:82:0x01d2, B:84:0x01ea, B:86:0x01f2, B:88:0x01fc, B:90:0x0202, B:92:0x020b, B:94:0x0215, B:95:0x022a, B:97:0x0230, B:101:0x0259, B:103:0x025d, B:105:0x0266, B:107:0x026a, B:108:0x026c, B:110:0x0278, B:112:0x029b, B:114:0x029f, B:116:0x02c7, B:118:0x02cb, B:120:0x02e5, B:122:0x02e9, B:124:0x02f2, B:126:0x02f6, B:128:0x02ff, B:130:0x0307, B:132:0x030d, B:134:0x0311, B:136:0x0317, B:139:0x0320, B:144:0x033e, B:146:0x0348, B:148:0x035a, B:152:0x0364, B:154:0x0370, B:156:0x0374, B:158:0x0380, B:160:0x038c, B:162:0x0392, B:164:0x0398, B:167:0x03af, B:169:0x03bb, B:173:0x03c8, B:176:0x03d9, B:170:0x03be, B:172:0x03c6, B:166:0x03a2, B:100:0x0250), top: B:218:0x00ab }] */
    /* JADX WARN: Code duplicated, block: B:97:0x0230 A[Catch: all -> 0x00d7, LOOP:1: B:95:0x022a->B:97:0x0230, LOOP_END, TryCatch #0 {all -> 0x00d7, blocks: (B:38:0x00ab, B:40:0x00af, B:41:0x00ba, B:43:0x00c0, B:46:0x00cf, B:48:0x00d3, B:53:0x00df, B:55:0x00ef, B:57:0x00f7, B:59:0x0111, B:61:0x0119, B:63:0x012f, B:65:0x013b, B:67:0x013f, B:68:0x0141, B:71:0x015b, B:73:0x016f, B:75:0x0178, B:77:0x01b9, B:79:0x01bd, B:80:0x01c8, B:82:0x01d2, B:84:0x01ea, B:86:0x01f2, B:88:0x01fc, B:90:0x0202, B:92:0x020b, B:94:0x0215, B:95:0x022a, B:97:0x0230, B:101:0x0259, B:103:0x025d, B:105:0x0266, B:107:0x026a, B:108:0x026c, B:110:0x0278, B:112:0x029b, B:114:0x029f, B:116:0x02c7, B:118:0x02cb, B:120:0x02e5, B:122:0x02e9, B:124:0x02f2, B:126:0x02f6, B:128:0x02ff, B:130:0x0307, B:132:0x030d, B:134:0x0311, B:136:0x0317, B:139:0x0320, B:144:0x033e, B:146:0x0348, B:148:0x035a, B:152:0x0364, B:154:0x0370, B:156:0x0374, B:158:0x0380, B:160:0x038c, B:162:0x0392, B:164:0x0398, B:167:0x03af, B:169:0x03bb, B:173:0x03c8, B:176:0x03d9, B:170:0x03be, B:172:0x03c6, B:166:0x03a2, B:100:0x0250), top: B:218:0x00ab }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r75v0, types: [com.vuitton.android.data.repository.AppConfigRepositoryImpl] */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2, types: [long] */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v31 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v47 */
    /* JADX WARN: Type inference failed for: r7v48 */
    /* JADX WARN: Type inference failed for: r7v5 */
    @Override // com.vuitton.android.domain.repository.AppConfigRepository
    public final Object e(long j2, String str, ContinuationImpl continuationImpl) throws Throwable {
        AppConfigRepositoryImpl$getAppConfig$1 appConfigRepositoryImpl$getAppConfig$1;
        String str2;
        long j3;
        Object objF;
        String str3;
        Object obj;
        long j4;
        Throwable thA;
        ?? r7;
        Object failure;
        Throwable thA2;
        AppConfig appConfig;
        Object objG;
        AppConfig appConfig2;
        Object obj2;
        AppConfigDto appConfigDto;
        Object failure2;
        ?? r8;
        Throwable thA3;
        List list;
        ArrayList arrayList;
        String strB;
        String strB2;
        AICompanionConfigDto aICompanionConfigDto;
        AICompanionConfig aICompanionConfig;
        String strB3;
        String strB4;
        String strB5;
        List list2;
        List list3;
        String str4;
        String strB6;
        String strB7;
        String strB8;
        String strB9;
        String str5;
        String str6;
        String str7;
        String str8;
        String str9;
        Boolean bool;
        boolean zBooleanValue;
        DistantRepairsConfig distantRepairsConfigB;
        String strB10;
        String strB11;
        String strB12;
        FeaturesConfig featuresConfigC;
        FeedConfig feedConfig;
        String strB13;
        String string;
        String str10;
        String strB14;
        String strB15;
        String str11;
        String strB16;
        String strB17;
        String strB18;
        Boolean bool2;
        boolean zBooleanValue2;
        List list4;
        String str12;
        List list5;
        Boolean bool3;
        boolean zBooleanValue3;
        List list6;
        NativeCartConfigDto nativeCartConfigDto;
        NativeCartConfig nativeCartConfig;
        HelpConfigDto helpConfigDto;
        HelpConfig helpConfig;
        ServicesConfigDto servicesConfigDto;
        ServicesConfig servicesConfig;
        Boolean bool4;
        boolean zBooleanValue4;
        Boolean bool5;
        boolean zBooleanValue5;
        Boolean bool6;
        boolean zBooleanValue6;
        Boolean bool7;
        boolean zBooleanValue7;
        PowerFrontConfigDto powerFrontConfigDto;
        String str13;
        PowerFrontConfig powerFrontConfig;
        VirtualStudioConfigDto virtualStudioConfigDto;
        VirtualStudioConfig virtualStudioConfig;
        PersonalSelectionsConfigDto personalSelectionsConfigDto;
        PersonalSelectionsConfig personalSelectionsConfig;
        AddressAutocompleteConfigDto addressAutocompleteConfigDto;
        AddressAutocompleteConfig addressAutocompleteConfig;
        String str14;
        PersonalisationConfig personalisationConfig;
        Region region;
        Boolean bool8;
        boolean zBooleanValue8;
        String str15;
        String str16;
        String str17;
        ArrayList arrayList2;
        Iterator it;
        AICompanionOnboardingDto aICompanionOnboardingDto;
        AICompanionOnboarding aICompanionOnboarding;
        ArrayList arrayList3;
        Iterator it2;
        Object objD;
        AbTest abTest;
        if (continuationImpl instanceof AppConfigRepositoryImpl$getAppConfig$1) {
            appConfigRepositoryImpl$getAppConfig$1 = (AppConfigRepositoryImpl$getAppConfig$1) continuationImpl;
            int i2 = appConfigRepositoryImpl$getAppConfig$1.g;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                appConfigRepositoryImpl$getAppConfig$1.g = i2 - Integer.MIN_VALUE;
            } else {
                appConfigRepositoryImpl$getAppConfig$1 = new AppConfigRepositoryImpl$getAppConfig$1(this, continuationImpl);
            }
        } else {
            appConfigRepositoryImpl$getAppConfig$1 = new AppConfigRepositoryImpl$getAppConfig$1(this, continuationImpl);
        }
        Object obj3 = appConfigRepositoryImpl$getAppConfig$1.f47230e;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = appConfigRepositoryImpl$getAppConfig$1.g;
        ?? r9 = 1;
        if (i3 == 0) {
            ResultKt.b(obj3);
            str2 = str;
            appConfigRepositoryImpl$getAppConfig$1.f47228b = str2;
            j3 = j2;
            appConfigRepositoryImpl$getAppConfig$1.d = j3;
            appConfigRepositoryImpl$getAppConfig$1.g = 1;
            objF = f(appConfigRepositoryImpl$getAppConfig$1);
            if (objF != coroutineSingletons) {
            }
            return coroutineSingletons;
        }
        if (i3 == 1) {
            j3 = appConfigRepositoryImpl$getAppConfig$1.d;
            String str18 = appConfigRepositoryImpl$getAppConfig$1.f47228b;
            ResultKt.b(obj3);
            objF = ((Result) obj3).f71708b;
            str2 = str18;
        } else {
            if (i3 == 2) {
                j3 = appConfigRepositoryImpl$getAppConfig$1.d;
                str3 = appConfigRepositoryImpl$getAppConfig$1.f47228b;
                ResultKt.b(obj3);
                obj = ((Result) obj3).f71708b;
                j4 = j3;
                thA = Result.a(obj);
                if (thA == null) {
                    ResultKt.b(obj);
                    appConfigDto = (AppConfigDto) obj;
                    appConfigDto.getClass();
                    try {
                        list = appConfigDto.f45380a;
                        if (list != null) {
                            arrayList3 = new ArrayList();
                            it2 = list.iterator();
                            while (it2.hasNext()) {
                                objD = AppConfigMapperKt.d((AbTestDto) it2.next());
                                if (objD instanceof Result.Failure) {
                                    objD = null;
                                }
                                abTest = (AbTest) objD;
                                if (abTest != null) {
                                    arrayList3.add(abTest);
                                }
                            }
                            arrayList = arrayList3;
                        } else {
                            arrayList = null;
                        }
                        strB = StringExtKt.b(appConfigDto.g);
                        strB2 = StringExtKt.b(appConfigDto.f45385h);
                        aICompanionConfigDto = appConfigDto.f45381b;
                        if (aICompanionConfigDto != null) {
                            List list7 = aICompanionConfigDto.f45367a;
                            aICompanionOnboardingDto = aICompanionConfigDto.f45368b;
                            if (aICompanionOnboardingDto != null) {
                                String str19 = aICompanionOnboardingDto.f45370a;
                                FeatureTheme featureThemeA = FeatureThemeMapperKt.a(aICompanionOnboardingDto.f45371b);
                                Object objC = AssetMapperKt.c(aICompanionOnboardingDto.f45372c);
                                ResultKt.b(objC);
                                aICompanionOnboarding = new AICompanionOnboarding(str19, featureThemeA, (AssetVideo) objC);
                            } else {
                                aICompanionOnboarding = null;
                            }
                            aICompanionConfig = new AICompanionConfig(list7, aICompanionOnboarding);
                        } else {
                            aICompanionConfig = null;
                        }
                        strB3 = StringExtKt.b(StringKtExtKt.a(appConfigDto.f45386i));
                        strB4 = StringExtKt.b(StringKtExtKt.a(appConfigDto.f45383e));
                        try {
                            if (strB4 != null) {
                                throw new MappingException("Unable to map the app config: InvalidBffBaseUrl");
                            }
                            strB5 = StringExtKt.b(StringKtExtKt.a(appConfigDto.f45384f));
                            if (strB5 != null) {
                                throw new MappingException("Unable to map the app config: InvalidAtgRootUrl");
                            }
                            list2 = appConfigDto.f45387j;
                            if (list2 == null) {
                                list2 = EmptyList.f71768b;
                            }
                            list3 = list2;
                            str4 = appConfigDto.f45388k;
                            strB6 = StringExtKt.b(appConfigDto.l);
                            strB7 = StringExtKt.b(appConfigDto.m);
                            strB8 = StringExtKt.b(appConfigDto.n);
                            if (strB8 != null) {
                                throw new MappingException("Unable to map the app config: InvalidLegalPrivacyUrl");
                            }
                            strB9 = StringExtKt.b(appConfigDto.o);
                            str5 = appConfigDto.p;
                            str6 = appConfigDto.q;
                            str7 = appConfigDto.r;
                            str8 = appConfigDto.s;
                            str9 = appConfigDto.t;
                            bool = appConfigDto.u;
                            if (bool != null) {
                                zBooleanValue = bool.booleanValue();
                            } else {
                                zBooleanValue = false;
                            }
                            distantRepairsConfigB = AppConfigMapperKt.b(appConfigDto.v);
                            strB10 = StringExtKt.b(StringKtExtKt.a(appConfigDto.w));
                            strB11 = StringExtKt.b(StringKtExtKt.a(appConfigDto.x));
                            strB12 = StringExtKt.b(StringKtExtKt.a(appConfigDto.y));
                            featuresConfigC = AppConfigMapperKt.c(appConfigDto.z);
                            feedConfig = new FeedConfig(FeatureThemeMapperKt.a(appConfigDto.A.f45415a));
                            strB13 = StringExtKt.b(appConfigDto.f45382c);
                            if (strB13 != null) {
                                throw new MappingException("Unable to map the app config: InvalidLegalPrivacyUrl");
                            }
                            string = appConfigDto.B;
                            if (string == null) {
                                string = Locale.getDefault().toString();
                                string.getClass();
                            }
                            str10 = string;
                            strB14 = StringExtKt.b(appConfigDto.C);
                            if (strB14 != null) {
                                throw new MappingException("Unable to map the app config: InvalidLvWebSiteUrl");
                            }
                            strB15 = StringExtKt.b(appConfigDto.D);
                            str11 = appConfigDto.E;
                            strB16 = StringExtKt.b(StringKtExtKt.a(appConfigDto.d));
                            if (strB16 != null) {
                                throw new MappingException("Unable to map the app config: InvalidSalesforceRootUrl");
                            }
                            strB17 = StringExtKt.b(appConfigDto.F);
                            if (strB17 != null) {
                                throw new MappingException("Unable to map the app config: InvalidShareAppUrl");
                            }
                            strB18 = StringExtKt.b(appConfigDto.G);
                            if (strB18 != null) {
                                throw new MappingException("Unable to map the app config: InvalidStoreLocatorUrl");
                            }
                            bool2 = appConfigDto.H;
                            if (bool2 != null) {
                                zBooleanValue2 = bool2.booleanValue();
                            } else {
                                zBooleanValue2 = false;
                            }
                            String strB19 = StringExtKt.b(appConfigDto.I);
                            list4 = appConfigDto.J;
                            if (list4 != null) {
                                List list8 = list4;
                                arrayList2 = new ArrayList(CollectionsKt.t(list8, 10));
                                it = list8.iterator();
                                while (it.hasNext()) {
                                    UrlCatchingConfigDto urlCatchingConfigDto = (UrlCatchingConfigDto) it.next();
                                    arrayList2.add(new UrlCatchingConfig(urlCatchingConfigDto.f45441a, urlCatchingConfigDto.f45442b));
                                    it = it;
                                    strB13 = strB13;
                                }
                                str12 = strB13;
                                list5 = arrayList2;
                            } else {
                                str12 = strB13;
                                list5 = EmptyList.f71768b;
                            }
                            List list9 = list5;
                            bool3 = appConfigDto.K;
                            if (bool3 != null) {
                                zBooleanValue3 = bool3.booleanValue();
                            } else {
                                zBooleanValue3 = false;
                            }
                            list6 = appConfigDto.L;
                            if (list6 == null) {
                                list6 = EmptyList.f71768b;
                            }
                            List list10 = list6;
                            CertificateConfig certificateConfigA = AppConfigMapperKt.a(appConfigDto.M);
                            nativeCartConfigDto = appConfigDto.N;
                            if (nativeCartConfigDto != null) {
                                nativeCartConfig = new NativeCartConfig(new NativeCartConfig.CommercialNotification(nativeCartConfigDto.f45423b, nativeCartConfigDto.f45424c, nativeCartConfigDto.d), StringExtKt.b(nativeCartConfigDto.f45425e));
                            } else {
                                nativeCartConfig = null;
                            }
                            helpConfigDto = appConfigDto.P;
                            if (helpConfigDto != null) {
                                helpConfig = new HelpConfig(StringExtKt.b(helpConfigDto.f45417a), StringExtKt.b(helpConfigDto.f45418b), StringExtKt.b(helpConfigDto.f45419c), StringExtKt.b(helpConfigDto.d), StringExtKt.b(helpConfigDto.f45420e));
                            } else {
                                helpConfig = null;
                            }
                            servicesConfigDto = appConfigDto.Q;
                            if (servicesConfigDto != null) {
                                servicesConfig = new ServicesConfig(StringExtKt.b(servicesConfigDto.f45437a), StringExtKt.b(servicesConfigDto.f45438b), servicesConfigDto.f45439c, servicesConfigDto.d);
                            } else {
                                servicesConfig = null;
                            }
                            bool4 = appConfigDto.R;
                            if (bool4 != null) {
                                zBooleanValue4 = bool4.booleanValue();
                            } else {
                                zBooleanValue4 = false;
                            }
                            bool5 = appConfigDto.S;
                            if (bool5 != null) {
                                zBooleanValue5 = bool5.booleanValue();
                            } else {
                                zBooleanValue5 = false;
                            }
                            VatIncludedConfigDto vatIncludedConfigDto = appConfigDto.T;
                            bool6 = vatIncludedConfigDto.f45444a;
                            if (bool6 != null) {
                                zBooleanValue6 = bool6.booleanValue();
                            } else {
                                zBooleanValue6 = false;
                            }
                            bool7 = vatIncludedConfigDto.f45445b;
                            if (bool7 != null) {
                                zBooleanValue7 = bool7.booleanValue();
                            } else {
                                zBooleanValue7 = false;
                            }
                            VatIncludedConfig vatIncludedConfig = new VatIncludedConfig(zBooleanValue6, zBooleanValue7);
                            powerFrontConfigDto = appConfigDto.U;
                            str13 = "";
                            if (powerFrontConfigDto != null) {
                                String str20 = powerFrontConfigDto.f45432a;
                                String str21 = powerFrontConfigDto.f45433b;
                                String str22 = powerFrontConfigDto.f45434c;
                                String str23 = powerFrontConfigDto.d;
                                str16 = powerFrontConfigDto.f45435e;
                                if (str16 == null) {
                                    str17 = "";
                                } else {
                                    str17 = str16;
                                }
                                powerFrontConfig = new PowerFrontConfig(str20, str21, str22, str23, str17);
                            } else {
                                powerFrontConfig = null;
                            }
                            String strB20 = StringExtKt.b(appConfigDto.W);
                            String strB21 = StringExtKt.b(appConfigDto.V);
                            String str24 = appConfigDto.X;
                            virtualStudioConfigDto = appConfigDto.Y;
                            if (virtualStudioConfigDto != null) {
                                str15 = virtualStudioConfigDto.f45447a.f45241b;
                                if (str15 == null) {
                                    str13 = str15;
                                }
                                virtualStudioConfig = new VirtualStudioConfig(str13, virtualStudioConfigDto.f45448b, virtualStudioConfigDto.f45449c);
                            } else {
                                virtualStudioConfig = null;
                            }
                            personalSelectionsConfigDto = appConfigDto.Z;
                            if (personalSelectionsConfigDto != null) {
                                personalSelectionsConfig = new PersonalSelectionsConfig(personalSelectionsConfigDto.f45427a);
                            } else {
                                personalSelectionsConfig = null;
                            }
                            String str25 = appConfigDto.a0;
                            String str26 = appConfigDto.b0;
                            String str27 = appConfigDto.c0;
                            addressAutocompleteConfigDto = appConfigDto.d0;
                            if (addressAutocompleteConfigDto != null) {
                                bool8 = addressAutocompleteConfigDto.f45378a;
                                if (bool8 != null) {
                                    zBooleanValue8 = bool8.booleanValue();
                                } else {
                                    zBooleanValue8 = true;
                                }
                                addressAutocompleteConfig = new AddressAutocompleteConfig(zBooleanValue8);
                            } else {
                                addressAutocompleteConfig = new AddressAutocompleteConfig(false, 1, null);
                            }
                            AddressAutocompleteConfig addressAutocompleteConfig2 = addressAutocompleteConfig;
                            PersonalisationConfigDto personalisationConfigDto = appConfigDto.e0;
                            str14 = personalisationConfigDto.f45430b;
                            if (Intrinsics.c(str14, "eu")) {
                                region = Region.EU;
                            } else {
                                if (Intrinsics.c(str14, "us")) {
                                    region = Region.US;
                                } else {
                                    personalisationConfig = null;
                                }
                                AppConfig appConfig3 = new AppConfig(arrayList, featuresConfigC, strB8, str12, strB14, strB17, strB18, strB, strB2, aICompanionConfig, strB6, strB7, strB9, strB15, strB19, strB20, str25, str26, str27, strB4, strB5, strB16, strB3, strB10, strB11, strB12, zBooleanValue3, str10, str11, list3, list10, nativeCartConfig, certificateConfigA, feedConfig, helpConfig, str5, str6, str7, str8, str9, str4, zBooleanValue, distantRepairsConfigB, servicesConfig, strB21, virtualStudioConfig, personalSelectionsConfig, personalisationConfig, zBooleanValue2, list9, zBooleanValue4, zBooleanValue5, vatIncludedConfig, powerFrontConfig, str24, addressAutocompleteConfig2, j4);
                                r8 = j4;
                                failure2 = new Result(appConfig3);
                                thA3 = Result.a(failure2);
                                if (thA3 != null) {
                                    if (thA3 instanceof CancellationException) {
                                        throw thA3;
                                    }
                                    failure2 = new Result(new Result.Failure(thA3));
                                }
                                failure = ((Result) failure2).f71708b;
                                r7 = r8;
                            }
                            personalisationConfig = new PersonalisationConfig(personalisationConfigDto.f45429a, region);
                            AppConfig appConfig4 = new AppConfig(arrayList, featuresConfigC, strB8, str12, strB14, strB17, strB18, strB, strB2, aICompanionConfig, strB6, strB7, strB9, strB15, strB19, strB20, str25, str26, str27, strB4, strB5, strB16, strB3, strB10, strB11, strB12, zBooleanValue3, str10, str11, list3, list10, nativeCartConfig, certificateConfigA, feedConfig, helpConfig, str5, str6, str7, str8, str9, str4, zBooleanValue, distantRepairsConfigB, servicesConfig, strB21, virtualStudioConfig, personalSelectionsConfig, personalisationConfig, zBooleanValue2, list9, zBooleanValue4, zBooleanValue5, vatIncludedConfig, powerFrontConfig, str24, addressAutocompleteConfig2, j4);
                            r8 = j4;
                            failure2 = new Result(appConfig4);
                            thA3 = Result.a(failure2);
                            if (thA3 != null) {
                                if (thA3 instanceof CancellationException) {
                                    throw thA3;
                                }
                                failure2 = new Result(new Result.Failure(thA3));
                            }
                            failure = ((Result) failure2).f71708b;
                            r7 = r8;
                        } catch (Throwable th) {
                            th = th;
                            Result.Companion companion = Result.INSTANCE;
                            failure2 = new Result.Failure(th);
                            r8 = r9;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        r9 = j4;
                    }
                } else {
                    r7 = j4;
                    failure = new Result.Failure(thA);
                }
                thA2 = Result.a(failure);
                if (thA2 == null) {
                    return new Result.Failure(thA2);
                }
                ResultKt.b(failure);
                appConfig = (AppConfig) failure;
                appConfigRepositoryImpl$getAppConfig$1.f47228b = null;
                appConfigRepositoryImpl$getAppConfig$1.f47229c = appConfig;
                appConfigRepositoryImpl$getAppConfig$1.d = r7;
                appConfigRepositoryImpl$getAppConfig$1.g = 3;
                objG = g(appConfig, str3, appConfigRepositoryImpl$getAppConfig$1);
                if (objG != coroutineSingletons) {
                    appConfig2 = appConfig;
                    obj2 = objG;
                }
                return coroutineSingletons;
            }
            if (i3 != 3) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            appConfig2 = appConfigRepositoryImpl$getAppConfig$1.f47229c;
            ResultKt.b(obj3);
            obj2 = ((Result) obj3).f71708b;
        }
        Result.Companion companion2 = Result.INSTANCE;
        if (!(obj2 instanceof Result.Failure)) {
            return obj2;
        }
        return appConfig2;
        Result.Companion companion3 = Result.INSTANCE;
        AppConfig appConfig5 = (AppConfig) (objF instanceof Result.Failure ? null : objF);
        if (appConfig5 != null && appConfig5.e0 == j3) {
            return objF;
        }
        appConfigRepositoryImpl$getAppConfig$1.f47228b = str2;
        appConfigRepositoryImpl$getAppConfig$1.d = j3;
        appConfigRepositoryImpl$getAppConfig$1.g = 2;
        Object objA = this.f47221a.a(j3, appConfigRepositoryImpl$getAppConfig$1);
        if (objA != coroutineSingletons) {
            str3 = str2;
            obj = objA;
            j4 = j3;
            thA = Result.a(obj);
            if (thA == null) {
                ResultKt.b(obj);
                appConfigDto = (AppConfigDto) obj;
                appConfigDto.getClass();
                list = appConfigDto.f45380a;
                if (list != null) {
                    arrayList3 = new ArrayList();
                    it2 = list.iterator();
                    while (it2.hasNext()) {
                        objD = AppConfigMapperKt.d((AbTestDto) it2.next());
                        if (objD instanceof Result.Failure) {
                            objD = null;
                        }
                        abTest = (AbTest) objD;
                        if (abTest != null) {
                            arrayList3.add(abTest);
                        }
                    }
                    arrayList = arrayList3;
                } else {
                    arrayList = null;
                }
                strB = StringExtKt.b(appConfigDto.g);
                strB2 = StringExtKt.b(appConfigDto.f45385h);
                aICompanionConfigDto = appConfigDto.f45381b;
                if (aICompanionConfigDto != null) {
                    List list11 = aICompanionConfigDto.f45367a;
                    aICompanionOnboardingDto = aICompanionConfigDto.f45368b;
                    if (aICompanionOnboardingDto != null) {
                        String str110 = aICompanionOnboardingDto.f45370a;
                        FeatureTheme featureThemeA2 = FeatureThemeMapperKt.a(aICompanionOnboardingDto.f45371b);
                        Object objC2 = AssetMapperKt.c(aICompanionOnboardingDto.f45372c);
                        ResultKt.b(objC2);
                        aICompanionOnboarding = new AICompanionOnboarding(str110, featureThemeA2, (AssetVideo) objC2);
                    } else {
                        aICompanionOnboarding = null;
                    }
                    aICompanionConfig = new AICompanionConfig(list11, aICompanionOnboarding);
                } else {
                    aICompanionConfig = null;
                }
                strB3 = StringExtKt.b(StringKtExtKt.a(appConfigDto.f45386i));
                strB4 = StringExtKt.b(StringKtExtKt.a(appConfigDto.f45383e));
                if (strB4 != null) {
                    throw new MappingException("Unable to map the app config: InvalidBffBaseUrl");
                }
                strB5 = StringExtKt.b(StringKtExtKt.a(appConfigDto.f45384f));
                if (strB5 != null) {
                    throw new MappingException("Unable to map the app config: InvalidAtgRootUrl");
                }
                list2 = appConfigDto.f45387j;
                if (list2 == null) {
                    list2 = EmptyList.f71768b;
                }
                list3 = list2;
                str4 = appConfigDto.f45388k;
                strB6 = StringExtKt.b(appConfigDto.l);
                strB7 = StringExtKt.b(appConfigDto.m);
                strB8 = StringExtKt.b(appConfigDto.n);
                if (strB8 != null) {
                    throw new MappingException("Unable to map the app config: InvalidLegalPrivacyUrl");
                }
                strB9 = StringExtKt.b(appConfigDto.o);
                str5 = appConfigDto.p;
                str6 = appConfigDto.q;
                str7 = appConfigDto.r;
                str8 = appConfigDto.s;
                str9 = appConfigDto.t;
                bool = appConfigDto.u;
                if (bool != null) {
                    zBooleanValue = bool.booleanValue();
                } else {
                    zBooleanValue = false;
                }
                distantRepairsConfigB = AppConfigMapperKt.b(appConfigDto.v);
                strB10 = StringExtKt.b(StringKtExtKt.a(appConfigDto.w));
                strB11 = StringExtKt.b(StringKtExtKt.a(appConfigDto.x));
                strB12 = StringExtKt.b(StringKtExtKt.a(appConfigDto.y));
                featuresConfigC = AppConfigMapperKt.c(appConfigDto.z);
                feedConfig = new FeedConfig(FeatureThemeMapperKt.a(appConfigDto.A.f45415a));
                strB13 = StringExtKt.b(appConfigDto.f45382c);
                if (strB13 != null) {
                    throw new MappingException("Unable to map the app config: InvalidLegalPrivacyUrl");
                }
                string = appConfigDto.B;
                if (string == null) {
                    string = Locale.getDefault().toString();
                    string.getClass();
                }
                str10 = string;
                strB14 = StringExtKt.b(appConfigDto.C);
                if (strB14 != null) {
                    throw new MappingException("Unable to map the app config: InvalidLvWebSiteUrl");
                }
                strB15 = StringExtKt.b(appConfigDto.D);
                str11 = appConfigDto.E;
                strB16 = StringExtKt.b(StringKtExtKt.a(appConfigDto.d));
                if (strB16 != null) {
                    throw new MappingException("Unable to map the app config: InvalidSalesforceRootUrl");
                }
                strB17 = StringExtKt.b(appConfigDto.F);
                if (strB17 != null) {
                    throw new MappingException("Unable to map the app config: InvalidShareAppUrl");
                }
                strB18 = StringExtKt.b(appConfigDto.G);
                if (strB18 != null) {
                    throw new MappingException("Unable to map the app config: InvalidStoreLocatorUrl");
                }
                bool2 = appConfigDto.H;
                if (bool2 != null) {
                    zBooleanValue2 = bool2.booleanValue();
                } else {
                    zBooleanValue2 = false;
                }
                String strB110 = StringExtKt.b(appConfigDto.I);
                list4 = appConfigDto.J;
                if (list4 != null) {
                    List list12 = list4;
                    arrayList2 = new ArrayList(CollectionsKt.t(list12, 10));
                    it = list12.iterator();
                    while (it.hasNext()) {
                        UrlCatchingConfigDto urlCatchingConfigDto2 = (UrlCatchingConfigDto) it.next();
                        arrayList2.add(new UrlCatchingConfig(urlCatchingConfigDto2.f45441a, urlCatchingConfigDto2.f45442b));
                        it = it;
                        strB13 = strB13;
                    }
                    str12 = strB13;
                    list5 = arrayList2;
                } else {
                    str12 = strB13;
                    list5 = EmptyList.f71768b;
                }
                List list13 = list5;
                bool3 = appConfigDto.K;
                if (bool3 != null) {
                    zBooleanValue3 = bool3.booleanValue();
                } else {
                    zBooleanValue3 = false;
                }
                list6 = appConfigDto.L;
                if (list6 == null) {
                    list6 = EmptyList.f71768b;
                }
                List list14 = list6;
                CertificateConfig certificateConfigA2 = AppConfigMapperKt.a(appConfigDto.M);
                nativeCartConfigDto = appConfigDto.N;
                if (nativeCartConfigDto != null) {
                    nativeCartConfig = new NativeCartConfig(new NativeCartConfig.CommercialNotification(nativeCartConfigDto.f45423b, nativeCartConfigDto.f45424c, nativeCartConfigDto.d), StringExtKt.b(nativeCartConfigDto.f45425e));
                } else {
                    nativeCartConfig = null;
                }
                helpConfigDto = appConfigDto.P;
                if (helpConfigDto != null) {
                    helpConfig = new HelpConfig(StringExtKt.b(helpConfigDto.f45417a), StringExtKt.b(helpConfigDto.f45418b), StringExtKt.b(helpConfigDto.f45419c), StringExtKt.b(helpConfigDto.d), StringExtKt.b(helpConfigDto.f45420e));
                } else {
                    helpConfig = null;
                }
                servicesConfigDto = appConfigDto.Q;
                if (servicesConfigDto != null) {
                    servicesConfig = new ServicesConfig(StringExtKt.b(servicesConfigDto.f45437a), StringExtKt.b(servicesConfigDto.f45438b), servicesConfigDto.f45439c, servicesConfigDto.d);
                } else {
                    servicesConfig = null;
                }
                bool4 = appConfigDto.R;
                if (bool4 != null) {
                    zBooleanValue4 = bool4.booleanValue();
                } else {
                    zBooleanValue4 = false;
                }
                bool5 = appConfigDto.S;
                if (bool5 != null) {
                    zBooleanValue5 = bool5.booleanValue();
                } else {
                    zBooleanValue5 = false;
                }
                VatIncludedConfigDto vatIncludedConfigDto2 = appConfigDto.T;
                bool6 = vatIncludedConfigDto2.f45444a;
                if (bool6 != null) {
                    zBooleanValue6 = bool6.booleanValue();
                } else {
                    zBooleanValue6 = false;
                }
                bool7 = vatIncludedConfigDto2.f45445b;
                if (bool7 != null) {
                    zBooleanValue7 = bool7.booleanValue();
                } else {
                    zBooleanValue7 = false;
                }
                VatIncludedConfig vatIncludedConfig2 = new VatIncludedConfig(zBooleanValue6, zBooleanValue7);
                powerFrontConfigDto = appConfigDto.U;
                str13 = "";
                if (powerFrontConfigDto != null) {
                    String str28 = powerFrontConfigDto.f45432a;
                    String str29 = powerFrontConfigDto.f45433b;
                    String str210 = powerFrontConfigDto.f45434c;
                    String str211 = powerFrontConfigDto.d;
                    str16 = powerFrontConfigDto.f45435e;
                    if (str16 == null) {
                        str17 = "";
                    } else {
                        str17 = str16;
                    }
                    powerFrontConfig = new PowerFrontConfig(str28, str29, str210, str211, str17);
                } else {
                    powerFrontConfig = null;
                }
                String strB22 = StringExtKt.b(appConfigDto.W);
                String strB23 = StringExtKt.b(appConfigDto.V);
                String str212 = appConfigDto.X;
                virtualStudioConfigDto = appConfigDto.Y;
                if (virtualStudioConfigDto != null) {
                    str15 = virtualStudioConfigDto.f45447a.f45241b;
                    if (str15 == null) {
                        str13 = str15;
                    }
                    virtualStudioConfig = new VirtualStudioConfig(str13, virtualStudioConfigDto.f45448b, virtualStudioConfigDto.f45449c);
                } else {
                    virtualStudioConfig = null;
                }
                personalSelectionsConfigDto = appConfigDto.Z;
                if (personalSelectionsConfigDto != null) {
                    personalSelectionsConfig = new PersonalSelectionsConfig(personalSelectionsConfigDto.f45427a);
                } else {
                    personalSelectionsConfig = null;
                }
                String str213 = appConfigDto.a0;
                String str214 = appConfigDto.b0;
                String str215 = appConfigDto.c0;
                addressAutocompleteConfigDto = appConfigDto.d0;
                if (addressAutocompleteConfigDto != null) {
                    bool8 = addressAutocompleteConfigDto.f45378a;
                    if (bool8 != null) {
                        zBooleanValue8 = bool8.booleanValue();
                    } else {
                        zBooleanValue8 = true;
                    }
                    addressAutocompleteConfig = new AddressAutocompleteConfig(zBooleanValue8);
                } else {
                    addressAutocompleteConfig = new AddressAutocompleteConfig(false, 1, null);
                }
                AddressAutocompleteConfig addressAutocompleteConfig3 = addressAutocompleteConfig;
                PersonalisationConfigDto personalisationConfigDto2 = appConfigDto.e0;
                str14 = personalisationConfigDto2.f45430b;
                if (Intrinsics.c(str14, "eu")) {
                    region = Region.EU;
                } else {
                    if (Intrinsics.c(str14, "us")) {
                        region = Region.US;
                    } else {
                        personalisationConfig = null;
                    }
                    AppConfig appConfig6 = new AppConfig(arrayList, featuresConfigC, strB8, str12, strB14, strB17, strB18, strB, strB2, aICompanionConfig, strB6, strB7, strB9, strB15, strB110, strB22, str213, str214, str215, strB4, strB5, strB16, strB3, strB10, strB11, strB12, zBooleanValue3, str10, str11, list3, list14, nativeCartConfig, certificateConfigA2, feedConfig, helpConfig, str5, str6, str7, str8, str9, str4, zBooleanValue, distantRepairsConfigB, servicesConfig, strB23, virtualStudioConfig, personalSelectionsConfig, personalisationConfig, zBooleanValue2, list13, zBooleanValue4, zBooleanValue5, vatIncludedConfig2, powerFrontConfig, str212, addressAutocompleteConfig3, j4);
                    r8 = j4;
                    failure2 = new Result(appConfig6);
                    thA3 = Result.a(failure2);
                    if (thA3 != null) {
                        if (thA3 instanceof CancellationException) {
                            throw thA3;
                        }
                        failure2 = new Result(new Result.Failure(thA3));
                    }
                    failure = ((Result) failure2).f71708b;
                    r7 = r8;
                }
                personalisationConfig = new PersonalisationConfig(personalisationConfigDto2.f45429a, region);
                AppConfig appConfig7 = new AppConfig(arrayList, featuresConfigC, strB8, str12, strB14, strB17, strB18, strB, strB2, aICompanionConfig, strB6, strB7, strB9, strB15, strB110, strB22, str213, str214, str215, strB4, strB5, strB16, strB3, strB10, strB11, strB12, zBooleanValue3, str10, str11, list3, list14, nativeCartConfig, certificateConfigA2, feedConfig, helpConfig, str5, str6, str7, str8, str9, str4, zBooleanValue, distantRepairsConfigB, servicesConfig, strB23, virtualStudioConfig, personalSelectionsConfig, personalisationConfig, zBooleanValue2, list13, zBooleanValue4, zBooleanValue5, vatIncludedConfig2, powerFrontConfig, str212, addressAutocompleteConfig3, j4);
                r8 = j4;
                failure2 = new Result(appConfig7);
                thA3 = Result.a(failure2);
                if (thA3 != null) {
                    if (thA3 instanceof CancellationException) {
                        throw thA3;
                    }
                    failure2 = new Result(new Result.Failure(thA3));
                }
                failure = ((Result) failure2).f71708b;
                r7 = r8;
                Result.Companion companion4 = Result.INSTANCE;
                failure2 = new Result.Failure(th);
                r8 = r9;
                thA3 = Result.a(failure2);
                if (thA3 != null) {
                    if (thA3 instanceof CancellationException) {
                        throw thA3;
                    }
                    failure2 = new Result(new Result.Failure(thA3));
                }
                failure = ((Result) failure2).f71708b;
                r7 = r8;
            } else {
                r7 = j4;
                failure = new Result.Failure(thA);
            }
            thA2 = Result.a(failure);
            if (thA2 == null) {
                return new Result.Failure(thA2);
            }
            ResultKt.b(failure);
            appConfig = (AppConfig) failure;
            appConfigRepositoryImpl$getAppConfig$1.f47228b = null;
            appConfigRepositoryImpl$getAppConfig$1.f47229c = appConfig;
            appConfigRepositoryImpl$getAppConfig$1.d = r7;
            appConfigRepositoryImpl$getAppConfig$1.g = 3;
            objG = g(appConfig, str3, appConfigRepositoryImpl$getAppConfig$1);
            if (objG != coroutineSingletons) {
                appConfig2 = appConfig;
                obj2 = objG;
                Result.Companion companion5 = Result.INSTANCE;
                if (!(obj2 instanceof Result.Failure)) {
                    return obj2;
                }
                return appConfig2;
            }
        }
        return coroutineSingletons;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object f(ContinuationImpl continuationImpl) {
        AppConfigRepositoryImpl$getAppConfigFromCache$1 appConfigRepositoryImpl$getAppConfigFromCache$1;
        if (continuationImpl instanceof AppConfigRepositoryImpl$getAppConfigFromCache$1) {
            appConfigRepositoryImpl$getAppConfigFromCache$1 = (AppConfigRepositoryImpl$getAppConfigFromCache$1) continuationImpl;
            int i2 = appConfigRepositoryImpl$getAppConfigFromCache$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                appConfigRepositoryImpl$getAppConfigFromCache$1.d = i2 - Integer.MIN_VALUE;
            } else {
                appConfigRepositoryImpl$getAppConfigFromCache$1 = new AppConfigRepositoryImpl$getAppConfigFromCache$1(this, continuationImpl);
            }
        } else {
            appConfigRepositoryImpl$getAppConfigFromCache$1 = new AppConfigRepositoryImpl$getAppConfigFromCache$1(this, continuationImpl);
        }
        Object obj = appConfigRepositoryImpl$getAppConfigFromCache$1.f47232b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = appConfigRepositoryImpl$getAppConfigFromCache$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            appConfigRepositoryImpl$getAppConfigFromCache$1.d = 1;
            Object objB = this.f47222b.b(appConfigRepositoryImpl$getAppConfigFromCache$1);
            return objB == coroutineSingletons ? coroutineSingletons : objB;
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            return ((Result) obj).f71708b;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0090  */
    /* JADX WARN: Code duplicated, block: B:38:0x00c1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:40:? A[LOOP:0: B:27:0x008a->B:40:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x006d, code lost:
    
        if (r9 == r1) goto L35;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object g(com.vuitton.foundation.model.domain.model.config.AppConfig r10, java.lang.String r11, kotlin.coroutines.jvm.internal.ContinuationImpl r12) throws java.lang.Throwable {
        /*
            r9 = this;
            boolean r0 = r12 instanceof com.vuitton.android.data.repository.AppConfigRepositoryImpl$persistAppConfig$1
            if (r0 == 0) goto L13
            r0 = r12
            com.vuitton.android.data.repository.AppConfigRepositoryImpl$persistAppConfig$1 r0 = (com.vuitton.android.data.repository.AppConfigRepositoryImpl$persistAppConfig$1) r0
            int r1 = r0.f47242j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f47242j = r1
            goto L18
        L13:
            com.vuitton.android.data.repository.AppConfigRepositoryImpl$persistAppConfig$1 r0 = new com.vuitton.android.data.repository.AppConfigRepositoryImpl$persistAppConfig$1
            r0.<init>(r9, r12)
        L18:
            java.lang.Object r12 = r0.f47240h
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.f47242j
            com.vuitton.android.data.datasource.config.AbTestLocalDataSource r3 = r9.f47223c
            r4 = 3
            r5 = 2
            r6 = 1
            r7 = 0
            if (r2 == 0) goto L5e
            if (r2 == r6) goto L52
            if (r2 == r5) goto L3d
            if (r2 != r4) goto L37
            java.lang.Object r9 = r0.d
            kotlin.ResultKt.b(r12)
            kotlin.Result r12 = (kotlin.Result) r12
            r12.getClass()
            return r9
        L37:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r9)
            return r7
        L3d:
            int r9 = r0.g
            int r10 = r0.f47239f
            java.util.Iterator r11 = r0.f47238e
            java.lang.Object r2 = r0.d
            com.vuitton.foundation.model.domain.model.config.AppConfig r6 = r0.f47237c
            java.lang.String r8 = r0.f47236b
            kotlin.ResultKt.b(r12)
            kotlin.Result r12 = (kotlin.Result) r12
            r12.getClass()
            goto L8a
        L52:
            com.vuitton.foundation.model.domain.model.config.AppConfig r10 = r0.f47237c
            java.lang.String r11 = r0.f47236b
            kotlin.ResultKt.b(r12)
            kotlin.Result r12 = (kotlin.Result) r12
            java.lang.Object r9 = r12.f71708b
            goto L70
        L5e:
            kotlin.ResultKt.b(r12)
            r0.f47236b = r11
            r0.f47237c = r10
            r0.f47242j = r6
            com.vuitton.android.data.datasource.config.AppConfigLocalDataSource r9 = r9.f47222b
            java.lang.Object r9 = r9.d(r10, r0)
            if (r9 != r1) goto L70
            goto Lc1
        L70:
            kotlin.Result$Companion r12 = kotlin.Result.INSTANCE
            boolean r12 = r9 instanceof kotlin.Result.Failure
            if (r12 != 0) goto Lc2
            r12 = r9
            kotlin.Unit r12 = (kotlin.Unit) r12
            java.util.List r12 = r10.f67230a
            r2 = 0
            if (r12 == 0) goto Laf
            java.lang.Iterable r12 = (java.lang.Iterable) r12
            java.util.Iterator r12 = r12.iterator()
            r6 = r10
            r8 = r11
            r11 = r12
            r10 = r2
            r2 = r9
            r9 = r10
        L8a:
            boolean r12 = r11.hasNext()
            if (r12 == 0) goto Lab
            java.lang.Object r12 = r11.next()
            com.vuitton.foundation.model.domain.model.config.AbTest r12 = (com.vuitton.foundation.model.domain.model.config.AbTest) r12
            r0.f47236b = r8
            r0.f47237c = r6
            r0.d = r2
            r0.f47238e = r11
            r0.f47239f = r10
            r0.g = r9
            r0.f47242j = r5
            java.lang.Object r12 = r3.d(r8, r12, r0)
            if (r12 != r1) goto L8a
            goto Lc1
        Lab:
            r9 = r2
            r11 = r8
            r2 = r10
            r10 = r6
        Laf:
            r0.f47236b = r7
            r0.f47237c = r7
            r0.d = r9
            r0.f47238e = r7
            r0.f47239f = r2
            r0.f47242j = r4
            java.lang.Object r10 = r3.a(r10, r11, r0)
            if (r10 != r1) goto Lc2
        Lc1:
            return r1
        Lc2:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.repository.AppConfigRepositoryImpl.g(com.vuitton.foundation.model.domain.model.config.AppConfig, java.lang.String, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
