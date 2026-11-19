package com.vuitton.android.data.repository;

import android.content.Context;
import com.dynamicyield.sdk.wrapper.core.DYSdk;
import com.dynamicyield.sdk.wrapper.core.enums.ChoiceType;
import com.dynamicyield.sdk.wrapper.core.enums.CurrencyType;
import com.dynamicyield.sdk.wrapper.core.enums.DataCenter;
import com.dynamicyield.sdk.wrapper.core.enums.ResultStatus;
import com.dynamicyield.sdk.wrapper.core.managers.config.ConfigManager;
import com.dynamicyield.sdk.wrapper.core.managers.endpointManager.endpointManagerImplementations.EventsManager;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.Choice;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.Payload;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.RecsData;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.RecsPayload;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.RecsSlot;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.Variation;
import com.dynamicyield.sdk.wrapper.core.models.common.DYChooseResult;
import com.dynamicyield.sdk.wrapper.core.models.common.DYResult;
import com.dynamicyield.sdk.wrapper.core.models.event.AddToCartEventProperties;
import com.dynamicyield.sdk.wrapper.core.models.event.AddToWishListEventProperties;
import com.dynamicyield.sdk.wrapper.core.models.event.CartInnerItem;
import com.dynamicyield.sdk.wrapper.core.models.event.DYEvent;
import com.dynamicyield.sdk.wrapper.core.models.event.IdentifyUserProperties;
import com.dynamicyield.sdk.wrapper.core.models.event.LoginProperties;
import com.dynamicyield.sdk.wrapper.core.models.event.PredefinedEvent;
import com.dynamicyield.sdk.wrapper.core.models.event.PurchaseEventProperties;
import com.dynamicyield.sdk.wrapper.core.models.event.RemoveFromCartEventProperties;
import com.dynamicyield.sdk.wrapper.core.models.event.SignupProperties;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.datasource.dynamicyield.DynamicYieldDataSource;
import com.vuitton.android.data.datasource.dynamicyield.DynamicYieldDataSource$special$$inlined$map$1;
import com.vuitton.android.domain.provider.environment.EnvironmentProvider;
import com.vuitton.android.domain.repository.DynamicYieldRepository;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.config.Region;
import com.vuitton.foundation.model.domain.model.dynamicyield.DYBusinessEvent;
import com.vuitton.foundation.model.domain.model.dynamicyield.DYCartItem;
import com.vuitton.foundation.model.domain.model.dynamicyield.DYRecommendation;
import com.vuitton.foundation.model.domain.model.dynamicyield.DYUserEventType;
import com.vuitton.foundation.model.domain.model.dynamicyield.DYVariation;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import dagger.hilt.android.qualifiers.ApplicationContext;
import defpackage.md;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.UInt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\fB+\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0001\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\r"}, d2 = {"Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl;", "Lcom/vuitton/android/domain/repository/DynamicYieldRepository;", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;", "environmentProvider", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "Lcom/vuitton/android/data/datasource/dynamicyield/DynamicYieldDataSource;", "dynamicYieldDataSource", "<init>", "(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;Landroid/content/Context;Lcom/vuitton/android/data/datasource/dynamicyield/DynamicYieldDataSource;)V", "Companion", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class DynamicYieldRepositoryImpl implements DynamicYieldRepository {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ int f47651h = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f47652a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final EnvironmentProvider f47653b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Context f47654c;
    public final DynamicYieldDataSource d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f47655e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f47656f;
    public final LinkedHashMap g;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$Companion;", "", "", "CUID_TYPE", "Ljava/lang/String;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f47657a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f47658b;

        static {
            int[] iArr = new int[ResultStatus.values().length];
            try {
                iArr[ResultStatus.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ResultStatus.WARNING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ResultStatus.ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f47657a = iArr;
            int[] iArr2 = new int[DYUserEventType.values().length];
            try {
                iArr2[DYUserEventType.LOGIN.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[DYUserEventType.IDENTIFY.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[DYUserEventType.SIGN_UP.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            f47658b = iArr2;
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public DynamicYieldRepositoryImpl(Logger logger, EnvironmentProvider environmentProvider, @ApplicationContext Context context, DynamicYieldDataSource dynamicYieldDataSource) {
        logger.getClass();
        environmentProvider.getClass();
        context.getClass();
        dynamicYieldDataSource.getClass();
        this.f47652a = logger;
        this.f47653b = environmentProvider;
        this.f47654c = context;
        this.d = dynamicYieldDataSource;
        this.g = new LinkedHashMap();
    }

    public static CartInnerItem o(DYCartItem dYCartItem) {
        return new CartInnerItem(dYCartItem.f67554a, new UInt(dYCartItem.f67555b), Float.valueOf(dYCartItem.f67556c), null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v3, types: [kotlin.collections.EmptyList] */
    /* JADX WARN: Type inference failed for: r7v4, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r7v5, types: [java.util.ArrayList] */
    public static DYVariation p(DYChooseResult dYChooseResult, String str) {
        Object next;
        ?? arrayList;
        RecsData recsData;
        List list;
        List list2 = dYChooseResult.d;
        if (list2 != null) {
            Iterator it = list2.iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                Choice choice = (Choice) next;
                if (Intrinsics.c(choice.getF26160b(), str) && choice.getF26161c() == ChoiceType.RECS_DECISION) {
                    break;
                }
            }
            Choice choice2 = (Choice) next;
            if (choice2 != null) {
                Variation variation = (Variation) CollectionsKt.firstOrNull(choice2.getD());
                Payload payloadA = variation != null ? variation.a() : null;
                RecsPayload recsPayload = payloadA instanceof RecsPayload ? (RecsPayload) payloadA : null;
                if (recsPayload == null || (recsData = recsPayload.f26110b) == null || (list = recsData.f26108a) == null) {
                    arrayList = EmptyList.f71768b;
                } else {
                    List<RecsSlot> list3 = list;
                    arrayList = new ArrayList(CollectionsKt.t(list3, 10));
                    for (RecsSlot recsSlot : list3) {
                        String str2 = recsSlot.f26112c;
                        SkuId.Companion companion = SkuId.INSTANCE;
                        str2.getClass();
                        arrayList.add(new DYRecommendation(str2, recsSlot.d, null));
                    }
                }
                return new DYVariation(arrayList, choice2.getF26163f());
            }
        }
        return new DYVariation(EmptyList.f71768b, null, 2, null);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0084, code lost:
    
        if (r12 == r2) goto L26;
     */
    @Override // com.vuitton.android.domain.repository.DynamicYieldRepository
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(java.lang.String r11, kotlin.coroutines.jvm.internal.ContinuationImpl r12) {
        /*
            Method dump skipped, instruction units count: 241
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.repository.DynamicYieldRepositoryImpl.a(java.lang.String, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:61:0x0178  */
    /* JADX WARN: Code duplicated, block: B:76:0x01c5  */
    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    /* JADX WARN: Code duplicated, block: B:84:0x01e7  */
    /* JADX WARN: Code duplicated, block: B:86:0x01eb  */
    /* JADX WARN: Code duplicated, block: B:89:0x01fb  */
    @Override // com.vuitton.android.domain.repository.DynamicYieldRepository
    public final Object b(DYUserEventType dYUserEventType, String str, ContinuationImpl continuationImpl) {
        DynamicYieldRepositoryImpl$reportUserEvent$1 dynamicYieldRepositoryImpl$reportUserEvent$1;
        Object failure;
        Throwable thA;
        DYUserEventType dYUserEventType2;
        String str2;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        String str3;
        DYUserEventType dYUserEventType3;
        DYResult dYResult;
        int i7;
        DYUserEventType dYUserEventType4;
        if (continuationImpl instanceof DynamicYieldRepositoryImpl$reportUserEvent$1) {
            dynamicYieldRepositoryImpl$reportUserEvent$1 = (DynamicYieldRepositoryImpl$reportUserEvent$1) continuationImpl;
            int i8 = dynamicYieldRepositoryImpl$reportUserEvent$1.f47701i;
            if ((i8 & Integer.MIN_VALUE) != 0) {
                dynamicYieldRepositoryImpl$reportUserEvent$1.f47701i = i8 - Integer.MIN_VALUE;
            } else {
                dynamicYieldRepositoryImpl$reportUserEvent$1 = new DynamicYieldRepositoryImpl$reportUserEvent$1(this, continuationImpl);
            }
        } else {
            dynamicYieldRepositoryImpl$reportUserEvent$1 = new DynamicYieldRepositoryImpl$reportUserEvent$1(this, continuationImpl);
        }
        Object obj = dynamicYieldRepositoryImpl$reportUserEvent$1.g;
        Object obj2 = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i9 = dynamicYieldRepositoryImpl$reportUserEvent$1.f47701i;
        try {
            if (i9 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                dYUserEventType2 = dYUserEventType;
                dynamicYieldRepositoryImpl$reportUserEvent$1.f47696b = dYUserEventType2;
                dynamicYieldRepositoryImpl$reportUserEvent$1.f47697c = str;
                dynamicYieldRepositoryImpl$reportUserEvent$1.d = 0;
                dynamicYieldRepositoryImpl$reportUserEvent$1.f47698e = 0;
                dynamicYieldRepositoryImpl$reportUserEvent$1.f47699f = 0;
                dynamicYieldRepositoryImpl$reportUserEvent$1.f47701i = 1;
                if (l(dynamicYieldRepositoryImpl$reportUserEvent$1) != obj2) {
                    str2 = str;
                    i2 = 0;
                    i3 = 0;
                    i4 = 0;
                }
                return obj2;
            }
            if (i9 == 1) {
                i2 = dynamicYieldRepositoryImpl$reportUserEvent$1.f47699f;
                i3 = dynamicYieldRepositoryImpl$reportUserEvent$1.f47698e;
                i4 = dynamicYieldRepositoryImpl$reportUserEvent$1.d;
                str2 = dynamicYieldRepositoryImpl$reportUserEvent$1.f47697c;
                DYUserEventType dYUserEventType5 = dynamicYieldRepositoryImpl$reportUserEvent$1.f47696b;
                ResultKt.b(obj);
                dYUserEventType2 = dYUserEventType5;
            } else {
                if (i9 == 2) {
                    i2 = dynamicYieldRepositoryImpl$reportUserEvent$1.f47699f;
                    i5 = dynamicYieldRepositoryImpl$reportUserEvent$1.f47698e;
                    i6 = dynamicYieldRepositoryImpl$reportUserEvent$1.d;
                    str3 = dynamicYieldRepositoryImpl$reportUserEvent$1.f47697c;
                    dYUserEventType3 = dynamicYieldRepositoryImpl$reportUserEvent$1.f47696b;
                    ResultKt.b(obj);
                    dYResult = (DYResult) obj;
                    i7 = WhenMappings.f47657a[dYResult.f26183a.ordinal()];
                    if (i7 != 1) {
                    }
                    dynamicYieldRepositoryImpl$reportUserEvent$1.f47696b = dYUserEventType3;
                    dynamicYieldRepositoryImpl$reportUserEvent$1.f47697c = null;
                    dynamicYieldRepositoryImpl$reportUserEvent$1.d = i6;
                    dynamicYieldRepositoryImpl$reportUserEvent$1.f47698e = i5;
                    dynamicYieldRepositoryImpl$reportUserEvent$1.f47699f = i2;
                    dynamicYieldRepositoryImpl$reportUserEvent$1.f47701i = 5;
                    if (n(str3, dynamicYieldRepositoryImpl$reportUserEvent$1) != obj2) {
                        dYUserEventType4 = dYUserEventType3;
                    }
                    return obj2;
                }
                if (i9 == 3) {
                    i2 = dynamicYieldRepositoryImpl$reportUserEvent$1.f47699f;
                    i5 = dynamicYieldRepositoryImpl$reportUserEvent$1.f47698e;
                    i6 = dynamicYieldRepositoryImpl$reportUserEvent$1.d;
                    str3 = dynamicYieldRepositoryImpl$reportUserEvent$1.f47697c;
                    dYUserEventType3 = dynamicYieldRepositoryImpl$reportUserEvent$1.f47696b;
                    ResultKt.b(obj);
                    dYResult = (DYResult) obj;
                    i7 = WhenMappings.f47657a[dYResult.f26183a.ordinal()];
                    if (i7 != 1) {
                    }
                    dynamicYieldRepositoryImpl$reportUserEvent$1.f47696b = dYUserEventType3;
                    dynamicYieldRepositoryImpl$reportUserEvent$1.f47697c = null;
                    dynamicYieldRepositoryImpl$reportUserEvent$1.d = i6;
                    dynamicYieldRepositoryImpl$reportUserEvent$1.f47698e = i5;
                    dynamicYieldRepositoryImpl$reportUserEvent$1.f47699f = i2;
                    dynamicYieldRepositoryImpl$reportUserEvent$1.f47701i = 5;
                    if (n(str3, dynamicYieldRepositoryImpl$reportUserEvent$1) != obj2) {
                        dYUserEventType4 = dYUserEventType3;
                    }
                    return obj2;
                }
                if (i9 == 4) {
                    i2 = dynamicYieldRepositoryImpl$reportUserEvent$1.f47699f;
                    i5 = dynamicYieldRepositoryImpl$reportUserEvent$1.f47698e;
                    i6 = dynamicYieldRepositoryImpl$reportUserEvent$1.d;
                    str3 = dynamicYieldRepositoryImpl$reportUserEvent$1.f47697c;
                    dYUserEventType3 = dynamicYieldRepositoryImpl$reportUserEvent$1.f47696b;
                    ResultKt.b(obj);
                    dYResult = (DYResult) obj;
                    i7 = WhenMappings.f47657a[dYResult.f26183a.ordinal()];
                    if (i7 != 1 || i7 == 2) {
                        dynamicYieldRepositoryImpl$reportUserEvent$1.f47696b = dYUserEventType3;
                        dynamicYieldRepositoryImpl$reportUserEvent$1.f47697c = null;
                        dynamicYieldRepositoryImpl$reportUserEvent$1.d = i6;
                        dynamicYieldRepositoryImpl$reportUserEvent$1.f47698e = i5;
                        dynamicYieldRepositoryImpl$reportUserEvent$1.f47699f = i2;
                        dynamicYieldRepositoryImpl$reportUserEvent$1.f47701i = 5;
                        if (n(str3, dynamicYieldRepositoryImpl$reportUserEvent$1) != obj2) {
                            dYUserEventType4 = dYUserEventType3;
                        }
                        return obj2;
                    }
                    if (i7 != 3) {
                        throw new NoWhenBranchMatchedException();
                    }
                    String eventName = dYUserEventType3.getEventName();
                    Exception exc = dYResult.f26185c;
                    throw new IllegalStateException(("Failed to report " + eventName + ": " + (exc != null ? exc.getMessage() : null)).toString());
                }
                if (i9 != 5) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                dYUserEventType4 = dynamicYieldRepositoryImpl$reportUserEvent$1.f47696b;
                ResultKt.b(obj);
                ((Result) obj).getClass();
            }
            Logger logger = this.f47652a;
            int i10 = DynamicYieldRepositoryImplKt.f47708a;
            dYUserEventType4.getClass();
            logger.getClass();
            failure = new Result(Unit.f71739a);
            thA = Result.a(failure);
            if (thA != null) {
                if (!(thA instanceof CancellationException)) {
                    throw thA;
                }
                failure = new Result(new Result.Failure(thA));
            }
            return ((Result) failure).f71708b;
            DYSdk.f25843k.getClass();
            EventsManager eventsManager = DYSdk.Companion.a().f25849h;
            int i11 = WhenMappings.f47658b[dYUserEventType2.ordinal()];
            if (i11 == 1) {
                String eventName2 = dYUserEventType2.getEventName();
                dynamicYieldRepositoryImpl$reportUserEvent$1.f47696b = dYUserEventType2;
                dynamicYieldRepositoryImpl$reportUserEvent$1.f47697c = str2;
                dynamicYieldRepositoryImpl$reportUserEvent$1.d = i4;
                dynamicYieldRepositoryImpl$reportUserEvent$1.f47698e = i3;
                dynamicYieldRepositoryImpl$reportUserEvent$1.f47699f = i2;
                dynamicYieldRepositoryImpl$reportUserEvent$1.f47701i = 2;
                eventsManager.d.a("reportLoginEvent", null);
                Object objF = eventsManager.f(new DYEvent[]{new PredefinedEvent(eventName2, new LoginProperties("encryptedClientId", str2, null))}, dynamicYieldRepositoryImpl$reportUserEvent$1);
                if (objF != obj2) {
                    i5 = i3;
                    i6 = i4;
                    str3 = str2;
                    dYUserEventType3 = dYUserEventType2;
                    obj = objF;
                    dYResult = (DYResult) obj;
                    i7 = WhenMappings.f47657a[dYResult.f26183a.ordinal()];
                    if (i7 != 1) {
                    }
                    dynamicYieldRepositoryImpl$reportUserEvent$1.f47696b = dYUserEventType3;
                    dynamicYieldRepositoryImpl$reportUserEvent$1.f47697c = null;
                    dynamicYieldRepositoryImpl$reportUserEvent$1.d = i6;
                    dynamicYieldRepositoryImpl$reportUserEvent$1.f47698e = i5;
                    dynamicYieldRepositoryImpl$reportUserEvent$1.f47699f = i2;
                    dynamicYieldRepositoryImpl$reportUserEvent$1.f47701i = 5;
                    if (n(str3, dynamicYieldRepositoryImpl$reportUserEvent$1) != obj2) {
                        dYUserEventType4 = dYUserEventType3;
                        Logger logger2 = this.f47652a;
                        int i12 = DynamicYieldRepositoryImplKt.f47708a;
                        dYUserEventType4.getClass();
                        logger2.getClass();
                        failure = new Result(Unit.f71739a);
                        thA = Result.a(failure);
                        if (thA != null) {
                            if (!(thA instanceof CancellationException)) {
                                throw thA;
                            }
                            failure = new Result(new Result.Failure(thA));
                        }
                        return ((Result) failure).f71708b;
                    }
                }
            } else if (i11 == 2) {
                String eventName3 = dYUserEventType2.getEventName();
                dynamicYieldRepositoryImpl$reportUserEvent$1.f47696b = dYUserEventType2;
                dynamicYieldRepositoryImpl$reportUserEvent$1.f47697c = str2;
                dynamicYieldRepositoryImpl$reportUserEvent$1.d = i4;
                dynamicYieldRepositoryImpl$reportUserEvent$1.f47698e = i3;
                dynamicYieldRepositoryImpl$reportUserEvent$1.f47699f = i2;
                dynamicYieldRepositoryImpl$reportUserEvent$1.f47701i = 3;
                eventsManager.d.a("reportIdentifyUserEvent", null);
                Object objF2 = eventsManager.f(new DYEvent[]{new PredefinedEvent(eventName3, new IdentifyUserProperties("encryptedClientId", str2, null))}, dynamicYieldRepositoryImpl$reportUserEvent$1);
                if (objF2 != obj2) {
                    i5 = i3;
                    i6 = i4;
                    str3 = str2;
                    dYUserEventType3 = dYUserEventType2;
                    obj = objF2;
                    dYResult = (DYResult) obj;
                    i7 = WhenMappings.f47657a[dYResult.f26183a.ordinal()];
                    if (i7 != 1) {
                    }
                    dynamicYieldRepositoryImpl$reportUserEvent$1.f47696b = dYUserEventType3;
                    dynamicYieldRepositoryImpl$reportUserEvent$1.f47697c = null;
                    dynamicYieldRepositoryImpl$reportUserEvent$1.d = i6;
                    dynamicYieldRepositoryImpl$reportUserEvent$1.f47698e = i5;
                    dynamicYieldRepositoryImpl$reportUserEvent$1.f47699f = i2;
                    dynamicYieldRepositoryImpl$reportUserEvent$1.f47701i = 5;
                    if (n(str3, dynamicYieldRepositoryImpl$reportUserEvent$1) != obj2) {
                        dYUserEventType4 = dYUserEventType3;
                        Logger logger3 = this.f47652a;
                        int i13 = DynamicYieldRepositoryImplKt.f47708a;
                        dYUserEventType4.getClass();
                        logger3.getClass();
                        failure = new Result(Unit.f71739a);
                        thA = Result.a(failure);
                        if (thA != null) {
                            if (!(thA instanceof CancellationException)) {
                                throw thA;
                            }
                            failure = new Result(new Result.Failure(thA));
                        }
                        return ((Result) failure).f71708b;
                    }
                }
            } else {
                if (i11 != 3) {
                    throw new NoWhenBranchMatchedException();
                }
                String eventName4 = dYUserEventType2.getEventName();
                dynamicYieldRepositoryImpl$reportUserEvent$1.f47696b = dYUserEventType2;
                dynamicYieldRepositoryImpl$reportUserEvent$1.f47697c = str2;
                dynamicYieldRepositoryImpl$reportUserEvent$1.d = i4;
                dynamicYieldRepositoryImpl$reportUserEvent$1.f47698e = i3;
                dynamicYieldRepositoryImpl$reportUserEvent$1.f47699f = i2;
                dynamicYieldRepositoryImpl$reportUserEvent$1.f47701i = 4;
                eventsManager.d.a("reportSignUpEvent", null);
                Object objF3 = eventsManager.f(new DYEvent[]{new PredefinedEvent(eventName4, new SignupProperties("encryptedClientId", str2, null))}, dynamicYieldRepositoryImpl$reportUserEvent$1);
                if (objF3 != obj2) {
                    i5 = i3;
                    i6 = i4;
                    str3 = str2;
                    dYUserEventType3 = dYUserEventType2;
                    obj = objF3;
                    dYResult = (DYResult) obj;
                    i7 = WhenMappings.f47657a[dYResult.f26183a.ordinal()];
                    if (i7 != 1) {
                    }
                    dynamicYieldRepositoryImpl$reportUserEvent$1.f47696b = dYUserEventType3;
                    dynamicYieldRepositoryImpl$reportUserEvent$1.f47697c = null;
                    dynamicYieldRepositoryImpl$reportUserEvent$1.d = i6;
                    dynamicYieldRepositoryImpl$reportUserEvent$1.f47698e = i5;
                    dynamicYieldRepositoryImpl$reportUserEvent$1.f47699f = i2;
                    dynamicYieldRepositoryImpl$reportUserEvent$1.f47701i = 5;
                    if (n(str3, dynamicYieldRepositoryImpl$reportUserEvent$1) != obj2) {
                        dYUserEventType4 = dYUserEventType3;
                        Logger logger4 = this.f47652a;
                        int i14 = DynamicYieldRepositoryImplKt.f47708a;
                        dYUserEventType4.getClass();
                        logger4.getClass();
                        failure = new Result(Unit.f71739a);
                        thA = Result.a(failure);
                        if (thA != null) {
                            if (!(thA instanceof CancellationException)) {
                                throw thA;
                            }
                            failure = new Result(new Result.Failure(thA));
                        }
                        return ((Result) failure).f71708b;
                    }
                }
            }
            return obj2;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.DynamicYieldRepository
    public final Object c(String str, boolean z, Region region, ContinuationImpl continuationImpl) {
        DynamicYieldRepositoryImpl$initializeSdk$1 dynamicYieldRepositoryImpl$initializeSdk$1;
        Object failure;
        String str2;
        if (continuationImpl instanceof DynamicYieldRepositoryImpl$initializeSdk$1) {
            dynamicYieldRepositoryImpl$initializeSdk$1 = (DynamicYieldRepositoryImpl$initializeSdk$1) continuationImpl;
            int i2 = dynamicYieldRepositoryImpl$initializeSdk$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                dynamicYieldRepositoryImpl$initializeSdk$1.d = i2 - Integer.MIN_VALUE;
            } else {
                dynamicYieldRepositoryImpl$initializeSdk$1 = new DynamicYieldRepositoryImpl$initializeSdk$1(this, continuationImpl);
            }
        } else {
            dynamicYieldRepositoryImpl$initializeSdk$1 = new DynamicYieldRepositoryImpl$initializeSdk$1(this, continuationImpl);
        }
        Object obj = dynamicYieldRepositoryImpl$initializeSdk$1.f47679b;
        Object obj2 = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = dynamicYieldRepositoryImpl$initializeSdk$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                if (!this.f47655e) {
                    DYSdk.f25843k.getClass();
                    DYSdk.d(DYSdk.Companion.a(), this.f47653b.l(region), DataCenter.EU, this.f47654c, str, Boolean.valueOf(z));
                    this.f47655e = true;
                    Logger logger = this.f47652a;
                    int i4 = DynamicYieldRepositoryImplKt.f47708a;
                    logger.getClass();
                    String strA = DYSdk.Companion.a().a();
                    DYSdk dYSdkA = DYSdk.Companion.a();
                    if (DYSdk.l) {
                        str2 = dYSdkA.b().a().f26244a;
                    } else {
                        dYSdkA.c("getSessionId");
                        str2 = null;
                    }
                    if (strA == null || strA.length() == 0 || str2 == null || str2.length() == 0) {
                        dynamicYieldRepositoryImpl$initializeSdk$1.d = 1;
                        if (m(null, dynamicYieldRepositoryImpl$initializeSdk$1) == obj2) {
                            return obj2;
                        }
                    }
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
                ((Result) obj).getClass();
            }
            failure = new Result(Unit.f71739a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        return ((Result) failure).f71708b;
    }

    @Override // com.vuitton.android.domain.repository.DynamicYieldRepository
    public final DynamicYieldDataSource$special$$inlined$map$1 d() {
        return this.d.f44106b;
    }

    /* JADX WARN: Code duplicated, block: B:103:0x02ae  */
    /* JADX WARN: Code duplicated, block: B:123:0x030f  */
    /* JADX WARN: Code duplicated, block: B:125:0x0313  */
    /* JADX WARN: Code duplicated, block: B:128:0x0323  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    @Override // com.vuitton.android.domain.repository.DynamicYieldRepository
    public final Object e(DYBusinessEvent dYBusinessEvent, ContinuationImpl continuationImpl) {
        DynamicYieldRepositoryImpl$reportBusinessEvent$1 dynamicYieldRepositoryImpl$reportBusinessEvent$1;
        Object failure;
        Throwable thA;
        DYBusinessEvent dYBusinessEvent2;
        int i2;
        int i3;
        int i4;
        String str;
        DYBusinessEvent dYBusinessEvent3;
        Object next;
        Object next2;
        Object next3;
        DYResult dYResult;
        int i5;
        if (continuationImpl instanceof DynamicYieldRepositoryImpl$reportBusinessEvent$1) {
            dynamicYieldRepositoryImpl$reportBusinessEvent$1 = (DynamicYieldRepositoryImpl$reportBusinessEvent$1) continuationImpl;
            int i6 = dynamicYieldRepositoryImpl$reportBusinessEvent$1.f47685h;
            if ((i6 & Integer.MIN_VALUE) != 0) {
                dynamicYieldRepositoryImpl$reportBusinessEvent$1.f47685h = i6 - Integer.MIN_VALUE;
            } else {
                dynamicYieldRepositoryImpl$reportBusinessEvent$1 = new DynamicYieldRepositoryImpl$reportBusinessEvent$1(this, continuationImpl);
            }
        } else {
            dynamicYieldRepositoryImpl$reportBusinessEvent$1 = new DynamicYieldRepositoryImpl$reportBusinessEvent$1(this, continuationImpl);
        }
        Object objF = dynamicYieldRepositoryImpl$reportBusinessEvent$1.f47684f;
        Object obj = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i7 = dynamicYieldRepositoryImpl$reportBusinessEvent$1.f47685h;
        try {
            if (i7 == 0) {
                ResultKt.b(objF);
                Result.Companion companion = Result.INSTANCE;
                dynamicYieldRepositoryImpl$reportBusinessEvent$1.f47681b = dYBusinessEvent;
                dynamicYieldRepositoryImpl$reportBusinessEvent$1.f47682c = 0;
                dynamicYieldRepositoryImpl$reportBusinessEvent$1.d = 0;
                dynamicYieldRepositoryImpl$reportBusinessEvent$1.f47683e = 0;
                dynamicYieldRepositoryImpl$reportBusinessEvent$1.f47685h = 1;
                if (l(dynamicYieldRepositoryImpl$reportBusinessEvent$1) != obj) {
                    dYBusinessEvent2 = dYBusinessEvent;
                    i2 = 0;
                    i3 = 0;
                    i4 = 0;
                }
                return obj;
            }
            if (i7 != 1) {
                if (i7 == 2) {
                    dYBusinessEvent3 = dynamicYieldRepositoryImpl$reportBusinessEvent$1.f47681b;
                    ResultKt.b(objF);
                    dYResult = (DYResult) objF;
                    str = null;
                    i5 = WhenMappings.f47657a[dYResult.f26183a.ordinal()];
                    if (i5 != 1) {
                    }
                    Logger logger = this.f47652a;
                    int i8 = DynamicYieldRepositoryImplKt.f47708a;
                    String str2 = dYBusinessEvent3.f67541a;
                    logger.getClass();
                    failure = new Result(Unit.f71739a);
                    thA = Result.a(failure);
                    if (thA != null) {
                        if (!(thA instanceof CancellationException)) {
                            throw thA;
                        }
                        failure = new Result(new Result.Failure(thA));
                    }
                    return ((Result) failure).f71708b;
                }
                if (i7 == 3) {
                    dYBusinessEvent3 = dynamicYieldRepositoryImpl$reportBusinessEvent$1.f47681b;
                    ResultKt.b(objF);
                    dYResult = (DYResult) objF;
                    str = null;
                    i5 = WhenMappings.f47657a[dYResult.f26183a.ordinal()];
                    if (i5 != 1) {
                    }
                    Logger logger2 = this.f47652a;
                    int i9 = DynamicYieldRepositoryImplKt.f47708a;
                    String str3 = dYBusinessEvent3.f67541a;
                    logger2.getClass();
                    failure = new Result(Unit.f71739a);
                    thA = Result.a(failure);
                    if (thA != null) {
                        if (!(thA instanceof CancellationException)) {
                            throw thA;
                        }
                        failure = new Result(new Result.Failure(thA));
                    }
                    return ((Result) failure).f71708b;
                }
                if (i7 == 4) {
                    dYBusinessEvent3 = dynamicYieldRepositoryImpl$reportBusinessEvent$1.f47681b;
                    ResultKt.b(objF);
                    dYResult = (DYResult) objF;
                    str = null;
                    i5 = WhenMappings.f47657a[dYResult.f26183a.ordinal()];
                    if (i5 != 1) {
                    }
                    Logger logger3 = this.f47652a;
                    int i10 = DynamicYieldRepositoryImplKt.f47708a;
                    String str4 = dYBusinessEvent3.f67541a;
                    logger3.getClass();
                    failure = new Result(Unit.f71739a);
                    thA = Result.a(failure);
                    if (thA != null) {
                        if (!(thA instanceof CancellationException)) {
                            throw thA;
                        }
                        failure = new Result(new Result.Failure(thA));
                    }
                    return ((Result) failure).f71708b;
                }
                if (i7 != 5) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                dYBusinessEvent3 = dynamicYieldRepositoryImpl$reportBusinessEvent$1.f47681b;
                ResultKt.b(objF);
                str = null;
                dYResult = (DYResult) objF;
                i5 = WhenMappings.f47657a[dYResult.f26183a.ordinal()];
                if (i5 != 1 || i5 == 2) {
                    Logger logger4 = this.f47652a;
                    int i11 = DynamicYieldRepositoryImplKt.f47708a;
                    String str5 = dYBusinessEvent3.f67541a;
                    logger4.getClass();
                    failure = new Result(Unit.f71739a);
                    thA = Result.a(failure);
                    if (thA != null) {
                        if (!(thA instanceof CancellationException)) {
                            throw thA;
                        }
                        failure = new Result(new Result.Failure(thA));
                    }
                    return ((Result) failure).f71708b;
                }
                if (i5 != 3) {
                    throw new NoWhenBranchMatchedException();
                }
                String str6 = dYBusinessEvent3.f67541a;
                Exception exc = dYResult.f26185c;
                throw new IllegalStateException(("Failed to report " + str6 + ": " + (exc != null ? exc.getMessage() : str)).toString());
            }
            i2 = dynamicYieldRepositoryImpl$reportBusinessEvent$1.f47683e;
            i3 = dynamicYieldRepositoryImpl$reportBusinessEvent$1.d;
            i4 = dynamicYieldRepositoryImpl$reportBusinessEvent$1.f47682c;
            dYBusinessEvent2 = dynamicYieldRepositoryImpl$reportBusinessEvent$1.f47681b;
            ResultKt.b(objF);
            DYSdk.f25843k.getClass();
            EventsManager eventsManager = DYSdk.Companion.a().f25849h;
            if (dYBusinessEvent2 instanceof DYBusinessEvent.AddToCart) {
                String str7 = dYBusinessEvent2.f67541a;
                float f2 = ((DYBusinessEvent.AddToCart) dYBusinessEvent2).f67542b;
                Iterator<E> it = CurrencyType.a().iterator();
                do {
                    if (!it.hasNext()) {
                        next3 = null;
                        break;
                    }
                    next3 = it.next();
                } while (!Intrinsics.c(((CurrencyType) next3).name(), ((DYBusinessEvent.AddToCart) dYBusinessEvent2).d));
                CurrencyType currencyType = (CurrencyType) next3;
                String str8 = ((DYBusinessEvent.AddToCart) dYBusinessEvent2).f67543c;
                int i12 = ((DYBusinessEvent.AddToCart) dYBusinessEvent2).f67544e;
                UInt.Companion companion2 = UInt.INSTANCE;
                List list = ((DYBusinessEvent.AddToCart) dYBusinessEvent2).f67545f;
                ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
                Iterator it2 = list.iterator();
                while (it2.hasNext()) {
                    arrayList.add(o((DYCartItem) it2.next()));
                }
                dynamicYieldRepositoryImpl$reportBusinessEvent$1.f47681b = dYBusinessEvent2;
                dynamicYieldRepositoryImpl$reportBusinessEvent$1.f47682c = i4;
                dynamicYieldRepositoryImpl$reportBusinessEvent$1.d = i3;
                dynamicYieldRepositoryImpl$reportBusinessEvent$1.f47683e = i2;
                dynamicYieldRepositoryImpl$reportBusinessEvent$1.f47685h = 2;
                eventsManager.d.a("reportAddToCartEvent", null);
                objF = eventsManager.f(new DYEvent[]{new PredefinedEvent(str7, new AddToCartEventProperties(f2, currencyType, str8, i12, arrayList, null))}, dynamicYieldRepositoryImpl$reportBusinessEvent$1);
                if (objF != obj) {
                    dYBusinessEvent3 = dYBusinessEvent2;
                    dYResult = (DYResult) objF;
                    str = null;
                    i5 = WhenMappings.f47657a[dYResult.f26183a.ordinal()];
                    if (i5 != 1) {
                    }
                    Logger logger5 = this.f47652a;
                    int i13 = DynamicYieldRepositoryImplKt.f47708a;
                    String str9 = dYBusinessEvent3.f67541a;
                    logger5.getClass();
                    failure = new Result(Unit.f71739a);
                    thA = Result.a(failure);
                    if (thA != null) {
                        if (!(thA instanceof CancellationException)) {
                            throw thA;
                        }
                        failure = new Result(new Result.Failure(thA));
                    }
                    return ((Result) failure).f71708b;
                }
            } else if (dYBusinessEvent2 instanceof DYBusinessEvent.RemoveFromCart) {
                String str10 = dYBusinessEvent2.f67541a;
                float f3 = ((DYBusinessEvent.RemoveFromCart) dYBusinessEvent2).f67550b;
                Iterator<E> it3 = CurrencyType.a().iterator();
                do {
                    if (!it3.hasNext()) {
                        next2 = null;
                        break;
                    }
                    next2 = it3.next();
                } while (!Intrinsics.c(((CurrencyType) next2).name(), ((DYBusinessEvent.RemoveFromCart) dYBusinessEvent2).d));
                CurrencyType currencyType2 = (CurrencyType) next2;
                String str11 = ((DYBusinessEvent.RemoveFromCart) dYBusinessEvent2).f67551c;
                int i14 = ((DYBusinessEvent.RemoveFromCart) dYBusinessEvent2).f67552e;
                UInt.Companion companion3 = UInt.INSTANCE;
                List list2 = ((DYBusinessEvent.RemoveFromCart) dYBusinessEvent2).f67553f;
                ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list2, 10));
                Iterator it4 = list2.iterator();
                while (it4.hasNext()) {
                    arrayList2.add(o((DYCartItem) it4.next()));
                }
                dynamicYieldRepositoryImpl$reportBusinessEvent$1.f47681b = dYBusinessEvent2;
                dynamicYieldRepositoryImpl$reportBusinessEvent$1.f47682c = i4;
                dynamicYieldRepositoryImpl$reportBusinessEvent$1.d = i3;
                dynamicYieldRepositoryImpl$reportBusinessEvent$1.f47683e = i2;
                dynamicYieldRepositoryImpl$reportBusinessEvent$1.f47685h = 3;
                eventsManager.d.a("reportRemoveFromCartEvent", null);
                objF = eventsManager.f(new DYEvent[]{new PredefinedEvent(str10, new RemoveFromCartEventProperties(f3, currencyType2, str11, i14, arrayList2, null))}, dynamicYieldRepositoryImpl$reportBusinessEvent$1);
                if (objF != obj) {
                    dYBusinessEvent3 = dYBusinessEvent2;
                    dYResult = (DYResult) objF;
                    str = null;
                    i5 = WhenMappings.f47657a[dYResult.f26183a.ordinal()];
                    if (i5 != 1) {
                    }
                    Logger logger6 = this.f47652a;
                    int i15 = DynamicYieldRepositoryImplKt.f47708a;
                    String str12 = dYBusinessEvent3.f67541a;
                    logger6.getClass();
                    failure = new Result(Unit.f71739a);
                    thA = Result.a(failure);
                    if (thA != null) {
                        if (!(thA instanceof CancellationException)) {
                            throw thA;
                        }
                        failure = new Result(new Result.Failure(thA));
                    }
                    return ((Result) failure).f71708b;
                }
            } else if (dYBusinessEvent2 instanceof DYBusinessEvent.Purchase) {
                String str13 = dYBusinessEvent2.f67541a;
                float f4 = ((DYBusinessEvent.Purchase) dYBusinessEvent2).f67547b;
                String str14 = ((DYBusinessEvent.Purchase) dYBusinessEvent2).f67548c;
                Iterator<E> it5 = CurrencyType.a().iterator();
                do {
                    if (!it5.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it5.next();
                } while (!Intrinsics.c(((CurrencyType) next).name(), ((DYBusinessEvent.Purchase) dYBusinessEvent2).d));
                CurrencyType currencyType3 = (CurrencyType) next;
                List list3 = ((DYBusinessEvent.Purchase) dYBusinessEvent2).f67549e;
                ArrayList arrayList3 = new ArrayList(CollectionsKt.t(list3, 10));
                Iterator it6 = list3.iterator();
                while (it6.hasNext()) {
                    arrayList3.add(o((DYCartItem) it6.next()));
                }
                dynamicYieldRepositoryImpl$reportBusinessEvent$1.f47681b = dYBusinessEvent2;
                dynamicYieldRepositoryImpl$reportBusinessEvent$1.f47682c = i4;
                dynamicYieldRepositoryImpl$reportBusinessEvent$1.d = i3;
                dynamicYieldRepositoryImpl$reportBusinessEvent$1.f47683e = i2;
                dynamicYieldRepositoryImpl$reportBusinessEvent$1.f47685h = 4;
                eventsManager.d.a("reportPurchaseEvent", null);
                objF = eventsManager.f(new DYEvent[]{new PredefinedEvent(str13, new PurchaseEventProperties(f4, currencyType3, str14, arrayList3))}, dynamicYieldRepositoryImpl$reportBusinessEvent$1);
                if (objF != obj) {
                    dYBusinessEvent3 = dYBusinessEvent2;
                    dYResult = (DYResult) objF;
                    str = null;
                    i5 = WhenMappings.f47657a[dYResult.f26183a.ordinal()];
                    if (i5 != 1) {
                    }
                    Logger logger7 = this.f47652a;
                    int i16 = DynamicYieldRepositoryImplKt.f47708a;
                    String str15 = dYBusinessEvent3.f67541a;
                    logger7.getClass();
                    failure = new Result(Unit.f71739a);
                    thA = Result.a(failure);
                    if (thA != null) {
                        if (!(thA instanceof CancellationException)) {
                            throw thA;
                        }
                        failure = new Result(new Result.Failure(thA));
                    }
                    return ((Result) failure).f71708b;
                }
            } else {
                if (!(dYBusinessEvent2 instanceof DYBusinessEvent.AddToWishlist)) {
                    throw new NoWhenBranchMatchedException();
                }
                String str16 = dYBusinessEvent2.f67541a;
                String str17 = ((DYBusinessEvent.AddToWishlist) dYBusinessEvent2).f67546b;
                dynamicYieldRepositoryImpl$reportBusinessEvent$1.f47681b = dYBusinessEvent2;
                dynamicYieldRepositoryImpl$reportBusinessEvent$1.f47682c = i4;
                dynamicYieldRepositoryImpl$reportBusinessEvent$1.d = i3;
                dynamicYieldRepositoryImpl$reportBusinessEvent$1.f47683e = i2;
                dynamicYieldRepositoryImpl$reportBusinessEvent$1.f47685h = 5;
                str = null;
                eventsManager.d.a("reportAddToWishListEvent", null);
                objF = eventsManager.f(new DYEvent[]{new PredefinedEvent(str16, new AddToWishListEventProperties(str17, null))}, dynamicYieldRepositoryImpl$reportBusinessEvent$1);
                if (objF != obj) {
                    dYBusinessEvent3 = dYBusinessEvent2;
                    dYResult = (DYResult) objF;
                    i5 = WhenMappings.f47657a[dYResult.f26183a.ordinal()];
                    if (i5 != 1) {
                    }
                    Logger logger8 = this.f47652a;
                    int i17 = DynamicYieldRepositoryImplKt.f47708a;
                    String str18 = dYBusinessEvent3.f67541a;
                    logger8.getClass();
                    failure = new Result(Unit.f71739a);
                    thA = Result.a(failure);
                    if (thA != null) {
                        if (!(thA instanceof CancellationException)) {
                            throw thA;
                        }
                        failure = new Result(new Result.Failure(thA));
                    }
                    return ((Result) failure).f71708b;
                }
            }
            return obj;
        } catch (Throwable th) {
            Result.Companion companion4 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
    }

    /* JADX WARN: Code duplicated, block: B:51:0x0182 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:62:0x01b6 A[Catch: all -> 0x01c5, TryCatch #0 {all -> 0x01c5, blocks: (B:15:0x003c, B:48:0x0174, B:49:0x0176, B:53:0x0186, B:55:0x018a, B:56:0x018e, B:57:0x01a3, B:58:0x01a4, B:59:0x01a9, B:60:0x01aa, B:62:0x01b6, B:63:0x01b9, B:20:0x004d, B:42:0x011e, B:23:0x0058, B:36:0x00c9, B:26:0x0061, B:28:0x006b, B:30:0x0071, B:31:0x0083, B:33:0x008c, B:37:0x00cd, B:39:0x00d2, B:43:0x0121, B:45:0x0125, B:64:0x01bf, B:65:0x01c4), top: B:77:0x0030 }] */
    /* JADX WARN: Code duplicated, block: B:8:0x001e  */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0171, code lost:
    
        if (r3 == r5) goto L47;
     */
    @Override // com.vuitton.android.domain.repository.DynamicYieldRepository
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object f(java.lang.String r25, com.vuitton.foundation.model.domain.model.dynamicyield.DYPageType r26, kotlin.coroutines.jvm.internal.ContinuationImpl r27) {
        /*
            Method dump skipped, instruction units count: 489
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.repository.DynamicYieldRepositoryImpl.f(java.lang.String, com.vuitton.foundation.model.domain.model.dynamicyield.DYPageType, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.DynamicYieldRepository
    public final Object g(boolean z, ContinuationImpl continuationImpl) {
        DynamicYieldRepositoryImpl$setDynamicYieldConsent$1 dynamicYieldRepositoryImpl$setDynamicYieldConsent$1;
        Object failure;
        if (continuationImpl instanceof DynamicYieldRepositoryImpl$setDynamicYieldConsent$1) {
            dynamicYieldRepositoryImpl$setDynamicYieldConsent$1 = (DynamicYieldRepositoryImpl$setDynamicYieldConsent$1) continuationImpl;
            int i2 = dynamicYieldRepositoryImpl$setDynamicYieldConsent$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                dynamicYieldRepositoryImpl$setDynamicYieldConsent$1.d = i2 - Integer.MIN_VALUE;
            } else {
                dynamicYieldRepositoryImpl$setDynamicYieldConsent$1 = new DynamicYieldRepositoryImpl$setDynamicYieldConsent$1(this, continuationImpl);
            }
        } else {
            dynamicYieldRepositoryImpl$setDynamicYieldConsent$1 = new DynamicYieldRepositoryImpl$setDynamicYieldConsent$1(this, continuationImpl);
        }
        Object obj = dynamicYieldRepositoryImpl$setDynamicYieldConsent$1.f47706b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = dynamicYieldRepositoryImpl$setDynamicYieldConsent$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                q();
                DYSdk.f25843k.getClass();
                DYSdk dYSdkA = DYSdk.Companion.a();
                Boolean boolValueOf = Boolean.valueOf(z);
                dynamicYieldRepositoryImpl$setDynamicYieldConsent$1.d = 1;
                if (dYSdkA.e(boolValueOf, dynamicYieldRepositoryImpl$setDynamicYieldConsent$1) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            failure = new Result(Unit.f71739a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        return ((Result) failure).f71708b;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0084, code lost:
    
        if (r12 == r2) goto L26;
     */
    @Override // com.vuitton.android.domain.repository.DynamicYieldRepository
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object h(java.lang.String r11, kotlin.coroutines.jvm.internal.ContinuationImpl r12) {
        /*
            Method dump skipped, instruction units count: 241
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.repository.DynamicYieldRepositoryImpl.h(java.lang.String, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    @Override // com.vuitton.android.domain.repository.DynamicYieldRepository
    public final Object i(String str) throws Throwable {
        Object failure;
        try {
            Result.Companion companion = Result.INSTANCE;
            q();
            DYSdk.f25843k.getClass();
            DYSdk dYSdkA = DYSdk.Companion.a();
            if (DYSdk.l) {
                ConfigManager configManager = dYSdkA.f25845b;
                if (configManager == null) {
                    Intrinsics.h("configManager");
                    throw null;
                }
                configManager.f25859a.a("Changing locale to: ".concat(str), null);
                configManager.f25860b.g = str;
            } else {
                dYSdkA.c("setLocale");
            }
            failure = new Result(Unit.f71739a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        return ((Result) failure).f71708b;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0084, code lost:
    
        if (r9.b(r0) == r1) goto L30;
     */
    @Override // com.vuitton.android.domain.repository.DynamicYieldRepository
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object j(kotlin.coroutines.jvm.internal.ContinuationImpl r10) {
        /*
            r9 = this;
            boolean r0 = r10 instanceof com.vuitton.android.data.repository.DynamicYieldRepositoryImpl$resetDyId$1
            if (r0 == 0) goto L13
            r0 = r10
            com.vuitton.android.data.repository.DynamicYieldRepositoryImpl$resetDyId$1 r0 = (com.vuitton.android.data.repository.DynamicYieldRepositoryImpl$resetDyId$1) r0
            int r1 = r0.g
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.g = r1
            goto L18
        L13:
            com.vuitton.android.data.repository.DynamicYieldRepositoryImpl$resetDyId$1 r0 = new com.vuitton.android.data.repository.DynamicYieldRepositoryImpl$resetDyId$1
            r0.<init>(r9, r10)
        L18:
            java.lang.Object r10 = r0.f47704e
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.g
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L3c
            if (r2 == r4) goto L32
            if (r2 != r3) goto L2b
            kotlin.ResultKt.b(r10)     // Catch: java.lang.Throwable -> L8f
            goto L87
        L2b:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r9)
            r9 = 0
            return r9
        L32:
            int r2 = r0.d
            int r4 = r0.f47703c
            int r6 = r0.f47702b
            kotlin.ResultKt.b(r10)     // Catch: java.lang.Throwable -> L8f
            goto L53
        L3c:
            kotlin.ResultKt.b(r10)
            kotlin.Result$Companion r10 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> L8f
            r0.f47702b = r5     // Catch: java.lang.Throwable -> L8f
            r0.f47703c = r5     // Catch: java.lang.Throwable -> L8f
            r0.d = r5     // Catch: java.lang.Throwable -> L8f
            r0.g = r4     // Catch: java.lang.Throwable -> L8f
            java.lang.Object r10 = r9.l(r0)     // Catch: java.lang.Throwable -> L8f
            if (r10 != r1) goto L50
            goto L86
        L50:
            r2 = r5
            r4 = r2
            r6 = r4
        L53:
            com.dynamicyield.sdk.wrapper.core.DYSdk$Companion r10 = com.dynamicyield.sdk.wrapper.core.DYSdk.f25843k     // Catch: java.lang.Throwable -> L8f
            r10.getClass()     // Catch: java.lang.Throwable -> L8f
            com.dynamicyield.sdk.wrapper.core.DYSdk r10 = com.dynamicyield.sdk.wrapper.core.DYSdk.Companion.a()     // Catch: java.lang.Throwable -> L8f
            java.lang.String r7 = "resetUserIdAndSessionId"
            boolean r8 = com.dynamicyield.sdk.wrapper.core.DYSdk.l     // Catch: java.lang.Throwable -> L8f
            if (r8 == 0) goto L71
            com.dynamicyield.sdk.wrapper.core.managers.sessionAndUser.SessionAndUserManager r7 = r10.b()     // Catch: java.lang.Throwable -> L8f
            r7.d()     // Catch: java.lang.Throwable -> L8f
            com.dynamicyield.sdk.wrapper.core.managers.sessionAndUser.SessionAndUserManager r10 = r10.b()     // Catch: java.lang.Throwable -> L8f
            r10.c()     // Catch: java.lang.Throwable -> L8f
            goto L74
        L71:
            r10.c(r7)     // Catch: java.lang.Throwable -> L8f
        L74:
            r9.f47656f = r5     // Catch: java.lang.Throwable -> L8f
            com.vuitton.android.data.datasource.dynamicyield.DynamicYieldDataSource r9 = r9.d     // Catch: java.lang.Throwable -> L8f
            r0.f47702b = r6     // Catch: java.lang.Throwable -> L8f
            r0.f47703c = r4     // Catch: java.lang.Throwable -> L8f
            r0.d = r2     // Catch: java.lang.Throwable -> L8f
            r0.g = r3     // Catch: java.lang.Throwable -> L8f
            java.lang.Object r9 = r9.b(r0)     // Catch: java.lang.Throwable -> L8f
            if (r9 != r1) goto L87
        L86:
            return r1
        L87:
            kotlin.Unit r9 = kotlin.Unit.f71739a     // Catch: java.lang.Throwable -> L8f
            kotlin.Result r10 = new kotlin.Result     // Catch: java.lang.Throwable -> L8f
            r10.<init>(r9)     // Catch: java.lang.Throwable -> L8f
            goto L97
        L8f:
            r9 = move-exception
            kotlin.Result$Companion r10 = kotlin.Result.INSTANCE
            kotlin.Result$Failure r10 = new kotlin.Result$Failure
            r10.<init>(r9)
        L97:
            java.lang.Throwable r9 = kotlin.Result.a(r10)
            if (r9 != 0) goto L9e
            goto Lad
        L9e:
            boolean r10 = r9 instanceof java.util.concurrent.CancellationException
            if (r10 != 0) goto Lb2
            kotlin.Result$Failure r10 = new kotlin.Result$Failure
            r10.<init>(r9)
            kotlin.Result r9 = new kotlin.Result
            r9.<init>(r10)
            r10 = r9
        Lad:
            kotlin.Result r10 = (kotlin.Result) r10
            java.lang.Object r9 = r10.f71708b
            return r9
        Lb2:
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.repository.DynamicYieldRepositoryImpl.j(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.DynamicYieldRepository
    public final Object k(ContinuationImpl continuationImpl) {
        DynamicYieldRepositoryImpl$activateDynamicYield$1 dynamicYieldRepositoryImpl$activateDynamicYield$1;
        Object failure;
        if (continuationImpl instanceof DynamicYieldRepositoryImpl$activateDynamicYield$1) {
            dynamicYieldRepositoryImpl$activateDynamicYield$1 = (DynamicYieldRepositoryImpl$activateDynamicYield$1) continuationImpl;
            int i2 = dynamicYieldRepositoryImpl$activateDynamicYield$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                dynamicYieldRepositoryImpl$activateDynamicYield$1.d = i2 - Integer.MIN_VALUE;
            } else {
                dynamicYieldRepositoryImpl$activateDynamicYield$1 = new DynamicYieldRepositoryImpl$activateDynamicYield$1(this, continuationImpl);
            }
        } else {
            dynamicYieldRepositoryImpl$activateDynamicYield$1 = new DynamicYieldRepositoryImpl$activateDynamicYield$1(this, continuationImpl);
        }
        Object obj = dynamicYieldRepositoryImpl$activateDynamicYield$1.f47659b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = dynamicYieldRepositoryImpl$activateDynamicYield$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                DynamicYieldDataSource dynamicYieldDataSource = this.d;
                dynamicYieldRepositoryImpl$activateDynamicYield$1.d = 1;
                if (dynamicYieldDataSource.a(dynamicYieldRepositoryImpl$activateDynamicYield$1) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            failure = new Result(Unit.f71739a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        return ((Result) failure).f71708b;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0071, code lost:
    
        if (r6.length() != 0) goto L32;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object l(kotlin.coroutines.jvm.internal.ContinuationImpl r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof com.vuitton.android.data.repository.DynamicYieldRepositoryImpl$ensureSdkReady$1
            if (r0 == 0) goto L13
            r0 = r6
            com.vuitton.android.data.repository.DynamicYieldRepositoryImpl$ensureSdkReady$1 r0 = (com.vuitton.android.data.repository.DynamicYieldRepositoryImpl$ensureSdkReady$1) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            com.vuitton.android.data.repository.DynamicYieldRepositoryImpl$ensureSdkReady$1 r0 = new com.vuitton.android.data.repository.DynamicYieldRepositoryImpl$ensureSdkReady$1
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.f47661b
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.d
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L32
            if (r2 != r4) goto L2c
            kotlin.ResultKt.b(r6)
            kotlin.Result r6 = (kotlin.Result) r6
            java.lang.Object r5 = r6.f71708b
            goto L7c
        L2c:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r5)
            return r3
        L32:
            kotlin.ResultKt.b(r6)
            r5.q()
            boolean r6 = r5.f47656f
            if (r6 != 0) goto L7f
            com.dynamicyield.sdk.wrapper.core.DYSdk$Companion r6 = com.dynamicyield.sdk.wrapper.core.DYSdk.f25843k
            r6.getClass()
            com.dynamicyield.sdk.wrapper.core.DYSdk r6 = com.dynamicyield.sdk.wrapper.core.DYSdk.Companion.a()
            java.lang.String r6 = r6.a()
            if (r6 == 0) goto L73
            int r6 = r6.length()
            if (r6 != 0) goto L52
            goto L73
        L52:
            com.dynamicyield.sdk.wrapper.core.DYSdk r6 = com.dynamicyield.sdk.wrapper.core.DYSdk.Companion.a()
            boolean r2 = com.dynamicyield.sdk.wrapper.core.DYSdk.l
            if (r2 == 0) goto L65
            com.dynamicyield.sdk.wrapper.core.managers.sessionAndUser.SessionAndUserManager r6 = r6.b()
            com.dynamicyield.sdk.wrapper.core.models.common.payload.Session r6 = r6.a()
            java.lang.String r6 = r6.f26244a
            goto L6b
        L65:
            java.lang.String r2 = "getSessionId"
            r6.c(r2)
            r6 = r3
        L6b:
            if (r6 == 0) goto L73
            int r6 = r6.length()
            if (r6 != 0) goto L7f
        L73:
            r0.d = r4
            java.lang.Object r5 = r5.m(r3, r0)
            if (r5 != r1) goto L7c
            return r1
        L7c:
            kotlin.ResultKt.b(r5)
        L7f:
            kotlin.Unit r5 = kotlin.Unit.f71739a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.repository.DynamicYieldRepositoryImpl.l(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:53:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:55:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:58:0x0108  */
    /* JADX WARN: Code duplicated, block: B:8:0x0016  */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00d9, code lost:
    
        if (r12.e(r13, r0, r6) == r1) goto L45;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m(java.lang.String r13, kotlin.coroutines.jvm.internal.ContinuationImpl r14) {
        /*
            Method dump skipped, instruction units count: 265
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.repository.DynamicYieldRepositoryImpl.m(java.lang.String, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:34:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:35:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:38:0x00cb A[Catch: all -> 0x016d, TryCatch #0 {all -> 0x016d, blocks: (B:12:0x002b, B:64:0x0163, B:65:0x0165, B:13:0x0034, B:57:0x0136, B:16:0x0045, B:54:0x0117, B:17:0x004a, B:20:0x005b, B:36:0x00c3, B:38:0x00cb, B:43:0x00d7, B:46:0x00de, B:48:0x00ed, B:50:0x00ff, B:49:0x00fc, B:58:0x0139, B:23:0x006a, B:32:0x00a2, B:26:0x0078, B:28:0x0089, B:61:0x014f), top: B:78:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:41:0x00d3 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:42:0x00d5 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:56:0x0135  */
    /* JADX WARN: Code duplicated, block: B:58:0x0139 A[Catch: all -> 0x016d, TryCatch #0 {all -> 0x016d, blocks: (B:12:0x002b, B:64:0x0163, B:65:0x0165, B:13:0x0034, B:57:0x0136, B:16:0x0045, B:54:0x0117, B:17:0x004a, B:20:0x005b, B:36:0x00c3, B:38:0x00cb, B:43:0x00d7, B:46:0x00de, B:48:0x00ed, B:50:0x00ff, B:49:0x00fc, B:58:0x0139, B:23:0x006a, B:32:0x00a2, B:26:0x0078, B:28:0x0089, B:61:0x014f), top: B:78:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:60:0x014e  */
    /* JADX WARN: Code duplicated, block: B:72:0x017c  */
    /* JADX WARN: Code duplicated, block: B:74:0x0180  */
    /* JADX WARN: Code duplicated, block: B:77:0x0190  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0160, code lost:
    
        if (m(r13, r0) == r1) goto L63;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object n(java.lang.String r13, kotlin.coroutines.jvm.internal.ContinuationImpl r14) {
        /*
            Method dump skipped, instruction units count: 420
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.repository.DynamicYieldRepositoryImpl.n(java.lang.String, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public final void q() {
        if (this.f47655e) {
            return;
        }
        md.k("Dynamic Yield SDK is not initialized");
    }
}
