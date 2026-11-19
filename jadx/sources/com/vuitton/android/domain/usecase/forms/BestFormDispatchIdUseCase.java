package com.vuitton.android.domain.usecase.forms;

import com.vuitton.foundation.model.domain.extensions.StringKtExtKt;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.dispatch.locale.component.LanguageCode;
import com.vuitton.foundation.model.domain.model.dispatch.locale.component.LanguageTagWithUnderscore;
import com.vuitton.foundation.model.domain.model.dispatch.locale.component.LocaleParts;
import com.vuitton.foundation.model.domain.model.dispatch.locale.component.RegionCode;
import com.vuitton.foundation.model.domain.model.dispatch.locale.component.ScriptCode;
import com.vuitton.foundation.model.domain.model.forms.FormDispatchId;
import defpackage.fc;
import defpackage.md;
import defpackage.tr;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u0006B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase;", "", "Lcom/vuitton/android/domain/usecase/forms/GetDispatchIdentifierListForFormUseCase;", "getDispatchIdentifierListForFormUseCase", "<init>", "(Lcom/vuitton/android/domain/usecase/forms/GetDispatchIdentifierListForFormUseCase;)V", "FormDispatchIdentifierDetail", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class BestFormDispatchIdUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final GetDispatchIdentifierListForFormUseCase f50027a;

    @Inject
    public BestFormDispatchIdUseCase(GetDispatchIdentifierListForFormUseCase getDispatchIdentifierListForFormUseCase) {
        getDispatchIdentifierListForFormUseCase.getClass();
        this.f50027a = getDispatchIdentifierListForFormUseCase;
    }

    public static ArrayList a(List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str = ((FormDispatchId) it.next()).f67581a;
            LocaleParts.d.getClass();
            str.getClass();
            LocaleParts localePartsA = LocaleParts.Companion.a(str);
            FormDispatchIdentifierDetail formDispatchIdentifierDetail = localePartsA != null ? new FormDispatchIdentifierDetail(str, localePartsA.f67510a, localePartsA.f67511b, localePartsA.f67512c, null) : null;
            if (formDispatchIdentifierDetail != null) {
                arrayList.add(formDispatchIdentifierDetail);
            }
        }
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object b(InAppDispatch inAppDispatch, String str, ContinuationImpl continuationImpl) {
        BestFormDispatchIdUseCase$run$1 bestFormDispatchIdUseCase$run$1;
        Object failure;
        String str2;
        String str3;
        Object failure2;
        FormDispatchIdentifierDetail formDispatchIdentifierDetail;
        boolean zEquals;
        if (continuationImpl instanceof BestFormDispatchIdUseCase$run$1) {
            bestFormDispatchIdUseCase$run$1 = (BestFormDispatchIdUseCase$run$1) continuationImpl;
            int i2 = bestFormDispatchIdUseCase$run$1.g;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                bestFormDispatchIdUseCase$run$1.g = i2 - Integer.MIN_VALUE;
            } else {
                bestFormDispatchIdUseCase$run$1 = new BestFormDispatchIdUseCase$run$1(this, continuationImpl);
            }
        } else {
            bestFormDispatchIdUseCase$run$1 = new BestFormDispatchIdUseCase$run$1(this, continuationImpl);
        }
        Object obj = bestFormDispatchIdUseCase$run$1.f50033e;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = bestFormDispatchIdUseCase$run$1.g;
        Object obj2 = null;
        if (i3 == 0) {
            ResultKt.b(obj);
            String str4 = inAppDispatch.f67483j;
            String languageCode = inAppDispatch.d.getLanguageCode();
            bestFormDispatchIdUseCase$run$1.f50031b = str;
            bestFormDispatchIdUseCase$run$1.f50032c = str4;
            bestFormDispatchIdUseCase$run$1.d = languageCode;
            bestFormDispatchIdUseCase$run$1.g = 1;
            Object objA = this.f50027a.a(bestFormDispatchIdUseCase$run$1);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
            failure = objA;
            str2 = languageCode;
            str3 = str4;
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            str2 = bestFormDispatchIdUseCase$run$1.d;
            str3 = bestFormDispatchIdUseCase$run$1.f50032c;
            str = bestFormDispatchIdUseCase$run$1.f50031b;
            ResultKt.b(obj);
            failure = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (!(failure instanceof Result.Failure)) {
            try {
                failure = a((List) failure);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                failure = new Result.Failure(th);
            }
        }
        if (failure instanceof Result.Failure) {
            return failure;
        }
        try {
            List list = (List) failure;
            if (StringKtExtKt.g(str)) {
                ArrayList arrayList = new ArrayList();
                for (Object obj3 : list) {
                    String str5 = ((FormDispatchIdentifierDetail) obj3).d;
                    if (str5 == null) {
                        str5 = null;
                    }
                    if (Intrinsics.c(str5, str)) {
                        arrayList.add(obj3);
                    }
                }
                for (Object obj4 : arrayList) {
                    String str6 = ((FormDispatchIdentifierDetail) obj4).f50029b;
                    LanguageCode.Companion companion3 = LanguageCode.f67497b;
                    if (Intrinsics.c(str6, str2)) {
                        obj2 = obj4;
                        break;
                    }
                }
                formDispatchIdentifierDetail = (FormDispatchIdentifierDetail) obj2;
                if (formDispatchIdentifierDetail == null) {
                    formDispatchIdentifierDetail = (FormDispatchIdentifierDetail) CollectionsKt.firstOrNull(arrayList);
                }
            } else {
                ArrayList arrayList2 = new ArrayList();
                for (Object obj5 : list) {
                    String str7 = ((FormDispatchIdentifierDetail) obj5).d;
                    if (str7 == null) {
                        zEquals = false;
                    } else {
                        RegionCode.Companion companion4 = RegionCode.f67513b;
                        zEquals = str7.equals(str3);
                    }
                    if (zEquals) {
                        arrayList2.add(obj5);
                    }
                }
                ArrayList arrayList3 = new ArrayList();
                for (Object obj6 : list) {
                    String str8 = ((FormDispatchIdentifierDetail) obj6).f50029b;
                    LanguageCode.Companion companion5 = LanguageCode.f67497b;
                    if (Intrinsics.c(str8, str2)) {
                        arrayList3.add(obj6);
                    }
                }
                List listO0 = CollectionsKt.o0(arrayList3, new Comparator() { // from class: com.vuitton.android.domain.usecase.forms.BestFormDispatchIdUseCase$run_0E7RQCE$lambda$1$$inlined$sortedByDescending$1
                    @Override // java.util.Comparator
                    public final int compare(Object obj7, Object obj8) {
                        return Boolean.valueOf(((BestFormDispatchIdUseCase.FormDispatchIdentifierDetail) obj8).d == null).compareTo(Boolean.valueOf(((BestFormDispatchIdUseCase.FormDispatchIdentifierDetail) obj7).d == null));
                    }
                });
                for (Object obj7 : arrayList2) {
                    String str9 = ((FormDispatchIdentifierDetail) obj7).f50029b;
                    LanguageCode.Companion companion6 = LanguageCode.f67497b;
                    if (Intrinsics.c(str9, str2)) {
                        obj2 = obj7;
                        break;
                    }
                }
                formDispatchIdentifierDetail = (FormDispatchIdentifierDetail) obj2;
                if (formDispatchIdentifierDetail == null && (formDispatchIdentifierDetail = (FormDispatchIdentifierDetail) CollectionsKt.firstOrNull(arrayList2)) == null) {
                    formDispatchIdentifierDetail = (FormDispatchIdentifierDetail) CollectionsKt.firstOrNull(listO0);
                }
            }
            if (formDispatchIdentifierDetail != null) {
                failure2 = new FormDispatchId(formDispatchIdentifierDetail.f50028a);
                return failure2;
            }
            throw new IllegalStateException(("No dispatch identifier found (dispatchRegionCode=" + str3 + ", dispatchLanguage=" + str2 + ", addressRegionCode=" + str + ")").toString());
        } catch (Throwable th2) {
            Result.Companion companion7 = Result.INSTANCE;
            failure2 = new Result.Failure(th2);
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0082\b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase$FormDispatchIdentifierDetail;", "", "Lcom/vuitton/foundation/model/domain/model/forms/FormDispatchId;", "formDispatchId", "Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageCode;", "languageCode", "Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/ScriptCode;", "scriptCode", "Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode;", "regionCode", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class FormDispatchIdentifierDetail {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f50028a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f50029b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f50030c;
        public final String d;

        public FormDispatchIdentifierDetail(String str, String str2, String str3, String str4, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            str2.getClass();
            this.f50028a = str;
            this.f50029b = str2;
            this.f50030c = str3;
            this.d = str4;
        }

        /* JADX WARN: Code duplicated, block: B:18:0x0030  */
        /* JADX WARN: Code duplicated, block: B:28:0x0048  */
        public final boolean equals(Object obj) {
            boolean zC;
            boolean zC2;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof FormDispatchIdentifierDetail)) {
                return false;
            }
            FormDispatchIdentifierDetail formDispatchIdentifierDetail = (FormDispatchIdentifierDetail) obj;
            String str = formDispatchIdentifierDetail.f50028a;
            LanguageTagWithUnderscore.Companion companion = LanguageTagWithUnderscore.f67508b;
            if (!Intrinsics.c(this.f50028a, str)) {
                return false;
            }
            String str2 = formDispatchIdentifierDetail.f50029b;
            LanguageCode.Companion companion2 = LanguageCode.f67497b;
            if (!Intrinsics.c(this.f50029b, str2)) {
                return false;
            }
            String str3 = formDispatchIdentifierDetail.f50030c;
            String str4 = this.f50030c;
            if (str4 == null) {
                if (str3 == null) {
                    zC = true;
                } else {
                    zC = false;
                }
            } else if (str3 == null) {
                zC = false;
            } else {
                ScriptCode.Companion companion3 = ScriptCode.f67522b;
                zC = Intrinsics.c(str4, str3);
            }
            if (!zC) {
                return false;
            }
            String str5 = formDispatchIdentifierDetail.d;
            String str6 = this.d;
            if (str6 == null) {
                if (str5 == null) {
                    zC2 = true;
                } else {
                    zC2 = false;
                }
            } else if (str5 == null) {
                zC2 = false;
            } else {
                RegionCode.Companion companion4 = RegionCode.f67513b;
                zC2 = Intrinsics.c(str6, str5);
            }
            return zC2;
        }

        public final int hashCode() {
            int iHashCode;
            LanguageTagWithUnderscore.Companion companion = LanguageTagWithUnderscore.f67508b;
            int iHashCode2 = this.f50028a.hashCode() * 31;
            LanguageCode.Companion companion2 = LanguageCode.f67497b;
            int iB = fc.b(iHashCode2, 31, this.f50029b);
            int iHashCode3 = 0;
            String str = this.f50030c;
            if (str == null) {
                iHashCode = 0;
            } else {
                ScriptCode.Companion companion3 = ScriptCode.f67522b;
                iHashCode = str.hashCode();
            }
            int i2 = (iB + iHashCode) * 31;
            String str2 = this.d;
            if (str2 != null) {
                RegionCode.Companion companion4 = RegionCode.f67513b;
                iHashCode3 = str2.hashCode();
            }
            return i2 + iHashCode3;
        }

        public final String toString() {
            LanguageTagWithUnderscore.Companion companion = LanguageTagWithUnderscore.f67508b;
            String strH = fc.h("FormDispatchId(languageTagWithUnderscore=", fc.h("LanguageTagWithUnderscore(value=", this.f50028a, ")"), ")");
            String strA = LanguageCode.a(this.f50029b);
            String str = this.f50030c;
            String strA2 = str == null ? "null" : ScriptCode.a(str);
            String str2 = this.d;
            return tr.l(fc.s("FormDispatchIdentifierDetail(formDispatchId=", strH, ", languageCode=", strA, ", scriptCode="), strA2, ", regionCode=", str2 != null ? RegionCode.a(str2) : "null", ")");
        }

        public /* synthetic */ FormDispatchIdentifierDetail(String str, String str2, String str3, String str4, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, str2, (i2 & 4) != 0 ? null : str3, (i2 & 8) != 0 ? null : str4, null);
        }
    }
}
